--Crear usuario
create user usuario1 with password '123456'; 

--Dar permisos de seleccionar e insertar a todas las tablas
grant select on categories to usuario1;
grant insert on categories to usuario1;

grant select on suppliers to usuario1;
grant insert on suppliers to usuario1;

grant select on products to usuario1;
grant insert on products to usuario1;

grant select on shippers to usuario1;
grant insert on shippers to usuario1;

grant select on customers to usuario1;
grant insert on customers to usuario1;

grant select on employees to usuario1;
grant insert on employees to usuario1;

grant select on region to usuario1;
grant insert on region to usuario1;

grant select on territories to usuario1;
grant insert on territories to usuario1;

grant select on employeeterritories to usuario1;
grant insert on employeeterritories to usuario1;

grant select on orderdetails to usuario1;
grant insert on orderdetails to usuario1;

grant select on orders to usuario1;
grant insert on orders to usuario1;

grant select on customercustomerdemo to usuario1;
grant insert on customercustomerdemo to usuario1;

grant select on customerdemographics to usuario1;
grant insert on customerdemographics to usuario1;

--Quitar permisos de seleccionar e insertar a todas las tablas
revoke select on categories from usuario1;
revoke insert on categories from usuario1;

revoke select on suppliers from usuario1;
revoke insert on suppliers from usuario1;

revoke select on products from usuario1;
revoke insert on products from usuario1;

revoke select on shippers from usuario1;
revoke insert on shippers from usuario1;

revoke select on customers from usuario1;
revoke insert on customers from usuario1;

revoke select on employees from usuario1;
revoke insert on employees from usuario1;

revoke select on region from usuario1;
revoke insert on region from usuario1;

revoke select on territories from usuario1;
revoke insert on territories from usuario1;

revoke select on employeeterritories from usuario1;
revoke insert on employeeterritories from usuario1;

revoke select on orderdetails from usuario1;
revoke insert on orderdetails from usuario1;

revoke select on orders from usuario1;
revoke insert on orders from usuario1;

revoke select on customercustomerdemo from usuario1;
revoke insert on customercustomerdemo from usuario1;

revoke select on customerdemographics from usuario1;
revoke insert on customerdemographics from usuario1;

--drop user usuario1;

--select * from categories;

--insert into categories(categoryid,categoryname,description) values(50,'carne','arrachera');
--insert into  shippers(shipperid,companyname,phone) values(20,'prueba','667842704');
--select * from shippers where shipperid = 20;

--delete from categories where categoryid = 2;