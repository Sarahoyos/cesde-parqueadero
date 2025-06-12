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
id_usuario int,
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

--Insersi�n datos

-- ESTATUS
INSERT INTO estatus (tipo_estatus) VALUES ('Activo');
INSERT INTO estatus (tipo_estatus) VALUES ('Inactivo');

-- USUARIOS
INSERT INTO usuarios (id_usuario, nombre, segundo_nombre, primer_apellido, segundo_apellido, correo, celular, user_estatus) VALUES (2756317213, 'Jorge', 'Mar�a', 'Castro', 'Torres', 'jorgecastro@fake.com', '3433218196', 1);
INSERT INTO usuarios (id_usuario, nombre, segundo_nombre, primer_apellido, segundo_apellido, correo, celular, user_estatus) VALUES (137978094, 'Felipe', 'Javier', 'Galindo', 'Garc�a', 'felipegalindo@fake.com', '3890838637', 2);
INSERT INTO usuarios (id_usuario, nombre, segundo_nombre, primer_apellido, segundo_apellido, correo, celular, user_estatus) VALUES (3470967357, 'Rubiela', NULL, 'G�mez', 'Torres', 'rubielagomez@fake.com', '3542351161', 2);
INSERT INTO usuarios (id_usuario, nombre, segundo_nombre, primer_apellido, segundo_apellido, correo, celular, user_estatus) VALUES (7944927891, 'Jos�', NULL, 'Rodr�guez', 'Ram�rez', 'joserodriguez@fake.com', '3078161849', 2);
INSERT INTO usuarios (id_usuario, nombre, segundo_nombre, primer_apellido, segundo_apellido, correo, celular, user_estatus) VALUES (2489708607, 'Jes�s', NULL, 'V�squez', 'Torres', 'jesusvasquez@fake.com', '3034131647', 2);
INSERT INTO usuarios (id_usuario, nombre, segundo_nombre, primer_apellido, segundo_apellido, correo, celular, user_estatus) VALUES (5003561321, 'Juan', 'Edwin', 'Rodr�guez', 'Cifuentes', 'juanrodriguez@fake.com', '3419283276', 2);
INSERT INTO usuarios (id_usuario, nombre, segundo_nombre, primer_apellido, segundo_apellido, correo, celular, user_estatus) VALUES (2402080953, 'Jhon', NULL, 'Herrera', 'S�nchez', 'jhonherrera@fake.com', '3030564139', 2);
INSERT INTO usuarios (id_usuario, nombre, segundo_nombre, primer_apellido, segundo_apellido, correo, celular, user_estatus) VALUES (9513158639, 'Ren�', 'Gladys', 'L�pez', 'L�pez', 'renelopez@fake.com', '3724238849', 2);
INSERT INTO usuarios (id_usuario, nombre, segundo_nombre, primer_apellido, segundo_apellido, correo, celular, user_estatus) VALUES (6020379415, 'Edgar', 'Alberto', 'Ar�valo', 'Ariza', 'edgararevalo@fake.com', '3287101226', 1);
INSERT INTO usuarios (id_usuario, nombre, segundo_nombre, primer_apellido, segundo_apellido, correo, celular, user_estatus) VALUES (5957530309, 'Andr�s', 'Franco', 'Rivera', 'Caicedo', 'andresrivera@fake.com', '3784801845', 1);
INSERT INTO usuarios (id_usuario, nombre, segundo_nombre, primer_apellido, segundo_apellido, correo, celular, user_estatus) VALUES (5565540744, '�lvaro', 'David', 'Prieto', 'Escobar', 'alvaroprieto@fake.com', '3048281489', 1);
INSERT INTO usuarios (id_usuario, nombre, segundo_nombre, primer_apellido, segundo_apellido, correo, celular, user_estatus) VALUES (4961406973, 'Diego', NULL, 'G�mez', 'Torres', 'diegogomez@fake.com', '3880957015', 2);
INSERT INTO usuarios (id_usuario, nombre, segundo_nombre, primer_apellido, segundo_apellido, correo, celular, user_estatus) VALUES (1038439863, 'Nancy', 'Ana', 'Moreno', 'L�pez', 'nancymoreno@fake.com', '3911718227', 1);
INSERT INTO usuarios (id_usuario, nombre, segundo_nombre, primer_apellido, segundo_apellido, correo, celular, user_estatus) VALUES (9738344131, 'Yaneth', NULL, 'Acevedo', 'Morales', 'yanethacevedo@fake.com', '3638346578', 2);
INSERT INTO usuarios (id_usuario, nombre, segundo_nombre, primer_apellido, segundo_apellido, correo, celular, user_estatus) VALUES (529709079, 'Eliana', 'Laura', 'Ortiz', 'Cuesta', 'elianaortiz@fake.com', '3509839301', 1);
INSERT INTO usuarios (id_usuario, nombre, segundo_nombre, primer_apellido, segundo_apellido, correo, celular, user_estatus) VALUES (993297492, 'Jes�s', NULL, 'Le�n', 'P�rez', 'jesusleon@fake.com', '3518347382', 2);
INSERT INTO usuarios (id_usuario, nombre, segundo_nombre, primer_apellido, segundo_apellido, correo, celular, user_estatus) VALUES (1758309234, 'Miguel', 'Claudia', 'Rivera', 'Villamil', 'miguelrivera@fake.com', '3656670106', 2);
INSERT INTO usuarios (id_usuario, nombre, segundo_nombre, primer_apellido, segundo_apellido, correo, celular, user_estatus) VALUES (479306919, 'Jorge', 'Luis', 'Duque', 'Ben�tez', 'jorgeduque@fake.com', '3872624731', 2);
INSERT INTO usuarios (id_usuario, nombre, segundo_nombre, primer_apellido, segundo_apellido, correo, celular, user_estatus) VALUES (430514789, 'Jaime', NULL, 'Torres', 'G�mez', 'jaimetorres@fake.com', '3801326773', 2);
INSERT INTO usuarios (id_usuario, nombre, segundo_nombre, primer_apellido, segundo_apellido, correo, celular, user_estatus) VALUES (3885962612, 'Valentina', 'Alba', 'Rojas', 'Valderrama', 'valentinarojas@fake.com', '3064746872', 1);

