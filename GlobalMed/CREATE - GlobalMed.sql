CREATE DATABASE GlobalMed;

GO

USE GlobalMed


-- Tabla de Proveedores																																				
CREATE TABLE Proveedor (
    id_proveedor INT PRIMARY KEY,
    nombre VARCHAR(100) NOT NULL,
    direccion VARCHAR(255),
    telefono VARCHAR(20),
    email VARCHAR(100)
);

-- Tabla de Categorías de Productos
CREATE TABLE Categoria (
    id_categoria INT PRIMARY KEY,
    nombre VARCHAR(100) NOT NULL,
    descripcion VARCHAR(255)
);

-- Tabla de Productos
CREATE TABLE Producto (
    id_producto INT PRIMARY KEY,
    nombre VARCHAR(100) NOT NULL,
    descripcion VARCHAR(255),
    precio DECIMAL(10, 2),
    stock INT,
    id_categoria INT,
    FOREIGN KEY (id_categoria) REFERENCES Categoria(id_categoria)
);

-- Tabla de Clientes
CREATE TABLE Cliente (
    id_cliente INT PRIMARY KEY,
    nombre VARCHAR(100) NOT NULL,
    direccion VARCHAR(255),
    telefono VARCHAR(20),
    email VARCHAR(100)
);

-- Tabla de Órdenes
CREATE TABLE Orden (
    id_orden INT PRIMARY KEY,
    fecha DATE,
    total DECIMAL(10, 2),
    id_cliente INT,
    FOREIGN KEY (id_cliente) REFERENCES Cliente(id_cliente)
);

-- Tabla de Empleados
CREATE TABLE Empleado (
    id_empleado INT PRIMARY KEY,
    nombre VARCHAR(100) NOT NULL,
    puesto VARCHAR(100),
    salario DECIMAL(10, 2),
    telefono VARCHAR(20)
);

-- Tabla de Relaciones Muchos a Muchos
-- Detalle de Orden (muchos a muchos entre Orden y Producto)
CREATE TABLE Detalle_Orden (
    id_orden INT,
    id_producto INT,
    cantidad INT,
    precio_unitario DECIMAL(10, 2),
    PRIMARY KEY (id_orden, id_producto),
    FOREIGN KEY (id_orden) REFERENCES Orden(id_orden),
    FOREIGN KEY (id_producto) REFERENCES Producto(id_producto)
);

-- Relación muchos a muchos entre Producto y Proveedor
CREATE TABLE Producto_Proveedor (
    id_producto INT,
    id_proveedor INT,
    PRIMARY KEY (id_producto, id_proveedor),
    FOREIGN KEY (id_producto) REFERENCES Producto(id_producto),
    FOREIGN KEY (id_proveedor) REFERENCES Proveedor(id_proveedor)
);

-- Relación muchos a muchos entre Producto y Cliente (Productos favoritos de los clientes)
CREATE TABLE Producto_Favorito (
    id_cliente INT,
    id_producto INT,
    PRIMARY KEY (id_cliente, id_producto),
    FOREIGN KEY (id_cliente) REFERENCES Cliente(id_cliente),
    FOREIGN KEY (id_producto) REFERENCES Producto(id_producto)
);

-- Tabla de Pagos (relación con Órdenes)
CREATE TABLE Pago (
    id_pago INT PRIMARY KEY,
    fecha DATE,
    monto DECIMAL(10, 2),
    id_orden INT,
    FOREIGN KEY (id_orden) REFERENCES Orden(id_orden)
);
