--PRACTICA EXAMEN PROC. ALM
--1. Procedimiento almacenado que reciba la clave de un cliente, regrese en un parametro de salida los nombres de los empleados que lo han atendido
create proc sp_Nombres_Empleados(@clienteid nchar(10), @empleados varchar(200) output) as
	select @empleados = String_agg(Nombre, ', ') 
	from
	
	(select distinct nombre = e.firstname + ' ' + e.lastname
	from Orders O
	inner join Employees E on O.EmployeeID = E.EmployeeID
	where O.customerid = @clienteid) x
go
--ejecucion...
declare @salida varchar(1000)
exec sp_Nombres_Empleados VINET, @salida output
select 'Empleados que lo han atendido' = @salida


create proc sp_nom_empleados(@clienteid nchar(5), @nombres varchar(100) output)
as begin
	declare @cliente nchar(5), @empleado varchar(1000)
	select @empleado = ''
	select @nombres = ''
	select @cliente = min(e.employeeid)
	from employees e
	inner join orders o on o.employeeid = e.employeeid
	inner join customers c on c.customerid = o.customerid where c.customerid = @clienteid

	while @cliente is not null
	begin
		select @empleado = e.firstname + ' ' + e.lastname
		from employees e
		inner join orders o on o.employeeid = e.employeeid
		inner join customers c on c.customerid = o.customerid
		where o.employeeid = @cliente and c.customerid = @clienteid

		select @nombres = @empleado + ', ' + @nombres
		select @cliente = min(e.employeeid) from employees e
		inner join orders o on o.employeeid = e.employeeid
		inner join customers c on c.customerid = o.customerid
		where e.employeeid > @cliente and c.customerid = @clienteid
	end
end
go
--ejecucion...
declare @salida varchar(1000)
exec sp_nom_empleados 'blaus', @salida output
select 'empleados que lo han atendido' = @salida
go

--2.- FUNCION DE TABLA EN LINEA QUE RECIBA LA CLAVE DE JEFE Y REGRESE LOS NOMBRES DE LOS EMPLEADOS A SU CARGO.
Create function fn_Jefe_Empleados(@jefeid int)
returns table
as return(
	select 'nombres empleados a su cargo' = e.firstname + ' ' + e.lastname
	from Employees j 
	inner join Employees e on e.reportsto = j.employeeid
	where j.employeeid = @jefeid
)
--ejecucion...
select * from fn_Jefe_Empleados(5)

--3. Funcion escalar que reciba dos claves de categorias y un año, y regrese la categoria que mas ha vendido piezas de los dos en ese año
--y el total de piezas vendidas de la categoria. Por ejemplo, lacteos con 450 piezas
create function dbo.PiezasVendidas(@categoria1 int, @categoria2 int, @año int)
returns varchar(100)
begin
	declare @cont1 int, @cont2 int, @texto1 varchar(50), @texto2 varchar(50), @salida varchar(50)

	select @cont1 = sum(od.quantity) from [order details] od 
	inner join Products p on od.productid = p.productid
	inner join Orders o on od.orderid = o.orderid
	where p.categoryid = @categoria1 and year(o.orderdate) = @año

	select @cont2 = sum(od.quantity) from [order details] od 
	inner join Products p on od.productid = p.productid
	inner join Orders o on od.orderid = o.orderid
	where p.categoryid = @categoria2 and year(o.orderdate) = @año

	select @texto1 = categoryname from Categories where categoryid = @categoria1
	select @texto2 = categoryname from Categories where categoryid = @categoria2
	select @salida = case
	when @cont1 > @cont2 then @texto1 + 'con ' + str(@cont1) + ' piezas' 
	else
		@texto2 + ' con ' + str(@cont2) + ' piezas' 
	end
	return (@salida)
end
--ejecucion...
select dbo.PiezasVendidas(5, 2, 1996)

--4. Función de tabla en línea que reciba el año y regrese una tabla con el nombre de todos los clientes, el importe de ventas
--y el total de ordenes realizadas en ese año
create function fn_Año(@año varchar(200))
returns table 
as return(
	select nombre_de_cliente = c.CompanyName, importe_de_ventas = sum(od.quantity * od.unitprice), total_ordenes_ese_año = count(o.orderid) 
	from Customers c
	inner join Orders o on o.customerid = c.customerid
	inner join [order details] od on od.orderid=o.orderid
	where year(o.orderdate) = @año
	group by c.companyname
);
go
--ejecucion...
select * from fn_Año(1997)
go

