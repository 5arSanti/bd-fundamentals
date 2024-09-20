-- Punto 1
SELECT
    Sede.ubicacion,
    Categoria_producto.nombre AS nombre_categoria,
    SUM(Inventario.stock) AS inventario_total
FROM
    Inventario
JOIN
    Sede ON Inventario.id_sede = Sede.id_sede
JOIN
    Categoria_producto ON Inventario.id_categoria_producto = Categoria_producto.id_categoria_producto
GROUP BY
    Sede.id_sede,
    Sede.ubicacion,
    Categoria_producto.id_categoria_producto,
    Categoria_producto.nombre
ORDER BY
    Sede.id_sede,
    Categoria_producto.id_categoria_producto;



-- Punto 2
SELECT
    c.numero_cedula_cliente,
    c.nombres,
    c.apellidos,
	tv.fecha_transaccion,
    SUM(tv.precio_total * tv.cantidad_productos) AS monto_total
FROM
    Compra co
JOIN
    Transacciones_venta tv ON co.id_transaccion = tv.id_transaccion
JOIN
    Cliente c ON co.id_cliente = c.numero_cedula_cliente
WHERE
    tv.fecha_transaccion > '2023-01-05'
GROUP BY
    c.numero_cedula_cliente,
    c.nombres,
    c.apellidos,
	tv.fecha_transaccion
HAVING
    SUM(tv.precio_total * tv.cantidad_productos) > 300
ORDER BY
    monto_total DESC;



-- Punto 3
SELECT
    p.id_producto,
    p.nombre AS nombre_producto,
    COUNT(dr.id_devolucion_reembolso) AS total_devoluciones,
	dr.fecha
FROM
    Devolucion_reembolso dr
JOIN
    Producto p ON dr.id_producto = p.id_producto
WHERE
    dr.id_devolucion_reembolso IN (
        SELECT
            id_devolucion_reembolso
        FROM
            Devolucion_reembolso
        WHERE
            dr.id_producto = p.id_producto
            AND dr.id_devolucion_reembolso IN (
                SELECT id_devolucion_reembolso
                FROM Devolucion_reembolso
                WHERE 
                    dr.fecha BETWEEN '2023-01-01' AND '2023-01-04')
    )
GROUP BY
    p.id_producto,
    p.nombre,
	dr.fecha
ORDER BY
    total_devoluciones DESC;



-- Punto 4
SELECT
    e.numero_cedula_empleado,
    e.nombres,
    e.apellidos,
    DATEPART(YEAR, rv.fecha_reporte) AS anio,
    DATEPART(MONTH, rv.fecha_reporte) AS mes,
    COUNT(rv.id_reporte_venta) AS total_ventas
FROM
    Reporte_venta rv
JOIN
    Empleado e ON rv.id_empleado = e.numero_cedula_empleado
GROUP BY
    e.numero_cedula_empleado,
    e.nombres,
    e.apellidos,
    DATEPART(YEAR, rv.fecha_reporte),
    DATEPART(MONTH, rv.fecha_reporte)
ORDER BY
    anio DESC,
    mes ASC,
    e.numero_cedula_empleado;



-- Punto 5
SELECT
    p.id_proveedor,
    p.nombre AS nombre_proveedor,
    p.tiempo_entrega
FROM
    Proveedor p
ORDER BY
    p.tiempo_entrega ASC;



-- Punto 6 
SELECT
    p.id_producto,
    p.nombre AS nombre_producto,
    p.precio AS precio_venta,
    p.costo_adquisicion,
	(p.precio - p.costo_adquisicion) AS diferencia,
    ((p.precio - p.costo_adquisicion) / p.costo_adquisicion) * 100 AS margen_ganancia
FROM
    Producto p
ORDER BY
    margen_ganancia DESC;



-- Punto 7
SELECT 
    hc.id_historial_compra,
    c.nombres,
    c.apellidos,
    p.nombre AS producto,
    f.id_factura
FROM 
    Historial_compra hc
INNER JOIN Cliente c ON hc.id_cliente = c.numero_cedula_cliente
INNER JOIN Compra co ON hc.id_compra = co.id_compra
INNER JOIN Producto p ON co.id_producto = p.id_producto
INNER JOIN Factura f ON co.id_factura = f.id_factura
LEFT JOIN Promocion_descuento pd ON f.id_promocion_descuento = pd.id_promocion_descuento
WHERE 
    c.numero_cedula_cliente = 3;



