INSERT INTO Ciudades (id_ciudad, nombre) VALUES
(1, 'Bogot�'),
(2, 'Cali'),
(3, 'Medell�n');

INSERT INTO Proveedores (id_proveedor, nombre, descripcion, id_ciudad) VALUES
(1, 'Proveedor A', 'Proveedor de computadoras y accesorios', 1),
(2, 'Proveedor B', 'Proveedor de impresoras y cartuchos', 1),
(3, 'Proveedor C', 'Proveedor de tabletas y tel�fonos m�viles', 1),
(4, 'Proveedor D', 'Proveedor de sistemas operativos y software', 1),
(5, 'Proveedor E', 'Proveedor de equipos de red y routers', 1),
(6, 'Proveedor F', 'Proveedor de accesorios para port�tiles', 1),
(7, 'Proveedor G', 'Proveedor de elementos de oficina y papel', 1),
(8, 'Proveedor H', 'Proveedor de componentes de hardware', 2),
(9, 'Proveedor I', 'Proveedor de sistemas de seguridad', 2),
(10, 'Proveedor J', 'Proveedor de equipos multimedia', 2),
(11, 'Proveedor K', 'Proveedor de hardware para gaming', 2),
(12, 'Proveedor L', 'Proveedor de tablets y accesorios', 2),
(13, 'Proveedor M', 'Proveedor de impresoras multifuncionales', 3),
(14, 'Proveedor N', 'Proveedor de dispositivos m�viles y accesorios', 3),
(15, 'Proveedor O', 'Proveedor de equipos de oficina', 3),
(16, 'Proveedor P', 'Proveedor de sistemas de impresi�n en 3D', 3),
(17, 'Proveedor Q', 'Proveedor de equipos de sonido', 3),
(18, 'Proveedor R', 'Proveedor de c�maras y equipos fotogr�ficos', 1),
(19, 'Proveedor S', 'Proveedor de servidores y almacenamiento', 1),
(20, 'Proveedor T', 'Proveedor de estaciones de trabajo', 1),
(21, 'Proveedor U', 'Proveedor de componentes para computadoras', 1),
(22, 'Proveedor V', 'Proveedor de software de gesti�n', 1),
(23, 'Proveedor W', 'Proveedor de perif�ricos para computadoras', 1),
(24, 'Proveedor X', 'Proveedor de equipos para presentaciones', 2),
(25, 'Proveedor Y', 'Proveedor de accesorios para impresoras', 2),
(26, 'Proveedor Z', 'Proveedor de equipos de red y cables', 2),
(27, 'Proveedor AA', 'Proveedor de componentes para tablets', 2),
(28, 'Proveedor BB', 'Proveedor de sistemas operativos para servidores', 3),
(29, 'Proveedor CC', 'Proveedor de accesorios para dispositivos m�viles', 3),
(30, 'Proveedor DD', 'Proveedor de soluciones de impresi�n y escaneo', 3);


INSERT INTO Marca (id_marca, nombre) VALUES
(1, 'Apple'),
(2, 'Samsung'),
(3, 'HP'),
(4, 'Dell'),
(5, 'Lenovo'),
(6, 'Acer'),
(7, 'Asus'),
(8, 'Canon'),
(9, 'Epson'),
(10, 'Brother'),
(11, 'Xerox'),
(12, 'Microsoft'),
(13, 'Sony'),
(14, 'LG'),
(15, 'Xiaomi');



INSERT INTO Detalles_Marca_Proveedor (id_proveedor, id_marca) VALUES
(1, 1),  
(1, 2),  
(1, 3),  
(2, 4),  
(2, 5),  
(2, 6),  
(3, 7),  
(3, 8),  
(3, 9),  
(4, 10), 
(4, 11), 
(4, 12),
(5, 13),
(5, 14),
(5, 15),
(6, 1),
(6, 2),
(6, 3),
(7, 4),  
(7, 5),  
(7, 6),  
(8, 7),  
(8, 8),  
(9, 9),  
(10, 10), 
(11, 11), 
(14, 12),
(17, 13),
(20, 14),
(26, 15),
(29, 1),
(28, 2),
(27, 3);

