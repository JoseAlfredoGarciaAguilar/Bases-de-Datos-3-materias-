use NorthwindBD
create table tabla_problema5 ( 
TipoTransaccion varchar(1000), 
NombreTabla varchar(1000), 
CampoPK varchar(1000), 
CampoModificado varchar(1000), 
ValorOriginal Varchar(1000), 
ValorNuevo Varchar(1000), 
FechaTransaccion DateTime Not null constraint DF_TipoCambios_FechaTran DEFAULT (getdate()),
NombreUsuario varchar(1000)
)
--drop table tabla_problema5

--Products: Accion = Update, Campos = ProductName, UnitPrice
create trigger tr_products ON products for update
as begin
declare @TipoTransaccion varchar(1000)
declare @NombreTabla varchar(1000)
declare @CampoPK varchar(1000)
declare @CampoModificado varchar(1000)
declare @ValorOriginal Varchar(1000)
declare @ValorNuevo Varchar(1000)
declare @FechaTransaccion datetime
declare @NombreUsuario varchar(1000)

if exists(select * from inserted)
	if exists(select * from deleted)
		select @TipoTransaccion = 'Update'
	else
		select @TipoTransaccion = 'Insert'
else
select @TipoTransaccion = 'Delete'

select @NombreTabla = 'Products'
select @NombreUsuario = SYSTEM_USER
select @FechaTransaccion = GETDATE()

IF UPDATE(ProductName) --validar si se cambia el campo ProductName
begin
	SELECT @CampoModificado = 'ProductName'
	SELECT @ValorNuevo = CONVERT(varchar(1000),ProductName) FROM inserted
	SELECT @ValorOriginal = CONVERT(varchar(1000),ProductName) FROM deleted
end
ELSE IF UPDATE(UnitPrice) --validar si se cambia el campo UnitPrice
begin
	SELECT @CampoModificado = 'UnitPrice'
	SELECT @ValorNuevo = CONVERT(varchar(1000),UnitPrice) FROM inserted
	SELECT @ValorOriginal = CONVERT(varchar(1000),UnitPrice) FROM deleted
end
	if exists (SELECT * FROM inserted)
		SELECT @CampoPK = 'ProductID=' + convert(varchar(1000),ProductID) FROM inserted
	else
		SELECT @CampoPK = 'ProductID=' + convert(varchar(1000),ProductID) FROM deleted

	INSERT tabla_problema5(TipoTransaccion,NombreTabla,CampoPK,CampoModificado,ValorOriginal,ValorNuevo,FechaTransaccion,NombreUsuario)
	VALUES (@TipoTransaccion,@NombreTabla,@CampoPK,@CampoModificado,@ValorOriginal,@ValorNuevo,@FechaTransaccion,@NombreUsuario)
END
GO
--drop trigger tr_products
--update
update products set ProductName = 'CARNE', UnitPrice = '100' where productid = '1'
update products set UnitPrice = '40' where productid = '1'

select * from products

select * from tabla_problema5
go

--Customers: Accion = Update/Delete, Campos = Address, Phone
create trigger tr_customers ON customers for update, delete
as begin
declare @TipoTransaccion varchar(1000)
declare @NombreTabla varchar(1000)
declare @CampoPK varchar(1000)
declare @CampoModificado varchar(1000)
declare @ValorOriginal Varchar(1000)
declare @ValorNuevo Varchar(1000)
declare @FechaTransaccion datetime
declare @NombreUsuario varchar(1000)

if exists(select * from inserted)
	if exists(select * from deleted)
		select @TipoTransaccion = 'Update'
	else
		select @TipoTransaccion = 'Insert'
else
select @TipoTransaccion = 'Delete'

select @NombreTabla = 'Customers'
select @NombreUsuario = SYSTEM_USER
select @FechaTransaccion = GETDATE()

IF UPDATE(Address) --validar si se cambia el campo Address
begin
	SELECT @CampoModificado = 'Address'
	SELECT @ValorNuevo = CONVERT(varchar(1000),Address) FROM inserted
	SELECT @ValorOriginal = CONVERT(varchar(1000),Address) FROM deleted
