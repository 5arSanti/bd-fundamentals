INSERT INTO tipo_zapatos (id_tipo_zapato, nombre) VALUES 
 
(1001, 'Formal'), 
(1002, 'Casual'), 
(1003, 'Pisahuevos'), 
(1004, 'Sandalias'), 
(1005, 'Tenis'), 
(1006, 'Bota de trabajo'), 
(1007, 'Bota treckking'), 
(1008, 'Oxford'), 
(1009, 'Brogues'), 
(1010, 'Mules'); 
 
 
 
INSERT INTO tipo_producto (id_tipo_producto, nombre) VALUES 
 
(2001, 'Medias'), 
(2002, 'Correas'), 
(2003, 'Billetera'), 
(2004, 'Productos para el cuidado del cuero'), 
(2005, 'calzado'), 
(2006, 'Joyas'), 
(2007, 'Perfumes'), 
(2008, 'Cosméticos'), 
(2009, 'Lencería'), 
(2010, 'Tecnología');  
 
 
INSERT INTO color_producto (id_color_producto, nombre) VALUES 
 
(3001, 'Azul Oscuro'), 
(3002, 'Negro'), 
(3003, 'Marrón'), 
(3004, 'Piel'), 
(3005, 'Verde Olivo'), 
(3006, 'Naranja '), 
(3007, 'Terracota'), 
(3008, 'Rosa'), 
(3009, 'Morado'), 
(3010, 'Gris'); 
 
 
 
 
INSERT INTO ciudades (id_ciudad, nombre) VALUES 
 
(4001, 'Bogotá'), 
(4002, 'Cali'), 
(4003, 'Medellín'), 
(4004, 'Barranquilla'), 
(4005, 'Bucaramanga'), 
(4006, 'Santa Marta'), 
(4007, 'Cartagena'), 
(4008, 'Pasto'), 
(4009, 'Neiva'), 
(4010, 'Sincelejo'), 
(4011, 'Villavicencio'), 
(4012, 'Ibagué'); 
 
 
 
INSERT INTO dias (id_dia, nombre) VALUES 
 
(5001, 'Lunes'), 
(5002, 'Martes'), 
(5003, 'Miércoles'), 
(5004, 'Jueves'), 
(5005, 'Viernes'), 
(5006, 'Sábado'), 
(5007, 'Domingo'); 
 
 
 
INSERT INTO zonas (id_zona, nombre, id_ciudad) VALUES 
 
(6001, 'Norte', 4001), 
(6002, 'Sur', 4001), 
(6003, 'Centro', 4001), 
(6004, 'Norte', 4002), 
(6005, 'Sur', 4002), 
(6006, 'Centro', 4002), 
(6007, 'Norte', 4003), 
(6008, 'Sur', 4003), 
(6009, 'Centro', 4003), 
(6010, 'Norte', 4003); 
 
 
 
INSERT INTO camiones (placa, cantidad_productos, id_zona) VALUES 
 
('ABC-123', 100, 6001), 
('DEF-456', 200, 6002), 
('GHI-789', 150, 6003), 
('JKL-012', 80, 6004), 
('MNO-345', 120, 6005), 
('PQR-678', 90, 6006), 
('STU-890', 110, 6007), 
('VWX-012', 130, 6008), 
('YZX-345', 140, 6009), 
('QWE-678', 160, 6010); 
 
 
 
INSERT INTO locales (id_local, nombre, id_zona, placa_camion, id_ciudad) VALUES 
 
(8001, 'Local 1', 6001, 'ABC-123', 4001), 
(8002, 'Local 2', 6002, 'DEF-456', 4001), 
(8003, 'Local 3', 6003, 'GHI-789', 4001), 
(8004, 'Local 4', 6004, 'JKL-012', 4001), 
(8005, 'Local 5', 6005, 'MNO-345', 4001), 
(8006, 'Local 6', 6006, 'PQR-678', 4002), 
(8007, 'Local 7', 6007, 'STU-890', 4002), 
(8008, 'Local 8', 6008, 'VWX-012', 4002), 
(8009, 'Local 9', 6009, 'YZX-345', 4002), 
(8010, 'Local 10', 6010, 'QWE-678', 4002); 
 
 
 
INSERT INTO asesores (numero_cedula, nombres, apellidos, sexo, direccion, telefono_movil, id_local, id_ciudad_origen, id_ciudad_residencia) VALUES 
 
(511001, 'Juan', 'Pérez', 'Masculino', 'Calle 10 # 1-23', '3123456789', 8001, 4001, 4003), 
(511002, 'María', 'Rodríguez', 'Femenino', 'Calle 20 # 2-34', '3123456789', 8002, 4001, 4004), 
(511003, 'Carlos', 'Ramírez', 'Masculino', 'Calle 30 # 3-45', '3123456789', 8003, 4001, 4005), 
(511004, 'Ana', 'López', 'Femenino', 'Calle 40 # 4-56', '3123456789', 8004, 4001, 4006), 
(511005, 'Luis', 'Gómez', 'Masculino', 'Calle 50 # 5-67', '3123456789', 8005, 4001, 4007), 
(511006, 'Laura', 'Herrera', 'Femenino', 'Calle 60 # 6-78', '3123456789', 8006, 4002, 4008), 
(511007, 'Diego', 'Arango', 'Masculino', 'Calle 70 # 7-89', '3123456789', 8007, 4002, 4009), 
(511008, 'Paula', 'Rubio', 'Femenino', 'Calle 80 # 8-90', '3123456789', 8008, 4002, 4001), 
(511009, 'Santiago', 'Velásquez', 'Masculino', 'Calle 90 # 9-01', '3123456789', 8009, 4002, 4002), 
(511010, 'Valentina', 'Restrepo', 'Femenino', 'Calle 100 # 10-12', '3123456789', 8010, 4002, 4010); 
 
 
 
