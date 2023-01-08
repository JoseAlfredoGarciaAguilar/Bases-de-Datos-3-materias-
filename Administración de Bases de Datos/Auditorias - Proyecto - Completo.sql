/*PROYECTO DE AUDITORIAS*/
/*1.- Proponer un método de Auditar el comando select sobre todas la tablas de la base de datos Norhwind. 
	  Realizar 5 consultas y exponga el método de revisión de la auditoria.*/
SELECT * FROM FN_GET_AUDIT_FILE('C:\Auditorias\*', DEFAULT, DEFAULT)

SELECT * FROM EMPLOYEES
SELECT * FROM CUSTOMERS
SELECT * FROM PRODUCTS
SELECT * FROM REGION
SELECT * FROM CATEGORIES

/*2.- Proponer un método para auditar la execución de todos los procedimientos almacenados de la bd Northwind. 
	  Crear dos procedimientos almacenado y exponga el método de revisión de la auditoría.*/
CREATE PROC SP_CLIENTES
AS
BEGIN
	SELECT * FROM CUSTOMERS
END
GO
CREATE PROC SP_EMPLEADOS
AS
BEGIN
	SELECT * FROM EMPLOYEES
END
GO
SELECT * FROM FN_GET_AUDIT_FILE('C:\Auditorias\*', DEFAULT, DEFAULT) WHERE action_id = 'EX'
EXECUTE SP_CLIENTES
EXECUTE SP_EMPLEADOS
/*3.- Utilizando trigger DDL a nivel servidor auditar la creación, eliminación o modificación de base de datos y de inicios de sesión. 
	Grabar en una tabla: 
	ID
	fecha del evento, 
	inicio de sesión, 
	acción, 
	sentencia y 
	detalle del evento XML. 
	Realizar 5 acciones sobre base de datos y 5 acciones sobre inicios de sesión.*/
use master
go
create table LogCambiosDDLServidor(
ID int identity primary key,
Fecha datetime not null constraint DF_LogCambiosDDL_FechaCambio default (GetDate()),
InicioSesion varchar(500) not null,
Accion varchar(500) not null,
Sentencia varchar(max) not null,
DetalleEvento xml not null
)
go
-- Trigger DLL sobre base de datos
create trigger trBD_Problema_3
on all server
for CREATE_DATABASE, ALTER_DATABASE, DROP_DATABASE,
	DDL_SERVER_SECURITY_EVENTS
as
begin
	set nocount on;
	-- Declaracion de variables de proceso
	declare @InfoEvento xml, @Accion varchar(500), @Objeto varchar(500), @Sentencia varchar(max)
	-- 1.- Captura de evento en variable pricipal
	set @InfoEvento = EVENTDATA();

	-- 2.- Consumir informacio en variables secundarias usando xQuery
	-- Captura la accion DDL (Si es create, alter o drop)
	set @Accion = @InfoEvento.value('(/EVENT_INSTANCE/EventType)[1]','varchar(500)')

	-- Capturamos las sentencias ejecutadas
	set @Sentencia = @InfoEvento.value('(/EVENT_INSTANCE/TSQLCommand)[1]','varchar(max)')

	-- 3.- Almacenar detalles de la accion en tabla log
	insert LogCambiosDDLServidor(Fecha,InicioSesion,Accion,Sentencia,DetalleEvento)
	values(
		GETDATE(),
		SUSER_NAME(),
		@Accion,
		@Sentencia,
		@InfoEvento
	)
end
go 
-- Pruebas Inicios de Sesion
create login Mario with password = '123'
must_change, check_expiration = on
go
create login Marioss with password = '123'
must_change, check_expiration = on
go
sp_addsrvrolemember Marioss, Securityadmin
go
sp_dropsrvrolemember Marioss, Securityadmin
go
drop login Marioss
drop login Mario
select * from LogCambiosDDLServidor
go
-- Pruebas Bases de Datos
create database [Prueba 1]
create database [Prueba 2]
create database [Prueba 3]
go
drop database [Prueba 1]
go
drop database [Prueba 2]
select * from LogCambiosDDLServidor
/*4.- Utilizando trigger DDL a nivel de base de datos auditar la creación, eliminación o modificación de tablas vistas, 
	  procedimientos almacenados, funciones y trigger. Grabar en una tabla:
	ID,
	Fecha del evento, 
	inicio de sesión, 
	usuario de base de datos, 
	acción, 
	objeto, 
	sentencia y 
	detalle del evento XML. 
	Realizar un comando para vistas, procedimientos almacenados, funciones y trigger.*/
use NorthWind
go
create table LogCambiosDDL(
ID int identity primary key,
Nivel char(1) not null,
Fecha datetime not null constraint DF_LogCambiosDDL_FechaCambio default (GETDATE()),
InicioSesion varchar(500) not null,
Usuario varchar(500) not null,
Accion varchar(500) not null,
Objeto varchar(500),
Sentencia varchar(max) not null,
DetalleEvento xml not null
)
go
-- Trigger DLL sobre base de datos: Auditoria sobre creacion, modificacion y eliminacion de tablas/vistas/procedimientos/triggers/funciones
create trigger trDB_AuditoriaCambios
on database
for CREATE_TABLE, ALTER_TABLE, DROP_TABLE,
	CREATE_VIEW, ALTER_VIEW, DROP_VIEW,
	CREATE_PROCEDURE, ALTER_PROCEDURE, DROP_PROCEDURE,
	CREATE_TRIGGER, ALTER_TRIGGER, DROP_TRIGGER,
	CREATE_FUNCTION, ALTER_FUNCTION, DROP_FUNCTION
