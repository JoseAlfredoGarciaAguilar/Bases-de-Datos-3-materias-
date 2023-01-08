--Interbloques
--CREACION DE LAS TABLAS
create table cheques(
cta int, nombre char(30),
balance numeric(12,2))

create table ahorros(
cta int, nombre char(30),
balance numeric(12,2))
--previamente insertamos 2 registros
insert cheques values(1,'Jose',200)
insert ahorros values(1,'Jose',200)

insert cheques values(2,'Ana',200)
insert ahorros values(2,'Ana',200)