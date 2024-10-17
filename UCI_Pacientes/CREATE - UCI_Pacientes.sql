CREATE DATABASE UCI_Pacientes;

GO


USE UCI_Pacientes;
-- Tabla de Pacientes
CREATE TABLE Pacientes (
    paciente_id INT PRIMARY KEY,
    nombre VARCHAR(100),
    historial VARCHAR(500),
    habitacion INT,
    piso INT
);

-- Tabla de Médicos
CREATE TABLE Medicos (
    medico_id INT PRIMARY KEY,
    nombre VARCHAR(100),
    especialidad VARCHAR(100)
);

-- Tabla de Medicamentos
CREATE TABLE Medicamentos (
    medicamento_id INT PRIMARY KEY,
    nombre VARCHAR(100),
    descripcion VARCHAR(500)
);

-- Tabla de Procedimientos
CREATE TABLE Procedimientos (
    procedimiento_id INT PRIMARY KEY,
    nombre VARCHAR(100),
    descripcion VARCHAR(500)
);

-- Tabla de Familiares Responsables
CREATE TABLE Familiares (
    familiar_id INT PRIMARY KEY,
    nombre VARCHAR(100),
    relacion VARCHAR(100),
    telefono VARCHAR(15)
);

-- Tabla intermedia Paciente_Medico (Muchos a Muchos)
CREATE TABLE Paciente_Medico (
    paciente_id INT,
    medico_id INT,
    PRIMARY KEY (paciente_id, medico_id),
    FOREIGN KEY (paciente_id) REFERENCES Pacientes(paciente_id),
    FOREIGN KEY (medico_id) REFERENCES Medicos(medico_id)
);

-- Tabla intermedia Paciente_Medicamento (Muchos a Muchos)
CREATE TABLE Paciente_Medicamento (
    paciente_id INT,
    medicamento_id INT,
    PRIMARY KEY (paciente_id, medicamento_id),
    FOREIGN KEY (paciente_id) REFERENCES Pacientes(paciente_id),
    FOREIGN KEY (medicamento_id) REFERENCES Medicamentos(medicamento_id)
);

-- Tabla intermedia Paciente_Procedimiento (Muchos a Muchos)
CREATE TABLE Paciente_Procedimiento (
    paciente_id INT,
    procedimiento_id INT,
    PRIMARY KEY (paciente_id, procedimiento_id),
    FOREIGN KEY (paciente_id) REFERENCES Pacientes(paciente_id),
    FOREIGN KEY (procedimiento_id) REFERENCES Procedimientos(procedimiento_id)
);

-- Tabla intermedia Paciente_Familiar (Muchos a Muchos)
CREATE TABLE Paciente_Familiar (
    paciente_id INT,
    familiar_id INT,
    PRIMARY KEY (paciente_id, familiar_id),
    FOREIGN KEY (paciente_id) REFERENCES Pacientes(paciente_id),
    FOREIGN KEY (familiar_id) REFERENCES Familiares(familiar_id)
);
-- Datos de Pacientes
INSERT INTO Pacientes (paciente_id, nombre, historial, habitacion, piso) VALUES
(1, 'Juan Pérez', 'Historial 1', 101, 1),
(2, 'María García', 'Historial 2', 102, 1),
(3, 'Luis López', 'Historial 3', 103, 1),
(4, 'Ana Martínez', 'Historial 4', 104, 1),
(5, 'Carlos Sánchez', 'Historial 5', 105, 2),
(6, 'Elena Gómez', 'Historial 6', 106, 2),
(7, 'José Díaz', 'Historial 7', 107, 2),
(8, 'Marta Ruiz', 'Historial 8', 108, 2),
(9, 'Miguel Fernández', 'Historial 9', 109, 3),
(10, 'Lucía Morales', 'Historial 10', 110, 3);

-- Datos de Médicos
INSERT INTO Medicos (medico_id, nombre, especialidad) VALUES
(1, 'Dr. Rodríguez', 'Cardiología'),
(2, 'Dra. Torres', 'Neurología'),
(3, 'Dr. Jiménez', 'Traumatología'),
(4, 'Dra. Herrera', 'Neumología'),
(5, 'Dr. Castillo', 'Gastroenterología'),
(6, 'Dra. Vargas', 'Endocrinología'),
(7, 'Dr. Morales', 'Oncología'),
(8, 'Dra. Ramírez', 'Pediatría'),
(9, 'Dr. Flores', 'Dermatología'),
(10, 'Dra. Romero', 'Psiquiatría');

