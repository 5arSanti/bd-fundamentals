INSERT INTO Categoria_producto (id_categoria_producto, nombre)
VALUES
(1, 'Electronica'),
(2, 'Ropa'),
(3, 'Muebles'),
(4, 'Juguetes'),
(5, 'Alimentos'),
(6, 'Belleza'),
(7, 'Libros'),
(8, 'Deportes'),
(9, 'Tecnologia'),
(10, 'Herramientas');

INSERT INTO Proveedor (id_proveedor, nombre, productos, condiciones_suministro, tiempo_entrega, contactos_clave)
VALUES
(1, 'Proveedor A', 'Electronica', 'Condiciones 1', '2023-01-01', 'Contacto A'),
(2, 'Proveedor B', 'Ropa', 'Condiciones 2', '2023-02-01', 'Contacto B'),
(3, 'Proveedor C', 'Muebles', 'Condiciones 3', '2023-03-01', 'Contacto C'),
(4, 'Proveedor D', 'Juguetes', 'Condiciones 4', '2023-04-01', 'Contacto D'),
(5, 'Proveedor E', 'Alimentos', 'Condiciones 5', '2023-05-01', 'Contacto E'),
(6, 'Proveedor F', 'Belleza', 'Condiciones 6', '2023-06-01', 'Contacto F'),
(7, 'Proveedor G', 'Libros', 'Condiciones 7', '2023-07-01', 'Contacto G'),
(8, 'Proveedor H', 'Deportes', 'Condiciones 8', '2023-08-01', 'Contacto H'),
(9, 'Proveedor I', 'Tecnologia', 'Condiciones 9', '2023-09-01', 'Contacto I'),
(10, 'Proveedor J', 'Herramientas', 'Condiciones 10', '2023-10-01', 'Contacto J');

INSERT INTO Sede (id_sede, ubicacion, capacidad_almacenamiento, datos_contacto)
VALUES
(1, 'Madrid', 1000, 'Contacto 1'),
(2, 'Barcelona', 800, 'Contacto 2'),
(3, 'Valencia', 900, 'Contacto 3'),
(4, 'Sevilla', 700, 'Contacto 4'),
(5, 'Bilbao', 600, 'Contacto 5'),
(6, 'Zaragoza', 750, 'Contacto 6'),
(7, 'Malaga', 650, 'Contacto 7'),
(8, 'Murcia', 850, 'Contacto 8'),
(9, 'Palma', 950, 'Contacto 9'),
(10, 'Granada', 700, 'Contacto 10');

INSERT INTO Metodos_pago (id_metodo_pago, nombre)
VALUES
(1, 'Tarjeta de Credito'),
(2, 'PayPal'),
(3, 'Transferencia Bancaria'),
(4, 'Efectivo'),
(5, 'Tarjeta de Debito'),
(6, 'Cheque'),
(7, 'Criptomoneda'),
(8, 'Apple Pay'),
(9, 'Google Pay'),
(10, 'Western Union');

INSERT INTO Roles (id_rol, nombre)
VALUES
(1, 'Administrador'),
(2, 'Vendedor'),
(3, 'Gerente'),
(4, 'Cajero'),
(5, 'Almacenista'),
(6, 'Contador'),
(7, 'Atencion al Cliente'),
(8, 'Supervisor'),
(9, 'Seguridad'),
(10, 'Limpieza');

INSERT INTO Horarios (id_horarios, horario)
VALUES
(1, 'Lunes a Viernes 9:00-17:00'),
(2, 'Lunes a Viernes 10:00-18:00'),
(3, 'Lunes a Sabado 8:00-16:00'),
(4, 'Sabado y Domingo 10:00-14:00'),
(5, 'Turno Nocturno 22:00-06:00'),
(6, 'Turno Mañana 07:00-15:00'),
(7, 'Turno Tarde 14:00-22:00'),
(8, 'Turno Completo 9:00-21:00'),
(9, 'Fines de Semana 8:00-14:00'),
(10, 'Lunes a Jueves 8:00-16:00');

INSERT INTO Preferencia_comunicacion (id_preferencia_comunicacion, preferencia)
VALUES
(1, 'Email'),
(2, 'Telefono'),
(3, 'SMS'),
(4, 'WhatsApp'),
(5, 'Redes Sociales'),
(6, 'Correo Postal'),
(7, 'Chat en Lonea'),
(8, 'Aplicacion Movil'),
(9, 'Llamada Automatica'),
(10, 'Fax');

INSERT INTO Seguridad_acceso (id_seguridad_acceso, autorizacion)
VALUES
(1, 1),
(2, 0);

