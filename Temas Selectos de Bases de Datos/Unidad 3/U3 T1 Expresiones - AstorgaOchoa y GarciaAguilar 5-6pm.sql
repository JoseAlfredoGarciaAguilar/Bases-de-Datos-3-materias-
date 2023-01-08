--1
--MDX
select [vw raeservicios].[año].members on columns,
[ventanillas].[grupos - ventanillas].members on rows
from [foliosservicios]
where measures.montoinversion
--SQL
select v.nomven,
'all' = sum(r.montoinversion),
'2005' = sum(case when year(r.fecha) = 2005 then r.montoinversion else 0 end),
'2006' = sum(case when year(r.fecha) = 2006 then r.montoinversion else 0 end),
'2007' = sum(case when year(r.fecha) = 2007 then r.montoinversion else 0 end),
'2008' = sum(case when year(r.fecha) = 2008 then r.montoinversion else 0 end),
'2009' = sum(case when year(r.fecha) = 2009 then r.montoinversion else 0 end),
'2010' = sum(case when year(r.fecha) = 2010 then r.montoinversion else 0 end)
from grupos g
inner join ventanillas v on v.grupo = g.grupo
inner join raeservicios r on r.ventanilla = v.ventanilla
group by v.nomven
union
select 'all',
'all' = sum(montoinversion),
'2005' = sum(case when year(fecha) = 2005 then montoinversion else 0 end),
'2006' = sum(case when year(fecha) = 2006 then montoinversion else 0 end),
'2007' = sum(case when year(fecha) = 2007 then montoinversion else 0 end),
'2008' = sum(case when year(fecha) = 2008 then montoinversion else 0 end),
'2009' = sum(case when year(fecha) = 2009 then montoinversion else 0 end),
'2010' = sum(case when year(fecha) = 2010 then montoinversion else 0 end)
from raeservicios

--2
--MDX
select [ventanillas].[nombre].members on columns,
[vw raeservicios].[año].members on rows
from [foliosservicios]
where measures.montoinversion
--SQL
select 
'all',
'all' = sum(r.montoinversion),
'FOSIN' = sum(case when g.nombre = 'fosin' then r.montoinversion else 0 end),
'URGE' = sum(case when g.nombre = 'urge' then r.montoinversion else 0 end)
from raeservicios r
inner join ventanillas v on r.ventanilla = v.ventanilla
inner join grupos g on v.grupo = g.grupo
union all
select 
convert(varchar(20), year(r.fecha)), 
'all' = sum(r.montoinversion), 
'FOSIN' = sum(case when g.nombre = 'fosin' then r.montoinversion else 0 end),
'URGE' = sum(case when g.nombre = 'urge' then r.montoinversion else 0 end)
from raeservicios r
inner join ventanillas v on r.ventanilla = v.ventanilla
inner join grupos g on v.grupo = g.grupo
group by year(r.fecha)

--3
--MDX
select [servicios].[nombre].members on columns,
[vw raeservicios].[mes].members on rows
from [foliosservicios]
where measures.empleosgenerar
--SQL
select 
'all',
'all' = sum(r.montoinversion),
'FOSIN' = sum(case when g.nombre = 'fosin' then r.montoinversion else 0 end),
'URGE' = sum(case when g.nombre = 'urge' then r.montoinversion else 0 end)
from raeservicios r
inner join ventanillas v on r.ventanilla = v.ventanilla
inner join grupos g on v.grupo = g.grupo
union all
select 
convert(varchar(20), year(r.fecha)), 
'all' = sum(r.montoinversion), 
'FOSIN' = sum(case when g.nombre = 'fosin' then r.montoinversion else 0 end),
'URGE' = sum(case when g.nombre = 'urge' then r.montoinversion else 0 end)
from raeservicios r
inner join ventanillas v on r.ventanilla = v.ventanilla
inner join grupos g on v.grupo = g.grupo
group by year(r.fecha)

