--ejemplo: crear un trigger de insercion en la tabla materiales
create table materiales
(Clave int primary key, nombre char(50), precio numeric(12,2))

create trigger tr_materiales_ins
on materiales for insert as
	select 'se ejecuto el trigger al insertar'
	select * from inserted
go
--ejecucion
insert materiales values(1,'lapiz',9)
insert materiales values(2,'bote',9)

--insercion masiva
insert materiales
select productid, productname, unitprice from products
where productid>2

--ejemplo: crear un trigger de eliminacion de la tabla materiales
create trigger tr_materiales_del
on materiales for delete as
	select 'se ejecuto el trigger al eliminar'
	select * from deleted
go
--ejecucion
delete materiales where clave = 22
delete materiales where clave = 21
delete materiales where clave < 15

--ejemplo: crear un trigger de actualizacion en la tabla materiales
create trigger tr_materiales_upd
on materiales for update as
	select 'se ejecuto el trigger al actualizar'
	select * from inserted --contiene el nuevo valor
	select * from deleted --contiene el viejo valor
go
--ejecucion
update materiales set nombre = 'NUEVO NOMBRE', precio=11 where clave = 28

--ELIMINACION
drop trigger tr_materiales_upd
drop trigger tr_materiales_ins
drop trigger tr_materiales_del

--validar que el precio del material no se actualice con un precio menor al que ya tenia
create trigger tr_materiales_precio
on materiales for update as
declare @precioanterior numeric(12,2), @precionuevo numeric(12,2)
	select @precionuevo = precio from inserted
	select @precioanterior = precio from deleted

	if @precionuevo < @precioanterior
	begin
		rollback tran
		raiserror('no se puede actualizar con un precio menor',16,1)
	end
go

update materiales set precio = 20 where clave = 28

select * from materiales where clave = 28

drop trigger tr_materiales_precio

--validar que realmente se ejecuta un ROLLBACK TRAN (deshacer una transaccion)
--es peligroso una actualizacion masiva
update materiales set precio = 20
--no permitir actualizaciones masivas en la tabla materiales
create trigger tr_mat_upd
on materiales for update as
	declare @conta int
	select @conta = count(*) from inserted

	if @conta > 1
	begin
		rollback tran
		raiserror('NO SE PERMITEN ACTUALIZACIONES MASIVAS', 16,1)
	end
go
--no es permitido
update materiales set precio = 1000 where clave > 75 --no permite actualizaciones masivas
--es permitido
update materiales set precio = 225 where clave = 30 --sí permite una
select * from materiales where clave = 30

--No permitir que se eliminen registros en la tabla materiales
create trigger tr_materiales_delete2
on materiales for delete as

	rollback tran
	raiserror('POR EL MOMENTO NO SE PUEDE ELIMINAR REGISTROS',16,1)
go
--ejecucion
delete materiales where clave = 44

select * from materiales

drop trigger tr_materiales_delete2

--proc alm que llegue a crear un trigger que no permita eliminar
--registros en todas las tablas
create proc sp_crea_trigger_delete as
declare @MIN int, @NOM varchar(50)

select @MIN = min(id) from sysobjects
where xtype = 'U' and name not like 'SYS%'

while @MIN is not null
begin
	select @NOM name from sysobjects
	where id = @MIN

	print 'CREATE TRIGGER TR_' + replace(@NOM, '','') + '_DELETE'
	print 'ON[' + @NOM + '] for delete as'
	print ' rollback tran'
	print ' raiserror(' + char(39) + ' por el momento no se puede eliminar registros' + char(39) + ',16,1)'
	print 'go'
	--exec
	select @MIN = min(id) from sysobjects
	where xtype = 'U' and name not like 'SYS%' and id > @MIN
end
go
exec sp_crea_trigger_delete
go

--sentencia if update
--sintaxis: valida que no se modifique un campo dentro de un trigger
if update(nombre_columna) and | or update(nombre_columna)
begin
	sentencias_select
end
else
begin
	sentencias_select
end
--validar que el nombre de los materiales no se actualice
create trigger tr_materiales_ins3
on materiales for update as

if update(nombre)
begin
	rollback tran
	raiserror('NO SE PUEDE ACTUALIZAR EL NOMBRE DEL MATERIAL',16,1)
end
--no se actualiza el nombre
update materiales set nombre = 'Queso Cab' where clave = 46
update materiales set nombre = 'Queso Cab', precio = 200 where clave = 46
--si se actualiza el precio
update materiales set precio = 200 where clave = 46

--se elimina para no tener conflictos posteriores
drop trigger tr_materiales_ins3

--permitir actualizar solo una vez el campo nombre de la tabla materiales
--eliminamos primero el trigger anterior
drop trigger tr_materiales_ins3
drop trigger tr_mat_upd --no permite actualizaciones masivas

--agregamos el campo contador para llevar el numero de actualizaciones
alter table materiales add contador int
update materiales set contador = 0
alter table materiales add constraint df_mat_contador default(0) for contador

create trigger tr_materiales_conta
on materiales for update as
declare @clave int, @conta int

select @clave = clave, @conta = isnull(contador,0) from inserted

if update(nombre)
begin
	if @conta > 0
	begin
		rollback tran
		raiserror('NO SE PUEDE ACTUALIZAR MAS DE UNA VEZ EL NOMBRE',16,1)
	end
	else
		update materiales set contador = @conta + 1 where clave = @clave
end
go
insert materiales(clave, nombre, precio) values(100,'pintura',80)
select * from materiales where clave = 100

--actualizamos el precio y verificamos que el campo conta no aumenta
update materiales 

--la tabla categories tiene un campo llamado TOTAPIEZAS (total de piezas vendidas) que
--representa el total de piezas vendidas, crear los trigger necesarios que actualice dicho campo
--1. buscar la clave de la producto en la tabla inserted/deleted (EL TRIGGER ES EN LA TABLA ORDER DETAILS)
--2. buscar la clave del categoria de producto encontrado en el punto 1
--3. calculo el total de piezas en la tabla ORDER DETAILS, donde se sumen solo los productos de la categoria del punto 2
--4. actualizo el campo totalpiezas con el calculo del punto 3 en la tabla categories

create trigger tr_orderdetail_totalpiezas
on [order details] for insert, update, delete as
declare @prod int, @cat int, @piezas int
--1. buscar la clave del producto en la tabla inserted/deleted (el trigger es en la tabla ORDER DETAILS)
if(select count(*) from inserted) = 0
	select @prod = productid from deleted
else
	select @prod = productid from inserted

--2. buscar la clave del categoria del producto encontrado en el punto 1
select @cat = categoryid from products where productid = @prod

--3. calculo el total de piezas en la tabla ORDER DETAILS, donde se sumen solo los productos de la categoria del punto 2
select @piezas = sum(d.quantity)
from [Order Details] d
inner join products p on p.productid = d.productid
where p.categoryid = @cat

--4. actualizo el campo total piezas con el calculo del punto 3 en la tabla categories
update categories set totalpiezas = @piezas
where categoryid = @cat
go
update [Order Details] set quantity = quantity + 1 where productid = 1