as
begin
	set nocount on;
	-- Declaracion de variables de proceso
	declare @InfoEvento xml, @Accion varchar(500), @Objeto varchar(500), @Sentencia varchar(max)
	-- 1.- Captura de evento en variable pricipal
	set @InfoEvento = EVENTDATA();

	-- 2.- Consumir informacio en variables secundarias usando xQuery
	-- Captura la accion DDL (Si es create, alter o drop)
	set @Accion = @InfoEvento.value('(/EVENT_INSTANCE/EventType)[1]','varchar(500)')

	-- Captura el nombre objeto afectado, anteponiendo el nombre del esquema
	set @Objeto = @InfoEvento.value('(/EVENT_INSTANCE/SchemaName)[1]','varchar(500)')
								+ '.' + @InfoEvento.value('(/EVENT_INSTANCE/ObjectName)[1]','varchar(500)')

	-- Capturamos las sentencias ejecutadas
	set @Sentencia = @InfoEvento.value('(/EVENT_INSTANCE/TSQLCommand)[1]','varchar(max)')

	-- 3.- Almacenar detalles de la accion en tabla log
	insert LogCambiosDDL(Nivel,Fecha,InicioSesion,Usuario,Accion,Objeto,Sentencia,DetalleEvento)
	values(
		'B', -- Indica que el evento es de tipo base de datos
		GETDATE(),
		SUSER_NAME(),
		CURRENT_USER,
		@Accion,
		@Objeto,
		@Sentencia,
		@InfoEvento
	)
end
go
-- Pruebas
-- TABLAS
create table TablaTest1 (C1 int, C2 date)
alter table TablaTest1 add C3 bit
drop table TablaTest1
select * from LogCambiosDDL
go
-- VISTAS
create view vw_OrdersPrueba as
select O.OrderID, O.OrderDate, E.LastName, C.CompanyName from Orders O
inner join Employees E on E.EmployeeID = O.EmployeeID 
inner join Customers C on C.CustomerID = O.CustomerID
go
alter view vw_OrdersPrueba as
select * from Orders
go
drop view vw_OrdersPrueba
select * from LogCambiosDDL
go
-- TRIGGER
create trigger tr_prueba
on Region for delete as
begin
	select 'Hola'
end
go
alter trigger tr_prueba
on Region for delete as
begin
	select 'Adios'
end
go
drop trigger tr_prueba
select * from LogCambiosDDL
go
-- PROCEDIMIENTOS
create proc sp_Prueba as
begin
	select * from Region
end
go
alter proc sp_Prueba as
begin
	select * from Customers
end
go
drop proc sp_Prueba
select * from LogCambiosDDL
go
/*5.- Auditar los cambios de las tablas de la base de datos Northwind, grabar en una tabla los campos:
	  TipoTransaccion: insert, update, delete
	Nombre de la Tabla
	Campo de la llave primaria
	Campo Modificado
	Valor Original
	Valor Nuevo
	Fecha de la transacción
	Nombre de Usuario*/
-- Se uso el mismo script del trigger para todos lo pedido, solo usamos el alter y cambiamos el nombre del trigger para cada tabla
use Northwind4
go
create table LogTransacciones(
TipoTrn char(1), -- Insert, Update, Delete
Tabla varchar(128),
PK varchar(1000),
CampoModificado varchar(128),
ValorOriginal varchar(1000),
ValorNuevo varchar(1000),
FechaTrn datetime,
Usuario varchar(128)
)
go
create trigger [tr Problema 5 Region]
on Region for insert, delete,update
as
begin
	declare @TipoTrn char(1), @Tabla varchar(128), @Usuario varchar(128), @FechaTrn datetime
    declare	@ValorNuevo varchar(1000), @ValorViejo varchar(1000),@PK varchar(1000)
	if(exists(select*from inserted))
	begin
		if(exists(select*from deleted))
		begin
			select @TipoTrn = 'U'
		end
		else
		begin
			select @TipoTrn = 'I'
		end
	end
	else
	begin
		select @TipoTrn = 'D'
	end
	select @Tabla = 'Region'
	select @Usuario = system_user
	select @FechaTrn = getdate()
	-- Validar si se cambia el campo nombre
	if update(RegionDescription) or @TipoTrn = 'D' or @TipoTrn = 'U'
	begin
		select @ValorNuevo = convert(varchar(1000),RegionDescription ) from inserted
		select @ValorViejo = convert(varchar(1000),RegionDescription ) from deleted

		if(exists(select*from inserted))
		begin
			select @PK = 'PK = ' + convert(varchar(1000),RegionID) from inserted
		end
		else
		begin
			select @PK = 'PK = ' + convert(varchar(1000),RegionID) from deleted
		end

		insert LogTransacciones (TipoTrn,Tabla,PK,CampoModificado,ValorOriginal,ValorNuevo,FechaTrn,Usuario)
		values(@TipoTrn,@Tabla,@PK,'RegionDescription ',@ValorViejo,@ValorNuevo,@FechaTrn,@Usuario)
	end
end
go
-- Products - UnitPrice - Update
update Products set UnitPrice = 12 where ProductID = 2
select * from LogTransacciones
-- Customers - address y Phone - Update
update Customers set Address = 'Hola' where CustomerID = 'ALFKI'
update Customers set Phone = 'Nuevo' where CustomerID = 'ALFKI'
select * from LogTransacciones
-- Region - * - Delete/Insert
insert into Region values(5,'SurEste')
delete Region where RegionID = 5
select * from LogTransacciones
