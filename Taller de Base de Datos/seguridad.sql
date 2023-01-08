create database ventas
go
use ventas
create table clientes(
cte int primary key, nombre varchar(50), domicilio varchar(50))
go
create table articulos(clave int primary key, nombre char(50))
go
--crear el inicio de sesion mario
create login mario with password='123'
must_change, check_expiration = on

--validar las caracteristicas de mario
sp_helplogins mario

--cambiar al IS mario la bd ventas como bd default
alter login mario with default_database = master

--darle acceso al IS mario a la bd ventas
use ventas
create user mario

sp_helplogins mario
