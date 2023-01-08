use master
create table tabla_problema3(
	ID int identity primary key,
	FechaEvento datetime not null,
	Servidor varchar(200) not null,
	Login varchar(200) not null,
	TipoEvento varchar(200) not null,
	TipoObjeto varchar(200) null,
	Sentencia varchar(max) not null,
	DetalleEvento xml not null
);
go

--drop table tabla_problema3;

create trigger trigger_problema3 on all server 
for CREATE_DATABASE, DROP_DATABASE, ALTER_DATABASE,
	--CREATE_LOGIN, DROP_LOGIN, ALTER_LOGIN
	DDL_SERVER_SECURITY_EVENTS as insert into tabla_problema3
	select EVENTDATA().value('(/EVENT_INSTANCE/PostTime)[1]', 'DATETIME') as FechaEvento, EVENTDATA().value('(/EVENT_INSTANCE/ServerName)[1]', 'VARCHAR(200)') as Servidor,
	EVENTDATA().value('(/EVENT_INSTANCE/LoginName)[1]', 'VARCHAR(200)') as Login, EVENTDATA().value('(/EVENT_INSTANCE/EventType)[1]', 'VARCHAR(200)') as TipoEvento,
	EVENTDATA().value('(/EVENT_INSTANCE/ObjectType)[1]', 'VARCHAR(200)') as TipoObjeto, EVENTDATA().value('(/EVENT_INSTANCE/TSQLCommand/CommandText)[1]', 'VARCHAR(200)') as Sentencia,
	EVENTDATA() as DetalleEvento
go

--drop trigger trigger_problema3 on all server
--Acciones Base de datos
use master
create database bdejemplo1
create database bdejemplo2
create database bdejemplo3
drop database bdejemplo1
drop database bdejemplo2
drop database bdejemplo3

--Acciones Inicios de sesión
create login pepito with password = '123'
must_change , check_expiration = on
go
create login chuy with password = '123'
must_change , check_expiration = on
go
alter login pepito with password = '12345'
go
alter login chuy with password = '12345'
go
sp_addsrvrolemember pepito, Securityadmin
go
sp_addsrvrolemember chuy, Securityadmin
go
drop login pepito
drop login chuy

select * from tabla_problema3