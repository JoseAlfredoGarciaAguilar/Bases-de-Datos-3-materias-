create procedure sp_mttoterritories(inout territoryid_v varchar(20), in territorydescription_v nchar(50), in territoryregion_v int)
as
$$
begin 
    if exists(select * from territories where territoryid = territoryid_v)
    then
        update territories set territoryid = territoryid_v, territorydescription = territorydescription_v, regionid = territoryregion_v
		where territoryid = territoryid_v;
	else 
        insert into territories(territoryid, territorydescription, regionid) values (territoryid_v, territorydescription_v, territoryregion_v);
	end if;
end 
$$
language 'plpgsql'; --PL/pgSQL (Procedural Language/PostgreSQL)

--select * from territories;
--call sp_mttoterritories('113', 'ESCUELA', 1);
--select * from territories where territoryid = '113';