INSERT INTO Impuestos (id_impuesto, nombre)
VALUES
(1, 'IVA'),
(2, 'ISR'),
(3, 'IEPS'),
(4, 'ISAN'),
(5, 'ITBIS'),
(6, 'IGV'),
(7, 'IVA Reducido'),
(8, 'Impuesto de Lujo'),
(9, 'Impuesto Verde'),
(10, 'Impuesto Solidario');

INSERT INTO Auditoria_actividades (id_auditoria, accion_realizada, fecha_realizacion)
VALUES
(1, 'Creacion de usuario', '2023-01-01'),
(2, 'Actualizacion de precio', '2023-01-02'),
(3, 'Eliminacion de registro', '2023-01-03'),
(4, 'Acceso al sistema', '2023-01-04'),
(5, 'Modificacion de datos personales', '2023-01-05'),
(6, 'Generacion de reporte', '2023-01-06'),
(7, 'Cambio de contraseña', '2023-01-07'),
(8, 'Autorizacion de pedido', '2023-01-08'),
(9, 'Backup de la base de datos', '2023-01-09'),
(10, 'Restauracion de base de datos', '2023-01-10');

INSERT INTO Cliente (numero_cedula_cliente, nombres, apellidos, edad, sexo, ubicacion, id_preferencia_comunicacion)
VALUES
(1, 'Juan', 'Perez', 30, 'Masculino', 'Madrid', 1),
(2, 'Ana', 'Gomez', 25, 'Femenino', 'Barcelona', 2),
(3, 'Luis', 'Martonez', 35, 'Masculino', 'Valencia', 3),
(4, 'Marta', 'Lopez', 28, 'Femenino', 'Sevilla', 4),
(5, 'Pedro', 'Garcia', 40, 'Masculino', 'Bilbao', 5),
(6, 'Laura', 'Rodriguez', 32, 'Femenino', 'Zaragoza', 6),
(7, 'Jos�e', 'Fernondez', 45, 'Masculino', 'M�laga', 7),
(8, 'Isabel', 'Hernondez', 29, 'Femenino', 'Murcia', 8),
(9, 'Carlos', 'Jimonez', 38, 'Masculino', 'Palma', 9),
(10, 'Maria', 'Alvarez', 33, 'Femenino', 'Granada', 10);

INSERT INTO Puntos_fidelidad (id_puntos_fidelidad, cantidad, id_cliente)
VALUES
(1, 100, 1),
(2, 150, 2),
(3, 200, 3),
(4, 250, 4),
(5, 300, 5),
(6, 350, 6),
(7, 400, 7),
(8, 450, 8),
(9, 500, 9),
(10, 550, 10);

INSERT INTO Empleado (numero_cedula_empleado, nombres, apellidos, edad, sexo, ubicacion, id_rol, id_horario)
VALUES
(1, 'Pedro', 'Garcia', 34, 'Masculino', 'Madrid', 1, 1),
(2, 'Sofia', 'Gomez', 29, 'Femenino', 'Barcelona', 2, 2),
(3, 'Javier', 'Lopez', 40, 'Masculino', 'Valencia', 3, 3),
(4, 'Lucia', 'Martonez', 32, 'Femenino', 'Sevilla', 4, 4),
(5, 'Antonio', 'Hernondez', 45, 'Masculino', 'Bilbao', 5, 5),
(6, 'Carmen', 'Perez', 38, 'Femenino', 'Zaragoza', 6, 6),
(7, 'Miguel', 'Fernondez', 31, 'Masculino', 'Malaga', 7, 7),
(8, 'Elena', 'Rodriguez', 27, 'Femenino', 'Murcia', 8, 8),
(9, 'Manuel', 'Garcia', 37, 'Masculino', 'Palma', 9, 9),
(10, 'Teresa', 'Jimonez', 30, 'Femenino', 'Granada', 10, 10);

INSERT INTO Reporte_venta (id_reporte_venta, fecha_reporte, id_sede, id_empleado)
VALUES
(1, '2023-01-01', 1, 1),
(2, '2023-02-01', 2, 2),
(3, '2023-03-01', 3, 3),
(4, '2023-04-01', 4, 4),
(5, '2023-05-01', 5, 5),
(6, '2023-06-01', 6, 6),
(7, '2023-07-01', 7, 7),
(8, '2023-08-01', 8, 8),
(9, '2023-09-01', 9, 9),
(10, '2023-10-01', 10, 10),
(11, '2023-10-01', 1, 10);

