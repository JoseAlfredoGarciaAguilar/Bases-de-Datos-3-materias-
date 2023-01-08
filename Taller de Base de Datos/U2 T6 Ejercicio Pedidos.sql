create database PEDIDOS_tarea
go
use PEDIDOS_tarea
go
--CREACIÓN DE TABLAS
create table EMPLEADOS(
EmpId int not null,
EmpNombre nvarchar(40) not null,
EmpApellidos nvarchar(40),
EmpCelular nchar(10) not null,
JefeId int not null)
go
create table PEDIDOS(
PedFolio int not null,
PedFecha datetime not null,
PedImporte int null,
CliId int not null,
EmpId int not null)
go
create table CLIENTES(
CliId int not null,
CliNombre nvarchar(40) not null,
CliApellidos nvarchar(40) null,
CliDom nvarchar(40) not null,
CliRfc nchar(15) null,
PaisId int not null,
EdoId int not null)
go
create table ESTADOS(
EdoId int not null,
EdoNombre nvarchar(40) not null,
EdoArea int not null,
PaisId int not null)
go
create table PAISES(
PaisId int not null,
PaisNombre nvarchar(40) not null)
go

--CREACIÓN DE LLAVES PRIMARIAS
alter table EMPLEADOS add constraint pk_empleados primary key(EmpId)
alter table CLIENTES add constraint pk_clientes primary key(CliId)
alter table ESTADOS add constraint pk_estados primary key(EdoId)
alter table ESTADOS add constraint pk_estados primary key(PaisId)
alter table PAISES add constraint pk_paises primary key(PaisId)
go

--CREACIÓN DE LLAVES FORÁNEAS
alter table PEDIDOS add
constraint fk_pedidos_clientes foreign key(CliId) references CLIENTES(CliId),
constraint fk_pedidos_empleados foreign key(EmpId) references EMPLEADOS(EmpId)
go
alter table CLIENTES add
constraint fk_clientes_estados foreign key(EdoId) references ESTADOS(EdoId),
constraint fk_clientes_paises foreign key(PaisId) references PAISES(PaisId)
go
alter table ESTADOS add
constraint fk_estados_paises foreign key(PaisId) references PAISES(PaisId)
go

--ASOCIACIÓN UNITARIA
alter table EMPLEADOS add JefeId int null
go
alter table EMPLEADOS add
constraint fk_emp_emp foreign key(JefeId) references EMPLEADOS(EmpId)
go

--UNIQUE CONSTRAINT
alter table CLIENTES add
constraint uc_clientes_rfc unique(CliRfc)
go

--CHECK CONSTRAINT
alter table PEDIDOS add
constraint cc_pedidos_fecha check(PedFecha>'1-1-2010')

--DEFAULT CONSTRAINT
alter table CLIENTES add
constraint dc_clientes_dom default('Domicilio Desconocido') for CliDom
go
alter table EMPLEADOS add
constraint dc_empleados_cel default('No hay celular') for EmpCel
go

--INSERCIÓN DE DATOS A LAS TABLAS
use PEDIDOS_tarea
go
insert into PAISES values(1, 'México')
insert into PAISES values(2, 'Estados Unidos')
insert into PAISES values(3, 'Francia')
insert into PAISES values(4, 'Argentina')
insert into PAISES values(5, 'Italia')
select * from PAISES
go

insert into ESTADOS values(1, 'Sinaloa', 120000, 1)
insert into ESTADOS values(2, 'Sonora', 134000, 1)
insert into ESTADOS values(3, 'Jalisco', 97500, 1)
insert into ESTADOS values(4, 'NewYork', 150000, 2)
insert into ESTADOS values(5, 'Roma', 170000, 5)
select * from ESTADOS
go

insert into EMPLEADOS values(1, 'José Alfredo', 'García Aguilar', '6674879307', 1)
insert into EMPLEADOS values(2, 'César Alfredo', 'Astorga Ochoa', '6673250087', 1)
insert into EMPLEADOS values(3, 'Marco Antonio', 'López Castro', '6671256701', 1)
insert into EMPLEADOS values(4, 'Diego', 'Valencia Ozuna', '6672151619', 1)
insert into EMPLEADOS values(5, 'Fernanda', 'Gamboa Sánchez', '6673161842', 1)
select * from EMPLEADOS
go

