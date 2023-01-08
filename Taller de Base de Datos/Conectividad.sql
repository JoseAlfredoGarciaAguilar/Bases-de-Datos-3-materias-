--EJERCICIO
--1.-Crear la bd almacenes
create database ALMACENES
go
--2.- Crear las tablas
USE ALMACENES
CREATE TABLE CLIENTES ( CTE INT , NOMBRE VARCHAR(100) , DOMICILIO VARCHAR(100) )
CREATE TABLE PRODUCTOS(PROD INT, NOMBRE VARCHAR(100) , PRECIO NUMERIC(12,2) )
CREATE TABLE EMPLEADOS ( EMP INT, NOMBRE CHAR(50), TELEFONO CHAR(20 ) )
--3.-Dar de alta los inicios de sesion ernesto, pablo
create login ernesto with password = '123'
create login pablo with password = '123'
--4.-Dar acceso a la bd almacenes a los inicios de sesion ernesto, pablo
use almacenes
create user ernesto
create user pablo
--5.-Dar de alta la funcion control en la bd almacenes
use almacenes
sp_addrole control
--6.-Dar permisos a la funcion control sobre clientes
use almacenes
grant insert, update on clientes to control
grant select on clientes(cte,nombre) to control



grant insert on productos to control
grant update on productos(prod, nombre) to control
grant select on productos(prod, nombre) to control
--7.-Agregar a los usuarios a la funcion control
sp_addrolemember control, ernesto
sp_addrolemember control, pablo
--8.-Darle permiso a public para seleccionar empleados
use almacenes
grant select on empleados to public
--Darle permiso a public para insertar en empleado
use alamcenes
grant insert empleados to public
--Darle permiso a public para actualizar clave y nombre del empleado
use almacenes
grant update on empleados(emp, nombre) to public
--Quitar los permisos de seleccion a public sobre empleados
deny select on empleados to public
--9.-Como funciona deny
--Darle permiso a ernesto de seleccionar empleados
use almacenes
grant select on empleados to ernesto
--Darle permiso a la funcion control de seleccionar empleados
use alamcenes
grant select on empleados to control
grant select on empleados to public
--Revocamos permiso de seleccion a ernesto
--sigue conservando permisos por la funcion control
use alamacenes
revoke select on empleados to ernesto
--Con deny le elimina por cualquier medio el permiso de seleccion
use alamcenes
deny select on empleados to ernesto
--deny es mas poderoso que el revoke