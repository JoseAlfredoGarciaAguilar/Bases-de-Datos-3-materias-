--RESTRICCIONES DE VISTAS
--1. Debe especificar en una vista los nombres de todas las columnas derivadas
--ademas los nombres de las columnas no se deben repetirc
create view vw_productoprecio as
select productname, Precio = unitprice *  1.4 from products
go
--2. las instrucciones Create view o pueden combinarse con ninguna otra
--instruccion de sql en un lote. un lote es un conjunto de instrucciones
--separadas por la tabla GO
create view vw_productos2 as
select * from products
go
create view vw_productos3 as
select * from products
go

--3. todos los objetos de bd a los que se  haga referencia en la vista se verifican al momento de crearla.
--marca error, el campo gastos no existe en la tabla productos
create view vw_productos4 as
select gastos from products
go
--4. no se pueden incluir las clausulas ORDER BY en la instruccion SELECT dentro de una vista
create view vw_productos6 as
select * from products
order by productname
go

--se ordena hasta que se ejecuta la vista
select * from vw_productos6
order by productname

--5. si se eliminan objetos  a los que se hace referencia dentro de una vista,
--la vista permanece, la siguiente vez que intente usar esa vista recibira un mensaje de error
create view vw_productos7 as
select * from vw_productos6
go
drop view vw_productos6

--la vista 7 ya no se ejecuta, la vista 6 fue eliminada previamente
select * from vw_productos7 order by productid

--6. no puede hacer referencia a tablas temporales en una vista
--tampoco puede utilizar la clausula SELECT INTRO dentro de la vista

--tabla temporal  local 
create table #local(col1 int, col2 int)
--tabla temporal global
create table #mglobal(col1 int, col2 int)

select * from #local
select * from ##global
go
--marca error
create view vw_productos5 as
select * from #local
go
--SELECT INTO, COPIA LA ESTRUCTURA DE UNA TABLA Y LA LLENA DE DATOS
select * 
INTO COPIAPROD
from products

select * from COPIAPROD

drop table COPIAPROD
go
--marca error
create view vw_productos5 as
select *
into tabla4
from products
go

--7. Si la vista emplea el asterisco * en la instruccion SELECT y
--la tabla base a la que hace referencia se le agregan nuevas columnas,
--estas no se mostrarán en la vista
create table tabla1(col1 int, col2 int)
go
create view vw_tablaA as
select * from tabla1
go
alter table table1 add col3 int
go
select * from VW_tablaA
--es necesario utilizar el comando alter view para actualizar los campos en la vista
alter view vw_tablaA as
select * from tabla1
go
--al eliminar una columna de tabla1, la vista marcara error al ejecutarse
alter table tabla1 drop column col1
--marca error
select * from VW_tablaA
--se corrige ejecutando alter view


--8. si crea una vista hija con base en una vista padre, debe tomar presente lo
--que esta haciendo la vista padre

--9. los datos de las vistas no se almacenan por separado, si cambia un dato en
-- una vista, está modificando el dato en la tabla base
create view vw_productos as
select * from products
go
update vw_productos set unitprice=unitprice+10 where productid = 1

select * from products where productid = 1

--10. en una vista no puede hacer referencia a mas de  1024 columnas

--11. en una vista no puede crear indices, ni desencadenadores (triggers)


--REINICIAR VISTAS
Drop view vw_productosprecio2
drop view vw_productos2
drop view vw_productos3
drop view vw_productos4
drop view vw_productos6



--modificacion de datos mediante vistas para modificar datos desde vistas creadas
--es necesario tomar en cuenta las siguientes reglas

--Regla 1
--las modificacione no pueden afectar a mas de una tabla adyacente.
--si una vista une informacion de dos o mas tablas, solo puede modificar
--datos de una de las tablas base
create view vw_productos_cat as
select p.productid, p.productname, p.unitprice, c.categoryid, c.categoryname
from products p
inner join categories c on p.categoryid = c.categoryid
go
--no se puede actualizar el nombre del producto y de la categoria con el mismo update
update vw_productos_cat
set productname = 'Leche descremada', categoryname = 'Lacteos'
where productid = 1

--se tienen que hacer 2 por separado
update vw_productos_cat set categoryname = 'Lacteos' where productid = 1
update vw_productos_cat set productname = 'Leche descremada' where productid = 1

--Insertar un registro en la tabla productos con la vista vw_productos_cat
insert vw_productos_cat(productname) values('leche descremada')

select * from Products
--la eliminacion no es posible porque afecta a dos tablas
delete vw_productos_cat where productid in(78)

--se tiene que hacer directo con la tabla
delete products where productid in(78)