-- VEHICULOS
INSERT INTO vehiculos (id_placa, tipo, id_usuario) VALUES ('ZPD537', 'Autom�vil', 2756317213);
INSERT INTO vehiculos (id_placa, tipo, id_usuario) VALUES ('PVJ242', 'Autom�vil', 2756317213);
INSERT INTO vehiculos (id_placa, tipo, id_usuario) VALUES ('BLZ849', 'Autom�vil', 137978094);
INSERT INTO vehiculos (id_placa, tipo, id_usuario) VALUES ('GFF532', 'Motocicleta', 137978094);
INSERT INTO vehiculos (id_placa, tipo, id_usuario) VALUES ('OKY012', 'Autom�vil', 137978094);
INSERT INTO vehiculos (id_placa, tipo, id_usuario) VALUES ('YYM691', 'Motocicleta', 3470967357);
INSERT INTO vehiculos (id_placa, tipo, id_usuario) VALUES ('JAR784', 'Autom�vil', 7944927891);
INSERT INTO vehiculos (id_placa, tipo, id_usuario) VALUES ('XPV184', 'Autom�vil', 7944927891);
INSERT INTO vehiculos (id_placa, tipo, id_usuario) VALUES ('KDA146', 'Autom�vil', 7944927891);
INSERT INTO vehiculos (id_placa, tipo, id_usuario) VALUES ('GGO482', 'Autom�vil', 2489708607);
INSERT INTO vehiculos (id_placa, tipo, id_usuario) VALUES ('MJX489', 'Autom�vil', 5003561321);
INSERT INTO vehiculos (id_placa, tipo, id_usuario) VALUES ('AMU288', 'Autom�vil', 5003561321);
INSERT INTO vehiculos (id_placa, tipo, id_usuario) VALUES ('XZT701', 'Motocicleta', 5003561321);
INSERT INTO vehiculos (id_placa, tipo, id_usuario) VALUES ('KFF303', 'Autom�vil', 2402080953);
INSERT INTO vehiculos (id_placa, tipo, id_usuario) VALUES ('XII718', 'Autom�vil', 9513158639);
INSERT INTO vehiculos (id_placa, tipo, id_usuario) VALUES ('QHM782', 'Autom�vil', 9513158639);
INSERT INTO vehiculos (id_placa, tipo, id_usuario) VALUES ('WUS638', 'Motocicleta', 9513158639);
INSERT INTO vehiculos (id_placa, tipo, id_usuario) VALUES ('QPX346', 'Motocicleta', 6020379415);
INSERT INTO vehiculos (id_placa, tipo, id_usuario) VALUES ('HPO787', 'Motocicleta', 6020379415);
INSERT INTO vehiculos (id_placa, tipo, id_usuario) VALUES ('LJO150', 'Autom�vil', 6020379415);
INSERT INTO vehiculos (id_placa, tipo, id_usuario) VALUES ('ETO930', 'Motocicleta', 5957530309);
INSERT INTO vehiculos (id_placa, tipo, id_usuario) VALUES ('CVE031', 'Autom�vil', 5957530309);
INSERT INTO vehiculos (id_placa, tipo, id_usuario) VALUES ('QFN834', 'Motocicleta', 5957530309);
INSERT INTO vehiculos (id_placa, tipo, id_usuario) VALUES ('KEP829', 'Autom�vil', 5565540744);
INSERT INTO vehiculos (id_placa, tipo, id_usuario) VALUES ('GGQ763', 'Motocicleta', 5565540744);
INSERT INTO vehiculos (id_placa, tipo, id_usuario) VALUES ('ADU656', 'Motocicleta', 4961406973);
INSERT INTO vehiculos (id_placa, tipo, id_usuario) VALUES ('ZUV010', 'Autom�vil', 4961406973);
INSERT INTO vehiculos (id_placa, tipo, id_usuario) VALUES ('MIC133', 'Motocicleta', 1038439863);
INSERT INTO vehiculos (id_placa, tipo, id_usuario) VALUES ('RDP262', 'Autom�vil', 9738344131);
INSERT INTO vehiculos (id_placa, tipo, id_usuario) VALUES ('GDP178', 'Autom�vil', 9738344131);
INSERT INTO vehiculos (id_placa, tipo, id_usuario) VALUES ('WPK801', 'Autom�vil', 9738344131);
INSERT INTO vehiculos (id_placa, tipo, id_usuario) VALUES ('NZD677', 'Motocicleta', 529709079);
INSERT INTO vehiculos (id_placa, tipo, id_usuario) VALUES ('YQY260', 'Autom�vil', 529709079);
INSERT INTO vehiculos (id_placa, tipo, id_usuario) VALUES ('SUY746', 'Motocicleta', 529709079);
INSERT INTO vehiculos (id_placa, tipo, id_usuario) VALUES ('MSN872', 'Autom�vil', 993297492);
INSERT INTO vehiculos (id_placa, tipo, id_usuario) VALUES ('DVU098', 'Motocicleta', 1758309234);
INSERT INTO vehiculos (id_placa, tipo, id_usuario) VALUES ('EGH009', 'Autom�vil', 1758309234);
INSERT INTO vehiculos (id_placa, tipo, id_usuario) VALUES ('FLE208', 'Motocicleta', 479306919);
INSERT INTO vehiculos (id_placa, tipo, id_usuario) VALUES ('ZHK913', 'Autom�vil', 479306919);
INSERT INTO vehiculos (id_placa, tipo, id_usuario) VALUES ('CNF399', 'Motocicleta', 430514789);
INSERT INTO vehiculos (id_placa, tipo, id_usuario) VALUES ('HUQ699', 'Autom�vil', 430514789);
INSERT INTO vehiculos (id_placa, tipo, id_usuario) VALUES ('QZI353', 'Autom�vil', 430514789);
INSERT INTO vehiculos (id_placa, tipo, id_usuario) VALUES ('WEA475', 'Autom�vil', 3885962612);
INSERT INTO vehiculos (id_placa, tipo, id_usuario) VALUES ('GEI799', 'Autom�vil', 3885962612);

