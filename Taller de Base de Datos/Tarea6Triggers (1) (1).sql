--INTEGRANTES DEL EQUIPO:
--GUZMAN BAJO JORGE HORACIO
--CASTRO PARRA ALBERTO MANUEL
use Northwind
--1.- Utilizando trigger, validar que solo se vendan ordenes de lunes a viernes.
create trigger tr_OrdenesDias
on Orders for insert as
declare  @Fecha date
select @Fecha = OrderDate from inserted


if (datepart(dw,@Fecha) in (1,7))
begin
	rollback tran
	raiserror('NO SE PERMITEN LOS SABADOS NI DOMINGOS',16,1)
end
go
--ejecucion
insert Orders values(11075,'RICSU',8,'11-03-2020 00:00:00.000','11-16-2020 00:00:00.000',NULL,2,10.95,'Richter Supermarkt','Starenweg 5','Genève',NULL,1204,'Switzerland')
select * from Orders

insert Orders values(11075,'RICSU',8,'10-31-2020 00:00:00.000','11-15-2020 00:00:00.000',NULL,2,10.95,'Richter Supermarkt','Starenweg 5','Genève',NULL,1204,'Switzerland')
select * from Orders
--2.- Validar que no se vendan mas de 20 ordenes por empleado en una semana.
create trigger tr_OrdenesEmp 
on Orders for insert as
declare @EmpID int
declare @Fecha int
declare @Fecha2 date
declare @Cont int

select @EmpID = EmployeeID 
from inserted
select @Fecha2 = OrderDate 
from inserted 
where EmployeeID = @Empid
select @Fecha = datepart(ww,OrderDate) 
from Orders 
where EmployeeID = @Empid and OrderDate = @Fecha2
select @cont = count(*) 
from Orders  
where EmployeeID =  @EmpID
group by datepart(ww,OrderDate),datepart(yy,OrderDate)
order by 1 asc

if @Cont > 20
begin
  if @Fecha > 1
    begin
    rollback tran
    raiserror('NO SE PUEDE VENDER MAS DE 20 ORDENES',16,1)
    end
end
go
--3.- Validar que el campo firstname en la tabla employees solamente tenga nombres que inicien con vocal.
create trigger tr_NombreEmpleadoVocal
on Employees for insert as
declare @Nom char(50)

select @Nom = FirstName from inserted

if @Nom not like '[aeiou]%'
begin
	rollback tran
	raiserror('NO SE PERMITEN NOMBRES QUE NO INICIEN CON UNA VOCAL',16,1)
end
go

--ejecucion
insert Employees values(10,'Guzman','Antonio','Sales Manager','Mr.','09-13-1968','10-10-2000','Iztaccihualt street','Culiacan Rosales',NULL,'80029', 'MX',6674022339,667,NULL,NULL,5,NULL)
select * from Employees


insert Employees values(10,'Bajo','Patricio','Sales Manager','Ms.','02-19-1970','10-10-2020','Iztaccihualt','Culiacan Rosales',NULL,'80029', 'MX',6677556000,667,NULL,NULL,2,NULL)
select * from Employees
--4.- validar que el importe de venta de cada orden no sea mayor a $10,000.
create trigger tr_ImporteOrden
on [Order Details] for insert as
declare @Cve int
declare @Imp numeric(12,2)
select @Cve = OrderID 
from inserted
select @Imp = Sum(Quantity*UnitPrice) 
from [Order Details] 
where OrderID = @Cve

if @Imp > 10000 
begin
	rollback tran
	raiserror('ES MAYOR A $10,000 POR ORDEN',16,1)
end
go


insert [Order Details] values(11078,75,15.00,100,0)--15*100=$1500
insert [Order Details] values(11078,73,10.00,500,0)--10*500=$5000   ==Total $6500
select * from [Order Details]


insert [Order Details] values(11078,66,17.00,200,0)--17*200=$3400
insert [Order Details] values(11078,73,15.00,600,0)--15*600=$9000  ==Total $12400
select * from [Order Details]
--5.- validar que no se puedan eliminar ordenes que se hicieron los lunes.
create trigger tr_OrdenesLunes
on Orders for delete as
declare  @Fecha date
select @Fecha = OrderDate from deleted

