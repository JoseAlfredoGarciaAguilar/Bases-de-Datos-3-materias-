create table logTransServer(
	id int identity primary key,
	fechaEvento datetime not null,
	servidor varchar(30) not null,
	login varchar(30) not null,
	tipoEvento varchar(15) not null,
	tipoObjeto varchar(15) null,
	sentencia varchar(100) not null,
	detalleEvento xml not null
);
go

alter trigger tr_NivelServ 
on all server 
for ALTER_DATABASE, CREATE_DATABASE, DROP_DATABASE, CREATE_LOGIN, ALTER_LOGIN, DROP_LOGIN as
	insert into logTransServer
	select EVENTDATA().value('(/EVENT_INSTANCE/PostTime)[1]', 'DATETIME') as FechaEvento,
			EVENTDATA().value('(/EVENT_INSTANCE/ServerName)[1]', 'VARCHAR(30)') as Servidor,
			EVENTDATA().value('(/EVENT_INSTANCE/LoginName)[1]', 'VARCHAR(30)') as Login,
			EVENTDATA().value('(/EVENT_INSTANCE/EventType)[1]', 'VARCHAR(15)') as TipoEvento,
			EVENTDATA().value('(/EVENT_INSTANCE/ObjectType)[1]', 'VARCHAR(15)') as TipoObjeto,
			EVENTDATA().value('(/EVENT_INSTANCE/TSQLCommand/CommandText)[1]', 'VARCHAR(100)') as Sentencia,
			EVENTDATA() as DetalleEvento
GO

select * from logTransServer;

create database loco;
alter database loco modify name = Northwind2;
alter database Northwind2 set Read_only;
alter database Northwind2 set READ_WRITE;
drop database Northwind2;

create login jhtp7 with password = 'jhtp7';
alter login jhtp7 DISABLE;
alter login jhtp7 with password = 'jhtp8';
alter login jhtp7 with default_database = Northwind;
drop login jhtp7;