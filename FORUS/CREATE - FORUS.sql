CREATE DATABASE FORUS;

GO


USE FORUS;


CREATE TABLE tipo_zapatos (
	id_tipo_zapato INT PRIMARY KEY NOT NULL, 
	nombre VARCHAR(50) NOT NULL,
);

CREATE TABLE tipo_producto (
	id_tipo_producto INT PRIMARY KEY NOT NULL, 
	nombre VARCHAR(50) NOT NULL,
);

CREATE TABLE color_producto (
	id_color_producto INT PRIMARY KEY NOT NULL, 
	nombre VARCHAR(50) NOT NULL,
);

CREATE TABLE ciudades (
	id_ciudad INT PRIMARY KEY NOT NULL,
	nombre VARCHAR(50) NOT NULL,
);

CREATE TABLE dias (
	id_dia INT PRIMARY KEY NOT NULL,
	nombre VARCHAR(50) NOT NULL,
);

CREATE TABLE zonas (
	id_zona INT PRIMARY KEY NOT NULL,
	nombre VARCHAR(50),
	id_ciudad INT FOREIGN KEY REFERENCES ciudades(id_ciudad),
)

CREATE TABLE camiones (
	placa VARCHAR(7) PRIMARY KEY NOT NULL,
	cantidad_productos INT NOT NULL,
	id_zona INT FOREIGN KEY REFERENCES zonas(id_zona),
);

CREATE TABLE locales (
	id_local INT PRIMARY KEY NOT NULL,
	nombre VARCHAR(50) NOT NULL,
	id_zona INT FOREIGN KEY REFERENCES zonas(id_zona),
	placa_camion VARCHAR(7) FOREIGN KEY REFERENCES camiones(placa),
	id_ciudad INT FOREIGN KEY REFERENCES ciudades(id_ciudad),
);

CREATE TABLE asesores (
	numero_cedula INT PRIMARY KEY NOT NULL,
	nombres VARCHAR(50) NOT NULL,
	apellidos VARCHAR(50) NOT NULL,
	sexo VARCHAR(50) NOT NULL,
	direccion VARCHAR(255) NOT NULL,
	telefono_movil VARCHAR(50) NOT NULL,
	id_local INT FOREIGN KEY REFERENCES locales(id_local),
	id_ciudad_origen INT FOREIGN KEY REFERENCES ciudades(id_ciudad),
	id_ciudad_residencia INT FOREIGN KEY REFERENCES ciudades(id_ciudad),
);

CREATE TABLE tipo_talla (
	id_tipo_talla INT PRIMARY KEY NOT NULL,
	nombre VARCHAR(50) NOT NULL,
);

CREATE TABLE talla (
	id_talla INT PRIMARY KEY NOT NULL,
	nombre VARCHAR(50) NOT NULL,
	id_tipo_talla INT FOREIGN KEY REFERENCES tipo_talla(id_tipo_talla)
)

CREATE TABLE zapatos (
	id_zapato INT PRIMARY KEY NOT NULL,
	nombre VARCHAR(50) NOT NULL,
	id_tipo_zapato INT FOREIGN KEY REFERENCES tipo_zapatos(id_tipo_zapato),
	id_color_producto INT FOREIGN KEY REFERENCES color_producto(id_color_producto),
	id_local INT FOREIGN KEY REFERENCES locales(id_local),
);

CREATE TABLE Detalles_talla_zapatos (
	id_talla INT FOREIGN KEY REFERENCES talla(id_talla),
	id_zapato INT FOREIGN KEY REFERENCES zapatos(id_zapato)
);

CREATE TABLE producto (
	id_producto INT PRIMARY KEY,
	nombre VARCHAR(50),
	precio INT NOT NULL,
	id_color_producto INT FOREIGN KEY REFERENCEs color_producto(id_color_producto),
	id_tipo_producto INT FOREIGN KEY REFERENCES tipo_producto(id_tipo_producto),
	asesor INT FOREIGN KEY REFERENCES asesores(numero_cedula),
);

CREATE TABLE cliente (
	numero_cedula INT PRIMARY KEY NOT NULL,
	nombres VARCHAR(50) NOT NULL,
	apellidos VARCHAR(50) NOT NULL,
	edad INT NOT NULL,
	sexo VARCHAR(50) NOT NULL,
	id_ciudad_origen INT FOREIGN KEY REFERENCES ciudades(id_ciudad),
);

CREATE TABLE factura (
	id_factura INT PRIMARY KEY NOT NULL,
	valor_total INT NOT NULL,
	fecha_compra DATE NOT NULL,
	cedula_asesor INT FOREIGN KEY REFERENCES asesores(numero_cedula),
	cedula_cliente INT FOREIGN KEY REFERENCES cliente(numero_cedula),
	id_producto INT FOREIGN KEY REFERENCES producto(id_producto),
	id_ciudad INT FOREIGN KEY REFERENCES ciudades(id_ciudad),
	id_zona INT FOREIGN KEY REFERENCES zonas(id_zona),
	id_local INT FOREIGN KEY REFERENCES locales(id_local),
);

CREATE TABLE entrega (
	id_entrega INT PRIMARY KEY NOT NULL,
	id_dia INT FOREIGN KEY REFERENCES dias(id_dia),
	id_local INT FOREIGN KEY REFERENCES locales(id_local),
	id_zona INT FOREIGN KEY REFERENCES zonas(id_zona),
	id_ciudad INT FOREIGN KEY REFERENCES ciudades(id_ciudad),
	placa_camion VARCHAR(7) FOREIGN KEY REFERENCES camiones(placa)
);

GO