insert into CLIENTES values(1, 'Mauricio', 'Inzunza Cordero', 'Salvador Alvarado', 'MIC12497613', 4, 5)
insert into CLIENTES values(2, 'Ricardo', 'Torrez Quintero', 'Libertad', 'RTQ6340769', 2, 5)
insert into CLIENTES values(3, 'William', 'Inzunza Aguilar', 'Salvador Alvarado', 'WIA1042714', 1, 1)
insert into CLIENTES values(4, 'Rita', 'Ortiz Gómez', 'Las Quintas', 'ROG2349551', 1, 1)
insert into CLIENTES values(5, 'Mariana', 'Manjarrez Quiroz', 'Buenos Aires', 'SA12497611', 3, 1)
select * from CLIENTES
go

insert into PEDIDOS values(1, '2-4-2019', 1, 1, 9850)
insert into PEDIDOS values(2, '4-1-2014', 2, 2, 1020)
insert into PEDIDOS values(3, '8-9-2020', 3, 3, 3400)
insert into PEDIDOS values(4, '7-7-2017', 4, 4, 7550)
insert into PEDIDOS values(5, '3-5-2018', 5, 5, 9847)
select * from PEDIDOS
go

--FAMILIA DE VISTAS CREADAS
create view VW_ESTADOS as
select
est.EdoId, est.EdoNombre, est.EdoArea,
p.PaisId, p.PaisNombre
from ESTADOS est
inner join PAISES p on p.PaisId = est.PaisId
select * from VW_ESTADOS
go

create view VW_CLIENTES as
select
cli.CliId, cli.CliNombre, cli.cliApellidos, cli.CliApellidos, cli.CliDom, cli.CliRfc,
est.EdoId, est.EdoNombre, est.EdoArea,
p.PaisId, p.PaisNombre
from CLIENTES cli
inner join ESTADOS est on est.PaisId = cli.PaisId
select * from VW_CLIENTES
go

create view VW_PEDIDOS as
select
ped.PedFolio, ped.PedFecha, ped.PedImporte,
c.CliId, c.CliNombre, c.CliApellidos, c.CliDom, c.CliRfc,
e.EmpId, e.EmpNombre, e.EmpApellidos, e.EmpCelular, e.JefeId
from PEDIDOS ped
inner join CLIENTES c on c.CliId = ped.CliId
inner join EMPLEADOS e on e.EmpId = ped.EmpId
select * from VW_PEDIDOS
go

create view VW_MESES as
select
pedidos.PedFolio, pedidos.PedFecha, pedidos.PedImporte,
c.CliId, c.CliNombre, c.CliApellidos, c.CliDom, c.CliRfc,
e.EmpId, e.EmpNombre, e.EmpApellidos, e.EmpCelular, e.JefeId
from PEDIDOS pedidos
inner join CLIENTES c on c.CliId = pedidos.CliId
inner join EMPLEADOS e on e.EmpId = pedidos.EmpId
go

--10 CONSULTAS
--1.- NOMBRE DE LA PAIS Y TOTAL DE ESTADOS QUE CONTIENE.
select PaisNombre, EdoId, Total_Estados = count(distinct EdoId)
from VW_ESTADOS
group by PaisNombre

--2.- NOMBRE DEL ESTADO, TOTAL DE PEDIDOS REALIZADOS E IMPORTE TOTAL.
select EdoNombre, PedFolio, Total_Pedidos = count(distinct PedFolio), Importe_Total = sum(PedImporte)
from VW_PEDIDOS
group by EdoNombre

--3.- AÑO, TOTAL DE PEDIDOS REALIZADOS E IMPORTE TOTAL.
select PedFolio, Año = year(PedFecha), PedImporte, Importe_Total = sum(PedImporte)
from VW_PEDIDOS
group by year(PedFecha)

