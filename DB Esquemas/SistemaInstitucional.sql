DROP DATABASE IF EXISTS SistemaInstitucional;

CREATE DATABASE If NOT EXISTS SistemaInstitucional;
USE SistemaInstitucional;

CREATE TABLE Sedes(
	id INTEGER auto_increment,
    ciudad VARCHAR(50) UNIQUE NOT NULL,
    -- Primary key
    PRIMARY KEY(id)
);

CREATE TABLE Oficinas(
    id INTEGER auto_increment,
    nombre VARCHAR(20) NOT NULL,
    contacto VARCHAR(50) NOT NULL,
    descripcion VARCHAR(100),
    -- Primary key
    PRIMARY KEY(id),
    -- Foreign key
    id_sede INTEGER NOT NULL,
    FOREIGN KEY(id_sede) references Sedes(id) ON DELETE CASCADE ON UPDATE CASCADE
);

CREATE TABLE Personas (
	id INTEGER auto_increment,
    nombre VARCHAR(50) NOT NULL,
    apellidos VARCHAR(50) NOT NULL, 
    tipo ENUM('0','1') NOT NULL, -- 0: Estudiante, 1: Funcionario
    email VARCHAR(30) NOT NULL,
    contraseña VARCHAR(40) NOT NULL,
    fecha_nacimiento DATE NOT NULL,
    -- Primary key
    PRIMARY KEY(id),
    -- Type constraint
	CONSTRAINT person_type CHECK (tipo = '0' OR tipo = '1')
);

CREATE TABLE Tarjetas (
    id INTEGER auto_increment,
    numero VARCHAR(16) NOT NULL,
    nombre_titular VARCHAR(50) NOT NULL,
    fecha_expiracion DATE NOT NULL,
    cvv VARCHAR(3) NOT NULL,
    proveedor VARCHAR(20) NOT NULL,
    -- Primary key
    PRIMARY KEY(id),
    -- Foreign key
    id_persona INTEGER NOT NULL,
    FOREIGN KEY(id_persona) references Personas(id) ON DELETE CASCADE ON UPDATE CASCADE
);

CREATE TABLE Cuentas (
    id INTEGER auto_increment,
    numero VARCHAR(16) NOT NULL,
    nombre_titular VARCHAR(50) NOT NULL,
    email VARCHAR(30) NOT NULL,
    banco VARCHAR(20) NOT NULL,
    -- Primary key
    PRIMARY KEY(id),
    -- Foreign key
    id_persona INTEGER,
    FOREIGN KEY(id_persona) references Personas(id) ON DELETE CASCADE ON UPDATE CASCADE,
    id_oficina INTEGER,
    FOREIGN KEY(id_oficina) references Oficinas(id) ON DELETE CASCADE ON UPDATE CASCADE
);

CREATE TABLE Historial (
    id INTEGER auto_increment,
    fecha DATE NOT NULL,
    hora TIME NOT NULL,
    servicio VARCHAR(20) NOT NULL,
    precio DECIMAL(20,2) NOT NULL,
    metodo_pago VARCHAR(20) NOT NULL,
    -- Primary key
    PRIMARY KEY(id),
    -- Foreign key
    id_persona INTEGER NOT NULL,
    FOREIGN KEY(id_persona) references Personas(id) ON DELETE CASCADE ON UPDATE CASCADE
);

CREATE TABLE Servicios(
    id INTEGER auto_increment,
    nombre VARCHAR(50) NOT NULL,
    valor FLOAT,
    descripcion VARCHAR(150) NOT NULL,
    -- Primary key
    PRIMARY KEY(id),
    -- Foreign key
    id_oficina INTEGER NOT NULL,
    FOREIGN KEY(id_oficina) references Oficinas(id) ON DELETE CASCADE ON UPDATE CASCADE
);
