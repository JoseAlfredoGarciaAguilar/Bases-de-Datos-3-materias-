/*
3.- PROCEDIMIENTO ALMACENADO QUE RECIBA COMO PARAMETRO UNA FECHA Y REGRESE DOS PARAMETROS: 
UN PARAMETRO CON EL NOMBRE DE TODOS LOS CLIENTES QUE COMPRARON ESE DIA Y OTRO PARAMETRO CON LA LISTA DE LAS ORDENES REALIZADAS ESE DIA.
*/

create proc sp_clientesOrdenes(@fecha datetime, @clientes varchar(500) output, @ordenes varchar(500) output) as
declare @clienteid int, @ordenid int

      select @clienteid = count(customerid) from orders where orderdate = @fecha
	  select @clientes = ''
	  while @clienteid > 1
	  begin
	     select @clientes = c.contactname+', '+@clientes from customers c
		 inner join orders o on c.CustomerID = o.CustomerID
		 where o.orderdate = @fecha

		 select @clienteid = @clienteid - 1
      end

	  select @ordenid = min(orderid) from orders where orderdate = @fecha
	  select @ordenes = ''
	  while @ordenid is not null
	  begin 
	    select @ordenes = cast(orderid as varchar(20))+', '+@ordenes from orders where orderid = @ordenid

		select @ordenid = min(orderid) from orders where orderdate = @fecha and orderid > @ordenid
	  end
	 

--ejecucion 
declare @a varchar(500), @b varchar(500)
exec sp_clientesordenes '16-10-1996', @a output, @b output
select @a, @b




 
