use NorthwindBD
create proc sp_customers
as
begin
	select * from customers
end
go
execute sp_customers
--drop procedure sp_customers

use NorthwindBD
create proc sp_orders
as
begin
	select * from orders
end
go
execute sp_orders
--drop procedure sp_orders

select event_time, statement, object_name, server_principal_name
from fn_get_audit_file('C:\Program Files\Audit\NorthwindSelectPROYECTO_8C043116-D5D3-4850-BE75-BE1B2CBB6EEF_0_133151077322180000.sqlaudit',
default, default)
where statement like '%exec%'
order by event_time

select * from fn_get_audit_file('C:\Program Files\Audit\NorthwindSelectPROYECTO_8C043116-D5D3-4850-BE75-BE1B2CBB6EEF_0_133151077322180000.sqlaudit',
default, default)
where statement like '%exec%'
order by event_time