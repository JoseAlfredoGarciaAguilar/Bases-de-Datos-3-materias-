-- insertar un nuevo registro en el suscriptor
insert NorthWindSuc1.dbo.[orders] ( CustomerID,EmployeeID,OrderDate,RequiredDate,ShippedDate,ShipVia,Freight,ShipName,ShipAddress,ShipCity,ShipRegion,ShipPostalCode,ShipCountry,orderid,SUCID )
values( 'ANTON',1	,'1996-07-04','1996-08-01','1996-07-16',3 ,32.38,'Vins et alcools Chevalier', '59 rue de Abbaye', 'Reims',  NULL, 51100,'France',17,1 ) 

insert NorthWindSuc1.dbo.[order details] (orderid, productid, unitprice,quantity, discount,sucid)
values( 15 , 11 , 15,10,0 ,1 )  

-- verificar en el distribuidor
select * from [DESKTOP-85GI0HU].NorthWindM.dbo.[orders] where sucid = 1 and orderid = 17
select * from [DESKTOP-85GI0HU].NorthWindM.dbo.[order details] where sucid = 1 and orderid = 15

select * from [DESKTOP-85GI0HU].NorthWindM.dbo.[orders]
select * from [DESKTOP-85GI0HU].NorthWindM.dbo.[order details]


-- insertar un nuevo registro en el publicador
insert [DESKTOP-85GI0HU].NorthWindM.dbo.[orders] ( CustomerID,EmployeeID,OrderDate,RequiredDate,ShippedDate,ShipVia,Freight,ShipName,ShipAddress,ShipCity,ShipRegion,ShipPostalCode,ShipCountry,orderid, sucid )
values( 'VINET',5	,'1996-07-04','1996-08-01','1996-07-16',3 ,32.38,'Vins et alcools Chevalier', '59 rue de Abbaye', 'Reims',  NULL, 51100,'France',17,1 ) 

insert [DESKTOP-85GI0HU].NorthWindM.dbo.[order details] (orderid, productid, unitprice,quantity, discount, sucid)
values( 16 , 11 , 15,10,0 ,1 )

-- verificar en el suscriptor
select * from [DESKTOP-85GI0HU\SQLALF].NorthWindSuc1.dbo.[orders] where sucid = 1 and orderid = 17
select * from [DESKTOP-85GI0HU\SQLALF].NorthWindSuc1.dbo.[order details] where sucid = 1 and orderid = 16

select * from [DESKTOP-85GI0HU\SQLALF].NorthWindSuc1.dbo.[orders]
select * from [DESKTOP-85GI0HU\SQLALF].NorthWindSuc1.dbo.[order details]

EXEC sp_serveroption 'DESKTOP-85GI0HU', 'DATA ACCESS', TRUE