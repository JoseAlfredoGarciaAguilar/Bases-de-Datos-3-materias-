create database NWTranAct1
go
use NWTranAct1
select *  into products from [DESKTOP-85GI0HU].NorthwindM.dbo.products
go
alter table products add constraint pk_p primary key ( productid ) 
go


create database NWTranAct2
go
use NWTranAct2
select *  into products from [DESKTOP-85GI0HU].NorthwindM.dbo.products
go
alter table products add constraint pk_p primary key ( productid ) 

select *  from [DESKTOP-85GI0HU].NorthwindM.dbo.products

EXEC sp_serveroption 'DESKTOP-85GI0HU', 'DATA ACCESS', TRUE