--nombre		tablas utilizadas
---------------------------------------
--vw_evento		evento, expositores
--vw_registro	registro, estudiante, congreso
--vw_eveXreg	evento, registro
--SUPLEMENTARIAS
--vw_escuela	escuela, municipio
--vw_estudiante		estudiante, escuela

--Vista Evento
create view vw_evento as
select
e.eveid, e.evenombre, e.evedescripcion, e.evefecha, e.evelugar, e.evecosto,

ex.expid, ex.expnombre, ex.expapellidos, ex.expcorreo, ex.expcelular
from evento e
inner join expositores ex on e.expid = ex.expid

--Vista Registro
create view vw_registro as
select
r.folio, r.fecha,

est.*,

c.*
from registro r
inner join vw_estudiante est on r.estid = est.estid
inner join congreso c on r.conid = c.conid

--Vista eventoXregistro
create view vw_eveXreg as
select
e.eveid, e.evenombre, e.evedescripcion, e.evefecha, e.evelugar, e.evecosto,

r.folio, r.fecha

from eventosXreg exr
inner join vw_evento e on exr.eveid = e.eveid 
inner join vw_registro r on exr.folio = r.folio


--SUPLEMENTARIAS
--Vista Escuela
create view vw_escuela as
select
esc.escid, esc.escnombre, esc.escdomicilio,

m.munid, m.munnombre
from escuela esc
inner join municipio m on esc.munid = m.munid

--Vista Estudiante
create view vw_estudiante as
select
est.estid, est.estnombre, est.estapellidos, est.estdomicilio, est.estcorreo, est.estcelular,

esc.*
from estudiante est
inner join vw_escuela esc on est.escid = esc.escid