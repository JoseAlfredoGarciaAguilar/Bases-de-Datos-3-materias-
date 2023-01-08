create database VentasExamen

go

use VentasExamen

go

create table familias(

famid int not null,

nombre varchar( 50) not null )

go

create table pasillos(

pasid int not null,

nombre varchar( 50) not null )

go

create table productos(

prodid int not null,

nombre varchar( 50) not null,

precio numeric(12,2) not null,

famid int not null,

pasid int not null )

go

create table colonias(

colid int not null,

nombre varchar( 50) not null )

go

create table tipos(

tipoid int not null,

nombre varchar( 50) not null )

go

create table clientes(

cliid int not null,

nombre varchar( 50) not null ,

apellidos varchar( 50 ) not null, 

domicilio varchar( 50 ) not null, 

colid int not null,

tipoid int not null )

go

create table ventas(

folio int not null,

fecha datetime not null,

cteid int not null )

go

create table detalle(

folio int not null,

prodid int not null,

cantidad numeric(12,2) not null,

precio numeric(12,2) not null  )

go

alter table familias add constraint pk_familias  primary key ( famid )

alter table pasillos add constraint pk_pasillos  primary key ( pasid )

alter table productos add constraint pk_productos  primary key ( prodid )

alter table colonias add constraint pk_colonias  primary key ( colid )

alter table tipos add constraint pk_tipos  primary key ( tipoid )

alter table clientes add constraint pk_clientes  primary key ( cliid )

alter table ventas add constraint pk_ventas  primary key ( folio )

alter table detalle add constraint pk_detalle primary key ( folio, prodid )

go

alter table productos add 

constraint fk_products_familias foreign key ( famid) references familias( famid ),

constraint fk_products_pasillos foreign key ( pasid ) references pasillos( pasid )

go

alter table clientes add 

constraint fk_clientes_colonias foreign key ( colid ) references colonias( colid ) ,

constraint fk_clientes_tipos foreign key ( tipoid ) references tipos( tipoid )  

go

alter table ventas add 

constraint fk_envios_ventas foreign key ( cteid ) references clientes( cliid ) 

go

alter table detalle  add 

constraint fk_detalles_productos  foreign key ( prodid ) references productos( prodid ),

constraint fk_detalles_ventas foreign key ( folio ) references ventas( folio )

go



insert pasillos values( 1, 'Verde' ) 

insert pasillos values( 2, 'Azul' ) 

go

insert familias values( 1, 'Abarrotes' )

insert familias values( 2, 'Verduras' )

go

insert productos values( 1, 'Mayonesa', 56.23 , 1 , 1 ) 

insert productos values( 2, 'Cajeta', 34.23 , 1 , 1 ) 

insert productos values( 3, 'Atún', 23.23 , 1 , 1 ) 

insert productos values( 4, 'Limón', 12.23 , 2 , 2 ) 

insert productos values( 5, 'Sandia', 21.23 , 2 , 2 ) 

insert productos values( 6, 'Pepino', 7.23 , 2 , 2 ) 

go

insert tipos values( 1, 'Chico' ) 

insert tipos values( 2, 'Mediano' ) 

go

insert colonias values( 1, 'Juárez' ) 

insert colonias values( 2, 'Centro' ) 

insert colonias values( 3, 'Sur' ) 

go

insert clientes values( 1 , 'Pedro', 'Castro', 'Av zapata 23',  1,1)

insert clientes values( 2 , 'Ana', 'Lara', 'Av Obregón 233', 2,1)

insert clientes values( 3 , 'Luis', 'Soto', 'Av Juárez 12',  3,2)

insert clientes values( 4 , 'Carlos', 'López', 'Av Castro 67',  1,2)

insert clientes values( 5 , 'José', 'Payán', 'Av zapata 87', 2,2)

go

insert ventas values( 1, '1-1-2021' , 1 )

insert ventas values( 2, '1-1-2021' , 2 )

insert ventas values( 3, '2-1-2021' , 2 )

insert ventas values( 4, '3-1-2021' , 1 )

go

insert detalle values( 1, 1 , 2 , 34.32 ) 

insert detalle values( 1, 3 , 3 , 54.32 ) 

insert detalle values( 2, 3 , 1 , 21.32 ) 

insert detalle values( 2, 4 , 5 , 43.32 ) 

insert detalle values( 3, 2 , 2 , 56.32 ) 

insert detalle values( 3, 4 , 3 , 43.32 ) 

insert detalle values( 4, 4 , 1 , 12.32 ) 

insert detalle values( 4, 5 , 5 , 32.32 ) 

