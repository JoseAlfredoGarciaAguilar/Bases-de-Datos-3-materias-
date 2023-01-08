--1.- RESTAURAR LA BD UTILIZANDO LOS ARCHIVOS ELECCIONES.MDF Y ELECCIONES_LOG.LDF. ENTREGAR EL CODIGO PARA LA RESTAURACION E IMPRIMIR EL MODELO DE DATOS DE LA BD QUE CONTIENE.
sp_attach_db @dbname = 'elecciones',
@filename1= 'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\elecciones.mdf',
@filename2 ='C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\elecciones_log.ldf'

/*
create database elecciones 
on 
(filename = 'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\elecciones.mdf'),
(filename = 'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\elecciones_log.ldf')
for attach;

drop database elecciones
*/

/*
--2.- DEL ARCHIVO RESPALDOS.BAK, REALIZAR LAS RESTAURACIONES NECESARIAS Y RESPONDER A LAS SIGUIENTES PREGUNTAS:

·         CUANTAS BD CONTIENE Y SUS NOMBRES.

·         EL MODELO DE DATOS DE CADA BD.

·         CUANTOS REGISTROS TIENE CADA TABLA DE CADA BD.

·         DE LA BD QUE CONTIENE UNA CSC Y 2 CSD, ESPECIFICAR LAS TABLAS QUE SE CREARON DE FORMA INTERMEDIA ENTRE CADA COPIA DE SEGURIDAD.
*/

--Creamos el dispositivo, se llamará respaldos
--sp_dropdevice Respaldos
sp_addumpdevice 'disk', Respaldos, 'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\Respaldos.bak'

--Checamos qué bases de datos tiene
restore headeronly from Respaldos;
restore filelistonly from Respaldos with file = 1; --filelistonly obtiene información de los archivos contenidos en el backup set
restore filelistonly from Respaldos with file = 2;
restore filelistonly from Respaldos with file = 3;
restore filelistonly from Respaldos with file = 4;
restore filelistonly from Respaldos with file = 5;
restore filelistonly from Respaldos with file = 6;
restore filelistonly from Respaldos with file = 7;

--Restauración de las 4 bases de datos
use master
restore database AdventureWorksLT2008 from Respaldos with
move 'AdventureWorksLT2008_data' to 'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\AdventureWorksLT2008_data.mdf',
move 'AdventureWorksLT2008_log' to 'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\AdventureWorksLT2008_log.ldf',
file = 1, replace, recovery

use master
restore database rstys from Respaldos with
move 'rstys' to 'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\rstys.mdf',
move 'rstys_log' to 'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\rstys_log.ldf',
file = 2, replace, recovery

use master
restore database urge from Respaldos with
move 'urge' to 'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\urge.mdf',
move 'urge_log' to 'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\urge_log.ldf',
file = 3, replace, recovery

use master
restore database ENVIOS from Respaldos with
move 'ENVIOS' to 'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\ENVIOS.mdf',
move 'ENVIOS_log' to 'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\ENVIOS_log.ldf',
file = 5, replace, recovery