INSERT INTO Producto (id_producto, nombre, descripcion, precio, costo_adquisicion, id_categoria_producto, id_proveedor, id_sede)
VALUES
(1, 'Televisor', 'Televisor 50 pulgadas', 500, 300, 1, 1, 1),
(2, 'Silla', 'Silla ergonomica', 120, 100, 3, 2, 2),
(3, 'Mesa', 'Mesa de comedor', 300, 200, 3, 3, 3),
(4, 'Camara', 'Camara digital', 400, 200, 1, 4, 4),
(5, 'Ropa', 'Camisa de algodon', 25, 10, 2, 5, 5),
(6, 'Perfume', 'Perfume de lujo', 80, 60, 6, 6, 6),
(7, 'Libro', 'Novela de misterio', 15, 10, 7, 7, 7),
(8, 'Pelota', 'Pelota de futbol', 20, 10, 8, 8, 8),
(9, 'Laptop', 'Laptop 15 pulgadas', 1000, 800, 9, 9, 9),
(10, 'Taladro', 'Taladro inalambrico', 150, 100, 10, 10, 10);

INSERT INTO Devolucion_reembolso (id_devolucion_reembolso, razon, tipo, fecha, id_cliente, id_producto)
VALUES
(1, 'Defecto de fabricacion', 'Reembolso', '2023-01-01', 1, 1),
(2, 'Producto no deseado', 'Devolucion', '2023-01-02', 2, 1),
(3, 'Error en el pedido', 'Reembolso', '2023-01-03', 3, 1),
(4, 'Desistimiento', 'Devolucion', '2023-01-04', 4, 4),
(5, 'No coincide con la descripcion', 'Reembolso', '2023-01-05', 5, 5),
(6, 'Dañado en el envio', 'Devolucion', '2023-01-06', 6, 6),
(7, 'Producto no utilizado', 'Reembolso', '2023-01-07', 7, 7),
(8, 'Error en el color', 'Devolucion', '2023-01-08', 8, 8),
(9, 'Producto defectuoso', 'Reembolso', '2023-01-09', 9, 9),
(10, 'Cambio de talla', 'Devolucion', '2023-01-10', 10, 10);

INSERT INTO Inventario (id_inventario, stock, rotacion_productos, id_sede, id_proveedor, id_producto, id_categoria_producto)
VALUES
(1, 50, 'Alta rotacion', 1, 1, 1, 1),
(2, 30, 'Media rotacion', 2, 2, 2, 3),
(3, 20, 'Baja rotacion', 3, 3, 3, 3),
(4, 60, 'Alta rotacion', 4, 4, 4, 1),
(5, 100, 'Media rotacion', 5, 5, 5, 2),
(6, 40, 'Baja rotacion', 6, 6, 6, 6),
(7, 70, 'Alta rotacion', 7, 7, 7, 7),
(8, 25, 'Media rotacion', 8, 8, 8, 8),
(9, 15, 'Baja rotacion', 9, 9, 9, 9),
(10, 80, 'Alta rotacion', 10, 10, 10, 10);

INSERT INTO Promocion_descuento (id_promocion_descuento, porcentaje, fecha_inicio, fecha_final)
VALUES
(1, 10, '2024-08-18', '2024-08-29'),
(2, 2, '2024-08-18', '2024-08-29'),
(3, 30, '2023-03-01', '2023-03-31'),
(4, 15, '2023-04-01', '2023-04-30'),
(5, 40, '2023-05-01', '2023-05-31'),
(6, 1, '2023-06-01', '2023-06-30'),
(7, 5, '2023-07-01', '2023-07-31'),
(8, 76, '2023-08-01', '2023-08-31'),
(9, 11, '2023-09-01', '2023-09-30'),
(10, 19, '2023-10-01', '2023-10-31');


INSERT INTO Factura (id_factura, id_producto, id_promocion_descuento, id_sede, id_cliente, id_empleado, id_categoria, id_impuesto)
VALUES
(1, 1, 1, 1, 1, 1, 1, 1),
(2, 2, 2, 2, 2, 2, 3, 2),
(3, 3, 3, 3, 3, 3, 3, 3),
(4, 4, 4, 4, 4, 4, 1, 4),
(5, 5, 5, 5, 5, 5, 2, 5),
(6, 6, 6, 6, 6, 6, 6, 6),
(7, 7, 7, 7, 7, 7, 7, 7),
(8, 8, 8, 8, 8, 8, 8, 8),
(9, 9, 9, 9, 9, 9, 9, 9),
(10, 10, 10, 10, 10, 10, 10, 10);

