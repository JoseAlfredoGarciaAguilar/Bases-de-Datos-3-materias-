use Northwind 
go

create table logNivelDB (
Clave INT IDENTITY PRIMARY KEY,
FechaEvento DATETIME NOT NULL, 
Login VARCHAR(15) NOT NULL, 
Usuario VARCHAR(15) NOT NULL, 
DB VARCHAR(30) NOT NULL,
TipoEvento VARCHAR(15) NOT NULL, 
NombreObjeto Varchar(40) NOT NULL, 
Sentencia VARCHAR(max) NOT NULL,
DetalleEvento XML NOT NULL
);
GO

ALTER trigger tr_NivelDB 
ON DATABASE
FOR DDL_VIEW_EVENTS, DDL_PROCEDURE_EVENTS, DDL_FUNCTION_EVENTS, DDL_TRIGGER_EVENTS
AS
	INSERT INTO logNivelDB
	select EVENTDATA().value('(/EVENT_INSTANCE/PostTime)[1]', 'DATETIME') as FechaEvento,
		   EVENTDATA().value('(/EVENT_INSTANCE/LoginName)[1]', 'VARCHAR(15)') as Login,
		   EVENTDATA().value('(/EVENT_INSTANCE/UserName)[1]', 'VARCHAR(15)') as Usuario,
		   EVENTDATA().value('(/EVENT_INSTANCE/DatabaseName)[1]', 'VARCHAR(30)') as DB,
		   EVENTDATA().value('(/EVENT_INSTANCE/EventType)[1]', 'VARCHAR(15)') as TipoEvento,
		   EVENTDATA().value('(/EVENT_INSTANCE/SchemaName)[1]', 'VARCHAR(10)') + '.' + EVENTDATA().value('(/EVENT_INSTANCE/ObjectName)[1]', 'VARCHAR(30)') as NombreObjeto,
		   EVENTDATA().value('(/EVENT_INSTANCE/TSQLCommand/CommandText)[1]', 'VARCHAR(max)') as Sentencia,
		   EVENTDATA() AS DetalleEvento;
go

create view logs as select * from logNivelDB;
go

create procedure leerLogsDB as 
	select * from logNivelDB;
go

create function logsDB () returns table
	return select * from logNivelDB;
go

select * from logs;