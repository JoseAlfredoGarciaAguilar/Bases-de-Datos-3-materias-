create table categories (
	categoryid serial not null ,
	categoryname varchar(15) not null ,
	description text null ,
	constraint pk_categories primary key 
	(
		categoryid
	)
)
;
create table suppliers (
	supplierid serial not null ,
	companyname varchar(40) not null ,
	contactname varchar(30) null ,
	contacttitle varchar(30) null ,
	address varchar(60) null ,
	city varchar(15) null ,
	region varchar(15) null ,
	postalcode varchar(10) null ,
	country varchar(15) null ,
	phone varchar(24) null ,
	fax varchar(24) null ,
	homepage text null ,
	constraint pk_suppliers primary key  
	(
		supplierid
	)
)
;
create table products (
	productid serial not null ,
	productname varchar(40) not null ,
	supplierid int null ,
	categoryid int null ,
	quantityperunit varchar(20) null ,
	unitprice money null constraint df_products_unitprice default (0),
	unitsinstock smallint null constraint df_products_unitsinstock default (0),
	unitsonorder smallint null constraint df_products_unitsonorder default (0),
	reorderlevel smallint null constraint df_products_reorderlevel default (0),
	discontinued boolean not null constraint df_products_discontinued default (false),
	constraint pk_products primary key  
	(
		productid
	),
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
	constraint ck_products_unitprice check (unitprice >= '0'),
	constraint ck_reorderlevel check (reorderlevel >= 0),
	constraint ck_unitsinstock check (unitsinstock >= 0),
	constraint ck_unitsonorder check (unitsonorder >= 0)
)
;
create table employees (
	employeeid serial not null ,
	lastname varchar(20) not null ,
	firstname varchar(10) not null ,
	title varchar(30) null ,
	titleofcourtesy varchar(25) null ,
	birthdate timestamp null ,
	hiredate timestamp null ,
	address varchar(60) null ,
	city varchar(15) null ,
	region varchar(15) null ,
	postalcode varchar(10) null ,
	country varchar(15) null ,
	homephone varchar(24) null ,
	extension varchar(4) null ,
	notes text null ,
	reportsto int null ,
	photopath varchar(255) null ,
	constraint pk_employees primary key  
	(
		employeeid
	),
	constraint fk_employees_employees foreign key 
	(
		reportsto
	) references employees (
		employeeid
	),
	constraint ck_birthdate check ( birthdate < now()  )
)
;
create table customers (
	customerid nchar (5) not null ,
	companyname varchar(40) not null ,
	contactname varchar(30) null ,
	contacttitle varchar(30) null ,
	address varchar(60) null ,
	city varchar(15) null ,
	region varchar(15) null ,
	postalcode varchar(10) null ,
	country varchar(15) null ,
	phone varchar(24) null ,
	fax varchar(24) null ,
	constraint pk_customers primary key  
	(
		customerid
	)
)
;
create table shippers (
	shipperid serial not null ,
	companyname varchar(40) not null ,
	phone varchar(24) null ,
	constraint pk_shippers primary key  
	(
		shipperid
	)
)
;
create table orders (
	orderid serial not null ,
	customerid nchar (5) null ,
	employeeid int null ,
	orderdate timestamp null ,
	requireddate timestamp null ,
	shippeddate timestamp null ,
	shipvia int null ,
	freight money null constraint df_orders_freight default (0),
	shipname varchar(40) null ,
	shipaddress varchar(60) null ,
	shipcity varchar(15) null ,
	shipregion varchar(15) null ,
	shippostalcode varchar(10) null ,
	shipcountry varchar(15) null ,
	constraint pk_orders primary key  
	(
		orderid
	),
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
)
;
create table orderdetails(
	orderid int not null ,
	productid int not null ,
	unitprice money not null constraint df_order_details_unitprice default (0),
	quantity smallint not null constraint df_order_details_quantity default (1),
	discount real not null constraint df_order_details_discount default (0),
	constraint pk_order_details primary key  
	(
		orderid,
		productid
	),
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
	constraint ck_unitprice check (unitprice >= '0')
)
;
/* the following adds stored procedures */	
create table region
	( regionid int not null ,
	regiondescription nchar (50) not null 
)
;
create table territories 
	(territoryid varchar (20) not null ,
	territorydescription nchar (50) not null ,
        regionid int not null
)
;  
create table employeeterritories 
	(employeeid int not null,
	territoryid varchar (20) not null 
)
; 
alter table region
	add constraint pk_region primary key 
	(
		regionid
	)
;   
alter table territories
	add constraint pk_territories primary key  
	(
		territoryid
	)
;   
alter table territories
	add constraint fk_territories_region foreign key 
	(
		regionid
	) references region (
		regionid
	)
;
alter table employeeterritories
	add constraint pk_employeeterritories primary key 
	(
		employeeid,
		territoryid
	)
;  
alter table employeeterritories
	add constraint fk_employeeterritories_employees foreign key 
	(
		employeeid
	) references employees (
		employeeid
	)
;
alter table employeeterritories	
	add constraint fk_employeeterritories_territories foreign key 
	(
		territoryid
	) references territories (
		territoryid
	)
;
create table customercustomerdemo 
	(customerid nchar (5) not null,
	customertypeid nchar (10) not null
)
;  
create table customerdemographics 
	(customertypeid nchar (10) not null ,
	customerdesc text null 
)
;  		
alter table customercustomerdemo
	add constraint pk_customercustomerdemo primary key  
	(
		customerid,
		customertypeid
	)
;
alter table customerdemographics
	add constraint pk_customerdemographics primary key  
	(
		customertypeid
	)
;  
alter table customercustomerdemo
	add constraint fk_customercustomerdemo foreign key 
	(
		customertypeid
	) references customerdemographics (
		customertypeid
	)
;
alter table customercustomerdemo
	add constraint fk_customercustomerdemo_customers foreign key
	(
		customerid
	) references customers (
		customerid
	)
;