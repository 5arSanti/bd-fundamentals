--mostrar de la factura el id de la factura, el nombre de cada cliente con el numero de boleto, el nombre del empleado que lo atendio
--la fecha de salida, el valor total del boleto y el tipo de seguro de cada cliente  
SELECT 
	f.id_factura, 
	c.Nombres AS Cliente, 
	e.Nombres AS Empleado, 
	b.id_boleto, v.Fecha_salida, 
	f.Valor_total,
	s.Nombre AS Tipo_Seguro

FROM Factura f
	JOIN Cliente c ON f.id_cliente = c.id_cliente
	JOIN Empleados e ON f.id_empleado = e.cedula_empleado
	JOIN Boletos b ON f.id_boleto = b.id_boleto
	JOIN Viajes v ON f.id_viaje = v.id_viaje
	JOIN Equipaje eq ON f.id_equipaje = eq.id_equipaje
	JOIN Seguro s ON f.id_seguro = s.id_seguro

ORDER BY f.id_factura ASC;
