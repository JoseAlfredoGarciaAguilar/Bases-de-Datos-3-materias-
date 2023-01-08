--Programacion con Transact-SQL
--Teoria

--declaracion de variable
declare @nom_variable tipo_dato

--tipo_dato : son tipos de datos valido en sql server:
bit, int , numeric, char, varchar, datetime, etc.

--asignacion de variable
select @nom_variable = valor;
set @nom_variable = valor;

--los valores de cadena de caracteres y fecha llevan comillas para su asignacion
select @nacimiento='01-01-2007'
select @nombre='Juan Perez'

--los valores numericos se asignan de manera formal
select @x=12.1

--impresion
print @nom_variable
select @nom_variable

--ejemplo
declare @total numeric(7,3) --7 numeros de los cuales 3 son decimales
select @total
select @total = 9999.000 --num maximo a capturar
select @total
select @total = count(*) from employees
select @total
go
--ejemplo
declare @total numeric(12,2), @min int
select @total = count(*), @min = min(employeeid) from employees
select @total, @min

--ejemplo: no se debe asignar una lista de resultados a una variable
declare @total numeric(12,2)
select employeeid from employees order by employeeid desc
select @total

--comentario en un renglon

/*segundo
dsadas
comentario*/

--variables de sistema
--son variables que utiliza sql server para administrar recursos. no se pueden
--modificar, solamente leer o imprimir
select @@version :contiene la version de sql server
select @@fetch_status : se utiliza en cursores, indica la posición del cursor
select @@error : administra el tipo de error que ha ocurrido
select @@connections : indica el numero de conexiones activas
select @@rowcount : indica los renglones afectados por una instruccion insert/update/delete/select
select @@identity : indica el ultimo valor obtenido en una tabla con propiedad identity

--control de flujo
--bloque: determina una unidad de trabajo en sql server
begin
sentencia1
sentencia2
end
--sentencia IF: se utiliza para ejecutar una condicion
if(condición)
sentencia1
sentencia2
end
else
begin
sentencia3
sentencia4
end

--imprimir el precio del producto mas caro y especificar si es mayor a 30 pesos o no
declare @precio numeric(12,2)
select @precio = max(unitprice) from products

if @precio > 30
print 'el precio maximo es mayor a 30 = ' + convert(varchar(10), @precio)
else
print 'el precio maximo es menor a 30 = ' + convert(varchar(10), @precio)

--instruccion if exists(consulta) : se utiliza para consultar y verificar la existencia de registros

--verificar si existe el producto 1000
if exists(select * from products where productid = 1000)
print 'si existe el producto 1000'
else
print 'no existe el producto 1000'

--sentencia while
while(condición)
begin
sentencia1
sentencia2
end

select productid from products order by 1

--recorrer la tabla products e imprimir la clave de todos los productos
declare @min int
select @min = min(productid) from products

while @min is not null
begin
	print @min

	select @min = min(productid) from products where productid > @min
end
	print 'fin del ciclo'

--recorrer la tabla empleados e imprimir la clave de todos los empleados de menor a mayor
declare @emp int
select @emp = min(employeeid) from employees

while @emp is not null
begin
	print @emp

	select @emp = min(employeeid)from employees where employeeid > @emp
end
print 'fin del ciclo'

--ciclo que imprima la clave del empleado y clave de su jefe inmediato
declare @emp int, @jefe int
select @emp = max(employeeid) from employees

while @emp is not null
begin
	select @jefe = reportsto from employees where employeeid = @emp

	PRINT str(@emp)+',' +str(isnull(@jefe,''))

	select @emp = max(employeeid) from employees where employeeid < @emp
end
PRINT 'FIN DEL CICLO'

--capturar una fecha de nacimiento, y mediante un proceso calcule las fechas de
--cumpleaños y dia de la semana que se festejo
--spAniversarioDiaSemana.jpg

declare @fecha datetime, @dia varchar(50)
create table #T (fecha datetime, dia varchar(50))

select @fecha = '1-1-2000'

while @fecha <= getdate()
begin
	select @dia = datename(dw,@fecha)
	insert #T values(@fecha,@dia)

	select @fecha = dateadd(yy,1,@fecha) -- yy + 1  = año + 1
end
select * from #T
drop table #T

--proceso para encontrar los dias trabajados de todos los empleados descontando sabados y domingos
declare @min int, @dia int, @conta int, @fecha datetime
create table #tabla(emp int, dias int)

