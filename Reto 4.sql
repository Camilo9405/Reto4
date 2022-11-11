-- select * from dual; 
Create table reto4.tb_clientes(
	Id_cliente int AUTO_INCREMENT,
    Num_identificacion varchar(30),
    Tipo_identificacion int,
    Nm_cliente varchar(50),
    Nm_Apellido varchar(50),
    Num_telefono varchar(15),
    Primary Key(Id_cliente),
    FOREIGN key(Tipo_identificacion) references reto4.tb_identificacion(Id_identificacion)
);
create table reto4.tb_identificacion(
    Nombre_identificacion varchar(30),
    Id_identificacion int
);
insert into reto4.tb_identificacion(
    Nombre_identificacion,
    Id_identificacion
)
values("Pasaporte",3);
create table reto4.tb_estado(
    Id_estado int,
    nombre_estado varchar (15)
    )
insert into reto4.tb_estado(
    Id_estado,
    nombre_estado
    )
    ALTER TABLE Reto4.tb_estado
    add primary key (Id_estado)
values(2,"Retirado")

create table reto4.tb_funcionarios(
    Id_funcionarios int AUTO_INCREMENT,
    Nm_nombre varchar (50),
    Nm_apellidos varchar(50),
    Id_identificacion int,
    Numero_identificacion varchar(50),
    Num_telefono varchar(15),
    Val_salario float,
    Id_estado int,
    Fc_ingreso date,
    Fc_salida date,
    Primary Key (Id_funcionarios),
	FOREIGN Key (Id_identificacion) references reto4.tb_identificacion(Id_identificacion),
	FOREIGN Key (Id_estado) references reto4.tb_estado(Id_estado)
    )
    
    insert into reto4.tb_funcionarios(
    Nm_nombre,
    Nm_apellidos,
    Id_identificacion,
    Numero_identificacion,
    Num_telefono,
    Val_salario,
    Id_estado,
    Fc_ingreso,
    Fc_salida
)
	values(
    "Lina",
    "Robayo",
    2,
    "",
    "3142341",
    4.500,
    1,
    cast("2021-05-25"as date),
    cast("2022-09-14"as date),
    )
create table reto4.tb_camiones(
    Id_camion int,
    Nm_placa varchar(10),
    Descripcion_funcion varchar (20),
    marca_carro varchar(20),
    Primary key (Id_camion)
    )
    insert into reto4.tb_camiones(
    Id_camion,
    Nm_placa,
    Descripcion_funcion,
    marca_carro,
    )
    values()

create table reto4.tb_asignaciones(
    Id_asignacion int,
    Id_camion int,
    Id_funcionario int,
    Id_estado int,
    Fc_asignacion date,
    
    Primary key (Id_asignacion)
    )
    
    insert into reto4.tb_asignacion(
    Id_camion,
    
    )
    values()



create table reto4.tb_factura(
    Id_factura int,
    Id_asignacion int,
    Id_cliente int,
    fecha_contratacion date,
    fc_inicio timestamp,
    fc_fin timestamp,
    Primary key (Id_factura),
    FOREIGN Key (Id_asignacion) references reto4.tb_asignaciones(Id_asignacion),
    FOREIGN Key (Id_cliente) references reto4.tb_clientes(Id_cliente)
    )
	
alter table reto4.tb_clientes
add primary key(Id_cliente);
alter table reto4.tb_identificacion
add primary key(Id_identificacion);
select * from reto4.tb_clientes
alter table reto4.tb_clientes
add FOREIGN key(Tipo_identificacion) references reto4.tb_identificacion(Id_identificacion)
insert into reto4.tb_clientes(
    Num_identificacion,
    Tipo_identificacion, 
    Nm_cliente,
    Nm_Apellido, 
    Num_telefono 
)
	values("10298342355",1,"Camilo","Rodriguez","123234534")
   




