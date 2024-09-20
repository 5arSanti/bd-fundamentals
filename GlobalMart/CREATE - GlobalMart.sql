CREATE DATABASE GlobalMart;

GO


USE GlobalMart;


CREATE TABLE Categoria_producto (
	id_categoria_producto INT PRIMARY KEY NOT NULL,
	nombre VARCHAR(50)NOT NULL,
);

CREATE TABLE Proveedor (
	id_proveedor INT PRIMARY KEY NOT NULL,
	nombre VARCHAR(50) NOT NULL,
	productos VARCHAR(50) NOT NULL,
	condiciones_suministro VARCHAR(255) NOT NULL,
	tiempo_entrega DATE NOT NULL,
	contactos_clave VARCHAR(255) NOT NULL,
);

CREATE TABLE Sede (
	id_sede INT PRIMARY KEY NOT NULL,
	ubicacion VARCHAR(255) NOT NULL,
	capacidad_almacenamiento INT NOT NULL,
	datos_contacto VARCHAR(255) NOT NULL,
);

CREATE TABLE Metodos_pago (
	id_metodo_pago INT PRIMARY KEY NOT NULL,
	nombre VARCHAR(50) NOT NULL
);

CREATE TABLE Roles (
	id_rol INT PRIMARY KEY NOT NULL,
	nombre VARCHAR(50) NOT NULL
);

CREATE TABLE Horarios (
	id_horarios INT PRIMARY KEY NOT NULL,
	horario VARCHAR(255) NOT NULL
);

CREATE TABLE Preferencia_comunicacion (
	id_preferencia_comunicacion INT PRIMARY KEY NOT NULL,
	preferencia VARCHAR(255) NOT NULL
);

CREATE TABLE Seguridad_acceso (
	id_seguridad_acceso INT PRIMARY KEY NOT NULL,
	autorizacion BIT NOT NULL
);

CREATE TABLE Impuestos (
	id_impuesto INT PRIMARY KEY NOT NULL,
	nombre VARCHAR(50) NOT NULL
);

CREATE TABLE Auditoria_actividades (
	id_auditoria INT PRIMARY KEY NOT NULL,
	accion_realizada TEXT NOT NULL,
	fecha_realizacion DATE NOT NULL,
);


CREATE TABLE Cliente (
	numero_cedula_cliente INT PRIMARY KEY NOT NULL, 
	nombres VARCHAR(50) NOT NULL,
	apellidos VARCHAR(50) NOT NULL,
	edad INT NOT NULL,
	sexo VARCHAR(50) NOT NULL,
	ubicacion VARCHAR(255) NOT NULL,
	id_preferencia_comunicacion INT FOREIGN KEY REFERENCEs Preferencia_comunicacion(id_preferencia_comunicacion),
);

CREATE TABLE Puntos_fidelidad (
	id_puntos_fidelidad INT PRIMARY KEY NOT NULL,
	cantidad INT NOT NULL,
	id_cliente INT FOREIGN KEY REFERENCES cliente(numero_cedula_cliente),
);

CREATE TABLE Empleado (
	numero_cedula_empleado INT PRIMARY KEY NOT NULL, 
	nombres VARCHAR(50) NOT NULL,
	apellidos VARCHAR(50) NOT NULL,
	edad INT NOT NULL,
	sexo VARCHAR(50) NOT NULL,
	ubicacion VARCHAR(100) NOT NULL,
	id_rol INT FOREIGN KEY REFERENCEs Roles(id_rol),
	id_horario INT FOREIGN KEY REFERENCEs Horarios(id_horarios),
);

CREATE TABLE Reporte_venta (
	id_reporte_venta INT PRIMARY KEY NOT NULL,
	fecha_reporte DATE NOT NULL,
	id_sede INT FOREIGN KEY REFERENCES Sede(id_sede),
	id_empleado INT FOREIGN KEY REFERENCES Empleado(numero_cedula_empleado),
);

CREATE TABLE Producto (
	id_producto INT PRIMARY KEY NOT NULL,
	nombre VARCHAR(50) NOT NULL,
	descripcion VARCHAR(255) NOT NULL,
	precio INT NOT NULL,
	costo_adquisicion INT NOT NULL,
	id_categoria_producto INT FOREIGN KEY REFERENCES Categoria_producto(id_categoria_producto),
	id_proveedor INT FOREIGN KEY REFERENCES Proveedor(id_proveedor),
	id_sede INT FOREIGN KEY REFERENCES sede(id_sede),
);

CREATE TABLE Devolucion_reembolso (
	id_devolucion_reembolso INT PRIMARY KEY NOT NULL,
	razon TEXT NOT NULL,
	tipo VARCHAR(50) NOT NULL,
	fecha DATE NOT NULL,
	id_cliente INT FOREIGN KEY REFERENCES Cliente(numero_cedula_cliente),
	id_producto INT FOREIGN KEY REFERENCES Producto(id_producto)
);

