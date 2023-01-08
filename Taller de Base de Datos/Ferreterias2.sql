--IDENTITY
create table empresas(
clave int not null identity( 100, 2 ),
nombre varchar( 100 ) not null,
domicilio varchar( 100 ) null)

--es necesario omitir el valor identidad en la inserción
insert empresas values( 'tiendas lopez', 'av obregon 43')
insert empresas values( 'tiendas LEY', 'av obregon 345')
insert empresas values( 'tiendas DEL CENTRO', 'av obregon 345')
select * from empresas

--no se puede actualizar el valor identidad
update empresas set clave = 101 where clave = 100
--al eliminar un registro, el contador del identity continua, no se reinicia
delete empresas
--el valor continua con 106
insert empresas values( 'tiendas lopez', 'av obregon 43')
select * from empresas

--variable de sistema para mostrar el ultimo valor identity
select @@identity
--con truncate table se reinicia el valor identidad
truncate table empresas
--
insert empresas values( 'tiendas lopez', 'av obregon 43')
select * from empresas