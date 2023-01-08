create database FERRETERIAS
go
use FERRETERIAS
go
create table ZONAS(
zonaID int not null,
zonaNombre nvarchar(20) not null)
go
create table MUNICIPIOS(
munID int not null,
munNombre nvarchar(50) not null)
go
create table COLONIAS(
colID int not null,
colNombre nvarchar(50) not null,
colCP nchar(5) null,
munID int not null)
go
create table FAMILIAS(
famID int not null,
famNombre nvarchar(50) not null,
famDescripcion nvarchar(200) null)
go
create table FERRETERIAS(
ferrID int not null,
ferrNombre nvarchar(20) not null,
ferrDomicilio nvarchar(50) not null,
ferrTelefono nchar(10) not null)
go
create table EMPLEADOS(
empID int not null,
empNombre nvarchar(50) not null,
empApePat nvarchar(50) not null,
empApeMat nvarchar(50) null,
empDomicilio nvarchar(50) not null,
empTelefono nchar(10) null,
empCelular nchar(10) null,
empRFC nchar(13) null,
empCurp nchar(18) null,
empFechaIngreso datetime not null,
empFechaNacimiento datetime not null,
zonaID int not null,
jefeID int null)
go
create table CLIENTES(
cteID int not null,
cteNombre nvarchar(50) not null,
cteApePat nvarchar(50) not null,
cteApeMat nvarchar(50) null,
cteDomicilio nvarchar(50) not null,
cteTelefono nchar(10) null,
cteCelular nchar(10) null,
cteRFC nchar(13) null,
cteCurp nchar(18) null,
cteFechaNacimiento datetime not null,
cteSexo nchar(1) not null,
colID int not null)
go
create table ARTICULOS(
artID int not null,
artNombre nvarchar(20) not null,
artDescripcion nvarchar(100) not null,
artPrecio numeric(10,2) not null,
famID int not null)
go
create table VENTAS(
folio int not null,
fecha datetime not null,
ferrID int not null,
cteID int not null,
empID int not null)
go
create table DETALLE(
folio int not null,
artID int not null,
cantidad numeric(7,2) not null,
precio numeric(10,2) not null)
go
use ferreterias

--llave primaria
alter table zonas add constraint pk_zonas primary key(zonaid)
alter table detalle add constraint pk_detalle primary key(folio, artid)
alter table colonias add constraint pk_colonias primary key(colid)
alter table municipios add constraint pk_municipios primary key(munid)
alter table empleados add constraint pk_empleados primary key(empid)
alter table clientes add constraint pk_clientes primary key(cteid)
alter table articulos add constraint pk_articulos primary key(artid)
alter table familias add constraint pk_familias primary key(famid)
alter table ventas add constraint pk_ventas primary key(folio)
alter table ferreterias add constraint pk_ferreterias primary key(ferrid)

--LLAVES EXTERNAS
alter table articulos add
constraint fk_articulos_familias foreign key (famid) references familias (famid)
go
alter table colonias add
constraint fk_colonias_mun foreign key (munid) references municipios (munid)
go
alter table clientes add
constraint fk_clientes_col foreign key (colid) references colonias (colid)
go
alter table empleados add
constraint fk_emp_zonas foreign key (zonaid) references zonas (zonaid)
go
alter table empleados add
constraint fk_emp_emp foreign key (jefeid) references empleados (empid)
go
alter table ventas add
constraint fk_ventas_ferr foreign key (ferrid) references ferreterias (ferrid),
constraint fk_ventas_cte foreign key (cteid) references clientes (cteid),
constraint fk_ventas_emp foreign key (empid) references empleados (empid)
go
alter table detalle add
constraint fk_detalle_artic foreign key (artid) references articulos (artid),
constraint fk_detalle_ventas foreign key (folio) references ventas (folio)
go

--CAMPO UNICO
alter table clientes add
constraint uc_clientes_rfc unique(cterfc),
constraint uc_clientes_curp unique(ctecurp)
go
alter table empleados add
constraint uc_empleados_rfc unique(emprfc),
constraint uc_empleados_curp unique(empcurp)
go
--check constraint
alter table clientes add
constraint cc_clientes_sexo check(ctesexo in ('F','M')),
constraint cc_clientes_rfc_curp check(cterfc <> ctecurp)
go
alter table detalle add
constraint cc_detalle_precio check(precio > 0),
constraint cc_detalle_cantidad check(cantidad > 0)
go
alter table articulos add
constraint cc_articulos_precio check(artprecio > 0)
go
alter table ventas add
constraint cc_ventas_fecha check(fecha > '1-1-2010')