--5. Función de tabla de multisentencia (no lleva parámetros de entrada) que regrese una tabla con el nombre del empleado y
--en otro campo los años biciestos vividos
create function dbo.fn_AñosBiciestosVividos()
returns @Tabla table(empleado varchar(50), años_biciestos_vividos varchar(200))
as
begin
	declare @emp int, @nombre_de_empleado varchar(50), @años_biciestos_vividos varchar(200)
	select @emp = min(employeeid) from Employees
	while @emp is not null
	begin
		select @nombre_de_empleado = firstname + ' ' + lastname from Employees where employeeid = @emp
		declare @nacimiento int
		
		select @nacimiento = year(birthdate) from Employees where employeeid = @emp
		select @años_biciestos_vividos=''
		while @nacimiento <=year(getdate())
		begin
		if(@nacimiento%4) = 0 --años biciestos
		begin
		select @años_biciestos_vividos = @años_biciestos_vividos + convert(varchar(8),@nacimiento)+','
		end
		select @nacimiento = @nacimiento + 1
	end
insert @tabla values (@nombre_de_empleado, @años_biciestos_vividos)
select @emp = min(employeeid) from employees where employeeid > @emp
 end
 return
 end
--ejecucion...
select * from dbo.fn_AñosBiciestosVividos()

-- 5.- FUNCION DE TABLA DE MULTISENTENCIA (NO LLEVA PARAMETROS DE ENTRADA) QUE REGRESE UNA TABLA CON LOS DIAS DE LA SEMANA Y EL LISTADO DE LAS ORDENES REALIZADAS ESE DIA.
create function dbo.DiasSemana()
returns @tabla table(dias varchar(50), ordenesrealizadas varchar(50))
as
begin
	declare @orderid int, @dias varchar(50), @ordenesrealizadas varchar(50)
	select @dias = datepart(dd, orderdate) from Orders where datepart(dd, orderdate) = @dias
	select @ordenesrealizadas = shipname from Orders where shipname = @ordenesrealizadas
end
insert @tabla values(@dias, @ordenesrealizadas)
select @orderid = min(orderid) from orders where orderid = @orderid
return
--ejecucion...
select * from dbo.DiasSemana()


--FUNCION DE TABLA EN LINEA QUE RECIBA LA CLAVE DE UNA CATEGORIA Y REGRESE UNA TABLA CON EL AÑO, EL IMPORTE DE VENTAS Y EL TOTAL DE ORDENES REALIZADAS DE ESA CATEGORIA
create function dbo.OrdenesCategoria(@categoria varchar(50))
returns table
as return (
	select 'año' = year(o.orderdate), 'importe de ventas' = sum(od.quantity * od.unitprice), 'total de ordenes realizadas' = count(o.orderid)
	from orders o
	inner join [order details] od on od.orderid = o.orderid
	right outer join Categories cate on cate.categoryname = @categoria
	group by year(o.orderdate)
)
--ejecucion...
select * from dbo.OrdenesCategoria('Confections') where año = 1996

--Realizar un procedimiento almacenado que genere el orden de eliminación de las tablas de una base de datos.  Utilice las tablas de sistema sysobjects y sysforeignkeys.
--Se inicia obteniendo las tablas que nunca serán padre, son las tablas centrales.
create proc spOrdenEliminacion as
declare @clave int, @id int, @orden int
create table #tabla(clave int identity, id bigint, nom varchar(200), orden int)

select @orden=0
insert #tabla(id, nom, orden)
select id, name, @orden
from sysobjects 
where id not in(select rkeyid from sysforeignkeys)
and xtype='u' and name not like 'sys%' and name not like 'ms%'