--4
--MDX
select [vw raeservicios].[año].members on columns,
[usuarios].[nombre].members on rows
from [foliosservicios]
where measures.empleosgenerar
--SQL
select 'all',
'all' = sum(empleosgenerar),
'2005' = sum(case when year(fecha) = 2005 then empleosgenerar else 0 end),
'2006' = sum(case when year(fecha) = 2006 then empleosgenerar else 0 end),
'2007' = sum(case when year(fecha) = 2007 then empleosgenerar else 0 end),
'2008' = sum(case when year(fecha) = 2008 then empleosgenerar else 0 end),
'2009' = sum(case when year(fecha) = 2009 then empleosgenerar else 0 end),
'2010' = sum(case when year(fecha) = 2010 then empleosgenerar else 0 end)
from raeservicios 
union all
select u.nombre,
'all' = sum(r.empleosgenerar),
'2005' = sum(case when year(r.fecha) = 2005 then r.empleosgenerar else 0 end),
'2006' = sum(case when year(r.fecha) = 2006 then r.empleosgenerar else 0 end),
'2007' = sum(case when year(r.fecha) = 2007 then r.empleosgenerar else 0 end),
'2008' = sum(case when year(r.fecha) = 2008 then r.empleosgenerar else 0 end),
'2009' = sum(case when year(r.fecha) = 2009 then r.empleosgenerar else 0 end),
'2010' = sum(case when year(r.fecha) = 2010 then r.empleosgenerar else 0 end)
from usuarios u
inner join raeservicios r on r.usuario = u.usuario 
group by u.nombre

--5
--MDX
select [vw raeservicios].[mes].members on columns,
[ventanillas].[nomven].members on rows
from [foliosservicios]
where measures.empleosgenerar
--SQL
select
v.nomven,
'all' = sum(r.empleosgenerar),
'1' = sum(case when month(r.fecha) = 1 then r.empleosgenerar else 0 end),
'2' = sum(case when month(r.fecha) = 2 then r.empleosgenerar else 0 end),
'3' = sum(case when month(r.fecha) = 3 then r.empleosgenerar else 0 end),
'4' = sum(case when month(r.fecha) = 4 then r.empleosgenerar else 0 end),
'5' = sum(case when month(r.fecha) = 5 then r.empleosgenerar else 0 end),
'6' = sum(case when month(r.fecha) = 6 then r.empleosgenerar else 0 end),
'7' = sum(case when month(r.fecha) = 7 then r.empleosgenerar else 0 end),
'8' = sum(case when month(r.fecha) = 8 then r.empleosgenerar else 0 end),
'9' = sum(case when month(r.fecha) = 9 then r.empleosgenerar else 0 end),
'10' = sum(case when month(r.fecha) = 10 then r.empleosgenerar else 0 end),
'11' = sum(case when month(r.fecha) = 11 then r.empleosgenerar else 0 end),
'12' = sum(case when month(r.fecha) = 12 then r.empleosgenerar else 0 end)
from ventanillas v
inner join raeservicios r on r.ventanilla = v.ventanilla 
group by v.nomven
union 
select
'all',
'all' = sum(empleosgenerar),
'1' = sum(case when month(fecha) = 1 then empleosgenerar else 0 end),
'2' = sum(case when month(fecha) = 2 then empleosgenerar else 0 end),
'3' = sum(case when month(fecha) = 3 then empleosgenerar else 0 end),
'4' = sum(case when month(fecha) = 4 then empleosgenerar else 0 end),
'5' = sum(case when month(fecha) = 5 then empleosgenerar else 0 end),
'6' = sum(case when month(fecha) = 6 then empleosgenerar else 0 end),
'7' = sum(case when month(fecha) = 7 then empleosgenerar else 0 end),
'8' = sum(case when month(fecha) = 8 then empleosgenerar else 0 end),
'9' = sum(case when month(fecha) = 9 then empleosgenerar else 0 end),
'10' = sum(case when month(fecha) = 10 then empleosgenerar else 0 end),
'11' = sum(case when month(fecha) = 11 then empleosgenerar else 0 end),
'12' = sum(case when month(fecha) = 12 then empleosgenerar else 0 end)
from raeservicios

