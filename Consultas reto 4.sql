-- facturacion total por cliente
Select 
concat(Nm_cliente, cli.Nm_apellido) as Nombre_Cliente,
ide.Nombre_identificacion as Tipo_Identificacion,
cli.Num_identificacion as Numero_identificacion,
est.nombre_estado as Estado_Contrato,
cam.marca_carro as Carro_Asignado,
fac.fecha_contratacion as Inicio_contrato,
TIMESTAMPDIFF(DAY,fac.fc_inicio , fac.fc_fin)* fun.val_salario as Valor_contrato

from reto4.tb_factura fac
inner join reto4.tb_clientes cli on fac.Id_cliente = cli.Id_cliente 
inner join reto4.tb_asignaciones asig on fac.Id_asignacion = asig.Id_asignacion
inner join reto4.tb_identificacion ide on ide.Id_identificacion = cli.tipo_identificacion
inner join reto4.tb_estado est on est.Id_estado = asig.Id_estado
inner join reto4.tb_camiones cam on cam.Id_camion = asig.Id_camion
inner join reto4.tb_funcionarios fun on asig.Id_funcionario = fun.Id_funcionarios
;

-- Asignacion total de Conductores
Select 
concat(Nm_nombre, Nm_apellidos) as Nombre_Conductores, 
fun.Fc_ingreso as Fecha_ingreso,
fun.Fc_salida as Fecha_retiro,
cam.marca_carro,
cam.Descripcion_funcion

from reto4.tb_funcionarios fun
inner join reto4.tb_asignaciones asig on asig.id_funcionario=fun.id_funcionarios
inner join reto4.tb_camiones cam on cam.Id_camion=asig.Id_camion
;
-- Reporte general de Nomina
Select 
concat (Nm_nombre, Nm_apellidos) as Nombre_Funcionarios,
est.nombre_estado as Estado,
fun.Val_salario as Salario,
fun.Fc_ingreso as fecha_ingreso

from reto4.tb_funcionarios fun 
inner join reto4.tb_estado est on est.id_estado=fun.id_estado
order by fun.Fc_ingreso asc
;
-- Reporte general Funcionarios retirados
Select 
concat (Nm_nombre, Nm_apellidos) as Nombre_Funcionarios,
est.nombre_estado as Estado,
fun.Val_salario as Salario,
fun.Fc_ingreso as fecha_ingreso

from reto4.tb_funcionarios fun 
inner join reto4.tb_estado est on est.id_estado=fun.id_estado
where fun.Fc_salida is not null order by fun.Fc_ingreso asc
;







