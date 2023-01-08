begin tran t1
select @@trancount --marca 1

update categories set categoryname = 'Lacteos' where categoryid = 1
update employees set firstname = 'Ana' where employeeid = 1

	save tran punto1 --punto de almacenamiento

	insert categories(categoryname, Description) values('WWWWWW', 'WWWWWW')

	select @@trancount --marca 1

	rollback tran punto1 --deshace solamente la instruccion insert categories
	
	select @@trancount --marca 1

commit tran t1 --aplia solamente el update categories y update employees

select @@trancount --queda en 0

select * from employees where employeeid = 1
select * from categories where categoryid = 1
select * from categories


--anidamiento de transacciones
select @@trancount --regresa 0
begin tran t1
select @@trancount --regresa 1
save tran punto1
select @@trancount --regresa 1
rollback tran punto1
select @@trancount --regresa 1
begin tran t2
select @@trancount --regresa 2
begin tran t3
select @@trancount --regresa 3
commit tran
select @@trancount --regresa 2
rollback tran --se puede usar rollback work
select @@trancount --regresa 0