-- ESTACIONAMIENTOS
INSERT INTO estacionamientos (nombre, lugar) VALUES ('Estacionamiento 1', 'Medellin');
INSERT INTO estacionamientos (nombre, lugar) VALUES ('Estacionamiento 2', 'Bello');
INSERT INTO estacionamientos (nombre, lugar) VALUES ('Estacionamiento 3', 'La estrella');
INSERT INTO estacionamientos (nombre, lugar) VALUES ('Estacionamiento 4', 'Sabaneta');

-- MOVIMIENTOS
INSERT INTO movimientos (hora_entrada, hora_salida, id_placa, id_estacionamiento) VALUES ('2025-03-09 18:29:56', '2025-03-09 21:29:56', 'DVU098', 2);
INSERT INTO movimientos (hora_entrada, hora_salida, id_placa, id_estacionamiento) VALUES ('2025-01-14 08:35:26', '2025-01-14 11:35:26', 'HPO787', 2);
INSERT INTO movimientos (hora_entrada, hora_salida, id_placa, id_estacionamiento) VALUES ('2025-02-17 10:26:52', '2025-02-17 14:26:52', 'KFF303', 3);
INSERT INTO movimientos (hora_entrada, hora_salida, id_placa, id_estacionamiento) VALUES ('2025-03-13 18:07:15', '2025-03-13 19:07:15', 'WUS638', 1);
INSERT INTO movimientos (hora_entrada, hora_salida, id_placa, id_estacionamiento) VALUES ('2025-02-25 08:08:15', '2025-02-25 11:08:15', 'HUQ699', 4);
INSERT INTO movimientos (hora_entrada, hora_salida, id_placa, id_estacionamiento) VALUES ('2025-01-31 15:09:12', '2025-01-31 18:09:12', 'BLZ849', 1);
INSERT INTO movimientos (hora_entrada, hora_salida, id_placa, id_estacionamiento) VALUES ('2025-03-27 02:05:17', '2025-03-27 04:05:17', 'KDA146', 3);
INSERT INTO movimientos (hora_entrada, hora_salida, id_placa, id_estacionamiento) VALUES ('2025-04-16 11:34:45', '2025-04-16 12:34:45', 'RDP262', 4);
INSERT INTO movimientos (hora_entrada, hora_salida, id_placa, id_estacionamiento) VALUES ('2025-02-28 17:49:55', '2025-02-28 19:49:55', 'XPV184', 1);
INSERT INTO movimientos (hora_entrada, hora_salida, id_placa, id_estacionamiento) VALUES ('2025-04-29 18:37:29', '2025-04-29 21:37:29', 'MSN872', 1);
INSERT INTO movimientos (hora_entrada, hora_salida, id_placa, id_estacionamiento) VALUES ('2025-05-07 23:45:01', '2025-05-08 03:45:01', 'FLE208', 2);
INSERT INTO movimientos (hora_entrada, hora_salida, id_placa, id_estacionamiento) VALUES ('2025-04-13 17:02:32', '2025-04-13 20:02:32', 'KDA146', 1);
INSERT INTO movimientos (hora_entrada, hora_salida, id_placa, id_estacionamiento) VALUES ('2025-01-02 12:27:29', '2025-01-02 15:27:29', 'KEP829', 1);
INSERT INTO movimientos (hora_entrada, hora_salida, id_placa, id_estacionamiento) VALUES ('2025-05-10 16:28:05', '2025-05-10 17:28:05', 'KFF303', 2);
INSERT INTO movimientos (hora_entrada, hora_salida, id_placa, id_estacionamiento) VALUES ('2025-04-18 16:38:02', '2025-04-18 18:38:02', 'QFN834', 4);
INSERT INTO movimientos (hora_entrada, hora_salida, id_placa, id_estacionamiento) VALUES ('2025-02-28 03:12:21', '2025-02-28 05:12:21', 'QHM782', 2);
INSERT INTO movimientos (hora_entrada, hora_salida, id_placa, id_estacionamiento) VALUES ('2025-05-09 19:36:55', '2025-05-09 21:36:55', 'ZUV010', 1);
INSERT INTO movimientos (hora_entrada, hora_salida, id_placa, id_estacionamiento) VALUES ('2025-01-21 02:44:53', '2025-01-21 04:44:53', 'CVE031', 4);
INSERT INTO movimientos (hora_entrada, hora_salida, id_placa, id_estacionamiento) VALUES ('2025-01-27 01:50:31', '2025-01-27 02:50:31', 'QPX346', 2);
INSERT INTO movimientos (hora_entrada, hora_salida, id_placa, id_estacionamiento) VALUES ('2025-02-21 08:30:01', '2025-02-21 12:30:01', 'GGQ763', 1);
INSERT INTO movimientos (hora_entrada, hora_salida, id_placa, id_estacionamiento) VALUES ('2025-01-23 09:56:11', '2025-01-23 13:56:11', 'XII718', 2);
INSERT INTO movimientos (hora_entrada, hora_salida, id_placa, id_estacionamiento) VALUES ('2025-01-21 18:49:25', '2025-01-21 20:49:25', 'QFN834', 3);
INSERT INTO movimientos (hora_entrada, hora_salida, id_placa, id_estacionamiento) VALUES ('2025-04-18 10:12:32', '2025-04-18 12:12:32', 'XII718', 1);
INSERT INTO movimientos (hora_entrada, hora_salida, id_placa, id_estacionamiento) VALUES ('2025-01-31 04:26:23', '2025-01-31 07:26:23', 'ADU656', 3);
INSERT INTO movimientos (hora_entrada, hora_salida, id_placa, id_estacionamiento) VALUES ('2025-02-22 21:14:04', '2025-02-23 00:14:04', 'OKY012', 3);
INSERT INTO movimientos (hora_entrada, hora_salida, id_placa, id_estacionamiento) VALUES ('2025-02-24 17:04:45', '2025-02-24 20:04:45', 'QZI353', 4);
INSERT INTO movimientos (hora_entrada, hora_salida, id_placa, id_estacionamiento) VALUES ('2025-04-28 10:42:40', '2025-04-28 13:42:40', 'PVJ242', 1);
INSERT INTO movimientos (hora_entrada, hora_salida, id_placa, id_estacionamiento) VALUES ('2025-02-10 21:36:19', '2025-02-10 22:36:19', 'AMU288', 3);
INSERT INTO movimientos (hora_entrada, hora_salida, id_placa, id_estacionamiento) VALUES ('2025-03-08 13:56:16', '2025-03-08 16:56:16', 'JAR784', 4);
INSERT INTO movimientos (hora_entrada, hora_salida, id_placa, id_estacionamiento) VALUES ('2025-02-09 12:49:56', '2025-02-09 13:49:56', 'ETO930', 4);
INSERT INTO movimientos (hora_entrada, hora_salida, id_placa, id_estacionamiento) VALUES ('2025-05-04 03:45:47', '2025-05-04 06:45:47', 'GGQ763', 2);
INSERT INTO movimientos (hora_entrada, hora_salida, id_placa, id_estacionamiento) VALUES ('2025-02-21 06:15:14', '2025-02-21 07:15:14', 'BLZ849', 4);
INSERT INTO movimientos (hora_entrada, hora_salida, id_placa, id_estacionamiento) VALUES ('2025-04-09 03:22:36', '2025-04-09 06:22:36', 'SUY746', 2);
INSERT INTO movimientos (hora_entrada, hora_salida, id_placa, id_estacionamiento) VALUES ('2025-04-05 20:43:24', '2025-04-05 23:43:24', 'MIC133', 1);
INSERT INTO movimientos (hora_entrada, hora_salida, id_placa, id_estacionamiento) VALUES ('2025-02-18 18:18:35', '2025-02-18 19:18:35', 'CNF399', 3);
INSERT INTO movimientos (hora_entrada, hora_salida, id_placa, id_estacionamiento) VALUES ('2025-01-10 20:44:24', '2025-01-11 00:44:24', 'LJO150', 3);
INSERT INTO movimientos (hora_entrada, hora_salida, id_placa, id_estacionamiento) VALUES ('2025-01-18 22:08:31', '2025-01-19 01:08:31', 'ETO930', 4);
INSERT INTO movimientos (hora_entrada, hora_salida, id_placa, id_estacionamiento) VALUES ('2025-05-04 03:58:47', '2025-05-04 05:58:47', 'DVU098', 2);
INSERT INTO movimientos (hora_entrada, hora_salida, id_placa, id_estacionamiento) VALUES ('2025-03-24 06:00:22', '2025-03-24 08:00:22', 'ZUV010', 4);
INSERT INTO movimientos (hora_entrada, hora_salida, id_placa, id_estacionamiento) VALUES ('2025-02-23 17:25:23', '2025-02-23 21:25:23', 'CNF399', 3);
INSERT INTO movimientos (hora_entrada, hora_salida, id_placa, id_estacionamiento) VALUES ('2025-01-09 13:27:33', '2025-01-09 16:27:33', 'DVU098', 1);
INSERT INTO movimientos (hora_entrada, hora_salida, id_placa, id_estacionamiento) VALUES ('2025-01-01 16:31:26', '2025-01-01 20:31:26', 'HPO787', 2);
INSERT INTO movimientos (hora_entrada, hora_salida, id_placa, id_estacionamiento) VALUES ('2025-03-06 18:29:10', '2025-03-06 22:29:10', 'FLE208', 3);
INSERT INTO movimientos (hora_entrada, hora_salida, id_placa, id_estacionamiento) VALUES ('2025-01-26 09:39:49', '2025-01-26 11:39:49', 'RDP262', 4);
INSERT INTO movimientos (hora_entrada, hora_salida, id_placa, id_estacionamiento) VALUES ('2025-05-04 17:09:48', '2025-05-04 19:09:48', 'YQY260', 4);
INSERT INTO movimientos (hora_entrada, hora_salida, id_placa, id_estacionamiento) VALUES ('2025-02-20 20:48:00', '2025-02-20 23:48:00', 'WEA475', 1);
INSERT INTO movimientos (hora_entrada, hora_salida, id_placa, id_estacionamiento) VALUES ('2025-02-01 09:01:35', '2025-02-01 10:01:35', 'YQY260', 3);
INSERT INTO movimientos (hora_entrada, hora_salida, id_placa, id_estacionamiento) VALUES ('2025-03-27 19:06:09', '2025-03-27 21:06:09', 'QHM782', 3);
INSERT INTO movimientos (hora_entrada, hora_salida, id_placa, id_estacionamiento) VALUES ('2025-04-18 03:01:01', '2025-04-18 04:01:01', 'XZT701', 2);
INSERT INTO movimientos (hora_entrada, hora_salida, id_placa, id_estacionamiento) VALUES ('2025-03-25 01:09:55', '2025-03-25 05:09:55', 'BLZ849', 2);


