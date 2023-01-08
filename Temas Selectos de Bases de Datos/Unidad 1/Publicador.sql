--PUBLICADOR
--paso 1
select unitprice from northwindM.dbo.products where productid =1 --Ver precio del publicador
update northwindM.dbo.products set unitprice = 90 where productid =1 --Actualizar precio del publicador

--paso 2
select unitprice from northwindtrans.dbo.products where productid =1 --Ver precio del suscriptor

select unitprice from [DESKTOP-85GI0HU\SQLALF].northwindtrans.dbo.products where productid = 1

--paso 3
select unitprice from northwindtrans.dbo.products where productid =1 --Ver precio del suscriptor
update northwindtrans.dbo.products set unitprice = 40 where productid =1 --Actualizar precio del suscriptor
--Solo se actualiza en el suscriptor, pero no en el publicador por lógica

--paso 4
select unitprice from northwindM.dbo.products where productid =1 --Verificamos que el precio del suscriptor no se actualizó en el publicador
update northwindM.dbo.products set unitprice = 4 where productid =1 --Actualizar precio del publicador

