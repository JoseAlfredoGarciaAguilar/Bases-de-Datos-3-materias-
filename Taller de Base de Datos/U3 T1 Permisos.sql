create database BD1
use BD1
create table clientes(
cteId int identity(1,1) not null,
cteNombre varchar(30) not null,
cteDom varchar(30) not null
)
create table empleados(
empId int identity(1,1) not null,
empNombre varchar(30) not null,
empDom varchar(30) not null,
empTel nvarchar(10) not null
)
create table ventas_BD1(
ventDB1Folio int identity(1,1) not null,
ventDB1Fecha datetime not null,
ventDB1Cte int not null,
ventDB1Emp int not null
)

create database BD2
use BD2
create table productos(
prod int identity(1,1) not null,
nombre varchar(30) not null,
cat varchar(30) not null,
precio int not null
)
create table categorias(
cat int identity(1,1) not null,
nombre varchar(30) not null
)
create table ventas_BD2(
folio int identity(1,1) not null,
fecha datetime not null,
prod int not null,
cantidad int not null,
precio int not null
)

--U3 T1 PERMISOS
-- Realizar las siguientes políticas de seguridad:
--1.- Dar de alta al IS ALMA pueda apagar el servidor con el comando SHUTDOWN.
create login ALMA with password='123'
must_change, check_expiration=on
go
sp_addSRVRoleMember ALMA, ServerAdmin

--2.- Dar de alta al IS JUAN para que pueda auxiliar en la administración de inicios de sesión, que pueda dar de alta inicios de sesión y cambiar password.
create login JUAN with password='000'
must_change, check_expiration=on
go
sp_addSRVRoleMember JUAN, SecurityAdmin

--3.- Dar de alta al IS JOSE y configurarlo para que tenga las mismas características que el inicio de sesión SA.
create login JOSE with password='000'
must_change, check_expiration=on
go
sp_addSRVRoleMember JOSE, SysAdmin

--4.- Dar de alta al IS ANA debe tener permiso de seleccionar y modificar todas las tablas de la BD1.
create login ANA with password='000'
must_change, check_expiration=on
go
use BD1
create user ANA
go
sp_AddRoleMember db_DataReader, ANA
GO
sp_AddRoleMember db_DataWriter, ANA
GO

--5.- Dar de alta al IS PEDRO para que pueda seleccionar todas las tablas de las bases de datos BD1 y BD2.
create login PEDRO with password='000'
must_change, check_expiration=on
go
use BD1
create user PEDRO
go
sp_AddRoleMember db_DataReader, PEDRO
go
use BD2
create user PEDRO
go
sp_AddRoleMember db_DataReader, PEDRO

--6.- Dar de alta al IS NORA Y PERLA para que puedan crear todos los objetos en BD1.
create login NORA with password='000'
must_change, check_expiration=on
go
use BD1
create user NORA
go
sp_AddRoleMember db_ddlAdmin, NORA
GO
create login PERLA with password='000'
must_change, check_expiration=on
go
use BD1
create user PERLA
go
sp_AddRoleMember db_ddlAdmin, PERLA
GO

--7.- En la base de datos BD1 crear la función CONSULTA y darle permiso para que pueda seleccionar solo las 2 primeras columnas de cada tabla.
use BD1
sp_AddRole CONSULTA
grant select on clientes(cteId, cteNombre) to CONSULTA
grant select on empleados(empId, empNombre) to CONSULTA
grant select on ventas_BD1(ventDB1Folio, ventDB1Fecha) to CONSULTA
 
--8.- A los IS NORA Y PERLA creados en el punto 6, agregarlos en la función CONSULTA de la base de datos BD1.
sp_AddRoleMember db_DataReader, NORA
GO
sp_AddRoleMember db_DataReader, PERLA
GO

--9.- Dar de alta al IS CARLOS y que pueda insertar y eliminar datos en la BD2, además pueda crear vistas y tablas en la misma base de datos.
create login CARLOS with password='000'
must_change, check_expiration=on
go
use BD2
go
create user CARLOS
grant insert on productos to CARLOS --permite insertar
grant insert on categorias to CARLOS
grant insert on ventas_BD2 to CARLOS
grant delete on productos to CARLOS --permite eliminar
grant delete on categorias to CARLOS
grant delete on ventas_BD2 to CARLOS
grant create view, create table to CARLOS --permite crear vistas y tablas
grant alter on schema::dbo to CARLOS

--10.- Quitarle el acceso al servidor a JOSE.
ALTER LOGIN JOSE DISABLE 



--EXAMEN
--1.
create login ALMA with password='123'
must_change, check_expiration=on
go
sp_addSRVRoleMember ALMA, ServerAdmin

--2.
create login LUIS with password='123'
go
create user LUIS
go
SP_addSRVRoleMember LUIS, SetupAdmin

--3. 
use Almacenes
go
grant select on schema::dbo to guest
grant insert on schema::dbo to guest
grant update on schema::dbo to guest
grant delete on schema::dbo to guest

--4.
create login JOSE with password = '123'
must_change, check_expiration = on
go
use Ventas
go
sp_AddRole DESARROLLADORES
go
grant alter on schema::dbo to DESARROLLADORES
go
sp_AddRoleMember DESARROLLADORES, JOSE

--5.
use Ventas
go
revoke select on schema::dbo to LARA

--6.
create login ALBERTO with password = '123'
must_change, check_expiration = on
go
grant backup database to ALBERTO
grant restore database to ALBERTO

--7.
create login CONRADO with password = '123' 
use Ventas
go
create user CONRADO
sp_AddRoleMember db_ddlAdmin CONRADO 
use Almacenes
go
create user CONRADO
sp_AddRoleMember db_ddlAdmin CONRADO
use Ventas

--8
create login CARLOS with password = '123' 
go 
create user CARLOS
go
use Almacenes
grant select on envios(folio, fecha) to CARLOS
grant select on clientes(cteid, ctenombre) to CARLOS
grant select on camiones(camid, camnombre) to CARLOS

--9.
create login PEDRO with password = '123' 
go 
use Ventas
create user PEDRO
go
sp_AddRoleMember db_DataReader, PEDRO
sp_AddRoleMember db_DataWriter, PEDRO

o

create login PEDRO with password = '123'
must_change, check_expiration = on
go
use Ventas
create user PEDRO
go
grant select on schema::dbo to public 
grant insert on schema::dbo to public 
grant update on schema::dbo to public 
grant delete on schema::dbo to public 

--10.
use Ventas
go
grant insert on schema::dbo to guest