INSERT INTO Tipo_producto (id_tipo_producto, nombre) VALUES
(1, 'Computador de Mesa'),
(2, 'Port�til'),
(3, 'PC todo en uno'),
(4, 'Macbook'),
(5, 'PcMac'),
(6, 'Tablet'),
(7, 'Tablet XL'),
(8, 'Iphone'),
(9, 'Cell Gam Alta'),
(10, 'Cell Gam Media'),
(11, 'Cell Gam Baja'),
(12, 'Impresora Desk'),
(13, 'Scanner'),
(14, 'Multifuncional'),
(15, 'Multifuncional empresarial');

INSERT INTO Mantenimiento (id_mantenimiento, nombre) VALUES
(1, 'Limpieza de Cabezal'),
(2, 'Reemplazo de Cartucho de Tinta'),
(3, 'Actualizaci�n de Firmware'),
(4, 'Reemplazo de Rodillo de Alimentaci�n'),
(5, 'Ajuste de Calidad de Impresi�n'),
(6, 'Reparaci�n de Fuente de Poder'),
(7, 'Cambio de Correa de Transferencia'),
(8, 'Reemplazo de Tambor'),
(9, 'Correcci�n de Problemas de Alimentaci�n de Papel'),
(10, 'Reemplazo de Placa Base'),
(11, 'Reparaci�n de Conectividad de Red'),
(12, 'Mantenimiento Preventivo'),
(13, 'Ajuste de Configuraci�n de Impresi�n'),
(14, 'Reemplazo de Bater�a de Respaldo'),
(15, 'Revisi�n de Fugas de Tinta'),
(16, 'Limpieza Interna Completa'),
(17, 'Ajuste de Sensores de Papel'),
(18, 'Reparaci�n de Problemas de Calentamiento'),
(19, 'Reemplazo de Cinta de Impresi�n'),
(20, 'Reparaci�n de Cartucho de Tinta'),
(21, 'Actualizaci�n de Software de Impresi�n'),
(22, 'Mantenimiento de Unidades de Discos'),
(23, 'Reemplazo de Unidad de Escaneo'),
(24, 'Reparaci�n de Conector de Impresora'),
(25, 'Cambio de Configuraci�n de Red'),
(26, 'Ajuste de Sensores de Papel'),
(27, 'Reemplazo de Placa de Circuito'),
(28, 'Reparaci�n de Pantalla'),
(29, 'Cambio de M�dulo de Fotocondensador'),
(30, 'Revisi�n de Elementos de Seguridad');


INSERT INTO Dispositivos (id_dispositivo, nombre) VALUES
(1, 'Computador de Mesa'),
(2, 'Port�til'),
(3, 'PC Todo en Uno'),
(4, 'Macbook'),
(5, 'PcMac'),
(6, 'Tablet'),
(7, 'Tablet XL'),
(8, 'Iphone'),
(9, 'Cell Gam Alta'),
(10, 'Cell Gam Media'),
(11, 'Cell Gam Baja'),
(12, 'Impresora Desk'),
(13, 'Scanner'),
(14, 'Multifuncional'),
(15, 'Multifuncional Empresarial');


INSERT INTO Detalles_Mantenimiento_Dispositivos (id_mantenimiento, id_dispositivo) VALUES
(1, 1),
(1, 2), 
(1, 3), 
(1, 4), 
(1, 5), 
(1, 6), 
(1, 7), 
(1, 8), 
(1, 9), 
(1, 10), 
(1, 11), 
(1, 12), 
(1, 13), 
(1, 14), 
(1, 15),
(2, 1), 
(2, 2), 
(2, 3), 
(2, 4), 
(2, 5), 
(2, 6), 
(2, 7), 
(2, 8), 
(2, 9), 
(2, 10), 
(2, 15), 
(2, 12), 
(2, 13), 
(2, 14), 
(2, 15);