select @min = min(employeeid) from employees
while @min is not null
begin
	select @fecha = hiredate from employees where employeeid = @min
	select @fecha = 0

	while @fecha <= getdate()
	begin
		select @dia = datepart(dw,@fecha)
		if @dia not in(1,7)
			select @conta = @conta + 1

		select @fecha = dateadd(dd,1,@fecha)
	end
	insert #tabla values(@min,@conta)

	select @min = min(employeeid) from employees where employeeid > @min
end
PRINT 'FIN DEL CICLO'
select e.firstname +' '+e.lastname, trabajados=T.dias, datediff(dd,e.hiredate,getdate())
from #tabla T
inner join employees e on e.employeeid = T.emp

drop table #tabla

--proporcionar una fecha de nacimiento y calcular la edad exacta
declare @edad int, @fecha datetime

select @fecha = '10-15-2000'
select @edad = datediff(yy,@fecha,getdate())
select @fecha = dateadd(yy,@edad,@fecha)

if @fecha>getdate()
	select @edad = @edad -1

select @edad

--tabla con el nombre del empleado y la edad exacta de los empleados  --spEdadExacta.jpg
declare @emp int, @edad int, @fecha datetime
create table #tabla(emp int, edad int)

select @emp = min(employeeid) from employees
while @emp is not null
begin
	select @fecha = birthdate from employees where employeeid = @emp
	select @edad = datediff(yy,@fecha,getdate())
	select @fecha = dateadd(yy,@edad,@fecha)

	if @fecha > getdate()
		select @edad = @edad -1

	insert #tabla values(@emp,@edad)

	select @emp = min(employeeid) from employees where employeeid > @emp
end
PRINT 'FIN DEL CICLO'

select e.firstname +' ' +e.lastname, e.birthdate, t.edad, datediff(yy,e.birthdate,getdate())
from #tabla t
inner join employees e on e.employeeid = t.emp
drop table #tabla
go

--Mostrar todos los años bisiestos vividos por los empleados y el total de ellos --spAñosBisiestos.jpg
declare @emp int, @dia int, @conta int, @fecha datetime, @texto varchar(200), @año int
create table #tabla(emp int, texto varchar(200), años int)

select @emp = min(employeeid) from employees
while @emp is not null
begin
	select @fecha = birthdate from employees where employeeid = @emp
	select @conta = 0
	select @texto = ''
	
	while @fecha <= getdate()
	begin
		select @año = year(@fecha)
			
		if @año % 4 = 0
		begin
			select @conta = @conta + 1
			select @texto = @texto + ',' + convert(varchar(4), @año)
		end
		select @fecha = dateadd(yy,1,@fecha)
	end
	insert #tabla values(@emp,@texto,@conta)
	select @emp = min(employeeid) from employees where employeeid > @emp
end
PRINT 'FIN DEL CICLO'
select * from #tabla
drop table #tabla

--proceso que llene una tabla temporal con la clave de la orden, importe de venta de la orden y los productos que contiene TERMINAR DE COPIAR
create procedure sp_ordenes as
declare @orden int, @prod int, @texto varchar(200), @nom varchar(100), @total numeric(12,2)
create table #tabla(orden int, total numeric(12,2), texto varchar(2000))

select @orden = min(orderid) from orders
while @orden is not null
begin
	select @prod = min(productid) from [order details] where orderid = @orden
	select @texto = ''

	where @prod is not null
	begin
		select @nom = productname from products where productid = @prod

		select @texto = @texto + @nom + ','
		select @prod = min(productid) from [order details] where orderid = @orden and productid > @prod
	end
	select @total = sum(quantity*unitprice) from [order details] where orderid = @orden
	select @texto = SUBSTRING(@texto, 1, LEN(@texto) -1)

	insert #tabla values(@orden,@total,@texto)
	select @orden = min(orderid) from orders where orderid > @orden
end
PRINT 'FIN DEL CICLO'
select * from #tabla

--PROCEDIMIENTOS ALMACENADOS
--CREACION
CREATE PROC[EDURE] NOMBRE_PROC
@parameter TipODato [=DEFAULT][OUTPUT]
[WITH {RECOMPILE|ENCRYPTION|RECOMPILE,ENCRYPTION}]
AS
SENTENCIAS_SQL

--MODIFICACION
ALTER PROC NOMBRE_PROC AS
SENTENCIAS_	SQL

--ELIMINACION
DROP PROC NOMBRE_PROC

--EJECUCION
[EXECUTE] NOM_PROC LISTA_PARAMETROS