--DEFAULT CONSTRAINT
alter table empleados add
constraint dc_empleados_dom default('Sin domicilio') for empdomicilio,
constraint dc_empleados_tel default('Sin telefono') for emptelefono
go
alter table clientes add
constraint dc_clientes_domicilio default('Sin domicilio') for ctedomicilio,
constraint dc_clientes_telefono default('Sin telefono') for ctetelefono
go
alter table colonias add
constraint dc_colonias_cp default('00000') for colCP
go

--INSERT
insert familias values(001, 'LLaves', null)
insert familias values(020, 'Pinturas', null)
insert familias values(003, 'Pinzas', null)
insert familias values(401, 'Clavos', null)
insert familias values(113, 'Martillos', null)
------
insert articulos values(001, 'Pinzas de presion', 'Pinzas de fuerza', 80, 003)
insert articulos values(31, 'Pintura de aceite', 'Pintura para madera', 120, 020)
insert articulos values(200, 'Pinzas electricas', 'Use con cuidado', 90, 003)
insert articulos values(50, 'Clavos de 1/2', '12 mm', 0.50, 401)
insert articulos values(100, 'Martillo', 'Use con cuidado', 140, 113)
------
insert zonas values(023, 'Norte')
insert zonas values(112, 'Noroeste')
insert zonas values(532, 'Sueroeste')
insert zonas values(533, 'Este')
insert zonas values(600, 'Sur')
------
insert empleados values(1, 'Jose', 'Martinez', 'Perez', 'Calle cuarta sur', 6677102101, 6672389889,	'MAPJ8905221H0', 'MAJJ890522HDFRPJ09','22-11-2000', '22-05-1989',023, null)
insert empleados values(30, 'Julio', 'Martinez', 'Rodriguez', 'Calle primera norte', null, 6672322889,	'MAPJ8504222H0', 'MAJJ850422HDFRPJ09','10-9-2000', '22-4-1985',112, null)
insert empleados values(29, 'Alejandro', 'Aguiluz', null, 'Calle #33', 6677453101, 6672389889,	'AUAA9012101H0', null,'11-12-2000', '10-12-1990',532, 1)
insert empleados values(90, 'Raul', 'Medrano', 'Vidales', 'Calle #456', 6677567331, 6672432569,	'MEVR9412031H0', 'MEUU941203HDFRPJ09','30-1-2000', '3-12-1994',023, 1)
insert empleados values(24, 'Enrique', 'Iturrios', null, 'Calle Dominguez', 6677323131, 6672234569,	'IUER9006121H0', null,'28-2-2000', '12-6-1990',112, 30)
------
insert municipios values (1,'culiacan')
insert municipios values (2,'mazatlan')
insert municipios values (3,'navolato')
insert municipios values (4,'mocorito')
insert municipios values (5,'cosala')
-----
Insert colonias values (9, 'Col. SO',null,1)
insert colonias values (4, 'Col. SP',null,1)
insert colonias values (3,'Col. BA',12,1)
insert colonias values (5,'Col. NAV',16,1)
insert colonias values (7,'Col. SA',18,1)
insert colonias values (8,'Col. NY',20,1)
-----
insert clientes values(574, 'Ramon', 'Urias', 'Lopez', 'calle #32', 6677139182, 667344321, null, null, '22-03-1990', 'M', 5)
insert clientes values(233, 'Adrian', 'Perez', 'Lopez', 'calle #302', 6677769782, 667875321, null, null, '10-04-1994', 'M', 4)
insert clientes values(200, 'Karla', 'Gomez', null, 'calle #85', 6677184582, 667344645, null, null, '22-03-1989', 'F', 4)
insert clientes values(438, 'Perla', 'Ruiz', 'Castañeda', 'calle #456', 66771754363, 667344854, null, null, '22-03-1985', 'F', 8)
insert clientes values(123, 'Carlos', 'Benitez', null, 'calle #9855', 6677154382, 667356721, null, null, '22-03-1988', 'M', 7)
-----
insert ferreterias values(111, 'Ferreteria Gomez', 'calle 24', 6677134562)
insert ferreterias values(231, 'Ferreteria Valdez', 'calle 50', 6677158762)
insert ferreterias values(984, 'Ferreteria Edy', 'calle 32', 6677136345)
insert ferreterias values(985, 'Ferreteria San Juan', 'calle 56', 6677137785)
insert ferreterias values(432, 'Ferreteria Oscar', 'calle 8', 6677124673)
-----
insert ventas values(1002, '1-3-2011', 111, 574, 1)
insert ventas values(900, '15-5-2012', 231, 574, 1)
insert ventas values(2000, '22-12-2015', 984, 233, 30)
insert ventas values(999, '20-11-2014', 985, 438, 90)
insert ventas values(2022, '1-3-2015', 432, 123, 24)
----
insert detalle values(1344, 31, 2, 120)
insert detalle values(1943, 31, 10, 120)
insert detalle values(1456, 200, 10, 90)
insert detalle values(1344, 50, 5, .5)
insert detalle values(1344, 1, 3, 3)