-- Datos de Medicamentos
INSERT INTO Medicamentos (medicamento_id, nombre, descripcion) VALUES
(1, 'Paracetamol', 'Analgésico y antipirético'),
(2, 'Ibuprofeno', 'Antiinflamatorio y analgésico'),
(3, 'Amoxicilina', 'Antibiótico'),
(4, 'Metformina', 'Antidiabético'),
(5, 'Amlodipino', 'Antihipertensivo'),
(6, 'Simvastatina', 'Hipolipemiante'),
(7, 'Omeprazol', 'Inhibidor de la bomba de protones'),
(8, 'Enalapril', 'Antihipertensivo'),
(9, 'Furosemida', 'Diurético'),
(10, 'Losartán', 'Antihipertensivo');

-- Datos de Procedimientos
INSERT INTO Procedimientos (procedimiento_id, nombre, descripcion) VALUES
(1, 'Electrocardiograma', 'Prueba de registro de la actividad eléctrica del corazón'),
(2, 'Resonancia Magnética', 'Imagenología por resonancia magnética'),
(3, 'Cirugía de Apéndice', 'Extirpación del apéndice'),
(4, 'Endoscopia', 'Exploración del tubo digestivo superior'),
(5, 'Biopsia', 'Extracción de una muestra de tejido para su análisis'),
(6, 'Diálisis', 'Proceso de eliminación de desechos y exceso de agua en la sangre'),
(7, 'Quimioterapia', 'Tratamiento para combatir el cáncer con medicamentos'),
(8, 'Radioterapia', 'Tratamiento de cáncer con radiación'),
(9, 'Transfusión de Sangre', 'Transferencia de sangre o componentes sanguíneos'),
(10, 'Cateterismo Cardíaco', 'Procedimiento para examinar cómo está funcionando el corazón');

-- Datos de Familiares
INSERT INTO Familiares (familiar_id, nombre, relacion, telefono) VALUES
(1, 'Jorge Pérez', 'Padre', '600123456'),
(2, 'Laura García', 'Madre', '600234567'),
(3, 'Pedro López', 'Hermano', '600345678'),
(4, 'Sandra Martínez', 'Hermana', '600456789'),
(5, 'Andrés Sánchez', 'Esposo', '600567890'),
(6, 'Carmen Gómez', 'Esposa', '600678901'),
(7, 'Raúl Díaz', 'Tío', '600789012'),
(8, 'Isabel Ruiz', 'Tía', '600890123'),
(9, 'Roberto Fernández', 'Hijo', '600901234'),
(10, 'Cristina Morales', 'Hija', '600012345');

-- Relación Pacientes-Médicos
INSERT INTO Paciente_Medico (paciente_id, medico_id) VALUES
(1, 1),
(2, 2),
(3, 3),
(4, 4),
(5, 5),
(6, 6),
(7, 7),
(8, 8),
(9, 9),
(10, 10);

-- Relación Pacientes-Medicamentos
INSERT INTO Paciente_Medicamento (paciente_id, medicamento_id) VALUES
(1, 1),
(2, 2),
(3, 3),
(4, 4),
(5, 5),
(6, 6),
(7, 7),
(8, 8),
(9, 9),
(10, 10);

-- Relación Pacientes-Procedimientos
INSERT INTO Paciente_Procedimiento (paciente_id, procedimiento_id) VALUES
(1, 1),
(2, 2),
(3, 3),
(4, 4),
(5, 5),
(6, 6),
(7, 7),
(8, 8),
(9, 9),
(10, 10);

-- Relación Pacientes-Familiares
INSERT INTO Paciente_Familiar (paciente_id, familiar_id) VALUES
(1, 1),
(2, 2),
(3, 3),
(4, 4),
(5, 5),
(6, 6),
(7, 7),
(8, 8),
(9, 9),
(10, 10);
