SELECT 
    v.id_viaje,
    v.Fecha_salida,
    v.Valor,
    c1.Nombre AS Ciudad_Origen,
    c2.Nombre AS Ciudad_Destino,
    e.Nombres AS Nombre_Conductor,
    b.Marca AS Marca_Bus,
    r.Nombre AS Ruta,
    t.Nombre AS Tipo_Bus

FROM Viajes v
	JOIN Ciudades c1 ON v.id_ciudad_origen = c1.id_ciudad
	JOIN Ciudades c2 ON v.id_ciudad_destino = c2.id_ciudad
	JOIN Empleados e ON v.id_conductor = e.cedula_empleado
	JOIN Buses b ON v.id_bus = b.Placa
	JOIN Rutas r ON v.id_ruta = r.id_ruta
	JOIN Tipo_bus t ON b.id_tipo_bus = t.id_tipo_bus

WHERE v.Valor > 250000;