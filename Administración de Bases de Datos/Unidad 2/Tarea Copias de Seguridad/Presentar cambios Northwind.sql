--creamos el dispositivo
sp_addumpdevice 'DISK', Dispositivoxd,'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\Backup\DispositivoMarka.bak'

--Verificamos la bd
dbcc checkdb(NorthwindBD)

--Hacemos la CSC
backup database NorthwindBD to Dispositivoxd with init, format, name = 'CSC NorthwindBD', description = 'CSC NorthwindBD'

--checamos las tablas
use NorthwindBD
select * from employees
select * from [order details]

--Hacemos la CSD
backup database NorthwindBD to Dispositivoxd with differential, noinit, noformat, name = 'CSD NorthwindBD', description = 'CSD NorthwindBD'

--Hacemos una actualizacion masiva a un campo
use NorthwindBD
update employees set FirstName = 'Chuy'
update [Order Details] set Quantity = 1000

--checamos las tablas
use NorthwindBD
select * from employees
select * from [order details]

--Crear la BD donde se levantará el respaldo de la bd NorthwindBD
create database NorthwindLEVANTAR on
(name=Dispositivoxd, filename = 'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\NorthwindLEVANTAR.mdf')
log on(name=NorthwindLEVANTAR_log,
filename = 'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\NorthwindLEVANTAR_log.ldf')

--Localización del conjunto de CS adecuado
restore headeronly from Dispositivoxd
restore filelistonly from Dispositivoxd with file = 1
restore filelistonly from Dispositivoxd with file = 2

--Restauramos la CSC
restore database NorthwindLEVANTAR from Dispositivoxd with move 'NorthwindBD' to
'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\NorthwindLEVANTAR.mdf',
move 'NorthwindBD_log' to
'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\NorthwindLEVANTAR_log.ldf',
file = 1, replace, norecovery

--Restauramos la CSD
restore database NorthwindLEVANTAR from Dispositivoxd with file = 2, replace, recovery

--Verificamos
use NorthwindLEVANTAR
select * from employees
select * from [order details]

--sp_dropdevice Dispositivoxd
--drop database NorthwindBD
--drop database NorthwindLEVANTAR

--Garcia Aguilar Jose Alfredo
--Lozano Corvera Daniel Antonio