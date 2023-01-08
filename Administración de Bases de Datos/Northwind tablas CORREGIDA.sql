create database northwind;
use northwind;
create table categories (
categoryid int auto_increment not null,
categoryname nvarchar (15) not null,
description text null,
primary key(categoryid)
);

create table suppliers (
supplierid int auto_increment not null ,
companyname nvarchar (40) not null ,
contactname nvarchar (30) null ,
contacttitle nvarchar (30) null ,
address nvarchar (60) null ,
city nvarchar (15) null ,
region nvarchar (15) null ,
postalcode nvarchar (10) null ,
country nvarchar (15) null ,
phone nvarchar (24) null ,
fax nvarchar (24) null ,
homepage text null,
primary key(supplierid)
);

create table products (
productid int auto_increment not null ,
productname nvarchar (40) not null ,
supplierid int null ,
categoryid int null ,
quantityperunit nvarchar (20) null ,
unitprice decimal(7,2) null default (0),
unitsinstock smallint null default (0),
unitsonorder smallint null default (0),
reorderlevel smallint null default (0),
discontinued bit not null default (0),
primary key(productid),
constraint fk_products_categories foreign key
(
categoryid
) references categories (
categoryid
),
constraint fk_products_suppliers foreign key
(
supplierid
) references suppliers (
supplierid
),
constraint ck_products_unitprice check (unitprice >= 0),
constraint ck_reorderlevel check (reorderlevel >= 0),
constraint ck_unitsinstock check (unitsinstock >= 0),
constraint ck_unitsonorder check (unitsonorder >= 0)
);

create table employees (
employeeid int auto_increment not null ,
lastname nvarchar (20) not null ,
firstname nvarchar (10) not null ,
title nvarchar (30) null ,
titleofcourtesy nvarchar (25) null ,
birthdate datetime null ,
hiredate datetime null ,
address nvarchar (60) null ,
city nvarchar (15) null ,
region nvarchar (15) null ,
postalcode nvarchar (10) null ,
country nvarchar (15) null ,
homephone nvarchar (24) null ,
extension nvarchar (4) null ,
notes text null ,
reportsto int null ,
photopath nvarchar (255) null ,
primary key(employeeid),
constraint fk_employees_employees foreign key
(
reportsto
) references employees (
employeeid
),
constraint ck_birthdate check ( birthdate < '2007-01-01' )
);

create table customers (
customerid nchar (5) not null ,
companyname nvarchar (40) not null ,
contactname nvarchar (30) null ,
contacttitle nvarchar (30) null ,
address nvarchar (60) null ,
city nvarchar (15) null ,
region nvarchar (15) null ,
postalcode nvarchar (10) null ,
country nvarchar (15) null ,
phone nvarchar (24) null ,
fax nvarchar (24) null,
primary key(customerid)
);

create table shippers (
shipperid int auto_increment not null ,
companyname nvarchar (40) not null ,
phone nvarchar (24) null,
primary key(shipperid)
);

create table orders (
orderid int auto_increment not null ,
customerid nchar (5) null ,
employeeid int null ,
orderdate datetime null ,
requireddate datetime null ,
shippeddate datetime null ,
shipvia int null ,
freight decimal(7,2) null default (0),
shipname nvarchar (40) null ,
shipaddress nvarchar (60) null ,
shipcity nvarchar (15) null ,
shipregion nvarchar (15) null ,
shippostalcode nvarchar (10) null ,
shipcountry nvarchar (15) null,
primary key (orderid),
constraint fk_orders_customers foreign key
(
customerid
) references customers (
customerid
),
constraint fk_orders_employees foreign key
(
employeeid
) references employees (
employeeid
),
constraint fk_orders_shippers foreign key
(
shipvia
) references shippers (
shipperid
)
);

create table orderdetails (
orderid int not null ,
productid int not null,
unitprice decimal(7,2) not null default (0),
quantity smallint not null default (1),
discount real not null default (0),
primary key(orderid,productid),
constraint fk_order_details_orders foreign key
(
orderid
) references orders (
orderid
),
constraint fk_order_details_products foreign key
(
productid
) references products (
productid
),
constraint ck_discount check (discount >= 0 and (discount <= 1)),
constraint ck_quantity check (quantity > 0),
constraint ck_unitprice check (unitprice >= 0)
);
/* the following adds stored procedures */
create table region
( regionid int not null ,
regiondescription nchar (50) not null
);

create table territories
(territoryid nvarchar (20) not null ,
territorydescription nchar (50) not null ,
regionid int not null
);

create table employeeterritories
(employeeid int not null,
territoryid nvarchar (20) not null
);
alter table region
add constraint pk_region primary key
(
regionid
);
alter table territories
add constraint pk_territories primary key
(
territoryid
);
alter table territories
add constraint fk_territories_region foreign key
(
regionid
) references region (
regionid
);
alter table employeeterritories
add constraint pk_employeeterritories primary key
(
employeeid,
territoryid
);
alter table employeeterritories
add constraint fk_employeeterritories_employees foreign key
(
employeeid
) references employees (
employeeid
);
alter table employeeterritories
add constraint fk_employeeterritories_territories foreign key
(
territoryid
) references territories (
territoryid
);

create table customercustomerdemo
(customerid nchar (5) not null,
customertypeid nchar (10) not null
);

create table customerdemographics
(customertypeid nchar (10) not null ,
customerdesc text null
);
alter table customercustomerdemo
add constraint pk_customercustomerdemo primary key
(
customerid,
customertypeid
);
alter table customerdemographics
add constraint pk_customerdemographics primary key
(
customertypeid
);
alter table customercustomerdemo
add constraint fk_customercustomerdemo foreign key
(
customertypeid
) references customerdemographics (
customertypeid
);
alter table customercustomerdemo
add constraint fk_customercustomerdemo_customers foreign key
(
customerid
) references customers (
customerid
);