select @clave=min(clave) from #tabla
while @clave is not null
begin
	select @orden=@orden+1
	select @id=id from #tabla where clave=@clave
	insert #tabla(id, nom, orden)
	select distinct rkeyid, object_name(rkeyid), @orden
	from sysforeignkeys
	where fkeyid=@id and object_name(rkeyid) not in (select nom from #tabla)
	select @clave = min(clave) from #tabla where clave>@clave
end
select nom, orden from #tabla
go

--Ejecución
exec spOrdenEliminacion
go

--FUNCION DE TABLA DE MULTISENTENCIA (NO LLEVA PARAMETROS DE ENTRADA) QUE REGRESE UNA TABLA CON LOS DIAS DE LA SEMANA Y EL LISTADO DE LAS ORDENES REALIZADAS ESE DIA.

--FUNCION DE TABLA MULTISENTENCIA (NO LLEVA PARAMETROS DE ENTRADA) QUE REGRESE UNA TABLA CON EL NOMBRE DEL EMPLEADO Y LOS NOMBRES DE LOS TERRITORIOS QUE ATIENDE
--CORREGIR
create function dbo.fn_EmpleadosTerritorios()
returns @tabla table(nombreempleado varchar(20), nombreterritorios varchar(20))
as
begin
	declare @empid int, @nomemp varchar(20), @territoryid varchar(20), @nomterritorio varchar(20)

	select @empid = min(employeeid) from Employees
	while @empid is not null
	begin

		select @nomemp = firstname from Employees where employeeid = @empid
		select @territoryid = territoryid from Territories where territoryid = @territoryid
		select @nomterritorio = territorydescription from Territories where territorydescription = @nomterritorio
	end

	insert @Tabla values(@empid, @nomemp, @territoryid, @nomterritorio)
	select @empid = min(employeeid) from Employees where employeeid > @empid

return
end

--ejecucion
select * from dbo.fn_EmpleadosTerritorios()


--5. Función de tabla de multisentencia (no lleva parámetros de entrada) que regrese una tabla con el nombre del empleado y
--en otro campo los años biciestos vividos
create function dbo.fn_AñosBiciestosVividos()
returns @Tabla table(empleado varchar(50), años_biciestos_vividos varchar(200))
as
begin
	declare @emp int, @nombre_de_empleado varchar(50), @años_biciestos_vividos varchar(200)
	select @emp = min(employeeid) from Employees
	while @emp is not null
	begin
		select @nombre_de_empleado = firstname + ' ' + lastname from Employees where employeeid = @emp
		declare @nacimiento int
		
		select @nacimiento = year(birthdate) from Employees where employeeid = @emp
		select @años_biciestos_vividos=''
		while @nacimiento <=year(getdate())
		begin
		if(@nacimiento%4) = 0 --años biciestos
		begin
		select @años_biciestos_vividos = @años_biciestos_vividos + convert(varchar(8),@nacimiento)+','
		end
		select @nacimiento = @nacimiento + 1
	end
insert @tabla values (@nombre_de_empleado, @años_biciestos_vividos)
select @emp = min(employeeid) from employees where employeeid > @emp
 end
 return
 end
--ejecucion...
select * from dbo.fn_AñosBiciestosVividos()

--Función de tabla en linea que reciba el nombre del jefe y regrese una tabla con el nombre del empleado a su cargo,
--el importe de venta del empleado a su cargo y las ordenes realizadas del empleado a su cargo
--CORREGIR
create function dbo.fn_Emp(@jefe int)
returns table as
	return(select e.employeeid, o.orderid, 'importe' = sum(unitprice*quantity)
	from orders o
	inner join Employees e on e.employeeid = o.employeeid
	inner join [order details] od on od.orderid = o.orderid
	where e.reportsto = @jefe
	group by e.employeeid
	)
--ejecucion...
select * from dbo.fn_Emp(2)

--Procedimiento almacenado que reciba la clave de una región, regrese en un parametro de salida los nombres de los empleados
--que pertenecen a dicha region
--CORREGIR
create proc sp_Regiones(@region int)
as
	select 'nombres' = e.firstname + ' ' + e.lastname
	from Territories t
	inner join EmployeeTerritories et on t.TerritoryID = et.TerritoryID
	inner join Employees e on et.EmployeeID = e.EmployeeID
	where t.RegionID = @region
	group by e.firstname, e.lastname
	go
--ejecucion...
declare @region int
exec sp_Regiones @region = 1

--Funcion de tabla multisentencia que reciba el año y regrese una tabla con el nombre del dia de la semana y
--los productos que se compraron ese dia
--dia	productos
--domingo	leche, limon, jabon
--lunes		peras, limon, agua
create function dbo.Prods(@año int)
returns @tabla table(dia varchar(20), productos varchar(200))
as
begin
	declare @dia int = 0
	declare @productos varchar(300) = ''
	while @dia < 7
	begin
		select @productos = ''
		select @productos = @productos + convert(varchar(10), productname, 111) + ','
		from [order details]
		inner join products on products.productid = [order details].productid
		inner join orders on orders.orderid = [order details].orderid
		where datepart(dw,orderdate) -1 = @dia and datepart(yyyy,orderdate