--EXAMEN NORMAL TRIGGERS
--Validar que la tabla customers no acepte inserciones ni eliminaciones masivas. BIEN
create trigger tr_ClienteMasivo
on Customers for insert, delete as
declare @insert int, @elimina int, @eliminaciones int

    select @insert = COUNT(*) 
    from inserted

    select @elimina = COUNT(*)
    from deleted

    if @insert > 1 or @eliminaciones > 1

    begin
        rollback tran
        raiserror('NO SE PERMITEN INSERCIONES NI ELIMINACIONES MASIVAS', 16, 1)
    end
go

--Validar que en una ciudad no vivan más de 5 empleados. BIEN
CREATE TRIGGER TR_EmpleadoCiudad
ON EMPLOYEES FOR INSERT AS
DECLARE @CONT INT, @CiudadEmp NVARCHAR(15)

SELECT @CiudadEmp = CITY 
FROM inserted

SELECT @CONT = COUNT(*) 
FROM Employees 

WHERE City = @CiudadEmp

IF(@CONT>5)

BEGIN
    ROLLBACK TRAN
    RAISERROR('NO PUEDEN VIVIR MAS DE 5 EMPLEADOS EN LA CIUDAD',16,1)

END
GO

--Validar que una región no tenga más de 10 empleados asignados. La región se refiere a la tabla Region que esta relacionada con Territories y esta tabla con EmployeeTerritories.
--Nota: NO usar el campo region de employees

--Validar que en la tabla products no se modifiquen al mismo tiempo los campos productname, unitprice y unitinstock.

--EXAMEN RECUPERACION TRIGGERS
--la tabla customers se agregó el campo ImporteMaximoVenta, que representa el límite máximo de venta por orden de cada cliente,
--por ejemplo, si el importe máximo de venta es 5,0000,
--el cliente no puede comprar más de 5000 pesos en una sola orden. Validar que los clientes no sobrepasen ese importe máximo. 
Alter table Customers add ImporteMaximoVenta numeric(12,2)
update Customers set ImporteMaximoVenta = 1000

create trigger tr_MaxOrdencte on [Order details]
after insert, update as declare @clave int, @cte nchar(5), @total numeric(12,2),@limite numeric(12,2)

--1.- Buscar la clave de la orden
if(select count(*) from inserted) >0 
select @clave = orderid from inserted
else   
select @clave = orderid from deleted
--2.-Busco la clave del cliente
select @cte = customerid from orders
where orderid= @claveselect
select @limite = ImporteMaximoVenta from Customers
where CustomerID = @cte
--3.- Calculo el importe total de dicho cliente
select @total=sum(d.unitprice*d.quantity)
from orders o inner join [Order Details] d on o.orderid=d.OrderID
where o.CustomerID=@cte and d.OrderID=@clave
--4 verificar que no supera el limite
if(@total>@limite)
begin       
rollback transaction       
raiserror ('Cliente supero Limite de Compra', 16, 1)
end
go
select sum(unitprice*quantity) from [Order Details]
where OrderID=10250 update 
[Order Details] set Quantity = 11
where OrderID=10250 and ProductID=41

--Es necesario llevar el histórico de los domicilios de los clientes, para ello se creó la tabla DOMICLIOS con los campos id,
--customerid, address, fechaCambio, usuario. Crear un trigger en la tabla Customers para que guarde el histórico de los domicilios en la tabla DOMICILIOS.
Create table DOMICLIOS ( ID int primary key, customerid nchar(5), Address nvarchar(60), FechaCambio datetime, Usuario CHAR( 30 ) )
--NOTA: el campo ID no es Identity.
create trigger tr_Domicilios_Hist
on Customers for insert, update
as
declare @clave int
if update(Address)
begin
select @clave =  COALESCE(MAX(ID), 0) + 1 from DOMICLIOS 
insert DOMICLIOS
select @clave, CustomerID,Address,GETDATE(),SYSTEM_USER from Customers
end
go
update Customers set Address='Mataderos  2310' where CustomerID='ANATR'
update Customers set Address='Mataderos  2311' where CustomerID='ANATR'

