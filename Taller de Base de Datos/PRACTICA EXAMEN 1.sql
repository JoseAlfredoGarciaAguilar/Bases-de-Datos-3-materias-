--PRACTICA EXAMEN 1
--1
create database Recuperacion1
go
use Recuperacion1
go
--creacion de tablas
create table Paises(
paisId int not null,
paisNombre nvarchar(30) not null,
)
go
create table Estados(
paisId int not null,
edoId int not null,
edoNombre nvarchar(30) not null
)
go
create table Empleados(
empId int not null,
empNombre nvarchar(30) not null,
empApePat nvarchar(30) not null,
empApeMat nvarchar(30) not null,
empRFC nchar(15) not null,
empSexo nchar(1) not null,
empDomicilio nvarchar(30) not null,
paisId int not null,
edoId int not null
)
--Llaves primarias
use Recuperacion1
alter table Paises add constraint pk_paises primary key(paisId)
alter table Estados add constraint pk_estados primary key(paisId, edoId)
alter table Empleados add constraint pk_empleados primary key(empId)
go
--Llaves externas
use Recuperacion1
alter table Estados add constraint fk_estados_paises foreign key(paisId) references Paises(paisId)
go
alter table Empleados add constraint fk_empleados_estados foreign key(paisId, edoId) references Estados(edoId)
go
--Asociación unaria
alter table Empleados add JefeId int not null
go
alter table Empleados add constraint fk_empleados_empleados foreign key(JefeId) references Empleados(empId)
go
--Restricción única
alter table Empleados add constraint uc_empleados_rfc unique(emprfc)
alter table Empleados add constraint uc_empleados_jefe unique(jefeId)
go
--Restricción por defecto
alter table Empleados add constraint dc_empleados_dom default('Domicilio de empleado ya conocido...') for empDomicilio
go
--Restricción por verificación
alter table Empleados add constraint cc_empleados_sexo check(empSexo in('F','M'))
go

--2. Consulta con el folio de venta, fecha de venta y nombre del cliente. Mostrar solo las ventas realizadas los días
--lunes de los clientes que viven en los municipios que su nombre termine en las letras S, N y vocales.
Select v.folio, v.fecha, c.cteNombre, c.cteApePat, c.cteApeMat 
From Ventas v 
Inner Join Clientes c on c.cteId = v.cteId
Where datepart(dw, fecha) = 2 and c.munId like '%[SNAEIOU]'

--3. Consulta con el nombre de la familia y nombre del producto, mostrar los productos que tengan la misma familia y el mismo precio.
select f.famNombre, a.artNombre
from Articulos a
inner join Familias f a on f.famId = a.artId
inner join Articulos x on x.artPrecio = x.artPrecio and a.artId<>x.artId
inner join Familias y on x.famId = y.famId
where f.famId = y.famId

--4. Consulta con el folio de la venta, nombre del producto, precio y cantidad, mostrar los productos que tengan un precio entre 50 y 100.
Select v.folio, a.artnombre, a.artprecio, a.artdescripcion
From Ventas v
Inner Join Articulos a on v.folio = a.artid
Where a.artprecio between 50 and 100

--Consulta con el nombre del articulo y nombre de la familia. Mostrar solo las familias que su tercera letra sea T, S, B, M.
Select a.artNombre, f.famNombre
From Familias f
Inner Join Articulos a on a.famNombre = a.famNombre
Where a.famNombre like '__[tsbm]%'

--Consulta con el folio de venta, fecha de venta y nombre del cliente. Mostrar solo las ventas realizadas
--los días lunes de los clientes que viven en los municipios que su nombre termine en las letras S, N y vocales.
Select v.folio, v.fecha, c.cteNombre
From Ventas v
Inner Join Clientes c on v.folio = c.cteid
Inner Join Municipios m on v.
Where datepart(dw, fecha) in (2) and m.munNombre like '%[snaeiou]'

--Consulta con el folio de la venta, nombre del artículo, cantidad de piezas vendidas, precio e importe total.
--Mostrar solo los artículos de las familias que su nombre empieza con las letras Q, R, T, G.
select v.folio, a.artnombre, d.cantidad, a.artprecio, d.cantidad * d.precio
from Ventas v
Inner Join Articulos a on v.artid = a.artid
Inner Join Detalle d on v.folio = d.folio
Inner Join Familias f on v.famid = f.famid
Where a.artnombre like 'Q%' or a.artnombre like 'R%' or a.artnombre like 'T%' or a.artnombre like 'G%'

