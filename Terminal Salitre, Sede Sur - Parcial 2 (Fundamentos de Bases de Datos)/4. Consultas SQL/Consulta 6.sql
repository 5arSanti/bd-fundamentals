SELECT 
    c.Nombres AS Nombre_Cliente,
    c.Apellidos AS Apellido_Cliente,
    v.Fecha_salida AS Fecha_Viaje,
    v.Valor AS Valor_Viaje,
    b.Marca AS Marca_Bus,
    r.Nombre AS Nombre_Ruta

FROM Viajes v
	JOIN Buses b ON v.id_bus = b.Placa
	JOIN Rutas r ON v.id_ruta = r.id_ruta
	JOIN Boletos bo ON bo.id_ruta = r.id_ruta 
	JOIN Factura f ON f.id_boleto = bo.id_boleto
	JOIN Cliente c ON f.id_cliente = c.id_cliente 
	JOIN Destinos d ON bo.id_destino = d.id_destino 

WHERE c.Nombres LIKE '%A%' AND b.Marca LIKE '%Scania%'
ORDER BY c.Apellidos DESC;