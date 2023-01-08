create view vw_products as
select p.productid, p.productname, p.quantityperunit, p.unitprice as produnitprice,
p.unitsinstock, p.unitsonorder, p.reorderlevel, p.discontinued,
s.supplierid, s.companyname, s.contactname, s.contacttitle, s.address, s.city, s.region,
s.postalcode, s.country, s.phone, s.fax, s.homepage, c.categoryid, c.categoryname, c.description
from products p
inner join suppliers s on p.supplierid = s.supplierid
inner join categories c on p.categoryid = c.categoryid
;

create view vw_orders as
select o.orderid, o.orderdate, o.requireddate, o.shippeddate, o.freight, o.shipname, o.shipaddress, o.shipcity,
o.shipregion, s.shipperid, s.companyname as nomcomenvio, s.phone as envphone, c.customerid, c.companyname as nomcliente,
c.contactname as ctecontactname, c.contacttitle as ctecontacttitle,
c.address as cteaddress, c.city as ctecity, c.region as cteregion, c.postalcode as ctepostalcode,
c.country as ctecountry, c.phone as ctephone, c.fax as ctefax, e.employeeid, e.lastname, e.firstname,
e.title, e.titleofcourtesy, e.birthdate, e.hiredate,
e.address as empaddress, e.city as empcity, e.region as empregion, e.postalcode as emppostalcode,
e.country as empcountry, e.homephone, e.extension, e.reportsto
from orders o
inner join shippers s on o.shipvia = s.shipperid
inner join customers c on o.customerid = c.customerid
inner join employees e on o.employeeid = e.employeeid
;

create view vw_order_details as
select d.quantity, d.unitprice, d.discount, p.*, o.*
from orderdetails d
inner join vw_products p on d.productid = p.productid
inner join vw_orders o on d.orderid = o.orderid
;

--select * from vw_products;
--select * from vw_orders;
--select * from vw_order_details;
--select count(distinct productid) from vw_products
--select count(distinct orderid) from vw_orders
--select count(distinct productid) from vw_order_details
--select count(*) from vw_orderdetails;
--drop view vw_products;
--drop view vw_orders;
--drop view vw_order_details;