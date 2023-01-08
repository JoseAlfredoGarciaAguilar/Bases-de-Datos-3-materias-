use NorthwindBD
select * from categories
select * from customers
select * from employees
select * from employeeterritories
select * from [order details]
select * from orders
select * from products
select * from region
select * from shippers
select * from suppliers
select * from territories

select event_time, statement, object_name, server_principal_name
from fn_get_audit_file('C:\Program Files\Audit\NorthwindSelectPROYECTO_8C043116-D5D3-4850-BE75-BE1B2CBB6EEF_0_133151077322180000.sqlaudit'
, default, default)
where statement like 'select%'
order by event_time

select *
from fn_get_audit_file('C:\Program Files\Audit\NorthwindSelectPROYECTO_8C043116-D5D3-4850-BE75-BE1B2CBB6EEF_0_133151077322180000.sqlaudit'
, default, default)
where statement like 'select%'
order by event_time