use northwind;
DELIMITER $$
create procedure sp_mttoterritories(inout territoryID_v varchar(40), territoryDescription_v char(100), regionID_v int) #inout Se especifica cuando se llama y se puede cambiar y devolver
#Necesita transferir los datos al procedimiento almacenado después de llamar y calcular, y luego devolver el valor de retorno
begin
	if exists(select * from territories where territoryID = territoryID_v) 
    then
		update territories set territoryID = territoryID_v, TerritoryDescription = territoryDescription_v, RegionID = regionID_v
        where territoryID = territoryID_v;
        if @@error_count > 0 then
			signal sqlstate '45000' set message_text = 'Error al Actualizar la tabla territories';
        end if;
	else
		begin
			select territoryID_v = coalesce(max(territoryID),0) + 1 from territories;
            insert territories(territoryID, TerritoryDescription, RegionID) values(territoryID_v, territoryDescription_v, regionID_v);
            if @@error_count > 0 then
				signal sqlstate '45000' set message_text = 'Error al Actualizar la tabla territories';
			end if;
        end;
    end if;
end$$
DELIMITER ;

set @ejemplo ='111';
call sp_mttoterritories (@ejemplo, 'TEC',1);
select @ejemplo;
select * from territories where territoryID = 111;
drop procedure sp_mttoterritories;