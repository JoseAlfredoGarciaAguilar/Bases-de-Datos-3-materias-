create database Escuela

use Escuela

create table Alumnos(
Id varchar(10) not null, --varchar es para tipos de datos caracter, el numero del parentesis es el numero maximo de caracteres que permite
Nombre varchar(40) not null,
Apellido varchar(40) not null,
Edad "int" not null, --int guarda numeros enteros
Peso float not null, --float guarda numeros decimales
Domicilio text,
Fecha_Nacimiento datetime --datename guarda fechas desde 1 enero 1753 hasta 31 diciembre 9999, mientras que smalldatetime guarda desde 1 enero 1900
--hasta 06 junio 2079
--año-mes-dia o año/mes/dia
--hora:minuto:segundo.milisegundos
);

use Escuela
Select *
From Alumnos