--para ejecutar instrucciones dinamicas
exec[ute] ('instruccion_sql' / Nombre_variable)

--ejecutar una consulta mediante una cadena de caracteres,
--debe ejecutar una consulta select
declare @nom char(50)
select @nom = 'products'
exec('select * from '+ @nom)

--esto no es valido, solo estamos ejecutando una cadena de texto
declare @nom char(50)
select @nom = 'Products'
select 'select * from ' + @nom

--sentencia raiserror, se utiliza para mandar mensajes de error a una aplicacion
--o una ventana de resultados
raiserror('mensaje',severidad,estado)

--ejemplo
insert products values('casa',3)

if @@error<>0
	raiserror('error al insertar en la tabla products',16,1)

--BEGIN TRY
BEGIN TRY
	DECLARE @Valor1 Numeric(9,2),@Valor2 Numeric(9,2),@Division Numeric(9,2)
	SET @Valor1 = 100
	SET @Valor2 = 0
	SET @Division = @Valor1 / @Valor2
	PRINT 'La division no reporta error'
END TRY
BEGIN CATCH
	select @@error AS 'Error', ERROR_NUMBER() As 'N° de Error', ERROR_SEVERITY() As 'Severidad',
	ERROR_STATE() As 'Estado', ERROR_PROCEDURE() As 'Procedimiento',
	ERROR_LINE() As 'N° linea',
	ERROR_MESSAGE() As 'Mensaje'
END CATCH

--TIPOS DE PROCEDIMIENTOS ALMACENADOS
--1. PROC ALM QUE REGRESA UNA CONSULTA
--SP QUE RECIBA LA CLAVE DE UN EMPLEADO Y REGRESE LAS ORDENES REALIZADAS
CREATE PROC SP_REGRESO @EMP INT AS
SELECT ORDERID, ORDERDATE FROM ORDERS WHERE EMPLOYEEID = @EMP
GO
--EJECUCION
exec SP_REGRESO 2
--CREAMOS UNA TABLA TEMPORAL PARA INSERTAR EL RESULTADO DE UN PROC ALM QUE REGRESE UNA TABLA
CREATE TABLE #RES(FOLIO INT, FECHA DATETIME)
--EJECUTAMOS EL PROC Y SE INSERTA AUTOMATICAMENTE EN LA TABLA #RES
INSERT #RES
EXEC SP_REGRESO 2
--VERIFICAMOS EL CONTENIDO DE LA TABLA
SELECT * FROM #RES

INSERT #RES
SELECT ORDERID, ORDERDATE FROM ORDERS WHERE EMPLOYEEID = 1

--sp que regrese una tabla con el nombre del empleado y los dias trabajados por empleado
create proc sp_diastrabajados as
declare @emp int, @dia int, @conta int, @fecha datetime
create table #tabla(emp int, dias int)

select @emp = min(employeeid) from employees
while @emp is not null
begin
	select @fecha = hiredate from employees where employeeid = @emp
	select @conta = 0

	while @fecha <= getdate()
	begin
		select @dia = datepart(dw,@fecha)
		if @dia not in(1,7)
			select @conta = @conta + 1

		select @fecha = dateadd(dd,1,@fecha)
	end
	insert #tabla values(@emp,@conta)
	select @emp = min(employeeid) from employees where employeeid > @emp
end
select Nombre = e.firstname +' '+e.lastname, Dias_Trabajados=T.dias
from #tabla T
inner join employees e on e.employeeid = T.emp
drop table #tabla

--2. SIN PARAMETROS
--procedimiento que actualice el precio de todos los productos y aumente el 10%
create proc SP_aumento as
update products set unitprice = unitprice * 1.1
go
--ejecucion
exec SP_aumento
--validar el producto 1
select productid, unitprice from products where productid = 1

--3. SP CON PARAMETROS DE ENTRADA

--SP QUE RECIBA 4 CALIFICACIONES IMPRIMIR EL PROMEDIO
create proc SP_CALIFICACIONES
@CAL1 INT, @CAL2 INT, @CAL3 INT, @CAL4 INT AS
DECLARE @PROM NUMERIC(12,2)

SELECT @PROM = (@CAL1 + @CAL2 + @CAL3 + @CAL4) /4

SELECT @PROM
GO
--EXECUCION
EXEC SP_CALIFICACIONES 34,56,79,80

--se puede cambiar el orden de los parametros indicando el nombre antes del valor
EXEC SP_CALIFICACIONES @cal2=56,@cal3=79,@cal4=80,@cal1=34

