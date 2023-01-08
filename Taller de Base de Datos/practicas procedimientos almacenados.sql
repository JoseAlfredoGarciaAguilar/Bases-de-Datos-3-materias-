--practicas procedimientos almacenados
--ej 1. sp que imprime hola mundo
create procedure sp_prueba1
as
print 'HOLA MUNDO'
execute sp_prueba1
drop procedure sp_prueba1

--ej 2. sp que muestra todos los datos del empleado con id igual a 5
create procedure sp_consulta
as
select * from employees
where employeeid = 5
execute sp_consulta
drop procedure sp_consulta

--ej 3. sp que resta una cantidad al precio de un producto unitario y lo actualiza
create procedure sp_restar
@CodProd as int,
@Cantidad as int
as
update products set unitprice = unitprice - @Cantidad
where productid = @CodProd

select * from products

exec sp_restar 9, 35

drop procedure sp_restar

--ej 4. sp que suma una cantidad al precio de un producto unitario y lo actualiza
create procedure sp_sumar
@CodProd as int,
@Cantidad as int
as
update products set unitprice = unitprice + @Cantidad
where productid = @CodProd
select * from products
exec sp_sumar 6, 85
drop procedure sp_sumar

--ej 5. proc alm que muestra el id y fecha de contratacion de los empleados contratados en 1993
create procedure sp_añocontratacion as
select ID_Empleado = employeeid, Fecha_Contratacion = hiredate from employees
where year(hiredate) = 1993
exec sp_añocontratacion
drop procedure sp_añocontratacion

--ej 6. proc alm que agrega un nuevo shipper
create procedure sp_agregarshipper as
insert "Shippers"("ShipperID","CompanyName","Phone") values(4,'Telmex','(503) 555-9771')
exec sp_agregarshipper
select * from shippers
drop procedure sp_agregarshipper

