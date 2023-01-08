--Eliminar los campos ntext e image de las tablas Products, Categories y Suppliers 

--Campo image y ntext en categories 
alter table categories drop column picture
go
alter table categories drop column Description
go
--Campo ntext en suppliers 
alter table suppliers drop column HomePage 
go  

--Migrar las tablas Products, Categories y Suppliers 
--Products
select
productid "@clave", supplierid "@Proveedor", categoryid "@Categoria",
Nombre = productname, 
QuantityperUnit "Unidad/CantidadPorUnidad",
unitprice "Unidad/PrecioUnitario",
UnitsInStock "Unidad/UnitInStock",
UnitsOnOrder "Unidad/UnidadesOrden",
ReorderLevel "Unidad/Reorden",
Descuento = Discontinued
from Products
for xml path('Producto'), root('Productos'), elements

--Categories
select
categoryid "@Clave",
Categoria = categoryname
from categories 
for xml path('Categoria'), root('Categorias'), elements

--Suppliers
Select
SupplierId "@clave",
Compañia=Companyname,
contactname "Contacto/NombreCompañia", 
ContactTitle "Contacto/TituloCompañia",
Address "Domicilio/Calle",
City "Domicilio/Ciudad",
Region "Domicilio/Region",
PostalCode "Domicilio/CodigoPostal",
Country "Domicilio/Pais",
Phone "Contacto/Telefono",
Fax "Contacto/Fax"
from Suppliers
for xml path('Proveedor'), ROOT('Proveedores'), elements

