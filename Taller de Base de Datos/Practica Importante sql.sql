create database Tienditauwu

use Tienditauwu

CREATE TABLE "Empleados" (
	"ID_Empleado" nchar(8) NOT NULL ,
	"Nombre" nvarchar (20) NOT NULL ,
	"Apellido" nvarchar (10) NOT NULL ,
	"Fecha_Cumplea�os" "datetime" NULL ,
	"Ciudad" nvarchar (15) NULL ,
	"Codigo_Postal" nvarchar (10) NULL ,
	"Pais" nvarchar (15) NULL ,
	"Telefono" nvarchar (24) NULL ,
)

insert Empleados values('18145201', 'Alfredo', 'Garcia', '1999-11-08', 'Culiacan', '80199', 'Mexico', '6673432113')
insert Empleados values('17159942', 'Mauricio', 'Lopez', '1988-01-13', 'Cancun', '78491', 'Mexico', '6671334670')
insert Empleados values('18161200', 'Diego', 'Gutierrez', '2000-12-01', 'Los Mochis', '80602', 'Mexico', '6671663374')
insert Empleados values('19187304', 'Roman', 'Reigns', '1974-06-19', 'Mazatlan', '85319', 'Mexico', '6677664310')
insert Empleados values('17159942', 'Fernanda', 'Wilson', '1988-11-28', 'M�rida', '77451', 'Mexico', '6673164279')

--Seleccionar todo de la tabla Empleados
Select *
From Empleados

--Seleccionar los 4 Empleados con mayor Edad
Select TOP 4 *
From Empleados
Order by Fecha_Cumplea�os desc

--Seleccionar la Clave, Nombre, Apellido y Telefono de los Empleados nacidos en 1988
Select ID_Empleado, Nombre, Apellido, Telefono
From Empleados
Where year(Fecha_Cumplea�os) = 1988

--Consultar el nombre del Empleado y Fecha de Nacimiento, debe aparecer asi: 'CARLOS GARCIA NACI� EL D�A 8 DE MARZO DE 2000'
--UPPER es para cambiar a MAYUSCULAS
Select UPPER(Nombre) + ' ' + UPPER(Apellido) + ' NACI� EL D�A ' + UPPER(datename(dw,Fecha_Cumplea�os)) + ' DE ' + UPPER(datename(dd,Fecha_Cumplea�os)) + ' DE ' +
UPPER(datename(mm,Fecha_Cumplea�os)) + ' DE ' + convert(char(4),datepart(yy,Fecha_Cumplea�os))
From Empleados

--Consultar con los empleados que hayan nacido hace 21 a�os
Select ID_Empleado, Nombre, Apellido, a�o = year(Fecha_Cumplea�os)
From Empleados
Where year(Fecha_Cumplea�os) = 2000

--Consultar con todas los Empleados que hayan nacido en los meses que inician con vocal
Select *
From Empleados
Where datename(dd,Fecha_Cumplea�os) = 'Enero' or datename(dd,Fecha_Cumplea�os) = 'Abril' or datename(dd,Fecha_Cumplea�os) = 'Agosto'  or datename(dd,Fecha_Cumplea�os) = 'Octubre'

