create proc sp_mttoSuppliers
@SupplierID int output, @companyname nvarchar(40), @contactname nvarchar(30), @contacttitle nvarchar(30), @address nvarchar(60),
@city nvarchar(15), @region nvarchar(15), @postalcode nvarchar(10), @country nvarchar(15), @phone nvarchar(24),
@fax nvarchar(24), @homepage nvarchar(50) as
	begin
		if Exists(select*from suppliers where supplierid = @supplierid)
			begin
			update suppliers set companyname = @companyname, contactname = @contactname, contacttitle = @contacttitle, address = @address, city = @city, region = @region,
			postalcode = @postalcode, country = @country, phone = @phone, fax = @fax, homepage = @homepage where supplierid = @supplierid
			
		if @@error<>0
		begin
			raiserror('Error al Actualizar en la tabla Suppliers',16,10)
		end
	end
	else
	begin
		--Si la llave primaria no es identity se busca la ultima clave mas uno
		insert suppliers(companyname, contactname, contacttitle, address, city, region, postalcode, country, phone, fax, homepage) values(@companyname, @contactname,
		@contacttitle, @address, @city, @region, @postalcode, @country, @phone, @fax, @homepage)
		if @@error<>0
		begin
			raiserror('Error al Actualizar en la tabla shippers',16,10)
		end
		select @supplierid = @@identity
	end
end