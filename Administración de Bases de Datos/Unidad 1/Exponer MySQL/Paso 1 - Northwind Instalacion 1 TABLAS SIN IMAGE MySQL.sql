create database northwind;
#use northwind;
#drop database northwind;

create table Categories (
	CategoryID int auto_increment not null , #identity
	CategoryName varchar (15) not null , #nvarchar
	Description text null , #ntext
	constraint PK_Categories primary key  clustered 
	(
		CategoryID
	)
)
;
create table Suppliers (
	SupplierID int auto_increment not null ,
	CompanyName varchar (40) not null ,
	ContactName varchar (30) null ,
	ContactTitle varchar (30) null ,
	Address varchar (60) null ,
	City varchar (15) null ,
	Region varchar (15) null ,
	PostalCode varchar (10) null ,
	Country varchar (15) null ,
	Phone varchar (24) null ,
	Fax varchar (24) null ,
	HomePage text null ,
	constraint PK_Suppliers primary key  clustered 
	(
		SupplierID
	)
)
;
create table Products (
	ProductID int auto_increment not null ,
	ProductName varchar (40) not null ,
	SupplierID int null ,
	CategoryID int null ,
	QuantityPerUnit varchar (20) null ,
	UnitPrice DECIMAL(19,4) null  default (0), #money
	UnitsInStock smallint null default (0),
	UnitsOnOrder smallint null default (0),
	ReorderLevel smallint null default (0),
	Discontinued bit not null default (0),
	constraint PK_Products primary key  clustered 
	(
		ProductID
	),
	constraint FK_Products_Categories foreign key 
	(
		CategoryID
	) REFERENCES Categories (
		CategoryID
	),
	constraint FK_Products_Suppliers foreign key 
	(
		SupplierID
	) REFERENCES Suppliers (
		SupplierID
	),
	constraint CK_Products_UnitPrice check (UnitPrice >= 0),
	constraint CK_ReorderLevel check (ReorderLevel >= 0),
	constraint CK_UnitsInStock check (UnitsInStock >= 0),
	constraint CK_UnitsOnOrder check (UnitsOnOrder >= 0)
)
;
create table Employees (
	EmployeeID int auto_increment not null ,
	LastName varchar (20) not null ,
	FirstName varchar (10) not null ,
	Title varchar (30) null ,
	TitleOfCourtesy varchar (25) null ,
	BirthDate datetime null ,
	HireDate datetime null ,
	Address varchar (60) null ,
	City varchar (15) null ,
	Region varchar (15) null ,
	PostalCode varchar (10) null ,
	Country varchar (15) null ,
	HomePhone varchar (24) null ,
	Extension varchar (4) null ,
	Notes text null ,
	ReportsTo int null ,
	PhotoPath varchar (255) null ,
	constraint PK_Employees primary key  clustered 
	(
		EmployeeID
	),
	constraint FK_Employees_Employees foreign key 
	(
		ReportsTo
	) REFERENCES Employees (
		EmployeeID
	)
)
;
create table Customers (
	CustomerID char (5) not null ,
	CompanyName varchar (40) not null ,
	ContactName varchar (30) null ,
	ContactTitle varchar (30) null ,
	Address varchar (60) null ,
	City varchar (15) null ,
	Region varchar (15) null ,
	PostalCode varchar (10) null ,
	Country varchar (15) null ,
	Phone varchar (24) null ,
	Fax varchar (24) null ,
	constraint PK_Customers primary key  clustered 
	(
		CustomerID
	)
)
;
create table Shippers (
	ShipperID int auto_increment not null ,
	CompanyName varchar (40) not null ,
	Phone varchar (24) null ,
	constraint PK_Shippers primary key  clustered 
	(
		ShipperID
	)
)
;
create table Orders (
	OrderID int auto_increment not null ,
	CustomerID char (5) null ,
	EmployeeID int null ,
	OrderDate datetime null ,
	RequiredDate datetime null ,
	ShippedDate datetime null ,
	ShipVia int null ,
	Freight DECIMAL(19,4) null  default (0),
	ShipName varchar (40) null ,
	ShipAddress varchar (60) null ,
	ShipCity varchar (15) null ,
	ShipRegion varchar (15) null ,
	ShipPostalCode varchar (10) null ,
	ShipCountry varchar (15) null ,
	constraint PK_Orders primary key  clustered 
	(
		OrderID
	),
	constraint FK_Orders_Customers foreign key 
	(
		CustomerID
	) REFERENCES Customers (
		CustomerID
	),
	constraint FK_Orders_Employees foreign key 
	(
		EmployeeID
	) REFERENCES Employees (
		EmployeeID
	),
	constraint FK_Orders_Shippers foreign key 
	(
		ShipVia
	) REFERENCES Shippers (
		ShipperID
	)
)
;
create table Order_Details (
	OrderID int not null ,
	ProductID int not null ,
	UnitPrice DECIMAL(19,4) not null  default (0), #money
	Quantity smallint not null  default (1),
	Discount real not null  default (0),
	constraint PK_Order_Details primary key  clustered 
	(
		OrderID,
		ProductID
	),
	constraint FK_Order_Details_Orders foreign key 
	(
		OrderID
	) REFERENCES Orders (
		OrderID
	),
	constraint FK_Order_Details_Products foreign key 
	(
		ProductID
	) REFERENCES Products (
		ProductID
	),
	constraint CK_Discount check (Discount >= 0 and (Discount <= 1)),
	constraint CK_Quantity check (Quantity > 0),
	constraint CK_UnitPrice check (UnitPrice >= 0)
)
;
create table Region 
	( RegionID int not null ,
	RegionDescription char (50) not null-- ,
)
;
create table Territories 
	(TerritoryID varchar (20) not null ,
	TerritoryDescription char (50) not null ,
        RegionID int not null
)  
;
create table EmployeeTerritories 
	(EmployeeID int not null,
	TerritoryID varchar (20) not null 
) 
;
alter table Region
	ADD constraint PK_Region primary key  nonclustered 
	(
		RegionID
	)   
