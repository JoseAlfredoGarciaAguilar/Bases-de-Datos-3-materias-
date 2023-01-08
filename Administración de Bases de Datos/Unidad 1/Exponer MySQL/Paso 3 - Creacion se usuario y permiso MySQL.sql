#crear usuarios
create user 'Usuario1'@'localhost' identified by '123456';
grant select, insert on * . * to 'Usuario1'@'localhost';
#drop user 'Usuario1'@'localhost';

create user Usuario2 identified by '123456';
grant select, insert on * . * to 'Usuario2';
#drop user Usuario2;

#quitar permisos a usuarios
#revoke select, insert on * . *  from 'Usuario1'@'localhost';
#revoke select, insert on * . *  from Usuario2;

#mirar los usuarios que tenemos
#SELECT User, Host FROM mysql.user;

#use mysql;
#select * from user;