INSERT INTO Sistema_operativo (id_sistema_operativo, nombre, version) VALUES
(1, 'Mac', 'macOS Ventura'),
(2, 'Mac', 'macOS Monterey'),
(3, 'Mac', 'macOS Big Sur'),
(4, 'Linux', 'Ubuntu 22.04'),
(5, 'Linux', 'Fedora 38'),
(6, 'Linux', 'Debian 11'),
(7, 'Windows', 'Windows 11'),
(8, 'Windows', 'Windows 10'),
(9, 'Windows', 'Windows 7'),
(10, 'Android', 'Android 14'),
(11, 'Android', 'Android 13'),
(12, 'Android', 'Android 12'),
(13, 'iOS', 'iOS 17'),
(14, 'iOS', 'iOS 16'),
(15, 'iOS', 'iOS 15');


INSERT INTO Configuracion_dispositivos (id_configuracion_dispositivos, nombre) VALUES
(1, 'Configuraci�n de impresi�n a color'),
(2, 'Configuraci�n de impresi�n en blanco y negro'),
(3, 'Configuraci�n de impresi�n d�plex'),
(4, 'Configuraci�n de impresi�n en red'),
(5, 'Configuraci�n de impresi�n a doble cara'),
(6, 'Configuraci�n de impresi�n con resoluci�n alta'),
(7, 'Configuraci�n de impresi�n con escaneo integrado'),
(8, 'Configuraci�n de impresi�n multifuncional'),
(9, 'Configuraci�n de impresi�n de alta velocidad'),
(10, 'Configuraci�n de impresi�n con conectividad Wi-Fi'),
(11, 'Configuraci�n para soporte de Windows'),
(12, 'Configuraci�n para soporte de macOS'),
(13, 'Configuraci�n para soporte de Linux'),
(14, 'Configuraci�n para soporte de Android'),
(15, 'Configuraci�n para soporte de iOS'),
(16, 'Configuraci�n para alto rendimiento'),
(17, 'Configuraci�n para baja energ�a'),
(18, 'Configuraci�n para alta capacidad de almacenamiento'),
(19, 'Configuraci�n para alta resoluci�n de pantalla'),
(20, 'Configuraci�n para conectividad de red avanzada');

INSERT INTO Metodo_pago (id_metodo_pago, nombre)
VALUES 
(1, 'Efectivo'),
(2, 'Tarjeta de d�bito'),
(3, 'Tarjeta de cr�dito'),
(4, 'Pago electr�nico PSE'),
(5, 'Nequi'),
(6, 'Daviplata');


INSERT INTO Compras (id_compra, valor_pagado, fecha_compra) VALUES
(1, 100000, '2024-01-15'),
(2, 150000, '2024-01-20'),
(3, 200000, '2024-01-25'),
(4, 250000, '2024-02-01'),
(5, 300000, '2024-02-10'),
(6, 350000, '2024-02-15'),
(7, 400000, '2024-02-20'),
(8, 450000, '2024-03-01'),
(9, 500000, '2024-03-10'),
(10, 550000, '2024-03-15'),
(11, 600000, '2024-03-20'),
(12, 650000, '2024-04-01'),
(13, 700000, '2024-04-05'),
(14, 750000, '2024-04-10'),
(15, 800000, '2024-04-15'),
(16, 850000, '2024-05-01'),
(17, 900000, '2024-05-05'),
(18, 950000, '2024-05-10'),
(19, 1000000, '2024-05-15'),
(20, 1050000, '2024-06-01'),
(21, 1100000, '2024-06-05'),
(22, 1150000, '2024-06-10'),
(23, 1200000, '2024-06-15'),
(24, 1250000, '2024-07-01'),
(25, 1300000, '2024-07-05'),
(26, 1350000, '2024-07-10'),
(27, 1400000, '2024-07-15'),
(28, 1450000, '2024-08-01'),
(29, 1500000, '2024-08-05'),
(30, 1550000, '2024-08-10');

INSERT INTO Personal (numero_cedula, nombres, apellidos, sexo, numero, telefono, id_ciudad_origen, id_ciudad_residencia) VALUES

