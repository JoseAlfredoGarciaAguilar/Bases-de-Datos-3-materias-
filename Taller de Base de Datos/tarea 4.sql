--5.- SP QUE RECIBA UN AÑO Y REGRESE COMO PARAMETRO DE SALIDA LA CLAVE DEL ARTICULO 
--QUE MAS SE VENDIO ESE AÑO Y CANTIDAD DE PIEZAS VENDIDAS DE ESE PRODUCTO EN ESE AÑO.
create proc sp_añoProducto @año int, @articulo int output , @piezas int output as
declare @masVendido int, @TotalPiezas int, @aux int

     select @piezas = 0
     select @aux = min(orderid) from orders where year(orderdate) = @año
	 while @aux is not null
	 begin
	   select @TotalPiezas = quantity from [order details] where orderid = @aux

	   if @TotalPiezas > @piezas
	   begin
	      select @piezas = @totalpiezas
		  select @articulo = productid from [order details] where orderid = @aux
       end

	   select @aux = min(orderid) from orders where year(orderdate) = @año and orderid > @aux
	end
--ejecucion
declare @b int, @c int
exec sp_añoProducto 1998, @b output, @c output
select @b, @c

drop proc sp_añoProducto

select*from orders
--6.- SP QUE RECIBA LA CLAVE DEL EMPLEADO Y REGRESE COMO PARAMETRO 
--DE SALIDA TODOS LOS NOMBRES DE LOS EMPLEADOS QUE ATIENDEN EL TERITORIO.
create proc sp_clientesTerritorios @emp int, @empleados varchar(200) output as
declare @territorio varchar(20), @min int, @aux varchar(40)

   select @territorio = territoryid from employeeterritories where employeeid = @emp
   select @min = min(employeeid) from employeeterritories where territoryid = @territorio

   select @empleados = ''

   while @min is not null
     begin
	   select @aux = firstname+' '+lastname from employees where employeeid = @min

	   select @empleados = @empleados+', '+@aux

	   select @min = min(employeeid) from employeeterritories where territoryid = @territorio and employeeid > @emp
	end

--ejecucion
declare @b varchar(200)
exec sp_clientesTerritorios 1, @b output
select @b

--7.- SP QUE REALICE UN PROCESO DONDE REGRESE LA SIGUIENTE TABLA:
--Nombre del empleado    nombre de jefes    jefes superior
create proc sp_empleadojefes as
declare @emp int, @jefe int, @empleado varchar(20), @jefes varchar(200), @jefesup varchar(20)
create table #T(empleado varchar(20), jefes varchar(200), jefesup varchar(20))

   select @emp = min(employeeid) from employees
   while @emp is not null
   begin 
     select @empleado = firstname+' '+lastname from employees where employeeid = @emp
     select @jefe = reportsto from employees where employeeid = @emp
	 select @jefes = firstname+' '+lastname from employees where employeeid = @jefe

	 while @jefe is not null
	 begin
	   select @jefe = reportsto from employees where employeeid = @jefe
	   select @jefes = @jefes+', '+firstname+' '+lastname from employees where employeeid = @jefe
	 end

	 select @jefesup = firstname+' '+lastname from employees where employeeid = @jefe
	 insert #T values(@empleado, @jefes, @jefesup)
	 select @emp = min(employeeid) from employees where employeeid > @emp

   end
   select*from #T

exec sp_empleadojefes

