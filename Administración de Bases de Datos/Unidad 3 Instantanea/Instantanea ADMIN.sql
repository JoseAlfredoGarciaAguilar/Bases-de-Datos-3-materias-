EXEC sp_addlinkedserver @server = N'192.168.166.119', @srvproduct = N'SQL Server' ;
EXEC sp_serveroption '192.168.166.119', 'DATA ACCESS', TRUE

--Hacemos un select desde el publicador
select address from [DESKTOP-85GI0HU\SQLADMINXD].NorthwindM.dbo.Customers where CustomerID = 'BONAP' 

--Hacemos un update desde el publicador
update [DESKTOP-85GI0HU\SQLADMINXD].NorthwindM.dbo.Customers set address = 'BUENOS AIRES' where CustomerID = 'BONAP' 

--Sí se hizo el update en el suscriptor
select address from [192.168.166.119].BASEBD.dbo.Customers
where CustomerID = 'BONAP' 

--Pero no se hizo el update en el publicador
select address from [DESKTOP-85GI0HU\SQLADMINXD].NorthwindM.dbo.Customers 
where CustomerID = 'BONAP' 