(10001, 'Juan', 'P�rez', 'Masculino', '12345', '3001234567', 1, 2),
(10002, 'Mar�a', 'G�mez', 'Femenino', '12346', '3001234568', 2, 3),
(10003, 'Carlos', 'Rojas', 'Masculino', '12347', '3001234569', 3, 1),
(10004, 'Ana', 'Mart�nez', 'Femenino', '12348', '3001234570', 1, 2),
(10005, 'Luis', 'Hern�ndez', 'Masculino', '12349', '3001234571', 2, 3),
(10006, 'Laura', 'Torres', 'Femenino', '12350', '3001234572', 3, 1),
(10007, 'Jorge', 'Ram�rez', 'Masculino', '12351', '3001234573', 1, 3),
(10008, 'Sandra', 'Jim�nez', 'Femenino', '12352', '3001234574', 2, 1),
(10009, 'Andr�s', 'Garc�a', 'Masculino', '12353', '3001234575', 3, 2),
(10010, 'Beatriz', 'V�squez', 'Femenino', '12354', '3001234576', 1, 2);


INSERT INTO Ventas (id_venta, valor_total, id_personal) VALUES
(1, 500000, 10001),
(2, 750000, 10002),
(3, 300000, 10003), 
(4, 600000, 10004), 
(5, 200000, 10005), 
(6, 850000, 10006),
(7, 400000, 10007),
(8, 950000, 10008), 
(9, 700000, 10009),
(10, 500000, 10010), 
(11, 600000, 10010), 
(12, 750000, 10003), 
(13, 300000, 10003),
(14, 800000, 10004), 
(15, 200000, 10005), 
(16, 450000, 10006), 
(17, 550000, 10007),
(18, 650000, 10008),
(19, 700000, 10009), 
(20, 900000, 10001), 
(21, 350000, 10001), 
(22, 450000, 10002), 
(23, 550000, 10003), 
(24, 600000, 10004), 
(25, 700000, 10005), 
(26, 750000, 10006), 
(27, 800000, 10007), 
(28, 850000, 10008), 
(29, 900000, 10009), 
(30, 950000, 10006); 


