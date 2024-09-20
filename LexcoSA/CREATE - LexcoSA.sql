CREATE DATABASE LexcoSA;

GO


USE LexcoSA;

CREATE TABLE Ciudades (
    id_ciudad INT PRIMARY KEY NOT NULL,
    nombre VARCHAR(255)NOT NULL
);

CREATE TABLE Proveedores (
    id_proveedor INT PRIMARY KEY NOT NULL,
    nombre VARCHAR(50) NOT NULL,
    descripcion VARCHAR(255)NOT NULL,
	id_ciudad INT FOREIGN KEY REFERENCES Ciudades(id_ciudad)
);

CREATE TABLE Marca (
    id_marca INT PRIMARY KEY NOT NULL,
    nombre VARCHAR(50)NOT NULL
);

CREATE TABLE Detalles_Marca_Proveedor (
    id_proveedor INT FOREIGN KEY REFERENCES Proveedores(id_proveedor),
    id_marca INT FOREIGN KEY REFERENCES Marca(id_marca)
);

CREATE TABLE Tipo_producto (
    id_tipo_producto INT PRIMARY KEY NOT NULL,
    nombre VARCHAR(50)NOT NULL
);

CREATE TABLE Mantenimiento (
    id_mantenimiento INT PRIMARY KEY NOT NULL,
    nombre VARCHAR(255)NOT NULL
);

CREATE TABLE Dispositivos (
    id_dispositivo INT PRIMARY KEY NOT NULL,
    nombre VARCHAR(50)NOT NULL
);

CREATE TABLE Detalles_Mantenimiento_Dispositivos (
    id_mantenimiento INT FOREIGN KEY REFERENCES Mantenimiento(id_mantenimiento),
    id_dispositivo INT FOREIGN KEY REFERENCES Dispositivos(id_dispositivo)
);

CREATE TABLE Sistema_operativo (
    id_sistema_operativo INT PRIMARY KEY NOT NULL,
    nombre VARCHAR(50)NOT NULL,
    version VARCHAR(50)NOT NULL
);

CREATE TABLE Configuracion_dispositivos (
    id_configuracion_dispositivos INT PRIMARY KEY NOT NULL,
    nombre VARCHAR(255)NOT NULL
);

CREATE TABLE Metodo_pago (
    id_metodo_pago INT PRIMARY KEY NOT NULL,
    nombre VARCHAR(50)NOT NULL
);

CREATE TABLE Compras (
    id_compra INT PRIMARY KEY NOT NULL,
    valor_pagado INT NOT NULL,
    fecha_compra DATE NOT NULL
);

CREATE TABLE Personal (
    numero_cedula INT PRIMARY KEY NOT NULL,
    nombres VARCHAR(100) NOT NULL,
    apellidos VARCHAR(100) NOT NULL,
    sexo VARCHAR(100) NOT NULL,
    numero VARCHAR(100) NOT NULL,
    telefono VARCHAR(50) NOT NULL,
    id_ciudad_origen INT FOREIGN KEY REFERENCES Ciudades(id_ciudad),
    id_ciudad_residencia INT FOREIGN KEY REFERENCES Ciudades(id_ciudad)
);

CREATE TABLE Ventas (
    id_venta INT PRIMARY KEY NOT NULL,
    valor_total INT NOT NULL,
    id_personal INT FOREIGN KEY REFERENCES Personal(numero_cedula)
);

CREATE TABLE Producto (
    id_producto INT PRIMARY KEY NOT NULL,
    nombre VARCHAR(50)NOT NULL,
    descripcion VARCHAR(100)NOT NULL,
    precio INT NOT NULL,
    id_tipo_producto INT FOREIGN KEY REFERENCES Tipo_producto(id_tipo_producto),
    id_sistema_operativo INT FOREIGN KEY REFERENCES Sistema_operativo(id_sistema_operativo),
    id_configuracion_dispositivos INT FOREIGN KEY REFERENCES Configuracion_dispositivos(id_configuracion_dispositivos),
    id_dispositivo INT FOREIGN KEY REFERENCES Dispositivos(id_dispositivo),
	id_marca INT FOREIGN KEY REFERENCES Marca(id_marca)
);

CREATE TABLE Cliente (
    id_cliente INT PRIMARY KEY NOT NULL,
    nombres VARCHAR(100) NOT NULL,
    apellidos VARCHAR(100) NOT NULL,
    direccion VARCHAR(255) NOT NULL,
    telefono VARCHAR(50) NOT NULL,
    correo VARCHAR(100) NOT NULL,
    id_ciudad_origen INT FOREIGN KEY REFERENCES Ciudades(id_ciudad)
);


CREATE TABLE Elementos_adicionales (
    id_elemento_adicional INT PRIMARY KEY NOT NULL,
    nombre VARCHAR(100) NOT NULL,
    precio INT NOT NULL,
    color VARCHAR(100) NOT NULL,
    descripcion VARCHAR(100) NOT NULL,
    id_marca INT FOREIGN KEY REFERENCES Marca(id_marca)
);

CREATE TABLE Factura_compra(
    id_factura INT PRIMARY KEY NOT NULL,
    valor_pagado INT NOT NULL,
    fecha_compra DATE NOT NULL,
    id_compra INT FOREIGN KEY REFERENCES Compras(id_compra),
    id_proveedor INT FOREIGN KEY REFERENCES Proveedores(id_proveedor),
    id_producto INT FOREIGN KEY REFERENCES Producto(id_producto),
	id_metodo_pago INT FOREIGN KEY REFERENCES Metodo_pago(id_metodo_pago),
);

CREATE TABLE Factura_mantenimiento(
    id_factura INT PRIMARY KEY NOT NULL,
    fecha_recibido DATE NOT NULL,
    fecha_entrega DATE NOT NULL,
    valor_total INT NOT NULL,
    id_cliente INT FOREIGN KEY REFERENCES Cliente(id_cliente),
    id_metodo_pago INT FOREIGN KEY REFERENCES Metodo_pago(id_metodo_pago),
    id_mantenimiento INT FOREIGN KEY REFERENCES Mantenimiento(id_mantenimiento),
    id_personal INT FOREIGN KEY REFERENCES Personal(numero_cedula),
    id_producto INT FOREIGN KEY REFERENCES Producto(id_producto)
);

CREATE TABLE Factura_venta(
    id_factura INT PRIMARY KEY NOT NULL,
    fecha_recibido DATE NOT NULL,
    fecha_entrega DATE NOT NULL,
    valor_total INT NOT NULL,
    id_metodo_pago INT FOREIGN KEY REFERENCES Metodo_pago(id_metodo_pago),
    id_cliente INT FOREIGN KEY REFERENCES Cliente(id_cliente),
    id_personal INT FOREIGN KEY REFERENCES Personal(numero_cedula),
    id_marca INT FOREIGN KEY REFERENCES Marca(id_marca),
    id_producto INT FOREIGN KEY REFERENCES Producto(id_producto),
    id_venta INT FOREIGN KEY REFERENCES Ventas(id_venta)

);

CREATE TABLE Reclamacion(
    id_reclamacion INT PRIMARY KEY NOT NULL,
    motivo TEXT NOT NULL,
    validacion BIT NOT NULL,
    fecha_entrega DATE NOT NULL,
    id_factura INT FOREIGN KEY REFERENCES Factura_compra(id_factura),
    id_personal INT FOREIGN KEY REFERENCES Personal(numero_cedula),
    id_cliente INT FOREIGN KEY REFERENCES Cliente(id_cliente),
    id_producto INT FOREIGN KEY REFERENCES Producto(id_producto)
);
 GO
