create view vw_cities as
select t.cityid, t.cityname, t.regionid,r.regionname,r.countryid,c.countryname
from countries c
inner join regiones r on r.countryid = c.countryid
inner join cities t on t.regionid = r.regionid


create view vw_Orders as
select o.orderid, o.orderdate,
dia = day(o.orderdate), mes = datename(mm,o.orderdate), año = year(o.orderdate),o.freight, o.employeeid,o.customerid,
cteNombre = c.companyname, cteCity = cc.cityname, cteRegion = cc.regionname, cteCountry = cc.countryname,
empNombre = e.firstname+''+e.lastname, empCity = ce.cityname, empRegion = ce.regionname, empCountry = ce.countryname
from orders o
inner join customers c on c.CustomerID = o.CustomerID
inner join employees e on e.EmployeeID = o.EmployeeID
inner join vw_cities cc on cc.cityid = c.cityid
inner join vw_cities ce on ce.cityid = e.cityid

create view vw_Products as
select
p.productid, p.productname,
provNombre = s.companyname,
provCity = t.cityname, provRegion = t.regionname, provCountry = t.countryname
from products p
inner join suppliers s on s.SupplierID = p.SupplierID
inner join vw_cities t on t.cityid = s.cityid

create view vw_Detalle as
select
d.orderid, d.productid, d.quantity, d.discount, total = d.unitprice*d.quantity
from [order details] d