--4.- MES Y TOTAL DE PEDIDOS REALIZADOS. MOSTRAR TODOS LOS MESES, SI NO TIENE PEDIDOS, MOSTAR EN CERO.
select PedFolio, PedFecha, Mes = datename(month,PedFecha), Total_Pedidos = count(distinct PedFolio), PedImporte
from VW_PEDIDOS
group by datename(month,PedFecha)
go
create view VW_MESES as
select PedFolio, nombre='Enero'
union select 2,'Febrero'
union select 3,'Marzo'
union select 4,'Abril'
union select 5,'Mayo'
union select 6,'Junio'
union select 7,'Julio'
union select 8,'Agosto'
union select 9,'Septiembre'
union select 10,'Octubre'
union select 11,'Noviembre'
union select 12,'Diciembre'
go
select * from VW_MESES
go
select m.CliNombre, Total_Pedidos = count(distinct PedFolio), PedImporte = isnull(sum(p.PedImporte),0)
from VW_PEDIDOS p right outer join VW_MESES m on m.CliId = month(day,PedFecha)
group by m.CliNombre, m.PedFecha
order by m.PedFolio

--5.- NOMBRE DEL EMPLEADO, TOTAL DE PEDIDOS REALIZADOS E IMPORTE TOTAL.
select EmpNombre, PedFolio, Total_Pedidos = count(distinct PedFolio), Importe_Total = sum(PedImporte)
from VW_PEDIDOS
group by EmpNombre

--6.- NOMBRE DEL CLIENTE, TOTAL DE PEDIDOS REALIZADOS E IMPORTE TOTAL. 
select CliNombre, PedFolio, Total_Pedidos = count(distinct PedFolio), Importe_Total = sum(PedImporte)
from VW_PEDIDOS
group by CliNombre

--7.- NOMBRE DEL ESTADO Y TOTAL DE PEDIDOS REALIZADOS POR MES DEL AÑO 2020. 
select EdoNombre, Total_Pedidos_2020 = count(distinct PedFolio),
e = count (distinct case when month(PedFecha) = 1 then PedFolio end),
f = count (distinct case when month(PedFecha) = 2 then PedFolio end),
m = count (distinct case when month(PedFecha) = 3 then PedFolio end),
a = count (distinct case when month(PedFecha) = 4 then PedFolio end),
m = count (distinct case when month(PedFecha) = 5 then PedFolio end),
jn = count (distinct case when month(PedFecha) = 6 then PedFolio end),
jl = count (distinct case when month(PedFecha) = 7 then PedFolio end),
a = count (distinct case when month(PedFecha) = 8 then PedFolio end),
s = count (distinct case when month(PedFecha) = 9 then PedFolio end),
o = count (distinct case when month(PedFecha) = 10 then PedFolio end),
n = count (distinct case when month(PedFecha) = 11 then PedFolio end),
d = count (distinct case when month(PedFecha) = 12 then PedFolio end)
from VW_PEDIDOS p
where year(PedFecha) = 2020
group by EdoNombre

--8.- AÑO, Y TOTAL DE PEDIDOS REALIZADOS POR DIA DE LA SEMANA.
select Año = year(PedFecha),
d = count (distinct case when day(PedFecha) = 1 then PedFolio end),
l = count (distinct case when day(PedFecha) = 2 then PedFolio end),
ma = count (distinct case when day(PedFecha) = 3 then PedFolio end),
mi = count (distinct case when day(PedFecha) = 4 then PedFolio end),
j = count (distinct case when day(PedFecha) = 5 then PedFolio end),
v = count (distinct case when day(PedFecha) = 6 then PedFolio end),
s = count (distinct case when day(PedFecha) = 7 then PedFolio end)
from VW_PEDIDOS
group by year(PedFecha)

--9.- AÑO Y TOTAL DE PEDIDOS REALIZADOS POR ESTADO.
select Año = year(PedFecha),
Sinaloa = count(distinct case when EdoId = 1 then PedFolio end),
Sonora = count(distinct case when EdoId = 2 then PedFolio end),
Jalisco = count(distinct case when EdoId = 3 then PedFolio end),
NewYork = count(distinct case when EdoId = 4 then PedFolio end),
Roma = count(distinct case when EdoId = 5 then PedFolio end)
from VW_PEDIDOS
group by year(PedFecha)

-- 10.- NOMBRE DEL PAIS, TOTAL DE ESTADOS QUE CONTIENE, TOTAL DE CLIENTES QUE CONTIENE.
select PaisNombre, EdoId, Total_Estados = count(distinct EdoId), Total_Clientes = count(distinct CliId)
from VW_ESTADOS
group by PaisNombre