--Regla 2
--solo se pueden modificar datos de columnas directas en una tabla base,
--asi que no es posible alterar columnas calculadas, columnas con funciones de agregado y 
--columnas con funciones de cadena, fecha o aritmeticas

create view vw_detalle as
select orderid, productid, unitprice, quantity, total = unitprice * quantity
from [order details]

--no se puede actualizar el campo total
update vw_detalle set total = total * 1.3 where productid = 1

--si se puede actualizar cualquier otro campo directo
update vw_detalle set unitprice = unitprice * 1.3 where productid = 1


--Regla 3
--las columnas con la propiedad "not null" definidas en la tabla base,
--pero que no forman parte de la vista,
--deben tener asignados valores predeterminados para cuando se insertan
--nuevas filas por medio de la vista.

--el campo TIPO no acepta valores nulos
create table grupos(clave int primary key, nombre char(10) not null, tipo int not null)

--una vista sobre la tabla grupos y no se incluye el campo tipo
create view vw_grupos as
select clave, nombre from grupos

--no se podre insertar datos desde la vista
insert vw_grupos (clave, nombre) values (1, 'casa')

--crear un valor predeterminado sobre el campo TIPO para que 
--inserte el valor 5 en el campo TIPO , ya es posible insertar usando la vista
alter table grupos add constraint dc_grupos_tipo default(5) for tipo
select * from grupos


--regla 4: al crear una vista con la opcion WHIT CHECK OPTION , todos los datos
--que se deseen insertar o actualizar deberan apegarse a la condicion
--incluida en la instruccion select de la vista
create view vw_prod as
select * from products where productname like 'm%'
WITH CHECK OPTION

--SOLAMENTE SE PUEDEN MODIFICAR O INSERTAR DATOS QUE EMPIEZAN CON M
--marca error
insert vw_prod(productname) values ('Desarmador')
--si se puede insertar
insert vw_prod(productname) values ('Madera')

--TAREA DE VISTAS
--FAMILIAS DE VISTAS
--Plan para generar la familia de vistas en la base de datos northwind:
--Se debe ir generando las vistas de afuera hacia dentro e ir reutilizando las vistas creadas
--previamente con todas sus columnas

--secuencia de creacion de vistas
--nombre			tablas utilizadas
------------------------------------------
--vw_products		products, categories, suppliers
--vw_orders			orders, employees, shippers, customers
--vw_orderdetails	[order details], vw_orders vw_products

--suplementarias
--vw_territories	territories, region
--vw_employeeterritories	vw_territories, employees, employeeterritories
-------------------------------------------------

go
--vista products
create view vw_products as
select
p.productid, p.productname, p.quantityperunit, prodnitprice = p.unitprice,
p.unitsinstock, p.unitsonorder, p.reorderlevel, p.discontiniued,

s.supplierid, s.companyname, s.contactname, s.contactittle, s.address,
s.city, s.region, s.postalcode, s.country, s.phone, s.fax, s.homepage,

c.categoryid, c.categoryname, c.description, c.picture
from products p
inner join suppliers s on p.supplierid = s.supplierid
inner join categories c on p.categoryid = c.categoryid

create view vw_orders as
select
o.orderid, o.orderdate, o.requirreddate, o.shippeddate, o.freight, o.shipname, o.shipaddress,
o.shipregion, o.shippostalcode, o.shipcountry

e.employeeid, name = e.firstname + ' ' + e.lastname, e.title, e.titleofcourtesy, e.birthdate,
e.hiredate, Emp_address = e.address, Emp_city = e.city, Emp_region = e.region, Emp_PostalCode = e.postalcode,
Emp_country = e.country, Emp_phone = e.homephone, e.extension, e.photo, e.notes, e.photopath,

s.shipperid, Ship = s.companyname, Shipphone = s.phone,

c.customerid, Company = c.companyname, c.contactme, c.contacttittle, Company_Address = c.address,
c.city, c.region, c.postalcode, c.country, c.phone, c.fax

from orders o
inner join employees e on employeeid = o.employeeid
inner join customers c on c.customerid = o.customerid
inner join shippers s on s.shipperid = o.shipvia

create view vw_orderdetails as
select
od.[orderid], od.[productid], od.[unitprice), od.[quantity], od.[discount],

