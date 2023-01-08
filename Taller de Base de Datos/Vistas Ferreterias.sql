--nombre		--tablas utilizadas
----------------------------------------
--vw_articulos	articulos, familias
--vw_ventas		ventas, ferreterias, empleados, clientes
--vw_detalle	detalle, articulos, ventas
--SUPLEMENTARIAS
--vw_empleados	empleados, zonas
--vw_colonias	colonias, municipios
--clientes		clientes, colonias

--Vista Articulos
create view vw_articulos as
select
a.artid, a.artnombre, a.artdescripcion, a.artprecio,

f.famid, f.famnombre, f.famdescripcion
from articulos a
inner join familias f on a.famid = f.famid

--Vista Ventas
create view vw_ventas as
select
v.folio, v.fecha,

f.ferrid, f.ferrnombre, f.ferrdomicilio, f.ferrtelefono,

e.empid, e.empnombre, e.empapepat, e.empapemat, e.empdomicilio, e.emptelefono,
e.empcelular, e.emprfc, e.empcurp, e.empfechaingreso, e.empfechanacimiento, e.zonaid,
e.jefeid,

c.cteid, c.ctenombre, c.cteapepat, c.cteapemat, c.ctedomicilio, c.ctetelefono, c.ctecelular,
c.cterfc, c.ctecurp, c.ctefechanacimiento, c.ctesexo, c.colid
from ventas v
inner join ferreterias f on v.ferrid = f.ferrid
inner join empleados e on v.empid = e.empid
inner join clientes c on v.cteid = c.cteid

--Vista detalle
create view vw_detalle as
select 
d.cantidad, d.precio,
a.*,
v.*
from detalle d
inner join vw_articulos a on d.artid = a.artid
inner join vw_ventas v on d.folio = v.folio

--SUPLEMENTARIAS
--Vista empleados
create view vw_empleados as
select 
e.empid, e.empnombre, e.empapepat, e.empapemat, e.empdomicilio, e.emptelefono,
e.empcelular, e.emprfc, e.empcurp, e.empfechaingreso, e.empfechanacimiento, e.zonaid,
e.jefeid,

z.zonanombre
from empleados e
inner join zonas z on e.zonaid = z.zonaid

--Vista colonias
create view vw_colonias as
select 
c.colid, c.colnombre, c.colcp,

m.munid, m.munnombre
from colonias c
inner join municipios m on c.munid = m.munid

--Vista clientes
create view vw_clientes as
select
c.cteid, c.ctenombre, c.cteapepat, c.cteapemat, c.ctedomicilio, c.ctetelefono, c.ctecelular,
c.cterfc, c.ctecurp, c.ctefechanacimiento, c.ctesexo,

col.*
from clientes c
inner join vw_colonias col on c.colid = col.colid