end
ELSE IF UPDATE(Phone) --validar si se cambia el campo Phone
begin
	SELECT @CampoModificado = 'Phone'
	SELECT @ValorNuevo = CONVERT(varchar(1000),Phone) FROM inserted
	SELECT @ValorOriginal = CONVERT(varchar(1000),Phone) FROM deleted
end
	if exists (SELECT * FROM inserted)
		SELECT @CampoPK = 'CustomerID=' + convert(varchar(1000),CustomerID) FROM inserted
	else
		SELECT @CampoPK = 'CustomerID=' + convert(varchar(1000),CustomerID) FROM deleted

	INSERT tabla_problema5(TipoTransaccion,NombreTabla,CampoPK,CampoModificado,ValorOriginal,ValorNuevo,FechaTransaccion,NombreUsuario)
	VALUES (@TipoTransaccion,@NombreTabla,@CampoPK,@CampoModificado,@ValorOriginal,@ValorNuevo,@FechaTransaccion,@NombreUsuario)
END
GO
--drop trigger tr_customers
--update
update customers set Address = 'privara', PHONE = '66958410400' where CustomerID = 'AROUT'
update customers set phone = '6671230064' where CustomerID = 'AROUT'
--un insert para hacer el delete
INSERT "Customers" VALUES('ZZZZZ','Tradição Hipermercados','Anabela Domingues','Sales Representative','Av. Inês de Castro, 414','Sao Paulo','SP','05634-030','Brazil','(11) 555-2167','(11) 555-2168')
delete customers where CustomerID like 'ZZZZZ'

select * from customers

select * from tabla_problema5
go

--Order Details: Accion = Update, Campos = UnitPrice, Quantity
create trigger tr_orderdetails ON [Order Details] for update
as begin
declare @TipoTransaccion varchar(1000)
declare @NombreTabla varchar(1000)
declare @CampoPK varchar(1000)
declare @CampoModificado varchar(1000)
declare @ValorOriginal Varchar(1000)
declare @ValorNuevo Varchar(1000)
declare @FechaTransaccion datetime
declare @NombreUsuario varchar(1000)

if exists(select * from inserted)
	if exists(select * from deleted)
		select @TipoTransaccion = 'Update'
	else
		select @TipoTransaccion = 'Insert'
else
select @TipoTransaccion = 'Delete'

select @NombreTabla = 'Order Details'
select @NombreUsuario = SYSTEM_USER
select @FechaTransaccion = GETDATE()

IF UPDATE(UnitPrice) --validar si se cambia el campo UnitPrice
begin
	SELECT @CampoModificado = 'UnitPrice'
	SELECT @ValorNuevo = CONVERT(varchar(1000),UnitPrice) FROM inserted
	SELECT @ValorOriginal = CONVERT(varchar(1000),UnitPrice) FROM deleted
end
ELSE IF UPDATE(Quantity) --validar si se cambia el campo Quantity
begin
	SELECT @CampoModificado = 'Quantity'
	SELECT @ValorNuevo = CONVERT(varchar(1000),Quantity) FROM inserted
	SELECT @ValorOriginal = CONVERT(varchar(1000),Quantity) FROM deleted
end
	if exists (SELECT * FROM inserted)
		SELECT @CampoPK = 'OrderID=' + convert(varchar(1000),OrderID) FROM inserted
	else
		SELECT @CampoPK = 'OrderID=' + convert(varchar(1000),OrderID) FROM deleted

	INSERT tabla_problema5(TipoTransaccion,NombreTabla,CampoPK,CampoModificado,ValorOriginal,ValorNuevo,FechaTransaccion,NombreUsuario)
	VALUES (@TipoTransaccion,@NombreTabla,@CampoPK,@CampoModificado,@ValorOriginal,@ValorNuevo,@FechaTransaccion,@NombreUsuario)
END
GO
--drop trigger tr_orderdetails
--un insert para hacer el update
INSERT "Order Details" VALUES(10251,53,32.8,25,0) --el 10249 ya existe en la tabla orders
--update
update [Order Details] set UnitPrice = '11700' where OrderID = '10251'

select * from orders
select * from [Order Details] where orderid = 10251

select * from tabla_problema5
go