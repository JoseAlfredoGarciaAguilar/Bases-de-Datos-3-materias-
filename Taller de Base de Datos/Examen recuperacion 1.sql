--EXAMEN RECUPERACION 1
create database examen
go
use examen
go
--CREACIÓN DE TABLAS
create table articulos(
artID int not null,
artNombre nvarchar(10) not null,
artPrecio numeric(12,2) not null,
artPaquete nvarchar(10) not null
)
go
create table envios(
envID int not null,
folID int not null,
fechEnv datetime not null,
artID int not null,
cantEnv int not null,
precioEnvi int not null
)
go
create table bodegas(
bodID int not null,
bodNombre nvarchar(15) not null,
bodDomicilio nvarchar(15) not null,
tipoID nvarchar(15) not null
)
go
create table tipos(
tipoID int not null,
tipoNombre nvarchar(15) not null
)
--llaves primarias
alter table articulos add constraint pk_articulos primary key(artid)
alter table envios add constraint pk_envios primary key(envid)
alter table bodegas add constraint pk_bodegas primary key(bodid)
alter table tipos add constraint pk_tipos primary key(tipid)
--llaves externas
alter table articulos add
constraint fk_articulos_envios foreign key (envid) references envios (envid)
go
alter table envios add
constraint fk_envios_bodegas foreign key (bodid) references envios (bodid)
go
alter table tipos add
constraint fk_bodegas_tipos foreign key (tipid) references envios (tipid)
--restriccion unica
alter table bodegas add
constraint uc_bodega_tipid unique(cterfc)
go
--check constraint
alter table articulos add
constraint cc_articulos_precio check(artPrecio > 0),
constraint cc_clientes_rfc_curp check(cterfc <> ctecurp)
go
alter table envios add
constraint cc_envios_cantidad_precio check(cantEnv <> precioEnvi)
go
--restriccion por defecto y de verificacion
alter table articulos add
constraint dc_articulos_precio default('Sin precio') for artPrecio,
go
alter table envios add
constraint dc_envios_cantidad default('Sin cantidad') for cantEnv,
go