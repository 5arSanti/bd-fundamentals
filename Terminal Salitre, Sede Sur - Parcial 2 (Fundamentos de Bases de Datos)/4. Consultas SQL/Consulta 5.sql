SELECT 
    v.id_viaje,
    v.Fecha_salida AS Viaje_Fecha,
    c.Nombres AS Cliente_Nombre,
    c.Apellidos AS Cliente_Apellido,
    tc.Nombre AS Tipo_Cliente,
    b.Placa AS Bus_Placa,
    b.Marca AS Bus_Marca,
    b.Capacidad AS Bus_Capacidad,
    e.Nombres AS Conductor_Nombre,
    e.Apellidos AS Conductor_Apellido,
    m.Fecha_mantenimiento AS Mantenimiento_Fecha,
    m.Descripcion AS Mantenimiento_Descripcion,
    tm.Nombre AS Tipo_Mantenimiento,
    f.Valor_total AS Factura_Valor_Total

FROM Viajes v
	JOIN Factura f ON v.id_viaje = f.id_viaje
	JOIN Cliente c ON f.id_cliente = c.id_cliente
	JOIN Tipo_cliente tc ON c.id_tipo_cliente = tc.id_tipo_cliente
	JOIN Buses b ON v.id_bus = b.Placa
	JOIN Empleados e ON v.id_conductor = e.cedula_empleado
	LEFT JOIN Mantenimientos m ON b.Placa = m.id_bus
	LEFT JOIN Tipo_mantenimiento tm ON m.id_tipo_mantenimiento = tm.id_tipo_mantenimiento;