CREATE TABLE Inventario (
	id_inventario INT PRIMARY KEY NOT NULL, 
	stock INT NOT NULL,
	rotacion_productos VARCHAR(255) NOT NULL,
	id_sede INT FOREIGN KEY REFERENCES Sede(id_sede),
	id_proveedor INT FOREIGN KEY REFERENCEs Proveedor(id_proveedor),
	id_producto INT FOREIGN KEY REFERENCEs Producto(id_producto),
	id_categoria_producto INT FOREIGN KEY REFERENCEs Categoria_producto(id_categoria_producto)
);

CREATE TABLE Promocion_descuento (
	id_promocion_descuento INT PRIMARY KEY NOT NULL,
	porcentaje INT NOT NULL,
	fecha_inicio DATE NOT NULL,
	fecha_final DATE NOT NULL
);



CREATE TABLE Factura (
	id_factura INT PRIMARY KEY NOT NULL, 
	id_producto INT FOREIGN KEY REFERENCES Producto(id_producto),
	id_promocion_descuento INT FOREIGN KEY REFERENCES Promocion_descuento(id_promocion_descuento),
	id_sede INT FOREIGN KEY REFERENCES Sede(id_sede),
	id_cliente INT FOREIGN KEY REFERENCES Cliente(numero_cedula_cliente),
	id_empleado INT FOREIGN KEY REFERENCES Empleado(numero_cedula_empleado),
	id_categoria INT FOREIGN KEY REFERENCES Categoria_producto(id_categoria_producto),
	id_impuesto INT FOREIGN KEY REFERENCES Impuestos(id_impuesto), 
);

CREATE TABLE Transacciones_venta (
	id_transaccion INT PRIMARY KEY NOT NULL, 
	fecha_transaccion DATE NOT NULL,
	cantidad_productos INT NOT NULL,
	precio_total INT NOT NULL,
	id_metodo_pago INT FOREIGN KEY REFERENCES Metodos_pago(id_metodo_pago),
	id_devolucion_reembolso INT FOREIGN KEY REFERENCES Devolucion_reembolso(id_devolucion_reembolso),
);

CREATE TABLE Compra (
	id_compra INT PRIMARY KEY NOT NULL, 
	id_producto INT FOREIGN KEY REFERENCES Producto(id_producto),
	id_categoria_producto INT FOREIGN KEY REFERENCEs Categoria_producto(id_categoria_producto),
	id_cliente INT FOREIGN KEY REFERENCES Cliente(numero_cedula_cliente),
	id_puntos_fidelidad INT FOREIGN KEY REFERENCES Puntos_fidelidad(id_puntos_fidelidad),
	id_factura INT FOREIGN KEY REFERENCES Factura(id_factura),
	id_transaccion INT FOREIGN KEY REFERENCES Transacciones_venta(id_transaccion),
);

CREATE TABLE Historial_compra (
	id_historial_compra INT PRIMARY KEY NOT NULL,
	id_compra INT FOREIGN KEY REFERENCES Compra(id_compra),
	id_cliente INT FOREIGN KEY REFERENCES Cliente(numero_cedula_cliente),
);

CREATE TABLE Control_calidad (
	id_control_calidad INT PRIMARY KEY NOT NULL, 
	id_devolucion_reembolso INT FOREIGN KEY REFERENCES Devolucion_reembolso(id_devolucion_reembolso),
	id_promocion_descuento INT FOREIGN KEY REFERENCES Promocion_descuento(id_promocion_descuento),
);

CREATE TABLE Mantenimiento_bd (
	id_mantenimiento INT PRIMARY KEY NOT NULL, 
	tipo VARCHAR(50) NOT NULL,
	fecha_realizacion DATE NOT NULL,
	id_auditoria INT FOREIGN KEY REFERENCES Auditoria_actividades(id_auditoria),
	id_seguridad_acceso INT FOREIGN KEY REFERENCES Seguridad_acceso(id_seguridad_acceso),
);

CREATE TABLE Detalle_Categoria_producto_Promocion_descuento (
	id_categoria_producto INT FOREIGN KEY REFERENCES Categoria_producto(id_categoria_producto),
	id_promocion_descuento INT FOREIGN KEY REFERENCES Promocion_descuento(id_promocion_descuento)
);

CREATE TABLE Detalle_Producto_Promocion_descuento (
	id_producto INT FOREIGN KEY REFERENCES Producto(id_producto),
	id_promocion_descuento INT FOREIGN KEY REFERENCES Promocion_descuento(id_promocion_descuento)
);

CREATE TABLE Detalle_Transacciones_venta_Promocion_descuento (
	id_transaccion INT FOREIGN KEY REFERENCES Transacciones_venta(id_transaccion),
	id_promocion_descuento INT FOREIGN KEY REFERENCES Promocion_descuento(id_promocion_descuento)
);

CREATE TABLE Detalle_Compra_Reporte_venta (
	id_compra INT FOREIGN KEY REFERENCES Compra(id_compra),
	id_reporte_venta INT FOREIGN KEY REFERENCES Reporte_venta(id_reporte_venta)
);

CREATE TABLE Detalle_Producto_Control_calidad (
	id_control_calidad INT FOREIGN KEY REFERENCES Control_calidad(id_control_calidad),
	id_producto INT FOREIGN KEY REFERENCES Producto(id_producto)
);

GO