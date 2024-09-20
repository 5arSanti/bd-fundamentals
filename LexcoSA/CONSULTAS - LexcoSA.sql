--Consulta 1
SELECT *
	FROM Producto
	WHERE id_marca = (SELECT id_marca FROM Marca WHERE nombre = 'HP');


--Consulta 2->

SELECT *
	FROM Ventas
	WHERE valor_total > 500000
	GROUP BY id_venta, valor_total, id_personal
	ORDER BY valor_total ASC;


--Consulta 3->

SELECT *
	FROM Cliente
	WHERE nombres LIKE 'A%'
	GROUP BY id_cliente, nombres, apellidos, direccion, telefono, correo, id_ciudad_origen
	ORDER BY nombres ASC;


--Consulta 4->

SELECT *
	FROM Factura_compra
	WHERE id_metodo_pago = 1
	GROUP BY id_factura, valor_pagado, fecha_compra, id_compra, id_proveedor, id_producto, id_metodo_pago
	ORDER BY id_factura ASC;


--Consulta 5-->

SELECT fm.id_factura, fm.fecha_recibido, fm.fecha_entrega, fm.valor_total, d.nombre AS dispositivo
	FROM Factura_mantenimiento fm
	INNER JOIN Detalles_Mantenimiento_Dispositivos dmd ON fm.id_mantenimiento = dmd.id_mantenimiento
	INNER JOIN Dispositivos d ON dmd.id_dispositivo = d.id_dispositivo
	WHERE 
		d.nombre LIKE '%Cell Gam%'

	GROUP BY fm.id_factura, fm.fecha_recibido, fm.fecha_entrega, fm.valor_total, d.nombre
	ORDER BY fm.valor_total ASC;


--consulta 6-->

SELECT r.id_reclamacion, r.fecha_entrega, p.nombre AS producto, tp.nombre AS tipo_producto
	FROM Reclamacion r
		INNER JOIN Producto p ON r.id_producto = p.id_producto
		INNER JOIN Tipo_producto tp ON p.id_tipo_producto = tp.id_tipo_producto
	WHERE 
		tp.nombre LIKE '%Cell Gam%'

	GROUP BY r.id_reclamacion, r.fecha_entrega, p.nombre, tp.nombre
	ORDER BY r.id_reclamacion ASC;


--Consulta 7--->

WITH ClientesPorCiudad AS (
    SELECT 
		id_cliente, nombres AS nombre_cliente, ci.nombre AS ciudad
    
	FROM Cliente c
    INNER JOIN Ciudades ci ON c.id_ciudad_origen = ci.id_ciudad
),
ProveedoresPorCiudad AS (
    SELECT 
		id_proveedor, p.nombre AS nombre_proveedor, ci.nombre AS ciudad
    
	FROM Proveedores p
    INNER JOIN Ciudades ci ON p.id_ciudad = ci.id_ciudad
)
SELECT 
		id_cliente AS id, ciudad, nombre_cliente AS nombre
	FROM ClientesPorCiudad
	WHERE ciudad IN ('Bogotá', 'Cali', 'Medellín')

UNION ALL

SELECT 
		id_proveedor AS id, ciudad, nombre_proveedor AS nombre
	FROM ProveedoresPorCiudad
	WHERE ciudad IN ('Bogotá', 'Cali', 'Medellín')
	ORDER BY id, ciudad, nombre ASC;
