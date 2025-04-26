create database parqueaderos_cesde;
use parqueaderos_cesde;

create table estatus(
id_estatus int identity(1,1), 
tipo_estatus varchar(50),
constraint pk_estatus primary key(id_estatus)
);

create table usuarios(
id_usuario int,
nombre varchar(50),
segundo_nombre varchar(50),
primer_apellido varchar(50),
segundo_apellido varchar(50),
correo varchar(100),
celular varchar(15),
user_estatus int,
constraint pk_usuarios primary key(id_usuario),
constraint fk_estatus foreign key(user_estatus) references estatus(id_estatus)
);

create table vehiculos(
id_placa int and varchar(10),
tipo varchar(50),
constraint pk_vechiculos primary key(id_placa),
constraint fk_usuarios foreign key(id_placa) references usuarios(id_usuario)
);

create table estacionamientos(
id_estacionamiento int identity(1,1),
nombre varchar(50),
lugar varchar(50),
constraint pk_estacionamientos primary key(id_estacionamiento)
);

create table movimientos(
id_movimiento int identity(1,1),
hora_entrada datetime,
hora_salida datetime,
id_placa int,
id_estacionamiento int,
constraint pk_movimientos primary key(id_movimiento),
constraint fk_vehiculos foreign key(id_placa) references vehiculos(id_placa),
constraint fk_estacionamientos foreign key(id_estacionamiento) references estacionamientos(id_estacionamiento)
);



