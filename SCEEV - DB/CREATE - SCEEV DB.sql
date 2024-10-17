CREATE DATABASE SCEEV_DB;

GO

USE SCEEV_DB;

CREATE TABLE Tipo_Usuarios (
	ID_Tipo_Usuarios INT PRIMARY KEY,
	Nombre VARCHAR(50) NOT NULL
)

CREATE TABLE Tipo_Documento  (
	ID_Tipo_Documento  INT PRIMARY KEY,
	Nombre VARCHAR(50) NOT NULL
)

CREATE TABLE Tipo_Contrato  (
	ID_Tipo_Contrato INT PRIMARY KEY,
	Nombre VARCHAR(50) NOT NULL
)

CREATE TABLE Nivel_Estudios  (
	ID_Nivel_Estudios INT PRIMARY KEY,
	Nombre VARCHAR(50) NOT NULL
)

CREATE TABLE Tipo_Prestadores  (
	ID_Tipo_Prestadores INT PRIMARY KEY,
	Nombre VARCHAR(50) NOT NULL
)

CREATE TABLE Regiones  (
	ID_Region INT PRIMARY KEY,
	Nombre VARCHAR(50) NOT NULL
)

CREATE TABLE Disciplinas  (
	ID_Disciplina INT PRIMARY KEY NOT NULL,
	Nombre VARCHAR(50) NOT NULL
)

CREATE TABLE Departamentos  (
	ID_Departamento INT PRIMARY KEY NOT NULL,
	Nombre VARCHAR(100) NOT NULL,
	ID_Region INT FOREIGN KEY REFERENCES Regiones(ID_Region)
)

CREATE TABLE Municipios  (
	ID_Municipio INT PRIMARY KEY NOT NULL,
	Nombre VARCHAR(255) NOT NULL,
	ID_Departamento INT FOREIGN KEY REFERENCES Departamentos(ID_Departamento)
)

CREATE TABLE Empleador   (
	ID_Empleador INT PRIMARY KEY NOT NULL,
	Nombre VARCHAR(50) NOT NULL,
	Tipo_Documento INT FOREIGN KEY REFERENCES Tipo_Documento(ID_Tipo_Documento)
)



CREATE TABLE Prestadores (
	ID_Prestador INT PRIMARY KEY NOT NULL,
	Nombre VARCHAR(50) NOT NULL,
	ID_Tipo_Prestador INT FOREIGN KEY REFERENCES Tipo_Prestadores(ID_Tipo_Prestadores)
)

CREATE TABLE Usuarios (
	Cedula_Usuario INT PRIMARY KEY NOT NULL,
	Nombre VARCHAR(50) NOT NULL,
	Apellidos VARCHAR(50) NOT NULL,
	Correo VARCHAR(255) NOT NULL,
	Contreseña TEXT NOT NULL,
	ID_Tipo_De_Usuario INT FOREIGN KEY REFERENCES Tipo_Usuarios(ID_Tipo_Usuarios)
)


CREATE TABLE Ofertas_Empleo_Desglosado (
	Codigo_Oferta INT PRIMARY KEY NOT NULL,
	Titulo_Oferta VARCHAR(255) NOT NULL,
	Descripcion_Oferta TEXT NOT NULL,
	Experiencia INT NOT NULL,
	Salario_Ingresado INT NULL,
	Cantidad_Ofertas INT NOT NULL,
	Teletrabajo BIT NOT NULL,
	Discapacidad BIT NOT NULL,
	Cargo VARCHAR(255) NOT NULL,
	Fecha_Publicacion DATETIME NOT NULL,
	Fecha_Vencimiento DATETIME NOT NULL,
	ID_Prestador INT FOREIGN KEY REFERENCES Prestadores(ID_Prestador),
	ID_Tipo_Contrato INT FOREIGN KEY REFERENCES Tipo_Contrato(ID_Tipo_Contrato),
	ID_Nivel_Estudios INT FOREIGN KEY REFERENCES Nivel_Estudios(ID_Nivel_Estudios),
	ID_Departamento INT FOREIGN KEY REFERENCES Departamentos(ID_Departamento),
	ID_Empleador INT FOREIGN KEY REFERENCES Empleador(ID_Empleador),
	ID_Municipio INT FOREIGN KEY REFERENCES Municipios(ID_Municipio),
	ID_Region INT FOREIGN KEY REFERENCES Regiones(ID_Region),
	ID_Disciplina INT FOREIGN KEY REFERENCES Disciplinas(ID_Disciplina),
)

CREATE TABLE Ofertas_empleo_completo (
	Codigo_Oferta INT PRIMARY KEY NOT NULL,
	Titulo_Oferta VARCHAR(255) NOT NULL,
	Descripcion_Oferta TEXT NOT NULL,
	Experiencia INT NOT NULL,
	Salario_Ingresado INT NULL,
	Cantidad_Ofertas INT NOT NULL,
	Teletrabajo BIT NOT NULL,
	Discapacidad BIT NOT NULL,
	Cargo VARCHAR(255) NOT NULL,
	Fecha_Publicacion DATETIME NOT NULL,
	Fecha_Vencimiento DATETIME NOT NULL,
	ID_Prestador INT NOT NULL,
	Nombre_Prestador INT NOT NULL,
	Contrato VARCHAR(100) NOT NULL,
	Nivel_Estudios INT NOT NULL,
	Nombre_Disciplina VARCHAR(255) NOT NULL,
	ID_Empleador INT NOT NULL,
	Nombre_Empleador VARCHAR(255) NOT NULL,
	Tipo_Documento_Empleador INT NOT NULL,
	Departamento VARCHAR(255) NOT NULL,
	Municipio VARCHAR(255) NOT NULL,
	Region VARCHAR(255) NOT NULL,
)

GO