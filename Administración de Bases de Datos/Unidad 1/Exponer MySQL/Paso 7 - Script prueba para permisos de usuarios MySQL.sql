use northwind;
select * from territories
where territoryid = 50000;

INSERT INTO Territories (TerritoryID, TerritoryDescription, RegionID) VALUES('50000', 'Morelos', 1);

#delete from territories where territoryid = 50000;

#SOLO TENEMOS PERMISOS PARA SELECCIONAR Y INSERTAR, PERO NO PARA ELIMINAR