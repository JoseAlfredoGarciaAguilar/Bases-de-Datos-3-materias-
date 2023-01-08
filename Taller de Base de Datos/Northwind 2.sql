use northwind
--consulta con todos los datos de todos los empleados
select * from employees

--consulta con el nombre del cliente y su direccion
select companyname, address from customers

--consulta con clave y el nombre de empleados con encabezado
select Clave = employeeid, firstname as Nombre from employees

select 'Clave del empleado' = employeeid, firstname as [Nombre del empleado] from employees

--mostra el precio de los productos aumentado 10, 20   y 30%
select productname, 'original'= unitprice,
'10 %' = unitprice * 1.1,
'20 %' = unitprice * 1.2,
'30 % ' =  unitprice *1.3
from products

--imprimir el aumento simulado de 20 pesos a todos los productos
select productname, unitprice, 'aumento 20 pesos' = unitprice+20
from products

--tres elevado a la cuarta potencia
select abs(-21)
select floor(3.9) -- entero menor
select ceiling(3.1)--entero mayor
select round(12.23456, 2)--redondea el numero a dos cifras
select sign(12.3)
select sign(-12.3)
select rand()--regresa valor aleatorio

select power(3,4)

--elevar al cuadrado el precio de los productos
select productname, power(unitprice, 2) from products

--imprimir la raiz cuadrada del precio de los productos
select productname, [Precio unitario] = unitprice, 'Raiz cuadrada' = sqrt(unitprice)
from products


use northwind
--mostrar el nombre completo de empleado
select firstname + char (32) + ' ' + space(1) + lastname from employees

--mostra el nombre del empleado como J. Perez - 
select substring(firstname, 1, 1) + ' ' + space(1) + lastname from employees

--mostra en mayusculas el nombre completo de empleado
select upper(firstname + ' ' + lastname) from employees

--mostra la ultima letra del apellido del empleado
select lastname,
apellido = right(lastname, 1),
apellido = substring(lastname, Len(lastname), 1)
from employees

--no se puede concatenar una cadena de texto con un campo numerico de manera directa
select 'el precio es ' + unitprice from products

--se necesita utilizar la funcion str para realizar este proceso
select 'el precio es ' + Ltrim( str(unitprice, 50, 2)) from products

--se necesita utilizar la funcion convert para realizar este proceso
select 'el precio es ' + convert(varchar(100), unitprice) from products
select 'el precio es ' + cast(unitprice as varchar(10)) from products

--CONSULTA DE EMPLEADOS: Jose Lopez nació el dia jueves 8 de enero de 1970
select * From employees

select
firstname + ' ' + lastname + ' nació el dia ' +
datename(dw, birthdate)+ ' ' + 
datename(dd, birthdate) + ' de ' +
datename(mm, birthdate) + ' de ' +
convert(char(4), datepart(yy, birthdate))
from employees

--FUNCION QUE REGRESA LA HORA DEL SERVIDOR
select getdate()

--consulta con los años vividos por los empleados (edad)
select employeeid, firstname, birthdate,
datediff(yy, birthdate, getdate()),
year(getdate()) - year(birthdate)
from employees

--consulta con el nombre y la antiguedad de los empleados
select firstname, hiredate, datediff(yy, hiredate, getdate())
from employees

use northwind
--mostrar los productos con un precio unitario menor a 20 pesos
select productid, productname, unitprice
from products
where unitprice < 20

--mostrar las ordenes realizadas despues del 1 enero 1998
select orderid, customerid, orderdate
from orders
where orderdate > '01-01-1998'

--mostrar los empleados con una edad menor o igual a 55 años
select firstname, birthdate, edad = datediff(yy, birthdate, getdate())
from employees
where datediff(yy, birthdate , getdate()) <= 55

--consulta con los empleados que tengan más de 8 letras en el apellido
select employeeid, firstname, lastname, letras = len(lastname)
from employees
where len(lastname) > 8

--mostrar los precios de los productos entre 10 y 50 pesos
select productid, productname, unitprice
from products
where unitprice between 10 and 50

--mostrar las ordenes que no fueron realizadas entre enero y marzo de 1997
select orderid, customerid, orderdate
from orders
where orderdate not between '01-01-97' and '3-31-97'

