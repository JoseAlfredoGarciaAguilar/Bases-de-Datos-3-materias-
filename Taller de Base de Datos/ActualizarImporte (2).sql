--HECHO POR:
--GUZMÁN BAJO JORGE HORACIO
--CASTRO PARRA ALBERTO MANUEL
use Northwind

create trigger tr_ImporteActual on [order details]
for insert, update, deleted as
declare @clave int, @cte nchar(10), @total numeric (10, 2)

--Buscar la clave de la orden
if(select count(*) from inserted) > 0
   select @clave = orderid from inserted
else
   select @clave = orderid from deleted

--Buscar la clave del cliente
select @cte = customerid 
from orders 
where orderid = @clave

--Calcular el importe total
select @total = sum(ordt.unitprice * ordt.quantity)
from orders ord
inner join [order details] ordt on ord.orderid = ordt.orderid
where ord.customerid = @cte

--Actualizar el importe
Update ordt set ordt.Importe = @total
from [order details]ordt as ordt inner join
DELETED as D on D.Importe = ordt.Importe

Update ordt set ordt.Importe = @total
from [order details]ordt as ordt inner join
INSERTED as D on D.Importe = ordt.Importe