SELECT 
    Tipo_cliente.Nombre AS TipoCliente,
    Tipo_cliente.Descripcion,
    Cliente.id_cliente,
    Cliente.Nombres,
    Cliente.Apellidos,
    Ciudades_origen.Nombre AS CiudadOrigen,
    Ciudades_residencia.Nombre AS CiudadResidencia

FROM Tipo_cliente
	JOIN Cliente ON Tipo_cliente.id_tipo_cliente = Cliente.id_tipo_cliente
	JOIN Ciudades AS Ciudades_origen ON Cliente.id_ciudad_origen = Ciudades_origen.id_ciudad
	JOIN Ciudades AS Ciudades_residencia ON Cliente.id_ciudad_residencia = Ciudades_residencia.id_ciudad
	JOIN Boletos ON Cliente.id_cliente = (SELECT id_cliente FROM Factura WHERE Factura.id_boleto = Boletos.id_boleto)
	JOIN Factura ON Factura.id_cliente = Cliente.id_cliente

ORDER BY 
    Tipo_cliente.Nombre;

