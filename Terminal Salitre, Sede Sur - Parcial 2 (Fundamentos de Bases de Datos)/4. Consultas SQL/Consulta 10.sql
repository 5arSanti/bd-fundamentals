SELECT
    f.id_factura,
    f.Fecha_facturacion,
    f.Valor_total,
    c.Nombres AS Nombre_Cliente,
    c.Apellidos AS Apellido_Cliente,
    c.Telefono AS Telefono_Cliente,
    c.Correo AS Correo_Cliente,
    e.Nombres AS Nombre_Empleado,
    e.Apellidos AS Apellido_Empleado,
    b.Numero_asiento AS Numero_Asiento_Boleto,
    bus.Placa AS Placa_Bus,
    bus.Marca AS Marca_Bus,
    v.Fecha_salida AS Fecha_Viaje,
    v.Valor AS Valor_Viaje,
    d.Nombre AS Destino,
    eq.peso AS Peso_Equipaje,
    eq.descripcion AS Descripcion_Equipaje,
    s.Nombre AS Seguro_Nombre,
    mp.Nombre AS Metodo_Pago_Nombre
FROM Factura f
     JOIN Cliente c ON f.id_cliente = c.id_cliente
     JOIN Empleados e ON f.id_empleado = e.cedula_empleado
     JOIN Boletos b ON f.id_boleto = b.id_boleto
     JOIN Buses bus ON b.id_bus = bus.Placa
     JOIN Viajes v ON f.id_viaje = v.id_viaje
     JOIN Destinos d ON b.id_destino = d.id_destino
     JOIN Equipaje eq ON f.id_equipaje = eq.id_equipaje
     JOIN Seguro s ON f.id_seguro = s.id_seguro
     JOIN Metodo_pago mp ON f.id_metodo_pago = mp.id_metodo_pago
ORDER BY f.Fecha_facturacion DESC;