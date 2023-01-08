--Dar de alta al IS ALMA para que pueda apagar el servidor.
create login ALMA with password = '123'
must_change, check_expiration = on
go
sp_dropSRVRoleMember ALMA, ServerAdmin

--Permitir que cualquier usuario de la BD VENTAS pueda solamente insertar todas sus tablas.
use VentasExamen
grant insert on clientes to public
grant insert on empleados to public
grant insert on ventas to public

--Dar de alta al IS CARLOS para que actualice solamente las dos primeras columnas de todas las tablas de la BD ALMACENES.
create login CARLOS with password = '123'
must_change, check_expiration = on
go
use Almacenes
go
create user CARLOS
grant update on camiones(camID, cmaNombre) to CARLOS
grant update on clientes(cteID, cteNombre) to CARLOS
grant update on envíos(folio, envFecha) to CARLOS


--Dar de alta al IS LUIS para que pueda programar procedimientos almacenados para que se ejecuten en el arranque del servidor.
create login LUIS with password = '123'
must_change, check_expiration = on
go
sp_dropSRVRoleMember LUIS, SetupAdmin

--Dar de alta al IS CONRADO para que pueda crear cualquier objeto (tabla, vista, proc. alm., función) en la BD VENTAS y ALMACENES.
create login CONRADO with password = '123'
must_change, check_expiration = on
go
use VentasExamen
create user CONRADO
go
sp_AddRoleMember db_ddlAdmin, CONRADO
go
use Almacenes
create user CONRADO
go
sp_AddRoleMember db_ddlAdmin, CONRADO

--Es necesario que cualquier IS pueda consultar y modificar (insert,update,delete) todas las tablas de la BD ALMACENES.
use Almacenes
go
grant select on schema::dbo to public 
grant insert on schema::dbo to public 
grant delete on schema::dbo to public 
--Nota: en vez de public es con GUEST

--Dar de alta al IS PEDRO para que puedan ejecutar los comandos SELECT, INSERT, UPDATE, DELETE en todas las tablas de la BD VENTAS.
create login PEDRO with password = '123'
must_change, check_expiration = on
go
use VentasExamen
create user PEDRO
go
grant select on schema::dbo to public 
grant insert on schema::dbo to public 
grant update on schema::dbo to public 
grant delete on schema::dbo to public 
revoke delete on schema::dbo to public

--En la base de datos VENTAS, al usuario LARA previamente se le otorgó el permiso de consultar todas las tablas. Realizar el código para quitarle al usuario LARA el permiso de consultar todas las tablas en la base de datos VENTAS.
use VentasExamen
go
revoke select on schema::dbo to LARA

--Dar de alta el IS ALBERTO para que pueda dar de alta IS y pueda dar acceso a usuarios a todas las BD.
create login ALBERTO with password = '123'
must_change, check_expiration = on
go
sp_addSRVRoleMember ALBERTO, SysAdmin
--Nota: No es con SYSADMIN

--Crear la función de usuario (role) llamada PROYECTO para que pueda crear tablas y vistas en la BD ALMACENES. Agregar al IS JOSE en la función PROYECTO.
use Almacenes
go
sp_AddRole PROYECTO
go
grant create view, create table to PROYECTO
grant alter on schema::dbo to PROYECTO
go
sp_AddRoleMember PROYECTO, JOSE
--Nota: falta dar de alta a IS JOSE