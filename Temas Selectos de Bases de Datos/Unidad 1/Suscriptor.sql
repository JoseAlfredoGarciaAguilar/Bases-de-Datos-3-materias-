--SUSCRIPTOR
--paso 2
select unitprice from northwindtrans.dbo.products where productid =1 --Ver precio del suscriptor

--paso 3
select unitprice from northwindtrans.dbo.products where productid =1 --Ver precio del suscriptor
update northwindtrans.dbo.products set unitprice = 40 where productid =1 --Actualizar precio del suscriptor
--Solo se actualiza en el suscriptor, pero no en el publicador por lógica
