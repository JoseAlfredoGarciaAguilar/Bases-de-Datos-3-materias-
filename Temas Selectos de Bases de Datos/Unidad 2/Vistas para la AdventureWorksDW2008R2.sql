use adventureworksdw2008r2
go
create view vw_DimProduct as
select p.productkey,p.englishproductname,sc.productsubcategorykey,sc.englishproductsubcategoryname,c.productcategorykey,c.englishproductcategoryname
from dimproduct p
inner join dimproductsubcategory sc on sc.productsubcategorykey=p.productsubcategorykey
inner join dimproductcategory c on c.productcategorykey=sc.productcategorykey

go
create view vw_DimOrders as
select f.salesordernumber,f.productkey,f.salesorderlinenumber,f.unitprice,f.orderquantity,total=(f.unitprice*f.orderquantity), d.daynumberofmonth,d.monthnumberofyear,d.calendaryear,
'nombre_cliente' =c.firstname+' '+c.lastname,g.city,t.salesterritorycountry,t.salesterritoryregion,t.salesterritorygroup
from factinternetsales f
inner join dimdate d on d.datekey=f.duedatekey
inner join dimcustomer c on c.customerkey=f.customerkey
inner join dimgeography g on g.geographykey=c.geographykey
inner join dimsalesterritory t on t.salesterritorykey=g.salesterritorykey


--select c.firstname+' '+c.lastname from DimCustomer c
select*from DimGeography