SELECT
    e.cedula_empleado,
    e.Nombres AS nombre,
    e.Apellidos AS apellido,
    co.Nombre AS ciudad_origen,
    s.Nombre AS sede,
    emp.Nombre AS empresa,
    b.Placa AS bus_asignado,
    r.Nombre AS ruta_asignada

FROM Empleados e
	JOIN Ciudades co ON e.id_ciudad_origen = co.id_ciudad
	JOIN Sedes s ON e.id_sede = s.id_sede
	JOIN Buses b ON e.cedula_empleado = b.id_empleado
	JOIN Empresas emp ON b.id_empresa = emp.id_empresa
	JOIN Detalle_Buses_Rutas dbr ON b.Placa = dbr.id_bus
	JOIN Rutas r ON dbr.id_ruta = r.id_ruta

WHERE
    co.Nombre = 'Bogotá';