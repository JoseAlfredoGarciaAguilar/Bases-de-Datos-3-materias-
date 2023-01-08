--Funcion escalar que reciba la fecha y los dias habiles, regresar la fecha final pasando los dias habiles.
--Los dias habiles son solo de lunes a viernes
create function dbo.FechaDias(@fecha datetime, @Dias_Habiles datetime)
returns datetime as
begin
declare @Fecha_Final datetime = @fecha
while @Dias_Habiles > 0
begin
	select @Fecha_Final = dateadd(dd,1,@Fecha_Final)
	if(datepart(dw,@Fecha_Final) not in (1,7))
		select @Dias_Habiles = @Dias_Habiles - 1
	end
return @Fecha_Final
end
go

--procedimiento almacenado que reciba la clave de un cliente, regrese en un parametro de salida los nombres
--de los empleados que lo han atendido
create proc sp_cliente_empleados(@clienteid nchar(5), @empleados nvarchar(4000) output) as
select @empleados = string_agg(e.firstname + '' + e.lastname, ',') from customers as c
inner join orders as o on o.customerid = c.customerid
inner join employees as e on o.employeeid = e.employeeid
where c.customerid = @clienteid
group by c.customerid
go
--ejecucion
declare @a nvarchar(4000)
exec sp_cliente_empleados alfki, @a output
select @a as nombres

--funcion de tabla en linea que reciba el año y regrese una tabla con el nombre de todos los clientes, el importe
--de ventas y el total de ordenes realizadas ese año
create function fn_año_clientes(@año int)
returns @tabla table(nombre nvarchar(100), importe numeric(12,2), ordenes int)
as
begin
insert @tabla
select c.contactname, sum(od.quantity*od.unitprice), count(distinct o.orderid) from customers as c
inner join orders as o on o.customerid = c.customerid
inner join [order details] as od on o.orderid = od.orderid
where year(o.orderdate) = @año
group by c.customerid, c.contactname
return
end
go
--ejecucion
select * from dbo.fn_año_clientes(1996)

--funcion de tabla multisentencia que reciba el año y regrese una tabla con el nombre del mes y
--los productos que se compraron en ese mes


--procedimiento almacenado que reciba una fecha de nacimiento y un numero N, regrese como parametro de salida
--los proximos N años bisiestos vividos. ejemplo si recibe (1-1-2000, 4) debe regresar los siguientes 4 años
--bisiestos vividos: 2004.2008, 2012 y 2016
create proc sp_añosbisiestos(@año datetime, @num int, @salida nvarchar(1000) output) as
declare @i int = @num
select @salida = ''

while @i > 0
begin
if(year(@año)%4=0) and (year(@año)%100!=0) or (year(@año)%400=0)
begin
select @salida = @salida + ',' + cast(year(@año) as nvarchar(12))
select @i = @i - 1
end

select @año = dateadd(yy,1,@año)
end

--ejecucion
declare @a nvarchar(1000)
exec sp_añosbisiestos '1-1-2000', 4, @a output
select @a

/*
Función de tabla multisentencia que reciba el año y regrese una tabla con el nombre del mes y los productos que se compraron en ese mes.
Mes		Productos
Enero	Leche, limón, jabón
Febrero	Peras, limón, agua
*/

create function dbo.productos(@año int)
returns @tablita table(mes varchar(15), Productos nvarchar(1000))
as
begin
insert @tablita
select month(o.orderdate), string_agg(p.productname,',') as products 
from orders o
inner join [order details] d on o.orderid = d.orderid
inner join products p on d.productid = p.ProductID
where year(orderdate) = @año
group by orderdate
return
end

select * from dbo.productos (1994)