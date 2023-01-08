create trigger tr_eliminar_territories 
before delete on territories
for each row

begin
    raise_application_error(-20001,'por el momento no se puede eliminar registros de territories!');
end tr_eliminar_territories;

--select * from territories;
--delete from territories where territoryid = '2903';
--select * from territories where territoryid = '2903';

--drop trigger tr_eliminar_territories;