vo.[orderdate], vo.[requireddate], vo.[shippeddate], vo.[freight], vo.[shipname], vo.[shipaddress],
vo.[shipregion], vo.[shippostalcode], vo.[shipcountry], vo.[employeeid], vo.[name], vo.[title], vo.[titleofcourtesy],
vo.[birthdate], vo.[hiredate], vo.[employeeaddress], vo.[employeecity], vo.[employeeregion], vo.[employeepostalcode],
vo.[employeecountry], vo.[employeephone], vo.[extension], vo.[photo], vo.[notes], vo.[photopath], vo.[shipperid], vo.[ship],
vo.[shiphone], vo.[customerid], vo.[company], vo.[companyaddress], vo.[city],

vp.[productname], vp.[quantityperunit], vp.[unitsinstock], vp.[unitsonorder], vp.[reorderlevel], vp.[discontinued],
vp.[categoryid], vp.[categoryname], vp.[description], vp.[picture], vp.[supplierid], vp.[companyname], vp.[contactname],
vp.[contacttitle], vp.[address], vp.[region], vp.[postalcode], vp.[country], vp.[phone], vp.[fax], vp.[homepage]

from [order details] od
inner join vw_orders vo on od.orderid = od.orderid
inner join vw_products vp on od.productid = vp.productid

create view vw_territories as
select
[territory], [territorydescription], [regiondescription], t.[regionid]

from territories t
inner join region r on t.regionid = r.regionid

create view vw_employeeterritories as
select
e.employeeid, e.firstname, e.lastname, e.title, e.titleofcourtesy, e.birthdate, e.hiredate, e.address, e.city,
e.region, e.postalcode, e.country, e.homephone, e.extension, e.photo, e.notes, e.reportsto, e.photopath,

vt.territoryid, vt.territorydescription, vt.regionid

from employees e
inner join employeeterritories et on et.employeeid = e.employeeid
inner join vw_territories vt on et.territoryid = vt.territoryid



-- clase
--Agrupamiento
--GROUP BY. Regresa valores distintos dependiendo del campo que seleccionamos

--Consulta con el nombre del proveedor y cuantos productos surte
select productname, categoryname, companyname
from vw_products
order by companyname

--primero agrupamos por nombre del proveedor
select companyname
from vw_products
group by companyname --busca los proveedores distintos

--funciones agregados: regresan un solo valor
--count
--sum
--max
--min
--avg

--total de productos
select COUNT(*)	from vw_products --77 renglones
--suma todos los precios de los productos
select SUM(produnitprice) from vw_products --SUM suma todos los valores de una columna
select produnitprice from vw_products
--clave maxima de productos
select max(productid) from vw_products
--clave minima de productos
select min(productid) from vw_products
--fecha mas grande de ordenes
select max(orderdate) from orders
--fecha mas pequeña de ordenes
select min(orderdate) from orders

--Consulta con el nombre del proveedor y cuantos productos surte
select productname, categoryname, companyname
from vw_products
order by companyname

--primero agrupamos por nombre del proveedor
select companyname
from vw_products
group by companyname --busca los proveedores distintos

--ahora se aplica la funcion count sobre el group by
select companyname, total = count(*)
from vw_products
group by companyname -- busca los proveedores distintos

--consulta con el nombre de la categoria y cuantos productos que contiene
select productname, categoryname, companyname
from vw_products
order by categoryname

select categoryname
from vw_products
group by categoryname --busca las categorias distintas

select categoryname, total = COUNT(*)
from vw_products
group by categoryname

--consulta con el folio de la orden y el importe total de la venta
select orderid, productname, quantity, unitprice
from vw_orderdetails

select orderid
from vw_orderdetails
group by orderid --muestra las ordenes distintas

select orderid, Importe = sum(quantity * unitprice)
from vw_orderdetails
group by orderid --muestra las ordenes distintas


--consulta con el nombre de la categoria y total de productos que surte
--mostrar solo las categorias que tengan menos de 10 productos

--marca error, no se permiten funciones de agregado en el where
select categoryname, total = count(*)
from vw_products
where count(*) < 10
group by categoryname

--es necesario incluir la funcion de agregado en la clausula having
select categoryname, total = count(*)
from vw_products
group by categoryname
having count(*) < 10

--consulta con el nombre del proveedor y total de productos que surte
--mostrar solo los proveedores que su nombre empiece con m,n
--y que surtan entre 1 y 3 productos
select productname, categoryname, companyname
from vw_products
order by companyname

select companyname, total = count(*)
from vw_products
where companyname like '[mn%]'
group by companyname
having count(*) between 1 and 3

--consulta con el nombre del cliente, total de ordenes realizadas e importe total de ventas,
--mostrar solo los clientes con un importe mayor a 10,000
select orderid, nomcliente, productname, quantity, unitprice
from vw_orderdetails
order by nomcliente

select nomcliente, mal=count(*), ordenes=(distinct orderid), importe=sum(quantity*unitprice)
from vw_orderdetails
group by nomcliente
having sum(quantity*unitprice) >10000
order by nomcliente