--Validar que una región (usando la tabla Region) no tenga más de 10 empleados asignados.
--Nota: No usar el campo employees.region.
create trigger tr_regionEmo
on Employeeterritories for insert, update as
declare @total int, @territoryID int, @regionID int
select @territoryID = TerritoryID 
from inserted
select @regionID = RegionID from Territories 
where TerritoryID = @territoryID
select @total = 0
select @total = COUNT(*)
from EmployeeTerritories et
inner join Territories t on t.TerritoryID = et.TerritoryID
where t.RegionID = @regionID
if(@total>=2)
begin
rollback tran
raiserror('No se pueden asignar mas de 10 empleados',16,1)
end

--Validar que un empleado no pueda vender más de 50 ordenes por semana.
create trigger tr_ordenesEmp 
on Orders for insert as
declare @EmpID int
declare @Fecha1 int
declare @Fecha2 date
declare @Contador int
select @EmpID = EmployeeID 
from inserted
select @Fecha2 = OrderDate 
from inserted 
where EmployeeID = @Empid
select @Fecha1 = datepart(ww,OrderDate) 
from Orders 
where EmployeeID = @Empid and
OrderDate = @Fecha2
select @contador = count(*) 
from Orders 
where EmployeeID = @EmpID
group by datepart(ww,OrderDate),datepart(yy,OrderDate)
order by 1 asc
if @Contador > 50
begin
 if @Fecha1 > 1
 begin
 rollback tran
 raiserror('NO SE PUEDE VENDER MAS DE 50 ORDENES EN UNA SEMANA POR  EMPLEADO',16,1)
 end
end
go

--A la tabla products se agregó el campo MaximoPruductosVendidos, que representa el límite máximo de venta de productos,
--por ejemplo, si el máximo de productos vendidos es 10, solamente se puede vender 10 productos como máximo. 
--Validar que no se sobrepasen ese máximo de productos. 
Alter table products add MaximoPruductosVendidos numeric(12,2)
update products set MaximoPruductosVendidos = 10

--EXAMEN TRIGGERS
--Validar en la tabla employees que un jefe no tenga a su cargo más de 5 empleados.
create trigger tr_empleados
on employees for insert as
declare @contador int, @jefe_emp nvarchar(15)

select @jefe_emp = reportsto
from inserted

select @contador = count(*)
from employees

where reportsto = @jefe_emp

if(@contador>5)

begin
	rollback tran
	raiserror('Un jefe no puede tener a su cargo más de 5 empleados...',16,1)
end
go

--Utilizando trigger, simular la llave primaria de la tabla Ciudades( Clave int, Nombre varchar(100)) , pero con la variante que acepte solo dos veces la misma clave.
create table Ciudades(Clave int, Nombre varchar(100))
create trigger tr_ciudades
on Ciudades for insert, update as
declare @clave int

select @clave = clave from inserted

if(@clave is not null)
begin
	if(select count(*) from Ciudades where clave = @clave) > 2
	begin
	rollback tran
	raiserror('Solo se acepta dos veces la misma clave...',16,1)
	end
end

--Validar que solo se pueda actualizar un solo campo a la vez en la tabla siguiente:
--Clientes(clave, CliNombre , CliDomicilio , CliTelefono , CliCorreo ).
create table Clientes(Clave int, CliNombre varchar(50), CliDomicilio varchar(50), CliTelefono varchar(50), CliCorreo varchar(50))
create trigger tr_actualizar
on Clientes for update as
if update(Clave) and update(CliNombre) and update(CliDomicilio) and update(CliTelefono) and update(CliCorreo)
	begin
	rollback tran
	raiserror('Solo se puede actualizar un campo a la vez..',16,1)
end

--Validar que no se puedan eliminar employees y customers los lunes.
create trigger tr_eliminarLunes
on employees for delete as
declare @dia int

select @dia = DATEPART(dw, getdate())

if @dia = 2
begin
	rollback tran
	raiserror('No es posible eliminar Employees en lunes...',16,1)
end

create trigger tr_eliminarLunes2
on Customers for delete as
declare @dia int

select @dia = DATEPART(dw, getdate())

if @dia = 2
begin
	rollback tran
	raiserror('No es posible eliminar Customers en lunes...',16,1)
end