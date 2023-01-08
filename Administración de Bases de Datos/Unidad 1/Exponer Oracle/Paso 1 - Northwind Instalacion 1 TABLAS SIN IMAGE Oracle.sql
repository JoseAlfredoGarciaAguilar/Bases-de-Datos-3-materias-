create table categories (
	categoryid integer,
	categoryname nvarchar2 (15) not null,
	description clob);
    
    alter table categories
add constraint pk_categories primary key 
(
  categoryid
);

create table suppliers (
	supplierid integer,
	companyname nvarchar2 (40) not null,
	contactname nvarchar2 (30) null,
	contacttitle nvarchar2 (30) null,
	address nvarchar2 (60) null,
	city nvarchar2 (15) null,
	region nvarchar2 (15) null,
	postalcode nvarchar2 (10) null,
	country nvarchar2 (15) null,
	phone nvarchar2 (24) null,
	fax nvarchar2 (24) null,
	homepage clob null);
    
    alter table suppliers
add constraint pk_suppliers primary key 
(
  supplierid
);

create table products (
	productid integer,
	productname nvarchar2 (40) not null,
	supplierid int null,
	categoryid int null,
	quantityperunit nvarchar2 (20) null,
	unitprice decimal(7,2) null,
	unitsinstock smallint null,
	unitsonorder smallint null,
	reorderlevel smallint null,
	discontinued number not null);

alter table products add constraint pk_products primary key(productid);
alter table products add constraint fk_products_categories foreign key (categoryid) references categories (categoryid);
alter table products add constraint fk_products_suppliers foreign key (supplierid) references suppliers (supplierid);
alter table products add constraint ck_products_unitprice check (unitprice >= 0);
alter table products add constraint ck_reorderlevel check (reorderlevel >= 0);
alter table products add constraint ck_unitsinstock check (unitsinstock >= 0);
alter table products add constraint ck_unitsonorder check (unitsonorder >= 0);

create table employees (
	employeeid integer,
	lastname nvarchar2 (20) not null,
	firstname nvarchar2 (10) not null,
	title nvarchar2 (30) null,
	titleofcourtesy nvarchar2 (25) null,
	birthdate nvarchar2 (60) null,
	hiredate nvarchar2 (60) null,
	address nvarchar2 (60) null,
	city nvarchar2 (15) null,
	region nvarchar2 (15) null,
	postalcode nvarchar2 (10) null,
	country nvarchar2 (15) null,
	homephone nvarchar2 (24) null,
	extension nvarchar2 (4) null,
	notes clob null,
	reportsto int null,
	photopath nvarchar2 (255) null);
    
	alter table employees add constraint pk_employees primary key (employeeid);
	alter table employees add constraint fk_employees_employees foreign key (reportsto) references employees (employeeid);
    
    create table customers (
    customerid nchar(5) not null,
    companyname nvarchar2 (40) not null,
    contactname nvarchar2 (30) null,
    contacttitle nvarchar2 (30) null,
    address nvarchar2 (60) null,
    city nvarchar2 (15) null,
    region nvarchar2 (15) null,
    postalcode nvarchar2 (10) null,
    country nvarchar2 (15) null,
    phone nvarchar2 (24) null,
    fax nvarchar2 (24) null);

alter table customers add constraint pk_customers  primary key (customerid) ;
    
create table shippers (
	shipperid integer,
	companyname nvarchar2 (40) not null,
	phone nvarchar2 (24) null);
    
alter table shippers add constraint pk_shippers primary key (shipperid);


create table orders(
	orderid integer,
	customerid nchar (5) null,
	employeeid int null,
	orderdate nvarchar2 (60) null,
	requireddate nvarchar2 (60) null,
	shippeddate nvarchar2 (60) null,
	shipvia int null,
	freight decimal(7,2) null,
	shipname nvarchar2 (40) null,
	shipaddress nvarchar2 (60) null,
	shipcity nvarchar2 (15) null,
	shipregion nvarchar2 (15) null,
	shippostalcode nvarchar2 (10) null,
	shipcountry nvarchar2 (15) null);
    
    alter table orders add constraint pk_orders primary key (orderid);
	alter table orders add constraint fk_orders_customers foreign key (customerid) references customers (customerid);
	alter table orders add constraint fk_orders_employees foreign key (employeeid) references employees (employeeid);
	alter table orders add constraint fk_orders_shippers foreign key (shipvia) references shippers (shipperid);
    

create table orderdetails (
	orderid int not null,
	productid int not null,
	unitprice decimal(7,2) not null,
	quantity smallint not null,
	discount real not null);
    
	alter table orderdetails add constraint pk_orderdetails primary key (orderid, productid);
	alter table orderdetails add constraint fk_order_details_orders foreign key (orderid) references orders(orderid);
	alter table orderdetails add constraint fk_order_details_products foreign key (productid) references products(productid);
    
	alter table orderdetails add constraint ck_discount check (discount >= 0 and (discount <= 1));
	alter table orderdetails add constraint ck_quantity check (quantity > 0);
	alter table orderdetails add constraint ck_unitprice check (unitprice >= 0);
    
    
create table region( 
	regionid int not null,
	regiondescription nchar (50) not null 
);
    
create table territories(
	territoryid int,
	territorydescription nchar (50) not null,
	regionid int not null
);

create table employeeterritories(
	employeeid int not null,
	territoryid int 
);

alter table region 
add constraint pk_region primary key (regionid);

alter table territories
add constraint pk_territories primary key (territoryid);

alter table territories
add constraint fk_territories_region foreign key (regionid) references region (regionid);

alter table employeeterritories
add constraint fk_employeeterritories primary key (employeeid,territoryid);

alter table employeeterritories
add constraint fk_employeeterritories_employees foreign key (employeeid) references employees (employeeid);

alter table employeeterritories	
add constraint fk_employeeterritories_territories foreign key (territoryid) references territories (territoryid);

--  the following adds constraints to the northwindm database
create table customercustomerdemo(
	customerid nchar (5) not null,
	customertypeid nchar (10) not null
);

create table customerdemographics(
	customertypeid nchar (10) not null ,
	customerdesc clob null 
);		

alter table customercustomerdemo
add constraint pk_customercustomerdemo primary key (customerid,customertypeid);

alter table customerdemographics
add constraint pk_customerdemographics primary key (customertypeid);

alter table customercustomerdemo
add constraint fk_customercustomerdemo foreign key (customertypeid) references customerdemographics (customertypeid);

alter table customercustomerdemo
add constraint fk_customercustomerdemo_customers foreign key(customerid) references customers (customerid);