--Verificacion de que si se hayan insertado los datos

SELECT * FROM estacionamientos;
SELECT * FROM estatus;
SELECT * FROM movimientos;
SELECT * FROM usuarios;
SELECT * FROM vehiculos;

-- Consultar todos los usuarios con joins

SELECT 
    usu.id_usuario, 
    usu.nombre, 
    usu.primer_apellido, 
    usu.celular, 
    est.tipo_estatus
FROM usuarios usu
INNER JOIN estatus est ON usu.user_estatus = est.id_estatus;

-- Vehiculos de un ID

SELECT 
    veh.id_placa, 
    veh.tipo
FROM vehiculos veh
INNER JOIN usuarios usu ON veh.id_usuario = usu.id_usuario
WHERE usu.id_usuario = 430514789;

--consultar todos los estacionamientos con joins
SELECT *
FROM movimientos mov
LEFT JOIN estacionamientos est ON mov.id_estacionamiento = est.id_estacionamiento;

-- Consultar todos los movimientos con joins
SELECT *
FROM movimientos mov
LEFT JOIN vehiculos veh ON veh.id_placa = mov.id_placa
LEFT JOIN usuarios usu ON usu.id_usuario = veh.id_usuario;

-- Consultar todos los movimientos de un vehiculo
SELECT *
FROM usuarios usu
INNER JOIN movimientos mov ON mov.id_placa = mov.id_placa
WHERE id_placa = 'DVU098' AND id_usuario=479306919;