--4. CON PARAMETROS DE SALIDA
--SP QUE RECIBA 4 CALIFICACIONES Y REGRESE COMO PARAMETRO DE SALIDA EL PROMEDIO Y SI FUE APROBADO
create proc SP_CALIFICACIONES_SAL
@CAL1 INT, @CAL2 INT, @CAL3 INT, @CAL4 INT,
@PROM NUMERIC(12,3) OUTPUT, @TIPO CHAR(20) OUTPUT AS

SELECT @PROM = (@CAL1 + @CAL2 +@CAL3 + @CAL4) / 4.0

IF @PROM>=70
	SELECT @TIPO = 'APROBADO'
ELSE
	SELECT @TIPO = 'REPROBADO'
GO
--EJECUTARLO
DECLARE @A NUMERIC(12,3), @B CHAR(20)
SELECT @A, @B
EXEC SP_CALIFICACIONES_SAL 70,80,60,70, @A OUTPUT, @B OUTPUT
SELECT @A, @B

--5. POR VALOR POR RETORNO
--VALOR POR RETORNO UTILIZA LA PALABRA RESERVADA RETURN Y
--REGRESA SOLO VALORES ENTEROS
create proc SP_CALIFICACIONESReturn
@CAL1 INT, @CAL2 INT, @CAL3 INT, @CAL4 INT AS

DECLARE @PROM INT
SELECT @PROM = (@CAL1 + @CAL2 + @CAL3 + @CAL4) / 4.0

RETURN @PROM
GO
--EJECUCION
DECLARE @A integer
SELECT @A
EXEC @A = SP_CALIFICACIONESReturn 60,80,98,70
SELECT @A

--6. CON VALORES PREDEFINIDOS
--PROCEDIMIENTO QUE RECIBE PARAMETROS Y TIENEN VALORES PREDEFINIDOS
--DECLARACION
CREATE PROC SP_RECIBIR_DEFAULT
@VAL1 INT, @VAL2 INT, @VAL3 INT = 20, @VAL4 INT = 30 AS
DECLARE @TOTAL INT
SELECT @TOTAL = @VAL1 + @VAL2 + @VAL3 + @VAL4
SELECT @TOTAL
GO
--EJECUCION
EXEC SP_RECIBIR_DEFAULT 2,4,5,6
--SE PUEDE OMITIR LOS 2 ULTIMOS VALORES
EXEC SP_RECIBIR_DEFAULT 2,4

EXEC SP_RECIBIR_DEFAULT 2,4, @VAL4 = 6

--TAREA
----SP QUE RECIBA LA CLAVE DEL EMPLEADO Y REGRESE NIVEL EN EL QUE SE ENCUENTRA
--proceso: clave del empleado y conocer los niveles
select employeeid, reportsto from employees
update employees set reportsto = 7 where employeeid = 8

declare @emp int, @jefe int, @temp int, @nivel int
select @emp = 2
select @nivel = 0
select @jefe = reportsto from employees where employeeid = @emp

while @jefe is not null
begin
	select @nivel = @nivel + 1

	select @jefe = reportsto from employees where employeeid = @jefe
end
select emp = @emp, nivel = @nivel

--1. el nivel en el que se encuentra
--2. lista de jefes superiores
create proc sp_jefes_niveles @emp int, @nivel int output, @todosjefes varchar(500) output as
	declare @jefe int
	select @nivel = 0
	select @todosjefes = ''

	select @jefe = reportsto from employees where employeeid = @emp
	while @jefe is not null
	begin
		select @nivel = @nivel + 1
		select @todosjefes = @todosjefes + firstname +' ' +lastname +',' from employees where employeeid = @jefe

		select @jefe = reportsto from employees where employeeid = @jefe
	end

	if LEN(@todosjefes) > 0
		select @todosjefes = substring(@todosjefes, 1, len(@todosjefes) -1)
go
declare @R1 int, @R2 varchar(500)
exec sp_jefes_niveles 4, @R1 output, @R2 output
select nivel = @R1, jefes = @R2

--sp que reciba la clave del empleado y regrese la clave del jefe superior y el nivel del empleado
create proc sp_jefesuperior @emp int, @jefesup int output, @nivel int output as
	declare @aux int
	select @nivel = 0
	select @jefesup = reportsto from employees where employeeid = @emp

	while @jefesup is not null
	begin
		select @aux = @jefesup
		select @nivel = @nivel + 1

		select @jefesup = reportsto from employees where employeeid = @jefesup
	end
	select @jefesup = @aux
