-- modificar en el publicador
update northwindM.dbo.products set unitprice = 1500 where productid = 2
go

-- verificar en el publicador y suscriptores
select unitprice from northwindM.dbo.products where productid =2
select unitprice from [DESKTOP-85GI0HU\SQLALF].NWTranAct1.dbo.products where productid =2
select unitprice from [DESKTOP-85GI0HU\SQLALF].NWTranAct2.dbo.products where productid =2

-- modificar en el suscriptor
update [DESKTOP-85GI0HU\SQLALF].NWTranAct1.dbo.products set unitprice = 75 where productid = 2
go

-- verificar en el publicador y suscriptores 
select unitprice from northwindM.dbo.products where productid =2
select unitprice from [DESKTOP-85GI0HU\SQLALF].NWTranAct1.dbo.products where productid =2
select unitprice from [DESKTOP-85GI0HU\SQLALF].NWTranAct2.dbo.products where productid =2

EXEC sp_serveroption 'DESKTOP-85GI0HU\SQLALF', 'DATA ACCESS', TRUE