create table Autos(
ID int not null,
Nombre varchar(100) not null,
placa char(6) null)
go
alter table autos add constraint pk_autos primary key(id)
--
alter table autos add constraint uk_autos_placa unique(placa)

insert Autos values(1,'ford',null)
insert Autos values(2,'gia',null)
insert Autos values(3,'gia','aa00')
insert Autos values(4,'gia',null)

alter table autos drop constraint uk_autos_placa

create trigger tr_autos_unique
on autos for insert as
declare @placa char(6)

select @placa = placa from inserted

if (@placa is not null)
begin
	if(select count(*) from autos where placa = @placa) > 1
	begin
		rollback tran
		raiserror('placa duplica',16,1)
	end
end