use NorthwindM
--select * from NorthwindM.dbo.employees

--Un publicador si puede modificar un suscriptor
update NorthwindM.dbo.employees set lastname = 'Garcia'
where employeeid = 1

--Un suscriptor no puede modificar un publicador
EXEC sp_addlinkedserver @server = N'172.16.2.102', @srvproduct = N'SQL Server';
EXEC sp_serveroption '172.16.2.102', 'DATA ACCESS', TRUE

update [172.16.12.101\SQLALF].NorthWindIns.dbo.Employees set lastname = 'Salazar'
where employeeid = 1

select lastname from employees
where employeeid = 1

select lastname from [172.16.12.101\SQLALF].NorthWindIns.dbo.Employees
where employeeid = 1