;
alter table Territories
	ADD constraint PK_Territories primary key  nonclustered 
	(
		TerritoryID
	)   
;
alter table Territories
	ADD constraint FK_Territories_Region foreign key 
	(
		RegionID
	) REFERENCES Region (
		RegionID
	)
;
alter table EmployeeTerritories
	ADD constraint PK_EmployeeTerritories primary key  nonclustered 
	(
		EmployeeID,
		TerritoryID
	)  
;
alter table EmployeeTerritories
	ADD constraint FK_EmployeeTerritories_Employees foreign key 
	(
		EmployeeID
	) REFERENCES Employees (
		EmployeeID
	)
;
alter table EmployeeTerritories	
	ADD constraint FK_EmployeeTerritories_Territories foreign key 
	(
		TerritoryID
	) REFERENCES Territories (
		TerritoryID
	)
;
create table CustomerCustomerDemo 
	(CustomerID char (5) not null,
	CustomerTypeID char (10) not null
)  
;
create table CustomerDemographics 
	(CustomerTypeID char (10) not null ,
	CustomerDesc text null 
)  
;	
alter table CustomerCustomerDemo
	ADD constraint PK_CustomerCustomerDemo primary key  nonclustered 
	(
		CustomerID,
		CustomerTypeID
	)  
;
alter table CustomerDemographics
	ADD constraint PK_CustomerDemographics primary key  nonclustered 
	(
		CustomerTypeID
	)  
;
alter table CustomerCustomerDemo
	ADD constraint FK_CustomerCustomerDemo foreign key 
	(
		CustomerTypeID
	) REFERENCES CustomerDemographics (
		CustomerTypeID
	)
;
alter table CustomerCustomerDemo
	ADD constraint FK_CustomerCustomerDemo_Customers foreign key
	(
		CustomerID
	) REFERENCES Customers (
		CustomerID
	)
;