if (datepart(dw,@Fecha) in (2))
begin
	rollback tran
	raiserror('NO PUEDES ELIMINAR LAS ORDENES QUE SE HICIERON EL DIA LUNES',16,1)
end
go

--ejecucion
delete Orders where OrderID = 10816--Martes 06 de Enero de 1998 == Se puede eliminar
select * from Orders


delete Orders where OrderID = 10815--Lunes 05 de Enero de 1998 == No se puede eliminar
select * from Orders
--6.- Validar que no se realicen inserciones masivas en la tabla products.
create trigger tr_InsercionDeProductos
on Products for insert as
declare @Cont int
select @Cont = count(*) 
from inserted

if @Cont>1
begin
	rollback tran
	raiserror('NO SE PERMITEN INSERCIONES MASIVAS EN LA TABLA [PRODUCTOS]',16,1)
end

--ejecucion
insert Products values(78,'Santa Clara',12,2,'12 Pzas',35.75,50,0,15,0)--Insercion Normal
select * from Products

insert Products values(78,'Santa Clara',12,2,'12 Pzas',35.75,50,0,15,0),(79,'Volt Drink',12,2,'12 Pzas',20.25,25,0,25,0)--Insercion Masiva
select * from Products
--7.- Validar que no se pueda modificar el campo unitprice de la tabla [order details].
create trigger tr_ModificarPrecio
on [Order Details] for update as
if update (unitPrice) 
begin 
	rollback tran
	raiserror('NO SE PUEDE MODIFICAR EL PRECIO UNITARIO',16,1)
end

--ejecucion
update [Order Details] set Quantity = 14 where OrderID = 10248 and ProductID = 42
select * from [Order Details]


update [Order Details] set UnitPrice = 15.50 where OrderID = 10248 and ProductID = 42
select * from [Order Details]
--8.- Validar que solo se pueda actualizar una sola vez el nombre del cliente.
alter table Customers add Contador int
update Customers set Contador = 0
alter table Customers drop column Contador

create trigger tr_ClientesNom
on Customers for update as
declare @Cve nchar(5), @Cont int

select @Cve = CustomerID 
from inserted
select @Cont = isNull(Contador,0) 
from inserted

if update (contactName)
begin
if @Cont>0
begin
	rollback tran
	raiserror('NO SE PUEDE ACTUALIZAR MAS DE UNA VEZ EL NOMBRE DEL CLIENTE',16,1)
end
else
	update Customers set Contador = @Cont+1 where CustomerID = @Cve
end

--ejecucion
update Customers set ContactName = 'Ana López' 
where CustomerID = 'ANATR'
select * from Customers


update Customers set ContactName = 'Ana Trujillo' 
where CustomerID = 'ANATR'
select * from Customers
--9.- Validar que no se puedan eliminar categorías que tengan una clave impar.
create trigger tr_CateogriasImpar
on Categories for delete as
declare  @Cve int
select @Cve = CategoryID 
from deleted


if (@Cve%2=1)
begin
	rollback tran
	raiserror('NO SE PERMITE ELIMINAR LAS CATEGORIAS SI TIENEN CLAVE IMPAR',16,1)
end
go

--ejecucion
delete Categories 
where CategoryID = 4
select * from Categories


delete Categories 
where CategoryID = 5
select * from Categories
--10.- Validar que no se puedan insertar ordenes que se realicen en domingo.
create trigger tr_InsertarOrdenDomingo
on Orders for insert as
declare  @Fecha date
select @Fecha = OrderDate from inserted


if (datepart(dw,@Fecha) in (1))
begin
	rollback tran
	raiserror('NO PUEDES REALIZAR ORDENES LOS DIAS DOMINGOS',16,1)
end
go

--Ejecucion
insert Orders values(11075,'RICSU',8,'11-03-2020 00:00:00.000','11-16-2020 00:00:00.000',NULL,2,10.95,'Richter Supermarkt','Starenweg 5','Genève',NULL,1204,'Switzerland')
select * from Orders

insert Orders values(11075,'RICSU',8,'10-31-2020 00:00:00.000','11-15-2020 00:00:00.000',NULL,2,10.95,'Richter Supermarkt','Starenweg 5','Genève',NULL,1204,'Switzerland')
select * from Orders