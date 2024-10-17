SELECT 
    Ciudades.Nombre AS Ciudad, 
    Empleados.Nombres AS NombreEmpleado, 
    Empleados.Apellidos AS ApellidoEmpleado, 
    Empresas.Nombre AS NombreEmpresa,
    Empresas.Telefono AS TelefonoEmpresa,
    Empresas.Correo AS CorreoEmpresa,
    Buses.Placa AS PlacaBus,
    Buses.Marca AS MarcaBus,
    Rutas.Nombre AS NombreRuta,
    Boletos.Numero_asiento AS NumeroAsiento,
    Factura.Valor_total AS ValorFactura,
    Factura.Fecha_facturacion AS FechaFactura,
    Viajes.Fecha_salida AS FechaViaje,
    COUNT(Boletos.id_boleto) AS TotalBoletosVendidos,
    COUNT(Viajes.id_viaje) AS TotalViajesBus

FROM Ciudades
	LEFT JOIN Sedes ON Ciudades.id_ciudad = Sedes.id_ciudad
	LEFT JOIN Empleados ON Sedes.id_sede = Empleados.id_sede
	LEFT JOIN Buses ON Empleados.cedula_empleado = Buses.id_empleado  
	LEFT JOIN Detalle_Buses_Rutas DBR ON Buses.Placa = DBR.id_bus
	LEFT JOIN Rutas ON DBR.id_ruta = Rutas.id_ruta
	LEFT JOIN Boletos ON Rutas.id_ruta = Boletos.id_ruta
	LEFT JOIN Destinos ON Boletos.id_destino = Destinos.id_destino
	LEFT JOIN Factura ON Boletos.id_boleto = Factura.id_boleto
	LEFT JOIN Viajes ON Factura.id_viaje = Viajes.id_viaje
	LEFT JOIN Empresas ON Buses.id_empresa = Empresas.id_empresa 

WHERE 
	Empresas.id_tipo_empresa IN (SELECT id_tipo_empresa FROM Tipo_empresa WHERE Nombre LIKE '%transporte%')
	AND Empleados.Nombres LIKE 'J%' 
	AND Factura.Valor_total > 226700 

GROUP BY 
    Ciudades.Nombre, 
    Empleados.Nombres, 
    Empleados.Apellidos, 
    Empresas.Nombre,
    Empresas.Telefono,
    Empresas.Correo,
    Buses.Placa,
    Buses.Marca,
    Rutas.Nombre,
    Boletos.Numero_asiento,
    Factura.Valor_total,
    Factura.Fecha_facturacion,
    Viajes.Fecha_salida
ORDER BY Ciudad ASC, ValorFactura DESC;