create procedure sp_mttoterritories (territoryid_v out varchar2, territorydescription_v in char, regionid_v in int) as
begin
declare contador varchar2(50);
    begin
        select count(*) into contador from territories where territoryid = territoryid_v;
        if (contador > 0 ) then
            update territories set territoryid = territoryid_v, territorydescription = territorydescription_v, regionid = regionid_v
            where territoryid = territoryid_v;
        else
            select max(territoryid) into territoryid_v from territories;    
            insert into territories(territoryid, territorydescription, regionid) values (territoryid_v, territorydescription_v, regionid_v);
        end if;
        exception when no_data_found then dbms_output.put_line('error al actualizar la tabla territories');
    end;
end;
/

--drop procedure sp_mttoterritories;
--select * from territories;
/*
begin
declare territoryid_v := 113;
declare territorydescription_v := 'ESCUELA';
declare regionid_v := 1;
sp_mttoterritories(territoryid_v, territorydescription_v, regionid_v);
commit;
end;

begin
   declare territoryid_v := "113";
   sp_mttoterritories(territoryid_v, 'ESCUELA',1);
   commit;
end;
--select * from territories where territoryid = '113';
*/