INSERT INTO Producto (id_producto, nombre, descripcion, precio, id_tipo_producto, id_sistema_operativo, id_configuracion_dispositivos, id_dispositivo, id_marca) VALUES
(1, 'Computador de Mesa HP', 'Computador de escritorio HP con procesador i7 y 16GB RAM', 1200000, 1, NULL, NULL, 1, 3),
(2, 'Port�til Dell XPS', 'Port�til Dell XPS 13 con pantalla t�ctil y 512GB SSD', 1800000, 2, 7, NULL, 2, 4),
(3, 'PC Todo en Uno Lenovo', 'PC todo en uno Lenovo con pantalla de 24 pulgadas y procesador i5', 1500000, 3, NULL, NULL, 3, 5),
(4, 'Macbook Pro', 'Macbook Pro 16 pulgadas con chip M1 Pro', 2500000, 4, 1, NULL, 4, 1),
(5, 'PcMac Classic', 'PcMac Classic con procesador i7 y 16GB RAM', 2000000, 5, 1, NULL, 5, 1),
(6, 'Tablet Samsung Galaxy', 'Tablet Samsung Galaxy Tab S8 con 128GB almacenamiento', 800000, 6, 10, NULL, 6, 2),
(7, 'Tablet XL Apple', 'Tablet XL Apple iPad Pro 12.9 pulgadas con 256GB almacenamiento', 2200000, 7, 13, NULL, 7, 1),
(8, 'iPhone 14 Pro', 'iPhone 14 Pro con 256GB almacenamiento y c�mara triple', 3000000, 8, 13, NULL, 8, 1),
(9, 'Cell Gam Alta X', 'Cell Gam Alta X con 8GB RAM y 128GB almacenamiento', 1200000, 9, 10, NULL, 9, 15),
(10, 'Cell Gam Media Y', 'Cell Gam Media Y con 4GB RAM y 64GB almacenamiento', 800000, 10, 10, NULL, 10, 15),
(11, 'Cell Gam Baja Z', 'Cell Gam Baja Z con 2GB RAM y 32GB almacenamiento', 500000, 11, 10, NULL, 11, 15),
(12, 'Impresora Desk Canon', 'Impresora Desk Canon con capacidad de impresi�n a color', 600000, 12, NULL, 1, 12, 8),
(13, 'Scanner Epson Perfection', 'Scanner Epson Perfection con resoluci�n de 2400 DPI', 700000, 13, NULL, 1, 13, 9),
(14, 'Multifuncional Brother', 'Multifuncional Brother con impresi�n, copiado y escaneo', 1000000, 14, NULL, 1, 14, 10),
(15, 'Multifuncional Empresarial HP', 'Multifuncional Empresarial HP con capacidad de impresi�n de alta velocidad', 1500000, 15, NULL, 1, 15, 3),
(16, 'Computador de Mesa Acer', 'Computador de escritorio Acer con procesador AMD Ryzen 5', 1100000, 1, NULL, NULL, 1, 6),
(17, 'Port�til Asus Zenbook', 'Port�til Asus Zenbook con pantalla OLED y 1TB SSD', 2000000, 2, 7, NULL, 2, 7),
(18, 'PC Todo en Uno Apple', 'PC todo en uno Apple iMac con chip M1', 2200000, 3, NULL, NULL, 3, 1),
(19, 'Macbook Air', 'Macbook Air con chip M1 y 256GB almacenamiento', 1500000, 4, 1, NULL, 4, 1),
(20, 'PcMac Pro', 'PcMac Pro con 32GB RAM y 1TB SSD', 2500000, 5, 1, NULL, 5, 1),
(21, 'Tablet XL Samsung', 'Tablet XL Samsung Galaxy Tab S7+ con 512GB almacenamiento', 2600000, 7, 10, NULL, 7, 2),
(22, 'iPhone 14', 'iPhone 14 con 128GB almacenamiento y c�mara dual', 2400000, 8, 13, NULL, 8, 1),
(23, 'Cell Gam Alta Y', 'Cell Gam Alta Y con 6GB RAM y 128GB almacenamiento', 1000000, 9, 10, NULL, 9, 2),
(24, 'Cell Gam Media X', 'Cell Gam Media X con 4GB RAM y 64GB almacenamiento', 750000, 10, 10, NULL, 10, 2),
(25, 'Impresora Desk Epson', 'Impresora Desk Epson con impresi�n d�plex autom�tica', 650000, 12, NULL, 1, 12, 9),
(26, 'Scanner Canon LiDE', 'Scanner Canon LiDE con conexi�n USB y resoluci�n de 4800 DPI', 650000, 13, NULL, 1, 13, 8),
(27, 'Multifuncional Xerox', 'Multifuncional Xerox con capacidad de impresi�n l�ser y escaneo', 1200000, 14, NULL, 1, 14, 11),
(28, 'Multifuncional Empresarial Brother', 'Multifuncional Empresarial Brother con impresi�n a doble cara', 1600000, 15, NULL, 1, 15, 10),
(29, 'Computador de Mesa Lenovo', 'Computador de escritorio Lenovo con procesador Intel Core i5', 1300000, 1, NULL, NULL, 1, 5),
(30, 'Port�til HP Spectre', 'Port�til HP Spectre con pantalla 4K y 16GB RAM', 2100000, 2, 7, NULL, 2, 3);