go
--ejecucion
declare @a int, @b int
exec sp_jefesuperior 6, @a output, @b output
select sup = @a, nivel = @b

--sp que regrese una tabla con el nombre del empleado, el nombre de su jefe superior y el nivel
create proc sp_reportejefes as
declare @emp int, @a int, @b int
create table #T(emp int, jefe int, nivel int)

select @emp = min(employeeid) from employees
while @emp is not null
begin
	exec sp_jefesuperior @emp, @a output, @b output
	insert #T values(@emp,@a,@b)

	select @emp = min(employeeid) from employees where employeeid > @emp
end

select empleado = e.firstname + '' + e.lastname, jefeSup = j.firstname + '' + j.lastname, a.nivel
from #T a
inner join employees e on e.employeeid = a.emp
left outer join employees j on j.employeeid = a.jefe
order by nivel
exec sp_reportejefes

--SP QUE RECIBA LA CLAVE DE UNA ORDEN Y REGRESE COMO PARAMETRO DE SALIDA
--LOS PRODUCTOS QUE SE VENDIERON
--spProductosOrden.jpg
CREATE PROC SP_NOMBRE @ORDEN INT, @PROD VARCHAR(1000) OUTPUT
AS
DECLARE @MIN INT, @NOM VARCHAR(100)

SELECT @MIN = MIN(PRODUCTID) FROM [ORDER DETAILS]
WHERE ORDERID = @ORDEN

SELECT @PROD = ''

WHILE @MIN IS NOT NULL
BEGIN
	SELECT @NOM = PRODUCTNAME FROM PRODUCTS WHERE PRODUCTID = @MIN

	SELECT @PROD = @PROD + @NOM + ','

	SELECT @MIN = MIN(PRODUCTID) FROM [ORDER DETAILS]
	WHERE ORDERID = @ORDEN AND PRODUCTID > @MIN
END
SELECT @PROD = SUBSTRING(@PROD, 1, LEN(@PROD)-1)
GO
DECLARE @A VARCHAR(1000)
EXEC SP_NOMBRE 10249, @A OUTPUT
SELECT @A

--en lineas diferentes
select d.productid, productname 
from [order details] d
inner join products p on p.productid = d.productid
where orderid = 10248

--en una sola linea
declare @nombres varchar(1000)
select @nombres = ''

select @nombres = @nombres + productname + ','
from [order details] d
inner join products p on p.productid = d.productid
where orderid = 10248
select @nombres

--metodo 2
create proc sp_nombres20 @clave int, @nombres varchar(1000) output as
select @nombres = ''

select @nombres = @nombres + productname + ','
from [order details] d
inner join products p on p.productid = d.productid
where orderid = @clave

select @nombres = SUBSTRING(@nombres, 1, len(@nombres)-1)
go
--ejecucion
declare @r varchar(2000)
exec sp_nombres20 10248, @r output
select @r

--sp que imprima la clave de la orden, el importe total de la venta y los productos que se surtieron
create proc sp_ordenes_nombres as
declare @orden int, @nom varchar(2000), @total numeric(12,2)
create table #T(orden int, total numeric(12,2), nom varchar(2000))

select @orden = min(orderid) from orders
while @orden is not null
begin
	exec sp_nombre @orden, @nom output

	select @total = sum (quantity*unitprice) from [order details] where orderid = @orden

	insert #T values(@orden,@total,@nom)
	
	select @orden = min(orderid) from orders where orderid > @orden
end
select * from #T
go
exec sp_ordenes_nombres

--tablas de sistema
--Tabla SYSOBJECTS
--Contiene toda la informacíón referente a las tablas, vistas, SP, funciones y demas objetos de la BD
select * from sysobjects
select * from information_schema.tables
xtype:
u: tablas
p: sp
v: vistas
fn, tf: funciones

--tablas de usuario de la base de datos
select id, name, xtype
from sysobjects where xtype = 'u'
and name not like 'sys%' and name not like 'MS'
order by id

funciones realizadas:
object_id('Nombre Tabla')
funcion que recibe el nombre de un objeto y regresa el identificador de dicho objeto
select object_id('categories')

object_name(Identificador):
Funcion que recibe el identificador de un objeto y regresa el nombre de dicho objeto
select object_name(645577338)

--Tabla SYSCOLUMNS
--Contiene el nombre de columnas de tablas y vistas, tambien el nombre de los parametros de los procedimientos almacenados
select id, colid, colorder, name, xtype, length, prec, scale, isnullable
from syscolumns where object_id('products')= id

