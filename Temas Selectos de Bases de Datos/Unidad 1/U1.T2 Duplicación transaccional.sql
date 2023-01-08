--publicador
select unitprice from northwindM.dbo.products where productid =1 
-- actualizar un product en el publicador
update northwindM.dbo.products set unitprice = 400 where productid =1 

--suscriptor: revisar que ya se realizo la actualización en el suscritor
select unitprice from [DESKTOP-85GI0HU\SQLALF].northwindtrans.dbo.products where productid = 1

--suscriptor
select unitprice from [DESKTOP-85GI0HU\SQLALF].northwindtrans.dbo.products where productid = 1
-- actualizar un producto en el suscriptor
update [DESKTOP-85GI0HU\SQLALF].northwindtrans.dbo.products set unitprice = 20 where productid =1

--publicador: revisar que no se realizo la actualización en el publicador
select unitprice from northwindM.dbo.products where productid =1 

-- hasta que se actualiza nuevamente el precio en el publicador, se actualiza en el suscriptor
update northwindM.dbo.products set unitprice = 5 where productid =1 

EXEC sp_addlinkedserver @server = N'DESKTOP-85GI0HU\SQLALF', @srvproduct = N'SQL Server';
EXEC sp_serveroption 'DESKTOP-85GI0HU\SQLALF', 'DATA ACCESS', TRUE