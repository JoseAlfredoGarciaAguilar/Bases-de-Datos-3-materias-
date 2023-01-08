use ferreterias
--eliminar el campo zonadescripcion agregado en los ejercicios de insert
alter table zonas drop column zonadescripcion
--creamos la llave primaria de zonas
alter table zonas add constraint pk_zonas primary key (zonaid)
--eliminos los registros de zonas
delete zonas
--se insertan nuevamente las zonas
insert zonas values(1, 'Norte')
insert zonas values(2, 'Sur')
insert zonas values(3, 'Oeste')
insert zonas values(4, 'Este')
--verificar los datos en la tabla zonas
select* from zonas

--LLAVE PRIMARIA
alter table detalle add constraint pk_detalle primary key (folio, artid)

alter table municipios add constraint pk_municipios primary key (munid)
alter table colonias add constraint pk_colonias primary key (colid)
alter table empleados add constraint pk_empleados primary key (empid)
alter table clientes add constraint pk_clientes primary key (cteid)
alter table articulos add constraint pk_articulos primary key (artid)
alter table familias add constraint pk_familias primary key (famid)
alter table ventas add constraint pk_ventas primary key (folio)
alter table ferreterias add constraint pk_ferreterias primary key (ferrid)
alter table zonas add constraint pk_zonas primary key (zonaid)
GO
sp_help detalle