/*
1.- FUNCION ESCALAR QUE RECIBA DOS CLAVES DE CLIENTES Y UN AÑO,
Y REGRESE EL NOMBRE DEL CLIENTE QUE MAS HA VENDIDO PIEZAS DE LOS DOS EN ESE AÑO Y EL TOTAL DE PIEZAS 
VENDIDAS. POR EJEMPLO, DEBE REGRESAR: EL CLIENTE JUAN PEREZ VENDIO 450 PIEZAS.
*/

create function fn_clientesVentas(@cl1 nchar(5), @cl2 nchar(5), @año int)
returns varchar(70)
as
begin
   declare @t1 int, @t2 int, @nombre varchar(70)

   select @t1 = count(od.quantity)
   from orders o
   inner join [order details] od on o.orderid = od.orderid
   where o.customerid = @cl1 and year(o.orderdate) = @año

   select @t2 = count(od.quantity)
   from orders o
   inner join [order details] od on o.orderid = od.orderid
   where o.customerid = @cl2 and year(o.orderdate) = @año

   if @t1 > @t2
      select @nombre = 'El cliente '+contactname+' vendio '+ cast(@t1 as nvarchar(10))+' piezas' from customers where customerid = @cl1
   else
      select @nombre = 'El cliente '+contactname+' vendio '+ cast(@t2 as nvarchar(10))+' piezas' from customers where customerid = @cl2

return @nombre
end

--ejecucion
select dbo.fn_clientesVentas('ALFKI', 'ANATR', 1996)


/*
2.- FUNCION ESCALAR QUE RECIBA LA CLAVE DEL EMPLEADO Y 
REGRESE UNA CADENA CON LOS NOMBRE DE LOS TERRITORIOS QUE ATIENDE.
*/
alter function fn_empleadoTerritorio(@emp int)
returns varchar(1000)
as
begin
   declare @tr varchar(1000), @min int

   select @min = min(territoryid) from employeeterritories where employeeid = @emp
   select @tr = ''

   while @min is not null
   begin
     select @tr = territorydescription+', '+@tr from territories where territoryid = @min
	 select @min =  min(territoryid) from employeeterritories where employeeid = @emp and territoryid > @min
   end
   return @tr
end
--ejecucion
select dbo.fn_empleadoTerritorio(2)

/*
3.- FUNCION DE TABLA EN LINEA QUE RECIBA LA CLAVE DE UN PRODUCTO Y REGRESE UNA TABLA 
CON EL NOMBRE DE TODOS LOS CLIENTES QUE HAN COMPRADO ESE PRODUCTO, 
EL TOTAL DE PRODUCTOS COMPRADO Y EL TOTAL DE ORDENES EN LAS QUE SE HA VENDIDO.
*/
create function dbo.clientesCompras(@prod int)
returns table 
as return(
   select 'Nombre del cliente'=c.contactname, 'Total productos'= sum(od.quantity), 'Total de ordenes'=count(od.orderid)
   from customers c
   inner join orders o on c.customerid = c.customerid
   inner join [order details] od on o.orderid = od.orderid
   where od.productid = @prod
   group by c.contactname, o.orderid
)

--ejecucion 
select*from dbo.clientesCompras(1)

/*
4.- FUNCION DE TABLA EN LINEA QUE RECIBA LA CLAVE DEL EMPLEADO Y AÑO, 
REGRESE EN UNA CONSULTA EL NOMBRE DEL PRODUCTO Y TOTAL DE PRODUCTOS VENDIDOS POR ESE EMPLEADO Y ESE AÑO.
*/
create function dbo.empleadoVentas(@emp int, @año int)
returns table
as
return(
select 'Nombre' = p.productname, 'Total' = count(p.productid)
from products p
inner join [order details] od on p.productid = od.productid
inner join orders o on od.orderid = o.orderid
where o.employeeid = @emp and year(o.orderdate) = @año
group by p.productname
)

--ejecucion
select*from dbo.empleadoVentas(5, 1996)

/*
5.- UTILIZANDO LA FUNCION ANTERIOR MOSTRAR UNA CONSULTA SIGUIENTE:
*/

select a.nombre, 'Total piezas 96' = a.total, 'Total piezas 97' = b.total, 'Total piezas 98' = c.total
from dbo.empleadoVentas(5, 1996) a
inner join dbo.empleadoVentas(5, 1997) b on a.nombre = b.nombre
inner join dbo.empleadoVentas(5, 1998) c on a.nombre = c.nombre


/*
5.- FUNCION DE TABLA DE MULTISENTENCIA (NO LLEVA PARAMETROS DE ENTRADA) QUE REGRESE UNA TABLA CON EL NOMBRE DE LA CATEGORIA Y
LOS NOMBRES DE LOS PRODUCTOS QUE PERTENECEN A LA CATEGORIA Y EL TOTAL DE PIEZAS QUE SE HAN VENDIDO DE ESA CATEGORIA
*/
alter function dbo.fn_productosCategorias()
returns @categoria table(categoria varchar(20), productos varchar(500), piezas int)
as
begin
  declare @cat int, @catname varchar(20), @prodid int, @prod varchar(500), @piezas int
   
   select @cat = min(categoryid) from categories 
   while @cat is not null
   begin

     select @catname = categoryname from categories where categoryid = @cat
     
	 select @prodid = min(productid) from products where categoryid = @cat
	 select @piezas = count(quantity) from [order details] where productid = @prodid
     select @prod = ''

	 while @prodid is not null
	 begin
	   select @prod = productname+', '+@prod from products where categoryid = @cat
	   select @prodid = min(productid) from products where categoryid = @cat and productid > @prodid
	 end
	 select @cat = min(categoryid) from categories where categoryid > @cat
	 insert @categoria values(@catname, @prod, @piezas)
	end
return
end

--ejecucion 
select*from dbo.fn_productosCategorias()