-- Consultar todos los movimientos de un estacionamiento
SELECT mov.id_movimiento, mov.hora_entrada, mov.hora_salida, est.nombre
FROM movimientos mov
INNER JOIN estacionamientos est  ON mov.id_estacionamiento = est.id_estacionamiento
WHERE mov.id_estacionamiento = 1;


-- Consultar todos los movimientos de un usuario
SELECT usu.nombre, mov.id_placa,veh.tipo, mov.id_movimiento, mov.hora_entrada, mov.hora_salida
FROM movimientos mov
INNER JOIN vehiculos veh ON mov.id_placa = veh.id_placa
INNER JOIN usuarios usu ON veh.id_usuario = usu.id_usuario
WHERE usu.id_usuario = 430514789;


--consultar todos los vehiculos de un usuario
SELECT usu.nombre,usu.primer_apellido,usu.segundo_apellido, veh.id_placa, veh.tipo
FROM usuarios usu
INNER JOIN vehiculos veh ON usu.id_usuario = veh.id_usuario
WHERE usu.id_usuario = 430514789;


--consultar  estatus del usuario
SELECT *
FROM usuarios usu
LEFT JOIN estatus es ON usu.user_estatus = es.id_estatus
WHERE usu.id_usuario = 430514789;

--Consulta compleja
SELECT 
    u.id_usuario,
    CONCAT(u.nombre, ' ', ISNULL(u.segundo_nombre, ''), ' ', u.primer_apellido, ' ', ISNULL(u.segundo_apellido, '')) AS nombre_completo,
    u.correo,
    COUNT(DISTINCT v.id_placa) AS total_vehiculos,
    COUNT(m.id_movimiento) AS total_visitas,
    AVG(DATEDIFF(MINUTE, m.hora_entrada, m.hora_salida)) AS promedio_duracion_minutos
FROM usuarios u
INNER JOIN estatus e ON u.user_estatus = e.id_estatus
INNER JOIN vehiculos v ON u.id_usuario = v.id_usuario
INNER JOIN movimientos m ON v.id_placa = m.id_placa
WHERE e.tipo_estatus = 'Activo'
GROUP BY u.id_usuario, u.nombre, u.segundo_nombre, u.primer_apellido, u.segundo_apellido, u.correo
ORDER BY total_visitas DESC;

--Proceso almacenado

--Proceso almacenbado

CREATE OR ALTER PROCEDURE ObtenerMovimientosUsuario
    @id_placa VARCHAR(20),
    @id_usuario BIGINT
AS
BEGIN
    SET NOCOUNT ON;

    -- Consulta 1: Informaci�n del usuario
    SELECT * 
    FROM usuarios 
    WHERE id_usuario = @id_usuario;

    -- Consulta 2: Movimientos de la placa
    SELECT * 
    FROM movimientos 
    WHERE id_placa = @id_placa;
END;

EXEC ObtenerMovimientosUsuario @id_placa = 'DVU098', @id_usuario = 137978094;