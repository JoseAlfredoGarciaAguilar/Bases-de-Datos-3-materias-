--U1.T0 Agregar Sucursales para la mezcla
--1.- Quitar FK entre Orders y [Order Details]
alter table [order details] drop constraint fk_order_details_orders;
go
--2.- Quitar PK Orders
alter table orders drop constraint pk_orders;
go
--3.- Crear la tabla sucursales( SucID, SucNombre) con PK
create table sucursales(
sucid int primary key,
sucnombre nvarchar(25)
);
go
--4.- Insertar una sucursal
insert into sucursales(sucid, sucnombre) values(1, 'sucursal buenos aires');
go
--5.- Agregar el campo Orders.SucID en primera posición de la tabla.
create table OrdersA(
sucid int,
OrderID int not null,
CustomerID nchar(5) null,
EmployeeID int null,
OrderDate datetime null,
RequiredDate datetime null,
ShippedDate datetime null,
ShipVia int null,
Freight money null,
ShipName nvarchar(40) null,
ShipAddress nvarchar(60) null,
ShipCity nvarchar(15) null,
ShipRegion nvarchar(15) null,
ShipPostalCode nvarchar(10) null,
ShipCountry nvarchar(15) null,
)
go
insert into OrdersA("orderid","customerid","employeeid","orderdate","requireddate","shippeddate","shipvia","freight","shipname","shipaddress",
"shipcity","shipregion","shippostalcode","shipcountry")
select*from orders
go
alter table orders drop constraint fk_Orders_Shippers
go
drop table orders 
go
exec sp_rename ordersA, orders
alter table orders add constraint fk_Orders_Shippers foreign key(shipvia) references Shippers(shipperid)
alter table orders add constraint fK_orders_customers foreign key(customerid) references customers(customerid)
alter table orders add constraint fk_orders_employees foreign key(employeeid) references employees(employeeid)

--6.- Actualizar el campo Orders.SucID  con la clave de SucID creada en el punto 4
update orders set sucid = 1;
go
--7.- Quitar la propiedad NULL al campo Orders.SucID
alter table orders alter column sucid int not null
go
--7.5.- Quitar la propiedad IDENTITY al campo orders.OrderID
-- ya se a eliminado la propiedad identity en el paso 5 
--8.- Crear la PK en orders ( SucID, OrderID ) 
alter table orders add constraint pk_orders_suc_orders primary key clustered(sucid, orderid)
go
--9.- Crear la FK entre Orders.SucID y Sucursales.SucID
alter table dbo.orders add constraint fk_orders_sucursales foreign key(sucid) references sucursales(sucid);
go
--10.- Agregar el campo [Order Details].SucID en primera posición de la tabla.
create table ordDet(
sucid int,
OrderID int not null,
ProductID int not null,
UnitPrice money not null,
Quantity smallint not null,
Discount real not null,
)
go
insert into ordDet("OrderID","ProductID","UnitPrice","Quantity","Discount")
select*from [order details]
go
drop table [Order Details]
go
exec sp_rename ordDet, [Order Details]
go
alter table [order details] add constraint FK_Order_Details_Products foreign key(productid) references products(productid)
go
--11.- Actualizar el campo [Order Details].SucID  con la clave de SucID creada en el punto 4
update [order details] set sucid = 1;
go
--12- Quitar la propiedad NULL al campo [Order Details].SucID 
alter table [order details] alter column sucid int not null;
go
--13.- Crear la PK en [Order Details]( SucID, OrderID, ProductID )
alter table [order details] add constraint pk_order_details primary key(sucid, orderid, productid)
go
--14.- Crear la FK entre [Order Details] y Orders.
alter table [order details] add constraint FK_Order_Details_Orders foreign key(sucid, orderid) references orders(sucid, orderid)
go

insert into "Orders"("sucid","orderid","customerid","employeeid","orderdate","requireddate","shippeddate","shipvia","freight","shipname","shipaddress",
"shipcity","shipregion","shippostalcode","shipcountry") values (1, 10000,'VINET',8,2-12-2022,2-19-2022,5-20-2022,3,12.50,
'paquete','cerro otates 2802','culiacan','regioncita','80199','mexico')
go
insert into "Order Details" values(1, 10000, 30, 8.2, 20, 0)
go

--select * from orders
--select * from [order details]