INSERT INTO tipo_talla (id_tipo_talla, nombre) VALUES 
 
(9001, 'Americano'); 
 
 
 
INSERT INTO talla (id_talla, nombre, id_tipo_talla) VALUES 
 
(10001, '35', 9001), 
(10002, '36', 9001), 
(10003, '37', 9001), 
(10004, '38', 9001), 
(10005, '39', 9001), 
(10006, '40', 9001), 
(10007, '35.5', 9001), 
(10008, '36.5', 9001), 
(10009, '37.5', 9001), 
(10010, '38.5', 9001); 
 
 
 
INSERT INTO zapatos (id_zapato, nombre, id_tipo_zapato, id_color_producto, id_local) VALUES 
 
(11001, 'Bota de cuero', 1001, 3001, 8001), 
(11002, 'Sandalia de playa', 1002, 3002, 8002), 
(11003, 'Zapatos de vestir negros', 1003, 3001, 8003), 
(11004, 'Zapatillas deportivas blancas', 1004, 3002, 8004); 
 
 
INSERT INTO Detalles_talla_zapatos (id_talla, id_zapato) VALUES 
 
(10003, 11001), 
(10005, 11002), 
(10001, 11003), 
(10003, 11004), 
(10008, 11004); 
 
 
 
INSERT INTO producto (id_producto, nombre, precio, id_color_producto, id_tipo_producto, asesor) VALUES 
 
(12001, 'Zapato deportivo Nike', 150000, 3002, 2001, 511001), 
(12002, 'Vestido de fiesta', 250000, 3003, 2002, 511002), 
(12003, 'Reloj de pulsera', 120000, 3001, 2003, 511003), 
(12004, 'Bolso de mano', 80000, 3004, 2004, 511004), 
(12005, 'Aretes de plata', 50000, 3005, 2005, 511005), 
(12006, 'Perfume floral', 75000, 3006, 2006, 511006), 
(12007, 'Labial rojo', 30000, 3003, 2007, 511007), 
(12008, 'Conjunto de lencería', 45000, 3008, 2008, 511008), 
(12009, 'Celular último modelo', 3000000, 3001, 2009, 511009), 
(12010, 'Tablet', 1500000, 3002, 2010, 511010); 
 
 
 
INSERT INTO cliente (numero_cedula, nombres, apellidos, edad, sexo, id_ciudad_origen) VALUES 
 
(13001, 'Ana', 'García', 30, 'Femenino', 4001), 
(13002, 'Juan', 'López', 25, 'Masculino', 4002), 
(13003, 'María', 'Sánchez', 35, 'Femenino', 4003), 
(13004, 'Carlos', 'Martínez', 40, 'Masculino', 4004), 
(13005, 'Laura', 'Pérez', 28, 'Femenino', 4005), 
(13006, 'Diego', 'Ramírez', 32, 'Masculino', 4006), 
(13007, 'Paula', 'Hernández', 27, 'Femenino', 4007), 
(13008, 'Santiago', 'Gómez', 31, 'Masculino', 4008), 
(13009, 'Valentina', 'Jiménez', 29, 'Femenino', 4009), 
(13010, 'David', 'Castro', 33, 'Masculino', 4010); 
 
 
 
INSERT INTO factura (id_factura, valor_total, fecha_compra, cedula_asesor, cedula_cliente, id_producto, id_ciudad, id_zona, id_local) VALUES 
 
(14001, 150000, '2023-11-20', 511001, 13001, 12001, 4001, 6001, 8001), 
(14002, 250000, '2022-11-21', 511002, 13002, 12002, 4001, 6001, 8001), 
(14003, 120000, '2021-11-22', 511003, 13003, 12003, 4001, 6001, 8001), 
(14004, 80000, '2024-02-23', 511004, 13004, 12004, 4001, 6001, 8001), 
(14005, 50000, '2024-01-24', 511005, 13005, 12005, 4001, 6001, 8001), 
(14006, 75000, '2023-11-25', 511006, 13006, 12006, 4001, 6002, 8001), 
(14007, 30000, '2020-11-15', 511007, 13007, 12007, 4001, 6002, 8002), 
(14008, 45000, '2023-11-27', 511008, 13008, 12008, 4001, 6002, 8002), 
(14009, 3000000, '2022-07-28', 511009, 13009, 12009, 4001, 6002, 8002), 
(14010, 1500000, '2023-04-15', 511010, 13010, 12010, 4001, 6002, 8002); 
 
 
 
INSERT INTO entrega (id_entrega, id_dia, id_local, id_zona, id_ciudad, placa_camion) VALUES 
 
(15001, 5001, 8001, 6001, 4001, 'ABC-123'), 
(15002, 5001, 8002, 6001, 4001, 'DEF-456'), 
(15003, 5001, 8003, 6001, 4001, 'GHI-789'), 
(15004, 5001, 8004, 6001, 4001, 'JKL-012'), 
(15005, 5001, 8005, 6001, 4001, 'MNO-345'), 
(15006, 5001, 8006, 6001, 4002, 'PQR-678'), 
(15007, 5001, 8007, 6001, 4002, 'STU-890'), 
(15008, 5001, 8008, 6001, 4002, 'VWX-012'), 
(15009, 5001, 8009, 6001, 4002, 'YZX-345'), 
(15010, 5001, 8010, 6001, 4002, 'QWE-678');