--consulta con el nombre del cliente, el importe total de ventas
--importe de 1998, importe 1997 e importe 1998
select orderid, nomcliente, productname, quantity, unitprice
from vw_orderdetails
order by nomcliente

select nomcliente, importe = sum(quantity*unitprice)
from vw_orderdetails
group by nomcliente

--estructura de case when
case when condicion then "verdadero" else "falso" End

case when condicion then
	"verdadero"
else
	"falso"
End

select nomcliente,
impoTotal = sum(quantity*unitprice),
importe96 = sum(case when year(orderdate) = 1996 then quantity * unitprice else 0 End),
importe97 = sum(case when year(orderdate) = 1997 then quantity * unitprice else 0 End),
importe98 = sum(case when year(orderdate) = 1998 then quantity * unitprice else 0 End)
from vw_orderdetails
group by nomcliente

select * from customers

--la consulta anterior no muestra a todos los clientes, modificar la consulta para que los muestre
select c.companyname, importeTotal = coalesce(sum(quantity*unitprice),0),
importe96 = sum(case when year(orderdate) = 1996 then quantity * unitprice else 0 End),
importe97 = sum(case when year(orderdate) = 1997 then quantity * unitprice else 0 End),
importe98 = sum(case when year(orderdate) = 1998 then quantity * unitprice else 0 End)
from vw_orderdetails d
right outer join Customers c on c.customerid = d.customerid
group by c.companyname

--consulta con el nombre del cliente, el importe total de ventas
--importe de 1996, importe de 1997 e importe de 1998

--metodo con 2 vistas
create view vw_cte96 as
select nomcliente, T96 = sum(quantity*unitprice)
from vw_orderdetails
where year(orderdate) = 1996
group by nomcliente
go
create view vw_cte97 as
select nomcliente, T97 = sum(quantity*unitprice)
from vw_orderdetails
where year(orderdate) = 1997
group by nomcliente
go
create view vw_cte98 as
select nomcliente, T98 = sum(quantity*unitprice)
from vw_orderdetails
where year(orderdate) = 1998
group by nomcliente
go
select * from vw_cte98
--no muestra todos los clientes
select A.nomcliente, A.T96, B.T97, C.T98
from vw_cte96 A
inner join vw_cte97 B on B.nomcliente = A.nomcliente
inner join vw_cte98 C on C.nomcliente = A.nomcliente

--muestra todos los clientes
select c.companyname, A.T96, B.T97, D.T98
from customers C
left outer join vw_cte96 A on A.nomcliente = C.companyname
left outer join vw_cte97 B on B.nomcliente = C.companyname
left outer join vw_cte98 D on D.nomcliente = C.companyname


--consulta con el año, total de ordenes realizadas e importe total de ventas
select orderid, orderdate, año = year(orderdate), productname, quantity, unitprice
from vw_orderdetails

select year(orderdate), ordenes = COUNT(distinct orderid), importe = SUM(quantity*unitprice)
from vw_orderdetails
group by year(orderdate)

--consulta con el año, total de ordenes realizadas por mes
select year(orderdate), Total = COUNT(distinct orderid),
ene = COUNT(distinct case when month(orderdate) = 1 then orderid end),
feb = COUNT(distinct case when month(orderdate) = 2 then orderid end),
mar = COUNT(distinct case when month(orderdate) = 3 then orderid end),
abr = COUNT(distinct case when month(orderdate) = 4 then orderid end),
may = COUNT(distinct case when month(orderdate) = 5 then orderid end),
jun = COUNT(distinct case when month(orderdate) = 6 then orderid end),
jul = COUNT(distinct case when month(orderdate) = 7 then orderid end),
ago = COUNT(distinct case when month(orderdate) = 8 then orderid end),
sep = COUNT(distinct case when month(orderdate) = 9 then orderid end),
oct = COUNT(distinct case when month(orderdate) = 10 then orderid end),
nov = COUNT(distinct case when month(orderdate) = 11 then orderid end),
dic = COUNT(distinct case when month(orderdate) = 12 then orderid end)
from vw_orderdetails
group by year(orderdate)

--traspuesta
select datename(mm,orderdate),Total = COUNT(distinct orderid),
t1996 = COUNT(distinct case when year(orderdate) = 1996 then orderid end),
t1997 = COUNT(distinct case when year(orderdate) = 1997 then orderid end),
t1998 = COUNT(distinct case when year(orderdate) = 1998 then orderid end)
from vw_orderdetails
group by datename(mm,orderdate), month(orderdate)
order by month(orderdate)