create database parqueadero_cesde;
use parqueadero_cesde;

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
id_placa varchar(10),
tipo varchar(50),
constraint pk_vehiculos primary key(id_placa),
constraint fk_usuarios foreign key(id_usuario) references usuarios(id_usuario)
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
id_placa varchar(10),
id_estacionamiento int,
constraint pk_movimientos primary key(id_movimiento),
constraint fk_vehiculos foreign key(id_placa) references vehiculos(id_placa),
constraint fk_estacionamientos foreign key(id_estacionamiento) references estacionamientos(id_estacionamiento)
);

-- Consultar todos los usuarios con joins

SELECT id_usuarios ,nombre , primer_apellido,celular, tipo_estatus
FROM usuarios
INNER JOIN usuarios ON usuarios.user_estatus = estatus.id_estatus
WHERE id_usuario = "1234567890";

-- Consultar todos los vehiculos con joins
SELECT id_placa, tipo
INNER JOIN vehiculos ON vehiculos.id_placa = vehiculos,id_placa
WHERE id_placa = 'ABC123';

--consultar todos los estacionamientos con joins
SELECT id_estacionamiento,nombre,lugar
FROM estacionamientos
INNER JOIN estacionamientos ON estacionamientos.nombre = estacionamientos.nombre
WHERE nombre = "Parqueadero Central";

-- Consultar todos los movimientos con joins
SELECT id_movimiento, hora_entrada, hora_salida
FROM movimientos
INNER JOIN movimientos ON movimientos.id_movimiento = movimientos.id_movimiento
WHERE id_movimiento = 1;

-- Consultar todos los movimientos de un vehiculo
SELECT id_movimiento, hora_entrada, hora_salida
FROM movimientos
INNER JOIN movimientos ON movimientos.id_placa = vehiculos.id_placa
WHERE id_placa = 'ABC123';

-- Consultar todos los movimientos de un estacionamiento
SELECT id_movimiento, hora_entrada, hora_salida
FROM movimientos
INNER JOIN movimientos ON movimientos.id_estacionamiento = estacionamientos.id_estacionamiento
WHERE id_estacionamiento = 1;

-- Consultar todos los movimientos de un usuario
SELECT id_movimiento, hora_entrada, hora_salida
FROM movimientos
INNER JOIN movimientos ON movimientos.id_usuario = usuarios.id_usuario
WHERE id_usuario = 1234567890;

--consultar todos los vehiculos de un usuario
SELECT id_placa, tipo
FROM vehiculos
INNER JOIN vehiculos ON vehiculos.id_usuario = usuarios.id_usuario
WHERE id_usuario = 1234567890;

--consultar  estatus del usuario
SELECT tipo_estatus
FROM estatus
INNER JOIN estatus ON estatus.id_estatus = usuarios.user_estatus
WHERE id_usuario = 1234567890;

--consultar  estatus del vehiculo
SELECT tipo_estatus
FROM estatus
INNER JOIN estatus ON estatus.id_estatus = vehiculos.user_estatus
WHERE id_placa = 'ABC123';