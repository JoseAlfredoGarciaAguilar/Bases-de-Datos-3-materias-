use NorthwindM
--select * from NorthwindM.dbo.employees

--Un publicador si puede modificar un suscriptor
update NorthwindM.dbo.employees set lastname = 'Ozuna'
where employeeid = 1

--Un suscriptor no puede modificar un publicador
update [DESKTOP-85GI0HU\SQLALF].NorthWindIns.dbo.Employees set lastname = 'Salazar'
where employeeid = 1

select lastname from employees
where employeeid = 1

select lastname from [DESKTOP-85GI0HU\SQLALF].NorthWindIns.dbo.Employees
where employeeid = 1

EXEC sp_addlinkedserver @server = N'DESKTOP-85GI0HU\SQLALF', @srvproduct = N'SQL Server';
EXEC sp_serveroption 'DESKTOP-85GI0HU\SQLALF', 'DATA ACCESS', TRUE