select * from information_schema.columns where table_name like 'products'

--Tabla SYSTYPES
--Contiene los tipos de datos asociados a columnas de tablas y vistas,
--tambien incluye los tipos de datos asociados a los parametros de los proc alm
select XTYPE, NAME from systypes

--consulta el nombre de las columnas y los tipos de datos
select c.colorder, c.name, tipo = t.name, c.prec, c.scale, isnullable
from syscolumns c
inner join systypes t on c.xtype = t.xtype
where c.id = object_id('categories') and t.name not like 'sysname'
order by c.colorder

create table prueba(clave int not null, nombre varchar(50) not null, precio numeric(8,2) null, importe decimal(10,4) null)

select colid, name from syscolumns c
where c.id = object_id('products')

--proc alm que reciba el nombre de una tabla y regrese el select completo con el nombre de todos los campos


--FUNCIONES ESCALARES
--funcion que calcula el cubo de un numero
CREATE FUNCTION dbo.Cubo(@num numeric(12,2))
RETURNS numeric(12,2)
AS
BEGIN
	RETURN(@num * @num * @num)
END
go
--ejecucion
select dbo.cubo(3)

declare @R numeric(12,2)
select @R = dbo.Cubo(3)
select @R

--nombre y precio del producto al cubo
select productname, 'precio cubo' = dbo.cubo(unitprice) from products

--nombre y precio del producto al cubo
select productname, 'precio cubo ' = dbo.cubo(unitprice) from products

select * from SERVIDOR BASE DE DATOS PROPIETARIO TABLA

select * from[esparza\sql2017].NORTHWIND.dbo.EMPLOYEES
select * from[esparza\sql2017].NORTHWINDDW.dbo.EMPLOYEES

--funcion que reciba la clave de la orden y regrese el importe total de la orden
create function dbo.fn_total(@clave int)
returns numeric(12,2)
as
begin
	declare @total numeric(12,2)
	select @total = sum(quantity*unitprice) from [order details] where orderid = @clave

	return @total --obligatorio
end
--ejecucion
select dbo.fn_total(10248)

--consulta con la clave y fecha de la orden, y el importe total de la orden
--se ejecutan 830 select de la funcion mas 1 select de orders
select orderid, orderdate, importe = dbo.fn_total(orderid) from orders

--se ejecuta una sola consulta
select o.orderid, orderdate, importe = sum(quantity*unitprice)
from orders o
inner join [order details] d on d.orderid = o.orderid
group by o.orderid, orderdate

--Factorial recursivo
--5! = 1*2*3*4*5 = 5*4*3*2*1
create function dbo.Factorial(@NUMERO int)
returns int
as
begin
	declare @i int

	if @NUMERO <= 1
		set @i = 1
	else
		set @i = @numero * dbo.Factorial(@NUMERO - 1)

	return @i
end
--
select dbo.Factorial(5)

select employeeid, reportsto from employees

--funcion jefe superior: la funcion recibe la clave de un empleado y regresa el jefe superior
create function dbo.jefe(@emp int)
returns int
as
begin
	declare @jefe int, @r int

	select @jefe = reportsto from employees where employeeid = @emp

	if @jefe is null
		select @r = @emp
	else
		select @r = dbo.jefe(@jefe)

return @r
end
--ejecucion
select dbo.jefe(2)

--funcion que reciba clave del empleado y regresa los nombres de todos sus jefes (que sea recursiva la funcion)
--en el arbol de jerarquias
alter function DBO.FN_JEFES(@emp int)
returns varchar(500)
as
begin
	declare @jefe int, @nombres varchar(500) = ''

	select @jefe = reportsto from employees where employeeid = @emp

	if @jefe is not null
		select @nombres = firstname + '' + lastname +',' + DBO.FN_JEFES(@jefe)
		from employees where employeeid = @jefe

	return @nombres
end
--ejecucion
select DBO.FN_JEFES(2)
select firstname + '' + lastname, DBO.FN_JEFES(employeeid) from employees

update employees set reportsto = 7 where employeeid = 8
update employees set reportsto = 8 where employeeid = 9

--FUNCIONES DE TABLA EN LINEA
--ejemplo funcion de tabla en linea que regresa las ordenes realizadas por un empleado en particular
CREATE FUNCTION dbo.Ordenes(@emp int)
RETURNS TABLE
AS
RETURN(SELECT * FROM orders WHERE employeeid = @emp)
GO
--ejecucion
select * from dbo.Ordenes(1)