INSERT INTO Cliente (id_cliente, nombres, apellidos, direccion, telefono, correo, id_ciudad_origen) VALUES
(1, 'Alejandro', 'Garc�a', 'Carrera 15 # 85-30', '3001234567', 'alejandro.garcia@email.com', 1),
(2, 'Isabella', 'Mart�nez', 'Calle 30 # 15-20', '3002345678', 'isabella.martinez@email.com', 2),
(3, 'Felipe', 'Rodr�guez', 'Avenida 7 # 10-15', '3003456789', 'felipe.rodriguez@email.com', 3),
(4, 'Camila', 'Rojas', 'Carrera 9 # 40-60', '3004567890', 'camila.rojas@email.com', 1),
(5, 'Mateo', 'Jim�nez', 'Calle 11 # 22-35', '3005678901', 'mateo.jimenez@email.com', 2),
(6, 'Valentina', 'Torres', 'Avenida 8 # 33-44', '3006789012', 'valentina.torres@email.com', 3),
(7, 'Santiago', 'Vargas', 'Carrera 12 # 27-50', '3007890123', 'santiago.vargas@email.com', 1),
(8, 'Laura', 'Su�rez', 'Calle 22 # 60-75', '3008901234', 'laura.suarez@email.com', 2),
(9, 'Daniel', 'Moreno', 'Avenida 15 # 18-90', '3009012345', 'daniel.moreno@email.com', 3),
(10, 'Mariana', 'Paredes', 'Carrera 5 # 40-60', '3010123456', 'mariana.paredes@email.com', 1),
(11, 'Juan', 'P�rez', 'Calle 35 # 25-30', '3011234567', 'juan.perez@email.com', 2),
(12, 'Sof�a', 'Castro', 'Avenida 10 # 55-70', '3012345678', 'sofia.castro@email.com', 3),
(13, 'Andr�s', 'G�mez', 'Carrera 8 # 15-20', '3013456789', 'andres.gomez@email.com', 1),
(14, 'Gabriela', 'Zapata', 'Calle 40 # 45-55', '3014567890', 'gabriela.zapata@email.com', 2),
(15, 'Nicol�s', 'Mendoza', 'Avenida 20 # 25-30', '3015678901', 'nicolas.mendoza@email.com', 3),
(16, 'M�nica', 'L�pez', 'Carrera 7 # 10-20', '3016789012', 'monica.lopez@email.com', 1),
(17, 'Luis', 'Hern�ndez', 'Calle 29 # 20-30', '3017890123', 'luis.hernandez@email.com', 2),
(18, 'Ana', 'Valencia', 'Avenida 12 # 35-50', '3018901234', 'ana.valencia@email.com', 3),
(19, 'Carlos', 'Renter�a', 'Carrera 3 # 25-35', '3019012345', 'carlos.renteria@email.com', 1),
(20, 'Diana', 'Mart�nez', 'Calle 18 # 40-55', '3020123456', 'diana.martinez@email.com', 2),
(21, '�scar', 'Garc�a', 'Avenida 25 # 15-25', '3021234567', 'oscar.garcia@email.com', 3),
(22, 'Natalia', 'Torres', 'Carrera 10 # 60-75', '3022345678', 'natalia.torres@email.com', 1),
(23, 'Julian', 'Serrano', 'Calle 28 # 10-15', '3023456789', 'julian.serrano@email.com', 2),
(24, 'Valeria', 'Morales', 'Avenida 5 # 25-35', '3024567890', 'valeria.morales@email.com', 3),
(25, 'Andr�s', 'Mart�nez', 'Carrera 16 # 20-30', '3025678901', 'andres.martinez@email.com', 1),
(26, 'Camila', 'Ram�rez', 'Calle 7 # 40-55', '3026789012', 'camila.ramirez@email.com', 2),
(27, 'Emmanuel', 'Ortiz', 'Avenida 8 # 15-20', '3027890123', 'emmanuel.ortiz@email.com', 3),
(28, 'Natalia', 'Henao', 'Carrera 5 # 35-45', '3028901234', 'natalia.henao@email.com', 1),
(29, 'David', 'Cardenas', 'Calle 30 # 20-30', '3029012345', 'david.cardenas@email.com', 2),
(30, 'Lina', 'P�rez', 'Avenida 12 # 60-75', '3030123456', 'lina.perez@email.com', 3);


