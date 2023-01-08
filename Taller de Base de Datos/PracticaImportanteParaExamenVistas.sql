create database RENTAS

go

use RENTAS

go

create table paises(

paisid int not null,

paisnombre varchar( 50) not null )

go

create table estados(

paisid int not null,

edoid int not null,

edonombre varchar( 50) not null ,

edoarea int not null)

go

create table clientes(

cliid int not null,

clinombre varchar( 50) not null ,

cliapellidos varchar( 50 ) not null, 

clidomicilio varchar( 50 ) not null, 

clirfc char(13) , 

paisid int not null,

edoid int not null )

go

create table radios(

radid int not null,

radnombre varchar( 50) not null ,

raddescripcion varchar( 200 ) not null,

radpreciorenta numeric(12,2) not null )

go

create table sucursales(

sucid int not null,

sucnombre varchar( 50) not null )

go

create table rentas(

sucid int not null,

rentasfolio int not null,

rentasfecha datetime not null,

cliid int not null ,

rentasadid int not null ,

rentasimporte numeric(12,2) not null  )

go

alter table paises add constraint pk_paises  primary key ( paisid )

alter table estados add constraint pk_estados  primary key ( paisid , edoid )

alter table clientes add constraint pk_clientes  primary key ( cliid )

alter table radios add constraint pk_radios  primary key ( radid )

alter table sucursales add constraint pk_sucursales  primary key ( sucid )

alter table rentas add constraint pk_rentas  primary key ( sucid, folio )

go

alter table estados add 

constraint fk_estados_paises foreign key ( paisid ) references paises( paisid ) 

go

alter table clientes add 

constraint fk_clientes_estados foreign key ( paisid, edoid ) references estados ( paisid,edoid ) 

go

alter table rentas add 

constraint fk_rentas_clientes foreign key ( cliid ) references clientes( cliid ),

constraint fk_rentas_radios foreign key ( radid ) references radios( radid ),

constraint fk_rentas_sucursales foreign key ( sucid ) references sucursales ( sucid )

go

--FAMILIA DE VISTAS
create view VW_ESTADOS as
select
e.edoid, e.edonombre, e.edoarea,
p.paisid, p.paisnombre	
from ESTADOS e
inner join PAISES p on p.paisid = e.paisid
select * from VW_ESTADOS
go

create view VW_CLIENTES as
select
c.cliid, c.clinombre, c.cliapellidos, c.clidomicilio, c.clirfc,
e.edoid, e.edonombre, e.edoarea,
p.paisid, p.paisnombre
from CLIENTES c
inner join ESTADOS e on e.paisid = c.edoid
select * from VW_CLIENTES
go

create view VW_RENTAS as
select
c.cliid, c.clinombre, c.cliapellidos, c.clidomicilio c.clirfc,
s.sucid, s.sucnombre,
rentas.rentasfolio, rentas.rentasfecha, rentas.rentasimporte,
radios.radid, radios.radnombre, radios.raddescripcion, radios.radpreciorenta
from RENTAS rentas
inner join VW_CLIENTES c on c.cliid = rentas.cliid
inner join SUCURSALES s on s.sucid = rentas.sucid
inner join RADIOS radios on radios.radid = rentas.radid
select * from VW_RENTAS
go

--CONSULTAS
--2.- NOMBRE DEL PAIS, TOTAL DE ESTADOS QUE CONTIENE Y AREA TOTAL DEL PAIS.
select PaisNombre, EdoId, Total_Estados = count(distinct EdoId)
from VW_ESTADOS
group by PaisNombre

--3.- NOMBRE DEL ESTADO Y TOTAL DE CLIENTES QUE CONTIENEN.
select EdoNombre, CliId, Total_Clientes = count(distinct CliId)
from VW_CLIENTES
group by EdoNombre

--4.- NOMBRE DE LA SUCURSAL, TOTAL DE RENTAS REALIZADOS E IMPORTE TOTAL DE RENTAS.
select SucNombre, RentasFolio, Total_Rentas = count(distinct RentasFolio), Importe_Total_Rentas = sum(RentasImporte)
from VW_RENTAS
group by year(RentasFecha)

--5.- NOMBRE DEL CLIENTE, TOTAL DE RENTAS REALIZADOS E IMPORTE TOTAL DE LA RENTA. MOSTRAR SOLO LOS CLIENTES QUE SU NOMBRE TENGA 20 LETRAS Y QUE EL IMPORTE TOTAL DE LA RENTA SEA MAYOR A 1000 PESOS. 
select clinombre, RentasFolio, Total_Rentas = count(distinct RentasFolio), Importe_Total_Rentas = sum(RentasImporte)
from VW_RENTAS
where LEN(clinombre) = 20
group by year(RentasFecha)
having sum(RentasImporte) > 1000

--6.- CONSULTA CON EL AÑO E IMPORTE TOTAL DE LA RENTA. MOSTRAR SOLO EL PRIMER SEMESTRE DE LOS AÑOS Y QUE EL IMPORTE SEA MAYOR A 500 PESOS.
select RentasFolio, Año_Renta = year(rentasfecha), Importe_Total_Rentas = sum(RentasImporte)
from VW_RENTAS
where datepart(mm, rentasfecha) < 7
group by year(RentasFecha)
having sum(RentasImporte) > 500

--7.- CONSULTA CON EL DIA DE LA SEMANA EL TOTAL DE RENTAS REALIZADAS Y EL IMPORTE TOTAL DE LAS RENTAS.
select RentasFolio, datename(dw, rentasfecha), Total_Rentas = count(distinct RentasFolio), Importe_Total_Rentas = sum(RentasImporte)
from VW_RENTAS
group by datename(dw, rentasfecha)