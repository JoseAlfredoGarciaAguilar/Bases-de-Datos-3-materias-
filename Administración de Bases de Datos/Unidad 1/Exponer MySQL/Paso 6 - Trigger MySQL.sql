use northwind;
delimiter $$
create trigger tr_eliminar_territories before delete on territories for each row begin
     signal sqlstate '45000' set message_text = 'Por el momento no se puede eliminar registros';    
end $$;
delimiter ;

#select * from territories;

#delete from territories where territoryid = 02903;

#drop trigger trigger_territories;