--CONSULTA CON EL FOLIO DE LA VENTA, FECHA DE LA VENTA, MESES QUE HAN PASADO DESDE QUE SE HIZO LA VENTA,
--NOMBRE DEL CLIENTE Y NOMBRE DE LA FERRETERIA. MOSTRAR SOLO LAS VENTAS DE LOS CLIENTES Y FERRETERIAS QUE SUS TELEFONOS EMPIECE CON 667.
Select v.folio, v.fecha, c.cteNombre, c.cteApePat, c.cteApeMat
From Ventas v
Inner Join Clientes c on v.cteid = c.cteid
Inner Join Ferreterias f on v.ferrid = f.ferrid
Where c.telefono like '[667]%'

select homephone from employees

--Consulta con el nombre del empleado, nombre de la zona, mostrar solo los registros donde el nombre de la zona empiece y termine con la misma letra.
Select e.empnombre, z.zonanombre
From Empleados e
Inner Join Zonas z on e.zonaid = z.zonaid
Where z.zonanombre like 'a%' and z.zonanombre like '%a'

--Consulta con el nombre del municipio, nombre de la colonia, mostrar las colonias que tenga dos vocales seguidas
select m.munnombre, c.colnombre
from Colonias c
inner join municipios m on m.munid = c.munid
where c.colnombre like '[aeiou]%' or c.colnombre like '%[aeiou]%' or c.colnombre like '[%aeiou]'

--Consulta con el nombre completo del cliente, nombre de la colonia y nombre del municipio. Mostrar solo los clientes que el
--nombre del municipio y nombre la colonia contenga la cadena 'ASA'
Select c.ctenombre, c.cteapepat, c.cteapemat, col.colnombre, m.munnombre
From Clientes c
Inner Join Colonias col on c.colid = col.colid
Inner Join Municipios m on col.munid = m.munid
Where m.munnombre like '%ASA%' and col.colnombre like '%ASA%' 

select * from employees
where firstname like '%AN%' and firstname like '%AN%' 

--Consulta con el folio de la venta, fecha, nombre del empleado y cliente. Mostrar solo los empleados que no tengan RFC y los clientes que no tengan CURP
select v.folio, v.fecha, e.empnombre, c.ctenombre
from ventas v
inner join empleados e on e.empid = v.empid
inner join clientes c on c.cteid = v.cteid
where e.emprfc is null or c.cteCurp is null

--Consulta con el nombre del empleado, nombre de su jefe. Mostrar solo los empleados y jefes que vivan en la misma zona.
select e.empnombre, j.jefeid
from empleados e
inner join empleados j on j.jefeid = e.empid
where e.zonaid = j.zonaid

--Consulta con los 5 articulos mas baratos de la familia que empiezan con vocal
select TOP 5 *
from articulos a
inner join familias f on a.famid = f.famid
where f.famnombre like '[aeiou]%'
order by artprecio asc

--Consulta con el folio de la venta, fecha de la venta, domicilio del cliente, del empleado y de la ferretería,
--mostrar solo los clientes y empleados que vivan en una avenida.
Select v.folio, v.fecha, c.ctedomicilio, e.empdomicilio, f.ferrdomicilio
From Ventas v
Inner Join Clientes c on v.cteid = c.cteid
Inner Join Empleados e on v.empid = e.empid
Inner Join Ferreterias f on v.ferrid = f.ferrid
Where c.ctedomicilio like '%av%' and e.empdomicilio like '%av%'

--Consulta con el folio de la venta, fecha, nombre del empleado, cliente y ferretería. Mostrar solo las ventas del segundo semestre de 2020.
Select v.folio, v.fecha, e.empnombre, e.empapepat, e.empapemat, c.ctenombre, f.ferrnombre
From Ventas v
Inner Join Empleados e on v.empid = e.empid
Inner Join Clientes c on v.cteid = c.cteid
Inner Join Ferreterias f on v.ferrid = f.ferrid
Where datepart(mm, fecha) > 6 and datepart(yy, fecha) = 2020



Where datepart(dw, fecha) in (2) and m.munNombre like '%[snaeiou]'