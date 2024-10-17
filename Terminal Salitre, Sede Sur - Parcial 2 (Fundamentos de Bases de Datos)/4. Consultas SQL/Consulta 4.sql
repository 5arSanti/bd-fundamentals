SELECT 
    v.id_viaje,
    v.Fecha_salida,
    c.Nombres AS Cliente_Nombre,
    c.Apellidos AS Cliente_Apellido,
    tc.Nombre AS Tipo_Cliente,
    d.Nombre AS Destino_Nombre,
    f.Valor_total AS Factura_Valor_Total,
    e.Nombres AS Conductor_Nombre,
    e.Apellidos AS Conductor_Apellido

FROM Viajes v 
	JOIN Factura f ON v.id_viaje = f.id_viaje
	JOIN Cliente c ON f.id_cliente = c.id_cliente
	JOIN Tipo_cliente tc ON c.id_tipo_cliente = tc.id_tipo_cliente
	JOIN Destinos d ON v.id_ciudad_destino = d.id_ciudad_destino
	JOIN Empleados e ON v.id_conductor = e.cedula_empleado