-- Punto 8
SELECT 
    e.numero_cedula_empleado, 
    e.nombres, 
    e.apellidos, 
    COUNT(DISTINCT rv.id_sede) AS numero_sedes
FROM 
    Empleado e
INNER JOIN Reporte_venta rv ON e.numero_cedula_empleado = rv.id_empleado
GROUP BY 
    e.numero_cedula_empleado, e.nombres, e.apellidos
HAVING 
    COUNT(DISTINCT rv.id_sede) > 1;



-- Punto 9
SELECT 
    pd.id_promocion_descuento, 
    pd.fecha_inicio, 
    pd.fecha_final,
    c.nombre AS categoria, 
    p.nombre AS producto,
    COUNT(tv.id_transaccion) AS numero_transacciones
FROM 
    Promocion_descuento pd
LEFT JOIN Detalle_Categoria_producto_Promocion_descuento dc ON pd.id_promocion_descuento = dc.id_promocion_descuento
LEFT JOIN Categoria_producto c ON dc.id_categoria_producto = c.id_categoria_producto
LEFT JOIN Detalle_Producto_Promocion_descuento dp ON pd.id_promocion_descuento = dp.id_promocion_descuento
LEFT JOIN Producto p ON dp.id_producto = p.id_producto
LEFT JOIN Detalle_Transacciones_venta_Promocion_descuento dt ON pd.id_promocion_descuento = dt.id_promocion_descuento
LEFT JOIN Transacciones_venta tv ON dt.id_transaccion = tv.id_transaccion
WHERE 
    pd.fecha_final >= DATEADD(quarter, -1, GETDATE())
GROUP BY 
    pd.id_promocion_descuento, pd.fecha_inicio, pd.fecha_final, c.nombre, p.nombre
ORDER BY 
    pd.fecha_final DESC




-- Punto 10
SELECT 
    tv.id_transaccion,
    tv.fecha_transaccion,
    tv.cantidad_productos,
    tv.precio_total,
    mp.nombre AS metodo_pago
FROM 
    Transacciones_venta tv
INNER JOIN Metodos_pago mp ON tv.id_metodo_pago = mp.id_metodo_pago
WHERE 
    mp.nombre = 'Tarjeta de Credito';



-- Punto 11
SELECT 
    c.nombres, 
    c.apellidos, 
    pf.cantidad AS puntos_acumulados
FROM 
    Cliente c
INNER JOIN Puntos_fidelidad pf ON c.numero_cedula_cliente = pf.id_cliente
WHERE 
    c.numero_cedula_cliente = 3;



-- Punto 12
SELECT 
    p.nombre AS producto,
    i.stock AS cantidad_en_stock,
    30 AS umbral_minimo
FROM 
    Inventario i
INNER JOIN Producto p ON i.id_producto = p.id_producto
WHERE 
    i.stock < 30;



-- Punto 13
SELECT 
    c.numero_cedula_cliente, 
    c.nombres, 
    c.apellidos,
    COUNT(tv.id_transaccion) AS compras
FROM 
    Cliente c
INNER JOIN Compra co ON c.numero_cedula_cliente = co.id_cliente
INNER JOIN Transacciones_venta tv ON co.id_transaccion = tv.id_transaccion
GROUP BY 
    c.numero_cedula_cliente, c.nombres, c.apellidos
ORDER BY 
    COUNT(tv.id_transaccion) DESC;



-- Punto 14
SELECT * FROM Auditoria_actividades;

-- Punto 15
WITH DescuentosAplicados AS (
    SELECT
        t.id_transaccion,
        p.porcentaje AS porcentaje_descuento,
        t.precio_total * (p.porcentaje / 100.0) AS descuento_aplicado
    FROM 
        Transacciones_venta t
    JOIN
        Detalle_Transacciones_venta_Promocion_descuento d ON t.id_transaccion = d.id_transaccion
    JOIN
        Promocion_descuento p ON d.id_promocion_descuento = p.id_promocion_descuento
),
VentasNetas AS (
    SELECT
        t.id_transaccion,
        t.precio_total,
        COALESCE(d.descuento_aplicado, 0) AS descuento_aplicado,
        porcentaje_descuento,
        (t.precio_total - COALESCE(d.descuento_aplicado, 0)) AS venta_neta
    FROM
        Transacciones_venta t
    LEFT JOIN
        DescuentosAplicados d ON t.id_transaccion = d.id_transaccion
)

SELECT
    id_transaccion,
    precio_total,
    descuento_aplicado,
	porcentaje_descuento,
    venta_neta
FROM
    VentasNetas;