INSERT INTO Transacciones_venta (id_transaccion, fecha_transaccion, cantidad_productos, precio_total, id_metodo_pago, id_devolucion_reembolso)
VALUES
(1, '2023-01-01', 1, 500, 1, NULL),
(2, '2023-01-02', 2, 240, 2, NULL),
(3, '2023-01-03', 1, 300, 3, 1),
(4, '2023-01-04', 3, 120, 4, 2),
(5, '2023-01-05', 4, 80, 5, NULL),
(6, '2023-01-06', 5, 60, 6, NULL),
(7, '2023-01-07', 2, 40, 7, NULL),
(8, '2023-01-08', 3, 150, 8, NULL),
(9, '2023-01-09', 1, 1000, 9, NULL),
(10, '2023-01-10', 4, 150, 10, 3);


INSERT INTO Compra (id_compra, id_producto, id_categoria_producto, id_cliente, id_puntos_fidelidad, id_factura, id_transaccion)
VALUES
(1, 1, 1, 1, 1, 1, 1),
(2, 2, 3, 2, 2, 2, 2),
(3, 3, 3, 3, 3, 3, 3),
(4, 4, 1, 4, 4, 4, 4),
(5, 5, 2, 5, 5, 5, 5),
(6, 6, 6, 6, 6, 6, 6),
(7, 7, 7, 7, 7, 7, 7),
(8, 8, 8, 8, 8, 8, 8),
(9, 9, 9, 9, 9, 9, 9),
(10, 10, 10, 10, 10, 10, 10),
(11, 10, 10, 10, 10, 10, 10);


INSERT INTO Historial_compra (id_historial_compra, id_compra, id_cliente)
VALUES
(1, 1, 1),
(2, 2, 2),
(3, 3, 3),
(4, 4, 4),
(5, 5, 5),
(6, 6, 6),
(7, 7, 7),
(8, 8, 8),
(9, 9, 9),
(10, 10, 10),
(11, 10, 3);

INSERT INTO Control_calidad (id_control_calidad, id_devolucion_reembolso, id_promocion_descuento)
VALUES
(1, 1, 1),
(2, 2, 2),
(3, 3, 3),
(4, 4, 4),
(5, 5, 5),
(6, 6, 6),
(7, 7, 7),
(8, 8, 8),
(9, 9, 9),
(10, 10, 10);

INSERT INTO Mantenimiento_bd (id_mantenimiento, tipo, fecha_realizacion, id_auditoria, id_seguridad_acceso)
VALUES
(1, 'Backup', '2023-01-01', 1, 1),
(2, 'Restauracion', '2023-01-02', 2, 1),
(3, 'Optimizacion', '2023-01-03', 3, 1),
(4, 'Actualizacion', '2023-01-04', 4, 1),
(5, 'Reparacion', '2023-01-05', 5, 1),
(6, 'Auditoria', '2023-01-06', 6, 1),
(7, 'Verificacion', '2023-01-07', 7, 1),
(8, 'Reindexacion', '2023-01-08', 8, 1),
(9, 'Reparacion', '2023-01-09', 9, 1),
(10, 'Optimizacion', '2023-01-10', 10, 1);

INSERT INTO Detalle_Categoria_producto_Promocion_descuento (id_categoria_producto, id_promocion_descuento)
VALUES
(1, 1),
(2, 2),
(3, 3),     
(4, 4),
(5, 5),
(6, 6),
(7, 7),
(8, 8),
(9, 9),
(10, 10);

INSERT INTO Detalle_Producto_Promocion_descuento (id_producto, id_promocion_descuento)
VALUES
(1, 1),
(2, 2),
(3, 3),
(4, 4),
(5, 5),
(6, 6),
(7, 7),
(8, 8),
(9, 9),
(10, 10);

INSERT INTO Detalle_Transacciones_venta_Promocion_descuento (id_transaccion, id_promocion_descuento)
VALUES
(1, 1),
(2, 2),
(3, 3),
(4, 4),
(5, 5),
(6, 6),
(7, 7),
(8, 8),
(9, 9),
(10, 10);

INSERT INTO Detalle_Compra_Reporte_venta (id_compra, id_reporte_venta)
VALUES
(1, 1),
(2, 2),
(3, 3),
(4, 4),
(5, 5),
(6, 6),
(7, 7),
(8, 8),
(9, 9),
(10, 10);

INSERT INTO Detalle_Producto_Control_calidad (id_control_calidad, id_producto)
VALUES
(1, 1),
(2, 2),
(3, 3),
(4, 4),
(5, 5),
(6, 6),
(7, 7),
(8, 8),
(9, 9),
(10, 10);

