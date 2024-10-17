SELECT 
    f.id_factura,
    f.Fecha_facturacion,
    c.Nombres AS Nombre_Cliente,
    e.Nombres AS Nombre_Empleado,
    b.Placa AS Bus_Placa,
    r.Nombre AS Ruta_Nombre,
    v.Fecha_salida,
    f.Valor_total

FROM Factura f
	JOIN Cliente c ON f.id_cliente = c.id_cliente
	JOIN Empleados e ON f.id_empleado = e.cedula_empleado
	JOIN Boletos bo ON f.id_boleto = bo.id_boleto
	JOIN Buses b ON bo.id_bus = b.Placa
	JOIN Viajes v ON f.id_viaje = v.id_viaje
	JOIN Rutas r ON v.id_ruta = r.id_ruta

WHERE f.Valor_total > 100;