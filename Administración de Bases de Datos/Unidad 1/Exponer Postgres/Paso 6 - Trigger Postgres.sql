create function fn_eliminar_territories() returns trigger
as
$$
begin
	raise exception 'Por el momento no se puede eliminar registros';
end
$$
language plpgsql;

create trigger tr_eliminar_territories
before delete on territories
for each row
execute procedure fn_eliminar_territories();

--delete from territories where territoryid = '02116'

--select * from territories