--EXAMEN 2
--FAMILIA DE VISTAS // JOSÉ ALFREDO GARCÍA AGUILAR 8-9 AM TALLER DE BASE DE DATOS
--1.- REALIZAR LA FAMILIA DE VISTAS DEL MODELO ANEXO EN LA IMAGEN.
--SE ANEXA AL FINAL DE ESTE TEXTO LA CREACIÓN DE LAS TABLAS PARA SU MEJOR DESARROLLO DE ESTE PUNTO (40 puntos).
--nombre	tablas utilizadas
--vw_clientes	clientes, tipos, colonias
--vw_productos	productos, familias, pasillos
--vw_ventas		ventas, detalle, productos, clientes

--VISTA CLIENTES
create view VW_CLIENTES as
select 
cli.cliid, nombre_de_cliente = cli.nombre, cli.apellidos, cli.domicilio,
t.tipoid, nombre_de_tipo = t.nombre,
col.colid, nombre_de_colonia = col.colid
from clientes cli
inner join tipos t on cli.tipoid = t.tipoid
inner join colonias col on cli.colid = col.colid
go

--VISTA PRODUCTOS
create view VW_PRODUCTOS as
select 
pro.prodid, nombre_de_producto = pro.nombre, pro.precio,
fam.famid, nombre_de_familia = fam.famid,
pas.pasid, nombre_de_pasillo = pas.nombre
from productos pro
inner join familias fam on pro.famid = fam.famid
inner join pasillos pas on pro.pasid = pas.pasid
go

--VISTA VENTAS
create view VW_VENTAS as
select 
ven.fecha,
cli.cliid, cli.nombre_de_cliente, cli.apellidos, cli.domicilio, cli.colid, cli.nombre_de_colonia, cli.tipoid, cli.nombre_de_tipo,
det.folio, prod.prodid, det.cantidad, precio_de_venta = det.precio,
prod.nombre_de_producto, prod.precio, prod.famid, prod.nombre_de_familia, prod.pasid, prod.nombre_de_pasillo
from detalle det
inner join ventas ven on det.folio = ven.folio
inner join VW_CLIENTES cli on ven.cteid = cli.cliid
inner join VW_PRODUCTOS prod on det.prodid = prod.prodid
go


--CON LA FAMILIA DE VISTAS DEL PUNTO ANTERIOR, CONTESTAR LAS SIGUIENTES CONSULTAS(10 PUNTOS CADA UNO):
--2.- CONSULTA CON EL NOMBRE DE LA FAMILIA E IMPORTE TOTAL DE VENTAS.
select 
nombre_de_familia, importe_total_ventas = sum(cantidad * precio_de_venta) 
from VW_VENTAS
group by famid, nombre_de_familia

--3.- CONSULTA CON EL NOMBRE DEL PASILLO Y TOTAL DE PRODUCTOS QUE CONTIENE.
select 
nombre_de_pasillo, total_productos_pasillo = count(distinct prodid)
from VW_VENTAS
group by pasid, nombre_de_pasillo

--4.- CONSULTA CON EL NOMBRE DEL CLIENTE E IMPORTE TOTAL DE VENTAS.
select
nombre_de_cliente, importe_total_ventas = sum(cantidad * precio_de_venta) 
from VW_VENTAS
group by cliid, nombre_de_cliente

--5.- CONSULTA CON EL NOMBRE DE LA COLONIA Y TOTAL DE CLIENTES QUE VIVEN EN ELLA.
select
nombre_de_colonia, total_clientes_colonia = count(distinct cliid)
from VW_CLIENTES
group by colid, nombre_de_colonia

--6.- CONSULTA CON EL NOMBRE DEL PRODUCTO E IMPORTE TOTAL DE VENTAS. 
--MOSTRAR SOLO LOS PRODUCTOS QUE SU NOMBRE TENGA MAS DE 10 LETRAS Y QUE EL IMPORTE ESTE ENTRE 500 Y 1000 PESOS.
select
nombre_de_producto, importe_total_ventas = sum(cantidad * precio_de_venta) 
from VW_VENTAS
where len(nombre_de_producto) > 10 
group by prodid, nombre_de_producto 
having sum(cantidad * precio_de_venta) between 500 and 1000

--7.- CONSULTA CON EL NOMBRE DEL CLIENTE Y EL TOTAL DE VENTAS REALIZADAS LOS DIAS LUNES, MARTES, MIERCOLES, JUEVES Y VIERNES. 
--CADA DÍA EN UNA COLUMNA.
select
nombre_de_cliente,
l = count (distinct case when day(fecha) = 2 then folio end), --lunes
ma = count (distinct case when day(fecha) = 3 then folio end), --martes
mi = count (distinct case when day(fecha) = 4 then folio end), --miercoles
j = count (distinct case when day(fecha) = 5 then folio end), --jueves
v = count (distinct case when day(fecha) = 6 then folio end) --viernes
from VW_VENTAS
group by cliid, nombre_de_cliente