INSERT INTO Elementos_adicionales (id_elemento_adicional, nombre, precio, color, descripcion, id_marca) VALUES
(1, 'Funda port�til', 150, 'Negro', 'Funda de protecci�n para port�tiles', 1),
(2, 'Mouse inal�mbrico', 80, 'Blanco', 'Mouse inal�mbrico con bater�a recargable', 2),
(3, 'Teclado ergon�mico', 120, 'Gris', 'Teclado ergon�mico para uso prolongado', 3),
(4, 'Funda tablet', 100, 'Azul', 'Funda protectora para tablet', 4),
(5, 'Cargador r�pido', 60, 'Blanco', 'Cargador r�pido para tablet y celular', 5),
(6, 'Soporte para tablet', 70, 'Negro', 'Soporte ajustable para tablet', 6),
(7, 'Tinta negra', 40, 'Negro', 'Cartucho de tinta negra para impresoras', 7),
(8, 'Tinta a color', 50, 'Cian, Magenta, Amarillo', 'Cartucho de tinta a color para impresoras', 8),
(9, 'Papel fotogr�fico', 30, 'Blanco', 'Papel fotogr�fico para impresoras', 9);

INSERT INTO Factura_compra (id_factura, valor_pagado, fecha_compra, id_compra, id_proveedor, id_producto, id_metodo_pago)
VALUES 
(1, 500000, '2023-09-01', 1, 1, 1, 1),
(2, 300000, '2023-09-02', 2, 2, 2, 2),
(3, 700000, '2023-09-03', 3, 3, 3, 2),
(4, 100000, '2024-01-15', 4, 4, 4, 1),
(5, 150000, '2024-01-20', 5, 5, 5, 1),
(6, 200000, '2024-01-25', 6, 6, 6, 4),
(7, 250000, '2024-02-01', 7, 7, 7, 3),
(8, 200000, '2024-01-25', 8, 8, 8, 5),
(9, 300000, '2024-02-10', 9, 9, 9, 6);


INSERT INTO Factura_mantenimiento (id_factura, fecha_recibido, fecha_entrega, valor_total, id_cliente, id_metodo_pago, id_mantenimiento, id_personal, id_producto)
VALUES 
(1,'2024-09-01', '2024-09-02', 50000, 1, 1, 1, 10001, 1),
(2,'2024-09-05', '2024-09-06', 75000, 2, 2, 2, 10002, 2),
(3,'2024-09-10', '2024-09-11', 60000, 3, 3, 3, 10003, 3),
(4,'2024-09-15', '2024-09-16', 55000, 4, 4, 4, 10004, 4),
(5,'2024-09-20', '2024-09-21', 70000, 5, 5, 5, 10005, 5);


INSERT INTO Factura_venta (id_factura, fecha_recibido, fecha_entrega, valor_total, id_metodo_pago, id_cliente, id_personal, id_marca, id_producto, id_venta)
VALUES 
(1, '2023-08-15', '2023-08-25', 3500000, 3, 1, 10005, 1, 1, 1),
(2, '2023-09-05', '2023-09-12', 1800000, 4, 2, 10010, 2, 2, 2),
(3, '2023-09-17', '2023-09-22', 5000000, 5, 3, 10008, 3, 3, 3);


INSERT INTO Reclamacion (id_reclamacion, id_cliente, id_producto, id_factura, id_personal, motivo, validacion, fecha_entrega) VALUES
(1, 1, 1, 1, 10001, 'Problema con el encendido', 1, '2024-09-01'),
(2, 2, 2, 2, 10002, 'Pantalla rota', 0, '2024-09-05'),
(3, 3, 3, 3, 10003, 'Problemas de rendimiento', 1, '2024-09-10'),
(4, 4, 4, 4, 10004, 'Teclado defectuoso', 0, '2024-09-15'),
(5, 5, 5, 5, 10005, 'Problemas con la bater�a', 1, '2024-09-20'),
(6, 5, 6, 5, 10005, 'Problemas con la bater�a', 1, '2024-09-20'),
(7, 5, 7, 5, 10005, 'Problemas con la bater�a', 1, '2024-09-20'),
(8, 5, 8, 5, 10005, 'Problemas con la bater�a', 1, '2024-09-20'),
(9, 5, 9, 5, 10005, 'Problemas con la bater�a', 1, '2024-09-20'),
(10, 5, 10, 5, 10005, 'Problemas con la bater�a', 1, '2024-09-20');