select o.orderid, e.firstname, d.unitprice, d.quantity
from dbo.Ordenes(1) O
INNER JOIN [ORDER DETAILS] D ON D.ORDERID = D.ORDERID
INNER JOIN Employees E ON E.EMPLOYEEID = O.EMPLOYEEID

--funcion de tabla en linea que reciba el año y regrese el nombre del cliente y
--el total de ordenes de ese año, debe mostrar todos los clientes aunque no hayan realizado ordenes
create function dbo.OrdenesAño(@año int)
returns table
as
return(
select c.companyname, 'Total' = count(o.orderid)
from orders o
right outer join customers c on c.customerid = o.customerid and year(o.orderdate) = @año
group by c.companyname)
go
--ejecucion
select * from dbo.OrdenesAño(1996) order by companyname
select * from dbo.OrdenesAño(1997) order by 1
select * from dbo.OrdenesAño(1998) order by 1

--nombre del cliente, total de ordenes 96, total de ordenes 97 y total de ordenes 98
select A.COMPANYNAME, T96 = A.TOTAL, T97 = B.TOTAL, T98 = C.TOTAL
from dbo.OrdenesAño(1996) A
INNER JOIN dbo.OrdenesAño(1997) B ON A.COMPANYNAME = B.COMPANYNAME
INNER JOIN dbo.OrdenesAño(1998) C ON A.COMPANYNAME = C.COMPANYNAME

--funcion de tabla en linea que reciba el año y regrese el dia de la semana
--y el importe total de venta de ese dia
create function DBO.FN_VENTASDIA(@AÑO INT)
RETURNS TABLE
AS RETURN(
SELECT CLAVE = DATEPART(DW,O.ORDERDATE), DIA = DATENAME(DW,O.ORDERDATE), TOTAL = SUM(D.QUANTITY*D.UNITPRICE)
FROM ORDERS O
INNER JOIN [ORDER DETAILS] D ON D.ORDERID = O.ORDERID
WHERE YEAR(O.OrderDate) = @Año
GROUP BY DATENAME(DW,O.ORDERDATE), DATEPART(DW,O.ORDERDATE))
GO

SELECT * FROM DBO.FN_VENTASDIA(2000) ORDER BY CLAVE
--PROBLEMAS, NO APARECEN LOS 7 DIAS DE LA SEMANA Y NO APARECEN ORDENADOS POR
--DIA DE LA SEMANA
create function dbo.fn_DiasSemana(1996)
returns table
as return(
	select clave=1, nombre='Sunday'
	union
	select 2,'Monday'
	union
	select 3, 'Tuesday'
	union
	select 4, 'Wednesday'
	union
	select 5, 'Thursday'
	union
	select 6, 'Friday'
	union
	select 7, 'Saturday')
--ejecucion
select * from dbo.fn_DiasSemana()
--solucion A
SELECT D.NOMBRE, TOTAL = COALESCE(V.TOTAL, 0)
FROM dbo.fn_DiasSemana() D
LEFT OUTER JOIN DBO.FN_VENTASDIA(2000) V ON V.CLAVE = D.CLAVE

--FUNCIONES DE TABLA MULTISENTENCIA
--funcion de tabla multisentencia que regrese los dias de la semana
create function dbo.fn_DiasSemana2()
returns @semana table(clave int , nombre varchar(20))
as
begin
	insert @semana values(1,'Sunday')
	insert @semana values(2,'Monday')
	insert @semana values(3,'Tuesday')
	insert @semana values(4,'Wednesday')
	insert @semana values(5,'Thursday')
	insert @semana values(6,'Friday')
	insert @semana values(7,'Saturday')
	return
end
--
select * from dbo.fn_DiasSemana2()

--consulta con el dia de la semana y el total de ordenes realizadas, se deben mostrar los 7 dias de la semana
select d.nombre, count(o.orderid)
from dbo.fn_DiasSemana2() d
left outer join Orders o on datepart(dw,o.orderdate) = d.clave
group by d.nombre, d.clave
order by d.clave

--funcion multisentencia que reciba un año, regrese el nombre del empleado y el total de ventas del empleado ese año,
--mostrar todos los empleados aunque no hayan realizado ordenes
create function fn_ventas(@año int)
returns @ventas table(nomemp varchar(100), total numeric(12,2))
as
begin

	insert @ventas
	select firstname + '' + lastname, total = isnull(sum(quantity*unitprice),0)
	from orders o
	right outer join [order details] d on o.orderid = d.orderid
	right outer join employees e on e.employeeid = o.employeeid and year(o.orderdate) = @año
	group by firstname, lastname

