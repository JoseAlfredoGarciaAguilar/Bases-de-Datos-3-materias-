use NorthwindBD
go

create table tabla_problema4 (
ID int identity primary key,
FechaEvento datetime not null, 
Login varchar(200) not null, 
NombreUsuario varchar(200) not null, 
NombreBaseDatos varchar(200) not null,
TipoEvento varchar(200) not null, 
NombreObjeto varchar(200) not null, 
Sentencia varchar(max) not null,
DetalleEvento xml not null
);
go
--drop table tabla_problema4

use NorthwindBD
create trigger trigercito on database
for CREATE_TABLE, DROP_TABLE, ALTER_TABLE,
CREATE_VIEW, DROP_VIEW, ALTER_VIEW,
CREATE_PROCEDURE, DROP_PROCEDURE, ALTER_PROCEDURE,
CREATE_FUNCTION, DROP_FUNCTION, ALTER_FUNCTION,
CREATE_TRIGGER, DROP_TRIGGER, ALTER_TRIGGER
--DDL_VIEW_EVENTS, DDL_PROCEDURE_EVENTS, DDL_FUNCTION_EVENTS, DDL_TRIGGER_EVENTS
as insert into tabla_problema4
	select EVENTDATA().value('(/EVENT_INSTANCE/PostTime)[1]', 'DATETIME') as FechaEvento, EVENTDATA().value('(/EVENT_INSTANCE/LoginName)[1]', 'VARCHAR(200)') as Login,
	EVENTDATA().value('(/EVENT_INSTANCE/UserName)[1]', 'VARCHAR(200)') as NombreUsuario, EVENTDATA().value('(/EVENT_INSTANCE/DatabaseName)[1]', 'VARCHAR(200)') as NombreBaseDatos,
	EVENTDATA().value('(/EVENT_INSTANCE/EventType)[1]', 'VARCHAR(200)') as TipoEvento, EVENTDATA().value('(/EVENT_INSTANCE/SchemaName)[1]', 'VARCHAR(200)') + '.' + EVENTDATA().value('(/EVENT_INSTANCE/ObjectName)[1]', 'VARCHAR(30)') as NombreObjeto,
	EVENTDATA().value('(/EVENT_INSTANCE/TSQLCommand/CommandText)[1]', 'VARCHAR(max)') as Sentencia, EVENTDATA() AS DetalleEvento;
go
--drop trigger trigercito on all server

--Pruebas para Tablas
create table tienda(
tiendaid int,
calle varchar(50)
)
go

alter table tienda add colonia varchar(50)
go

drop table tienda
go

--Pruebas para Vistas
create view vw_products as
select
p.productid, p.productname, p.quantityperunit, prodnitprice = p.unitprice,
p.unitsinstock, p.unitsonorder, p.reorderlevel,
s.supplierid, s.companyname, s.contactname, s.address,
s.city, s.region, s.postalcode, s.country, s.phone, s.fax, s.homepage,
c.categoryid, c.categoryname, c.description, c.picture
from products p
inner join suppliers s on p.supplierid = s.supplierid
inner join categories c on p.categoryid = c.categoryid

alter view vw_products as
select * from products

drop view vw_products

--Pruebas para Procedimientos Almacenados
use NorthwindBD
create proc sp_customers2
as
begin
	select * from customers
end
go

alter proc sp_customers2 as
begin
	select * from [Order Details]
end
go

drop procedure sp_customers2

use NorthwindBD
create proc sp_orders2
as
begin
	select * from orders
end
go

alter proc sp_orders2 as
begin
	select * from Shippers
end
go

drop procedure sp_orders2

--Pruebas para Funciones
create function fn_customers()
returns table as
return(
select companyname from customers
)

alter function fn_customers()
returns table as
return(
select contacttitle from customers
)

drop function fn_customers

--Pruebas para Triggers
create trigger trigger_prueba
on employees for delete as
begin
	select 'Hey'
end
go

alter trigger trigger_prueba
on employees for delete as
begin
	select ':D'
end
go

drop trigger trigger_prueba

select * from tabla_problema4