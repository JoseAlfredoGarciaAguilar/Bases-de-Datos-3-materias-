--ASOCIACION UNO A UNO
use prueba
create table despachos(
despid int not null,
nombre varchar ( 50 ) not null,
ventanas int not null,
baños char ( 1 )
)
go
create table empleados(
empid int not null,
nombre varchar ( 50 ) not null,
apellidos varchar ( 50 ) not null,
despid int null
)
alter table despachos add constraint pk_despachos primary key ( despid )
go
alter table empleados add
constraint pk_empleados primary key ( empid ),
constraint fk_emp_desp foreign key ( despid ) references despachos ( despid ),
constraint uc_emp_desp unique ( despid )
--insertar en despachos
insert despachos values(100, 'despacho A', 1,0)
insert despachos values(200, 'despacho B', 2,1)
insert despachos values(300, 'despacho C', 0,1)
--insertar en emplados 
insert empleados values(1,'Pedro','Castro', 200)
insert empleados values(2,'Ana', 'Lara', 100)
--marca error, clave del despacho 200 esta duplicado
insert empleados values(3, 'Juan', 'Castro', 200)
--se cambia la clave del despacho a 300
insert empleados values(3, 'Juan', 'Castro', 300)
--marca error al asignarle cualquier despacheo
insert empleados values(4, 'Luis', 'Martinez', 100)
insert empleados values(4, 'Luis', 'Martinez', 200)
insert empleados values(4, 'Luis', 'Martinez', 300)
--se asigna el valor null al despacho de luis
insert empleados values(4, 'Luis', 'Martinez', null)


--unique constraint
USE FERRETERIAS
GO
alter table clientes add
constraint uc_clientes_rfc unique (cterfc),
constraint uc_clientes_curp unique (ctecurp)
go
alter table empleados add
constraint uc_empleados_rfc unique(emprfc),
constraint uc_empleados_curp unique(empcurp)
go

--check constraint
alter table clientes add
constraint cc_clientes_sexo check(ctesexo in ('F','M'),
constraint cc_clientes_rfc_curp check(cterfc<>ctecurp)
go
alter table detalle add
constraint cc_detalle_precio check(precio>0),
constraint cc_detalle_cantidad check(cantidad>0)
go
alter table articulos add
constraint cc_articulos_precio check(artprecio>0)
go
alter table ventas add
constraint cc_ventas_fecha check(fecha>'1-1-2010')


--defualt constraint
alter table empleados add
constraint dc_empleados_dom default('Sin Domicilio') for empdomicilio,
constraint dc_empleados_tel default('Sin telefono') for emptelefono
go
alter table clientes add
constraint dc_clientes_domicilio default('Sin Domicilio') for ctedomicilio,
constraint dc_clientes_telefono default('Sin Telefono') for ctetelefono
go
alter table colonias add constraint dc_colonias_cp default('00000') for colCP
go