return
end
--ejecucion
select * from fn_ventas(2000)
--consulta con el nombre del empleado y el importe de venta de 1994, 1996 y 1999
select a.nomemp, T94 = isnull(a.TOTAL,0), T96 = isnull(b.TOTAL,0), T99 = isnull(C.TOTAL,0)
from fn_ventas(1994) A
inner join fn_ventas(1996) B on b.nomemp = a.nomemp
inner join fn_ventas(1999) C on c.nomemp = a.nomemp

--tabla multisentencia, no recibira parametros regresara una tabla con el nombre empleado y los productos que ha vendido en solo campo
create function dbo.fn_EmpleadosProductos()
returns @resp table(nombreEmp varchar(100), productos varchar(1000))
as
begin
	declare @emp int, @nomprod varchar(1000), @nombre varchar(100)
	declare @prod table(nomprod varchar(100))

	select @emp = min(employeeid) from employees
	while @emp is not null
	begin
		select @nombre = firstname +'' + lastname from employees
		where employeeid = @emp

		delete @prod

		insert @prod
		select p.productname
		from [order details] d
		inner join orders o on o.orderid = d.orderid
		inner join products p on p.productid = d.productid
		where o.employeeid = @emp
		group by p.productname
		order by 1

		select @nomprod = ''
		select @nomprod = @nomprod + ',' + nomprod from @prod

		insert @resp values(@nombre, @nomprod)

		select @emp = min(employeeid) from employees where employeeid > @emp
	end
	return
end
go
select * from dbo.fn_EmpleadosProductos()

--EXAMEN U3 PROC ALM Y FUNCIONES
--Función de tabla en línea que reciba el nombre de jefe y regrese una tabla con el nombre de los empleado a su cargo,
--el importe de venta del empleado a su cargo y las ordenes realizadas del empleado a su cargo.

create function dbo.jefeEmpleados(@nombrejefe varchar)
returns table 
as return(
   select 'Nombre de empleados'=e.FirstName+' '+e.LastName, 'Importe de Venta'= (od.UnitPrice*od.Quantity), 'Ordenes realizadas'=od.OrderID
   from employees e
   inner join orders o on e.employeeid = e.employeeid
   inner join [order details] od on o.orderid = od.orderid
   where e.FirstName = @nombrejefe
)

--ejecucion 
select*from dbo.jefeEmpleados('Steven')

--Procedimiento almacenado que reciba la fecha y los días hábiles,
--regresar como parámetro de salida la fecha final pasando los días hábiles. Los días hábiles son solo de lunes a viernes.
create proc sp_fechaDias(@fecha datetime, @diashabiles datetime) as
declare @fechafinal datetime = @fecha
while @diashabiles > 0
begin
	select @fechafinal = dateadd(dd,1,@fechafinal)
	if(datepart(dw,@fechafinal) not in (1,7))
		select @diashabiles = @diashabiles - 1
	end
select @fechafinal
end	

exec sp_fechaDias '01-01-1993', '05-05-1994'

--Procedimiento almacenado que reciba la clave de una región, regrese en un parámetro de salida los nombres de los empleados que pertenecen a dicha región.
create proc sp_region_empleados(@regionid nchar(5), @empleados nvarchar(4000) output) as
select @empleados = string_agg(e.firstname + '' + e.lastname, ',') from Region as r
inner join orders as o on o.RegionID = r.RegionID
inner join employees as e on o.employeeid = e.employeeid
where r.RegionID = @regionid
group by r.RegionID
go
--ejecucion
declare @a nvarchar(4000)
exec sp_region_empleados ABCDE, @a output
select @a as nombres

--procedimiento almacenado que reciba la clave de un cliente, regrese en un parametro de salida los nombres
--de los empleados que lo han atendido
create proc sp_cliente_empleados(@clienteid nchar(5), @empleados nvarchar(4000) output) as
select @empleados = string_agg(e.firstname + '' + e.lastname, ',') from customers as c
inner join orders as o on o.customerid = c.customerid
inner join employees as e on o.employeeid = e.employeeid
where c.customerid = @clienteid
group by c.customerid
go
--ejecucion
declare @a nvarchar(4000)
exec sp_cliente_empleados alfki, @a output
select @a as nombres