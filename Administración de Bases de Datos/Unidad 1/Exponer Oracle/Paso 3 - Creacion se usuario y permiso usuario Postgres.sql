alter session set "_ORACLE_SCRIPT"=true;
CREATE USER usuario1 IDENTIFIED BY clave;

grant select any table to usuario1;
grant insert any table to usuario1;
grant create session to usuario1;

--drop user usuario1;

select * from system.categories; --permite hacer select
insert into system.categories(categoryid,categoryname,description) values (9,'pescaderia','mojarrita'); --permite hacer insert
insert into system.categories(categoryid,categoryname,description) values (10,'verduras','lechuga'); --permite hacer insert
delete from system.categories where categoryid = 7; --no permite eliminar (privilegios insuficientes)
update system.categories set categoryname = 'salchichoneria' where categoryid = 3; --no permite editar (privilegios insuficientes)