create database CONGRESOESTUDIANTES
go
use CONGRESOESTUDIANTES
go
--CREACIÓN DE TABLAS
create table CONGRESO(
conID int not null,
conNombre nvarchar(50) not null,
conDescripcion nvarchar(100) not null,
conFechaIni datetime not null,
conFechaFin datetime not null,
conLugar nvarchar(50) not null)
go
create table EXPOSITORES(
expID int not null,
expNombre nvarchar(50) not null,
expApellidos nvarchar(50) not null,
expCorreo nvarchar(30) not null,
expCelular nchar(10) null)
go
create table EVENTO(
eveID int not null,
eveNombre nvarchar(50) not null,
eveDescripcion nvarchar(50) not null,
eveFecha datetime not null,
eveLugar nvarchar(50) not null,
eveCosto numeric(6,2) not null,
expID int not null)
go
create table MUNICIPIO(
munID int not null,
munNombre nvarchar(50) not null)
go
create table ESCUELA(
escID int not null,
escNombre nvarchar(50) not null,
escDomicilio nvarchar(50) not null,
munID int not null)
go
create table ESTUDIANTE(
estID int not null,
estNombre nvarchar(50) not null,
estApellidos nvarchar(50) not null,
estDomicilio nvarchar(50) not null,
estCorreo nvarchar(30) null,
estCelular nchar(10) null,
escID int not null)
go
create table REGISTRO(
folio int not null,
fecha datetime not null,
estID int not null,
conID int not null)
go
create table eventosXreg(
folio int not null,
eveID int not null)
go
--CREACIÓN DE LLAVES PRIMARIAS
alter table congreso add constraint pk_congreso primary key(conid)
alter table expositores add constraint pk_expositor primary key(expid)
alter table municipio add constraint pk_municipio primary key(munid)
alter table escuela add constraint pk_escuela primary key(escid)
alter table estudiante add constraint pk_estudiante primary key(estid)
alter table registro add constraint pk_registro primary key(folio)
alter table evento add constraint pk_evento primary key(eveid)
go
--LLAVES EXTERNAS
alter table escuela add
constraint fk_escuela_municipios foreign key(munid) references municipio(munid)
go
alter table estudiante add
constraint fk_estudiante_esuela foreign key(escid) references escuela(escid)
go
alter table evento add
constraint fk_evento_expositores foreign key(expid) references expositores(expid)
go
alter table registro add
constraint fk_registro_congreso foreign key(conid) references congreso(conid),
constraint fk_registro_estudiante foreign key(estid) references estudiante(estid)
go
alter table eventosXreg add
constraint fk_eventosXreg_registro foreign key(folio) references registro(folio),
constraint fk_eventosXreg_eventos foreign key(eveid) references evento(eveid)
go
--LLAVES ÚNICAS
alter table expositores add
constraint uc_expositores_correo unique(expcorreo)
go
--check constraint
alter table evento add
constraint cc_evento_costo check(evecosto > 0)
go
--VALOR POR DEFAULT Y DE COMPROBACIÓN
alter table estudiante add
constraint dc_estudiante_correo default('sin correo') for estcorreo,
constraint dc_estudiante_celular default('sin celular') for estcelular

--INSERT
insert congreso values(9905, 'internacional de deportes', 'se trataran temas diversos', '1-1-2015', '1-2-2015', 'sala A')
insert congreso values(9020, 'biologia', 'buenas intenciones hacia la naturaleza', '1-1-2015', '1-2-2015', 'sala C')
insert congreso values(8143, 'quimica', 'buenas mezclas', '1-2-2015', '1-3-2015', 'sala D')
insert congreso values(8122, 'matematicas', 'se trataran temas diversos', '1-1-2015', '1-2-2015', 'sala G')
insert congreso values(8109, 'salud', 'como llevar una buena alimentación', '1-1-2015', '1-3-2015', 'sala H')
-----
insert expositores values(2101, 'Saul', 'Camacho', 'saul05@gmail.com', 6672319119)
insert expositores values(2111, 'Alejandro', 'Real', 'Alex23@gmail.com', 6672454678)
insert expositores values(2212, 'Carlos', 'Perez', 'Carlos22@gmail.com', 6672198945)
insert expositores values(2221, 'Juan', 'Moreno', 'ElJuan5@gmail.com', 6672453678)
insert expositores values(2121, 'Alejandra', 'Moreno', 'Ale100@gmail.com', 6672438754)
-----
insert municipio values(256, 'Culiacán')
insert municipio values(245, 'Mazatlán')
insert municipio values(199, 'El Fuerte')
insert municipio values(188, 'Cosalá')
insert municipio values(223, 'Elota')
-----
insert evento values(443, 'Conferencia', 'Temas variados', '1-1-2015', 'cubiculo 1', 200, 2101)
insert evento values(421, 'Conferencia', 'Temas variados', '1-2-2015', 'cubiculo 5', 250, 2212)
insert evento values(400, 'Practica', 'Utilizar el equipo de seguridad', '1-1-2015', 'cubiculo 1', 200, 2111)
insert evento values(399, 'Conferencia', 'Temas variados', '1-1-2015', 'cubiculo 4', 300, 2221)
insert evento values(422, 'Practica', 'Utilizar el equipo de seguridad', '1-1-2015', 'cubiculo 3', 200, 2121)
-----
insert escuela values(56, 'TECNM campus culiacán', ' Juan de Dios Batiz No. 310', 256)
insert escuela values(60, 'UAdeO', 'calle Rosales No. 22', 245)
insert escuela values(98, 'UAS', 'Prolongación morelos salida', 199)
insert escuela values(97, 'TECNM campus los mochis','H.Ayuntamiento', 199)
insert escuela values(10, 'Escuela secundaria tecnica No.29','calle Morelos', 223 )
-----
insert estudiante values(2078, 'Raul', 'Osuna', 'calle principal #22', null, 6671324323, 97)
insert estudiante values(2231, 'Manuel', 'Sandoval', 'San Juan #22', 'Manu33@gmail.com', null, 97)
insert estudiante values(2330, 'Angel', 'Ramirez', 'Colonia san miguel #21', 'An22@gmail.com', 6675456543, 10)
insert estudiante values(1993, 'Carlos', 'Osuna', 'Colonia san miguel #33', 'Carlos1@gmail.com', 6675436754, 10)
insert estudiante values(1334, 'Maria', 'Lopez', 'calle principal #112', 'maria298@gmail.com', 6679845345, 98)
-----
insert registro values(954, '10-12-2014', 2078, 9905)
insert registro values(899, '11-12-2014', 2231, 9905)
insert registro values(978, '11-12-2014', 2330, 9020)
insert registro values(943, '10-12-2014', 1334, 8109)
insert registro values(853, '10-12-2014', 1993, 8122)
----
insert eventosXreg values(954, 443)
insert eventosXreg values(899, 443)
insert eventosXreg values(978, 400)
insert eventosXreg values(943, 399)
insert eventosXreg values(853, 422)