--Tablas hasta este momento:
--Usaremos este proceso para contar los registros de cada tabla, simplemente lo corremos en todas las bases de datos
--y en sus diferentes versiones
--AdventureWorksLT2008
use AdventureWorksLT2008
select 'select ''' + name + ''',count(*) from ' + name from sysobjects
where xtype = 'u'

--Nos genera este Script, solo le agregamos union a todos menos al último y ejecutamos
select 'BuildVersion',count(*) from BuildVersion union
select 'Address',count(*) from SalesLT.Address union
select 'Customer',count(*) from SalesLT.Customer union
select 'CustomerAddress',count(*) from SalesLT.CustomerAddress union
select 'Product',count(*) from SalesLT.Product union
select 'ProductCategory',count(*) from SalesLT.ProductCategory union
select 'ProductDescription',count(*) from SalesLT.ProductDescription union
select 'ProductModel',count(*) from SalesLT.ProductModel union
select 'ProductModelProductDescription',count(*) from SalesLT.ProductModelProductDescription union
select 'SalesOrderDetail',count(*) from SalesLT.SalesOrderDetail union
select 'SalesOrderHeader',count(*) from SalesLT.SalesOrderHeader union
select 'ErrorLog',count(*) from ErrorLog union
select 'sysdiagrams',count(*) from sysdiagrams

--rstys
use rstys
select 'select ''' + name + ''',count(*) from ' + name from sysobjects
where xtype = 'u'

select 'SECRETARIAS',count(*) from SECRETARIAS union
select 'DIRECCIONES',count(*) from DIRECCIONES union
select 'USUARIOS',count(*) from USUARIOS union
select 'TRAMITES',count(*) from TRAMITES union
select 'TIPOSDATOSCHECK',count(*) from TIPOSDATOSCHECK union
select 'MESES',count(*) from MESES union
select 'TRAMITEXMES',count(*) from TRAMITEXMES union
select 'GENEROS',count(*) from GENEROS union
select 'PERFILES',count(*) from PERFILES union
select 'TEMAS',count(*) from TEMAS union
select 'REQUISITOS',count(*) from REQUISITOS union
select 'ETAPAS',count(*) from ETAPAS union
select 'configuracion',count(*) from configuracion union
select 'sysdiagrams',count(*) from sysdiagrams

--urge
use urge
select 'select ''' + name + ''',count(*) from ' + name from sysobjects
where xtype = 'u'

select 'sysdiagrams',count(*) from sysdiagrams union
select 'procedures',count(*) from procedures union
select 'towns',count(*) from towns union
select 'users',count(*) from users union
select 'notices',count(*) from notices union
select 'categoryguides',count(*) from categoryguides union
select 'guides',count(*) from guides union
select 'guidetowns',count(*) from guidetowns union
select 'guidetowns_procedures',count(*) from guidetowns_procedures

--ENVIOS
use ENVIOS
select 'select ''' + name + ''',count(*) from ' + name from sysobjects
where xtype = 'u'

select 'ESTADOS',count(*) from ESTADOS union
select 'MUNICIPIOS',count(*) from MUNICIPIOS union
select 'COLONIAS',count(*) from COLONIAS union
select 'CLIENTES',count(*) from CLIENTES union
select 'CAMIONES',count(*) from CAMIONES union
select 'RUTAS',count(*) from RUTAS union
select 'PEDIDOS',count(*) from PEDIDOS union
select 'sysdiagrams',count(*) from sysdiagrams union
select 'EMPXJEFE',count(*) from EMPXJEFE union
select 'EMPLEADOS',count(*) from EMPLEADOS

--La base de datos de rstys tiene una CSC y dos CSD:
restore headeronly from Respaldos;
restore filelistonly from Respaldos with file = 2;
restore filelistonly from Respaldos with file = 4;
restore filelistonly from Respaldos with file = 6;

--La base de datos de ENVIOS tiene una CSC y un CSD.
restore headeronly from Respaldos;
restore filelistonly from Respaldos with file = 5;
restore filelistonly from Respaldos with file = 7;

--De la base de datos rstys restauramos la CSC o sea la file = 2
use master
restore database rstys from Respaldos with file = 2, replace, recovery

--Preparamos la base de datos rstys para restaurar la primera CSD
use master
restore database rstys from Respaldos with file = 2, replace, norecovery

--Restauramos la primera CSD de la rstys
use master
restore database rstys from Respaldos with file = 4, recovery

--rstys despues de la primera CSD y antes de la segunda CSD
use rstys
select 'select ''' + name + ''',count(*) from ' + name from sysobjects
where xtype = 'u'

select 'SECRETARIAS',count(*) from SECRETARIAS union
select 'DIRECCIONES',count(*) from DIRECCIONES union
select 'USUARIOS',count(*) from USUARIOS union
select 'TRAMITES',count(*) from TRAMITES union
select 'TIPOSDATOSCHECK',count(*) from TIPOSDATOSCHECK union
select 'MESES',count(*) from MESES union
select 'TRAMITEXMES',count(*) from TRAMITEXMES union
select 'GENEROS',count(*) from GENEROS union
select 'PERFILES',count(*) from PERFILES union
select 'TEMAS',count(*) from TEMAS union
select 'REQUISITOS',count(*) from REQUISITOS union
select 'ETAPAS',count(*) from ETAPAS union
select 'configuracion',count(*) from configuracion union 
select 'USUARIOPRUEBA',count(*) from USUARIOPRUEBA union
select 'sysdiagrams',count(*) from sysdiagrams

--Preparamos la base de datos rstys para restaurar la segunda CSD
use master
restore database rstys from Respaldos with file = 2, replace, norecovery

--Restauramos la segunda CSD de la rstys
restore database rstys from Respaldos with file = 6, recovery

--rstys despues de la segunda CSD
use rstys
select 'select ''' + name + ''',count(*) from ' + name from sysobjects
where xtype = 'u'

select 'SECRETARIAS',count(*) from SECRETARIAS union
select 'DIRECCIONES',count(*) from DIRECCIONES union
select 'USUARIOS',count(*) from USUARIOS union
select 'TRAMITES',count(*) from TRAMITES union
select 'TIPOSDATOSCHECK',count(*) from TIPOSDATOSCHECK union
select 'MESES',count(*) from MESES union
select 'TRAMITEXMES',count(*) from TRAMITEXMES union
select 'GENEROS',count(*) from GENEROS union
select 'PERFILES',count(*) from PERFILES union
select 'TEMAS',count(*) from TEMAS union
select 'REQUISITOS',count(*) from REQUISITOS union
select 'ETAPAS',count(*) from ETAPAS union
select 'configuracion',count(*) from configuracion union
select 'USUARIOPRUEBA',count(*) from USUARIOPRUEBA union 
select 'REQUISITOSPRUEBA',count(*) from REQUISITOSPRUEBA union
select 'sysdiagrams',count(*) from sysdiagrams

--De la base de datos ENVIOS restauramos la CSC o sea la file = 5
use master
restore database ENVIOS from Respaldos with file = 5, replace, recovery

--Preparamos la base de datos ENVIOS para restaurar la unica CSD
use master
restore database ENVIOS from Respaldos with file = 5, replace, norecovery

--Restauramos la unica CSD de la bd ENVIOS
use master
restore database ENVIOS from Respaldos with file = 7, recovery

--bd ENVIOS despues de la unica CSD
use ENVIOS
select 'select ''' + name + ''',count(*) from ' + name from sysobjects
where xtype = 'u'

select 'ESTADOS',count(*) from ESTADOS union
select 'MUNICIPIOS',count(*) from MUNICIPIOS union
select 'COLONIAS',count(*) from COLONIAS union
select 'CLIENTES',count(*) from CLIENTES union
select 'CAMIONES',count(*) from CAMIONES union
select 'RUTAS',count(*) from RUTAS union
select 'PEDIDOS',count(*) from PEDIDOS union
select 'sysdiagrams',count(*) from sysdiagrams union
select 'EMPXJEFE',count(*) from EMPXJEFE union
select 'EMPLEADOS',count(*) from EMPLEADOS

--3.- UTILIZANDO EL ARCHIVO RESPALDOS.BAK, ENCONTRAR LA PRIMERA COPIA DE SEGURIDAD COMPLETA Y RESTAURARLA EN UNA NUEVA BASE DE DATOS. ENTREGAR EL CODIGO PARA LA RESTAURACION E IMPRIMIR EL MODELO DE DATOS DE LA BD QUE CONTIENE.
restore headeronly from Respaldos;
restore filelistonly from Respaldos with file = 1;

use master
restore database AdventureWorksLT2008RESPALDO from Respaldos with file = 1,
move 'AdventureWorksLT2008_data' to 'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\AdventureWorksLT2008RESPALDO.mdf',
move 'AdventureWorksLT2008_log' to 'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\AdventureWorksLT2008RESPALDO_log.ldf',
replace

--checamos lo que tiene
use AdventureWorksLT2008RESPALDO
select 'select ''' + name + ''',count(*) from ' + name from sysobjects
where xtype = 'u'

select 'BuildVersion',count(*) from BuildVersion union
select 'Address',count(*) from SalesLT.Address union
select 'Customer',count(*) from SalesLT.Customer union
select 'CustomerAddress',count(*) from SalesLT.CustomerAddress union
select 'Product',count(*) from SalesLT.Product union
select 'ProductCategory',count(*) from SalesLT.ProductCategory union
select 'ProductDescription',count(*) from SalesLT.ProductDescription union
select 'ProductModel',count(*) from SalesLT.ProductModel union
select 'ProductModelProductDescription',count(*) from SalesLT.ProductModelProductDescription union
select 'SalesOrderDetail',count(*) from SalesLT.SalesOrderDetail union
select 'SalesOrderHeader',count(*) from SalesLT.SalesOrderHeader union
select 'sysdiagrams',count(*) from sysdiagrams union
select 'ErrorLog',count(*) from ErrorLog


--4.- UTILIZANDO EL ARCHIVO RESPALDOS.BAK, ENCONTRAR LA SEGUNDA COPIA DE SEGURIDAD COMPLETA Y RESTAURARLA EN UNA BASE DE DATOS YA EXISTENTE LLAMADA PRUEBA_CS (LA BASE DE DATOS CREARLA PREVIAMENTE). ENTREGAR EL CODIGO PARA LA RESTAURACION E IMPRIMIR EL MODELO DE DATOS DE LA BD QUE CONTIENE.
restore headeronly from Respaldos;

--creamos la bd PRUEBA_CS
create database PRUEBA_CS on(name = PRUEBA_CS, filename = 'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\PRUEBA_CS.mdf')
log on(name = PRUEBA_CS_log, filename = 'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\PRUEBA_CS_log.ldf')

restore filelistonly from Respaldos with file = 2;

--Se restaura la segunda CSC en este caso la de la bd rstys, en la bd PRUEBA_CS
use master
restore database PRUEBA_CS from Respaldos with file = 2,
move 'rstys' to 'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\PRUEBA_CS.mdf',
move 'rstys_log' to 'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\PRUEBA_CS_log.ldf',
replace

--checamos lo que tiene
use PRUEBA_CS
select 'select ''' + name + ''',count(*) from ' + name from sysobjects
where xtype = 'u'

select 'SECRETARIAS',count(*) from SECRETARIAS union
select 'DIRECCIONES',count(*) from DIRECCIONES union
select 'USUARIOS',count(*) from USUARIOS union
select 'TRAMITES',count(*) from TRAMITES union
select 'TIPOSDATOSCHECK',count(*) from TIPOSDATOSCHECK union
select 'MESES',count(*) from MESES union
select 'TRAMITEXMES',count(*) from TRAMITEXMES union
select 'GENEROS',count(*) from GENEROS union
select 'PERFILES',count(*) from PERFILES union
select 'TEMAS',count(*) from TEMAS union
select 'REQUISITOS',count(*) from REQUISITOS union
select 'ETAPAS',count(*) from ETAPAS union
select 'configuracion',count(*) from configuracion union
select 'sysdiagrams',count(*) from sysdiagrams

--5.- REALIZAR UNA COPIA DE LA BASE DE DATOS NORTHWIND Y NOMBRARLA NWPARALELO, DE ESTA BASE DE DATOS REALIZAR UNA COPIA DE SEGURIDAD COMPLETA EN PARALELO ( 3 DISPOSITIVOS ). REALIZAR LA RESTAURACION DE LA COPIA DE SEGURIDAD COMPLETA EN PARALELO ANTERIOR. INCLUIR EL CODIGO COMPLETO.
--creamos los 3 dispositivos
use master
sp_addumpdevice 'DISK','Dispositivo1','C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\Backup\Dispositivo1.bak'
sp_addumpdevice 'DISK','Dispositivo2','C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\Backup\Dispositivo2.bak'
sp_addumpdevice 'DISK','Dispositivo3','C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\Backup\Dispositivo3.bak'
--sp_dropdevice Dispositivo1
--sp_dropdevice Dispositivo2
--sp_dropdevice Dispositivo3

--hacemos la copia de la northwind en los 3 dispositivos
use NWPARALELO
backup database NWPARALELO to Dispositivo1, Dispositivo2, Dispositivo3 with format, init, name = 'CSC', description = 'CSC NWPARALELO :D'

--hacemos la restauración de la CSC en paralelo
use master
restore database NWPARALELO from Dispositivo1, Dispositivo2, Dispositivo3 with file = 1, recovery, replace

--use NWPARALELO
--select * from employees

--6.- REALIZAR LA SIGUIENTE SECUENCIA DE CAMBIO DE LA BASE DE DATOS NORTHWIND:
--CSC: DENTRO DE UNA TRANSACCION EXPLICITA HACERLE UNA MARCA, MODIFICAR EL NOMBRE DE LOS EMPLEADOS SIN PONERLE LA CLAUSULA WHERE.
--CSRT: DENTRO DE UNA TRANSACCION EXPLICITA HACERLE UNA MARCA, MODIFICAR LA CANTIDAD DE PIEZAS VENDIDAS DE LA TABLA ORDER DETAILS SIN PONERLE LA CLAUSULA WHERE.
--CSRT: REALIZAR DOS RESTAURACIONES Y VERIFICAR LOS RESULTADOS:
--•	ANTES DE LA PRIMERA MARCA
--•	ANTES DE LA SEGUNDA MARCA
sp_addumpdevice 'DISK', DispositivoMarca,'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\Backup\DispositivoMarca.bak'
--sp_dropdevice DispositivoMarca

alter database NorthwindBD set recovery full

--Checamos la BD
dbcc checkdb(NorthwindBD)

--Hacemos la CSC
backup database NorthwindBD to DispositivoMarca with init, format, name = 'CSC', description = 'CSC NorthwindBD'

--use NorthwindBD
--select * from employees;
--Hacemos la primera transaccion
use NorthwindBD
begin transaction NombreModificado with mark 'NombreModificado'
update employees set FirstName = 'Pepito'
commit transaction NombreModificado
go
--use NorthwindBD
--select * from employees

--Hacemos la CSRT NombreModificado
backup log NorthwindBD to DispositivoMarca with noinit, noformat, name = 'CSRT NombreModificado', description = 'CSRT NombreModificado'

--use NorthwindBD
--select * from [order details]
--Hacemos la segunda transaccion
use NorthwindBD
begin transaction CantidadModificado with mark 'CantidadModificado'
update [Order Details] set Quantity = 100
commit transaction CantidadModificado
go
--use NorthwindBD
--select * from [order details]

--Hacemos la CSRT CantidadModificado
backup log NorthwindBD to DispositivoMarca with noinit, noformat, name = 'CSRT CantidadModificado', description = 'CSRT CantidadModificado'
go

--Empezamos a Restaurar
restore headeronly from DispositivoMarca
restore filelistonly from DispositivoMarca with file = 1
restore filelistonly from DispositivoMarca with file = 2
restore filelistonly from DispositivoMarca with file = 3

--Restauramos antes de la Primera marca
use master
go
restore database NorthwindBD from DispositivoMarca with file = 1, replace, norecovery
--use NorthwindBD
--select * from employees
--select * from [order details]

--Hacemos la CSRT antes de la Primera marca
restore log NorthwindBD from DispositivoMarca with file = 2, recovery, stopbeforemark = 'NombreModificado'

--Checamos los datos
use NorthwindBD
select * from Employees
select * from [Order Details]

--Restauramos antes de la Segunda marca
use master
restore database NorthwindBD from DispositivoMarca with file = 1, replace, norecovery

--Hacemos la primera CSRT
restore log NorthwindBD from DispositivoMarca with file = 2, norecovery

--Hacemos la CSRT antes de la Segunda marca
restore log NorthwindBD from DispositivoMarca with file = 3, recovery, stopbeforemark = 'CantidadModificado'

--Checamos los datos
use NorthwindBD
select * from Employees
select * from [Order Details]