--6
--MDX
select [vw raeservicios].[año].members on columns,
[vw raeservicios].[mes].members on rows
from [foliosservicios]
where measures.empleosgenerar
--SQL
select 'all',
'all' = sum(r.empleosgenerar),
'2005' = sum(case when year(r.fecha) = 2005 then r.empleosgenerar else 0 end),
'2006' = sum(case when year(r.fecha) = 2006 then r.empleosgenerar else 0 end),
'2007' = sum(case when year(r.fecha) = 2007 then r.empleosgenerar else 0 end),
'2008' = sum(case when year(r.fecha) = 2008 then r.empleosgenerar else 0 end),
'2009' = sum(case when year(r.fecha) = 2009 then r.empleosgenerar else 0 end),
'2010' = sum(case when year(r.fecha) = 2010 then r.empleosgenerar else 0 end)
from raeservicios r
union all
select cast(month(r.fecha) as varchar(3)),
'all' = sum(r.empleosgenerar),
'2005' = sum(case when year(r.fecha) = 2005 then r.empleosgenerar else 0 end),
'2006' = sum(case when year(r.fecha) = 2006 then r.empleosgenerar else 0 end),
'2007' = sum(case when year(r.fecha) = 2007 then r.empleosgenerar else 0 end),
'2008' = sum(case when year(r.fecha) = 2008 then r.empleosgenerar else 0 end),
'2009' = sum(case when year(r.fecha) = 2009 then r.empleosgenerar else 0 end),
'2010' = sum(case when year(r.fecha) = 2010 then r.empleosgenerar else 0 end)
from raeservicios r
group by month(r.fecha)

--7
--MDX
select measures.members on columns,
[ventanillas].[nombre].members on rows
from [foliosservicios]
--SQL
select 'all',
'MONTOINVERSION' = sum(r.montoinversion),
'EMPLEOSGENRAR' = sum(r.empleosgenerar),
'EMPLEOSTEMP' = sum(r.empleostemp),
'MONTOFINAL' = sum(r.montofinal)
from grupos g
inner join ventanillas v on v.grupo = g.grupo 
inner join raeservicios r on r.ventanilla = v.ventanilla 
union
select g.nombre,
'MONTOINVERSION' = sum(r.montoinversion),
'EMPLEOSGENRAR' = sum(r.empleosgenerar),
'EMPLEOSTEMP' = sum(r.empleostemp),
'MONTOFINAL' = sum(r.montofinal)
from grupos g 
inner join ventanillas v on v.grupo = g.grupo 
inner join raeservicios r on r.ventanilla = v.ventanilla 
group by g.nombre

--8
--MDX
select [vw raeservicios].[año].members on columns,
measures.members on rows
from [foliosservicios]
--SQL

--9
--MDX
select measures.members on columns,
[servicios].[nombre].members on rows
from [foliosservicios]
--SQL
select 
'all',
'MONTOINVERSION' = sum(montoinversion),
'EMPLEOSGENRAR' = sum(empleosgenerar),
'EMPLEOSTEMP' = sum(empleostemp),
'MONTOFINAL' = sum(montofinal)
from raeservicios 
union 
select f.nombre,
'MONTOINVERSION' = sum(r.montoinversion),
'EMPLEOSGENRAR' = sum(r.empleosgenerar),
'EMPLEOSTEMP' = sum(r.empleostemp),
'MONTOFINAL' = sum(r.montofinal)
from familias f
inner join subfamilias sf on f.familia = sf.familia
inner join servicios s on sf.subfamilia = s.subfamilia
inner join raeservicios r on s.servicio = r.servicio 
group by f.nombre

--10
--MDX
select [vw raeservicios].[año].members on columns,
{[vw raeservicios].[mes].[1], [vw raeservicios].[mes].[2], [vw raeservicios].[mes].[3]} on rows
from [foliosservicios]
where measures.empleosgenerar
--SQL
select month(fecha),
'all' = sum(empleosgenerar),
'2005' = sum(case when year(fecha) = 2005 then empleosgenerar else 0 end),
'2006' = sum(case when year(fecha) = 2006 then empleosgenerar else 0 end),
'2007' = sum(case when year(fecha) = 2007 then empleosgenerar else 0 end),
'2008' = sum(case when year(fecha) = 2008 then empleosgenerar else 0 end),
'2009' = sum(case when year(fecha) = 2009 then empleosgenerar else 0 end),
'2010' = sum(case when year(fecha) = 2010 then empleosgenerar else 0 end)
from raeservicios r
where month(fecha) < 4
group by month(fecha)