--mostrar los empleados que nacieron en la decada de los 50 (1950 al 1959)
select firstname, birthdate, año = year(birthdate)
from employees
where year(birthdate) between 1950 and 1959

--mostrar los productos con precio de 18, 25 o 30 pesos
select productid, productname, unitprice
from products
where unitprice in(18,25,30)

--mostrar las ordenes realizadas en enero, marzo, diciembre
select orderid, customerid, orderdate, mes = month(orderdate)
from orders
where month(orderdate) in(1,3,12)

--mostrar los empleados que su nombre empiece con A, B o M
select employeeid, firstname, letra = substring(firstname, 1, 1)
from employees
where substring(firstname, 1, 1) in ('a', 'b', 'm')

--mostrar los productos con precio de 18,25 o 30
select * from products
where
unitprice = 18 or
unitprice = 25 or
unitprice = 30

--mostrar los productos con un precio entre 20 y 30 pesos
select productid, productname, unitprice
from products
where
unitprice >=20
and unitprice <=30

--mostrar los empleados que hayan nacido en marzo, agosto o noviembre
select employeeid, firstname, mes = month(birthdate)
from employees
where month(birthdate) in(3,8,11)

select employeeid, firstname, mes = month(birthdate)
from employees
where
month(birthdate) = 3
or month(birthdate) = 8
or month(birthdate) = 11

--mostrar las ordenes realizadas el primer semestre de 1998
select orderdate, mes = month(orderdate), año = year(orderdate)
from orders
where
month(orderdate) between 1 and 6
and year(orderdate) = 1998

USE northwind
--consulta con los productos donde su nombre sea ikura
select * from products where productname like 'ikura'

--consulta con los productos que empiecen con el texto 'queso'
select * from products where productname like 'queso%'

--consulta con los productos que terminen con la cadena "es"
select * from products where productname like '%es'

--consulta con los productos que contengan la cadena "as"
select * from products where productname like '%as%'

--consulta con los productos que empiecen con la letra G y terminen con la letra A
select * from products where productname like 'g%a'

select * from products
where
substring(productname,1,1) in ('g')
and
right(productname,1) in ('a')

--consulta con los productos que empiecen con la letra M, G, R
select * from products where productname like '[mgr]%'

select * from products
where productname like 'm%' or productname like 'g%' or productname like 'r%'

select * from products
where substring(productname,1,1) in ('m', 'g', 'r')

--consulta con los productos que terminen con consonantes
select * from products where productname like '%[qwrtyop...]'

select * from products where productname not like '%[aeiou]' --NOT LIKE
															--Si el % esta al inicio indica que es el final de la palabra

select * from products where productname like '%[^aeiou]' --la negacion es para que no termine con esas letras

--consulta con los productos que tengan 5 caracteres
select * from products where productname like '_____' --son 5 guiones bajos

select * from products where len(productname) = 5 --sirve igual que el anterior pero ahora ponemos el numero de caracteres

--consulta con los productos que en la tercera posicion tengan una VOCAL
select * from products where productname like '__[aeiou]%'

--productos que su primera palabra tenga 5 caracteres
select * from products where productname like '_____ %' --5 guiones bajos, un espacio en blanco y %

--consulta con los empleados que no tienen asignada una region
select * from Employees where Region is null
--esto es un error
select * from Employees where Region = null --no marca error pero no da resultado

--consulta con los clientes que si tienen asignado un fax
select customerid, CompanyName, fax from customers
where fax is not null

--ordenando datos
--consulta con los nombres de los empleados ordenados por apellido
select employeeid, lastname, firstname from employees
order by lastname asc

--consulta con los productos ordenados de mayor a menor precio
select productid, productname, unitprice from products
order by unitprice desc --DESCENDENTE (mayor a menor)

select productid, productname, unitprice from products
order by 3 desc

--1 consulta con los productos mas caros
select TOP 5 productid, productname, unitprice from products --muestra las primeras 5 filas
order by unitprice desc --Todo ejercicio con TOP siempre debe tener un order by
--desc = descendente

--2 consulta con los 2 empleados mas jovenes
select TOP 2 employeeid, firstname, birthdate from Employees
order by birthdate desc

--consulta con las ultimas 5 ordenes de 1996 del empleado 2
select TOP 5 orderid, orderdate, employeeid
from orders
where employeeid = 2 and year(orderdate)=1996
order by orderdate desc