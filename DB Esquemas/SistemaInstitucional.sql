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
    nombre VARCHAR(20) NOT NULL,
    contacto VARCHAR(50) NOT NULL,
    descripcion VARCHAR(100),
    -- Primary key
    PRIMARY KEY(nombre,id_sede),
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

CREATE TABLE Cuantas (
    id INTEGER auto_increment,
    numero VARCHAR(16) NOT NULL,
    nombre_titular VARCHAR(50) NOT NULL,
    email VARCHAR(30) NOT NULL,
    banco VARCHAR(20) NOT NULL,
    -- Primary key
    PRIMARY KEY(id),
    -- Foreign key
    id_persona INTEGER NOT NULL,
    FOREIGN KEY(id_persona) references Personas(id) ON DELETE CASCADE ON UPDATE CASCADE
);

CREATE TABLE Trabaja(
	cargo VARCHAR(20) NOT NULL,
    -- Primary key
    PRIMARY KEY(nombre_oficina,id_sede,id_funcionario),
    -- Foreign keys
    nombre_oficina VARCHAR(20) NOT NULL,
    id_sede INTEGER NOT NULL,
    id_funcionario INTEGER NOT NULL,
    FOREIGN KEY(nombre_oficina,id_sede) references Oficinas(nombre,id_sede) ON DELETE CASCADE ON UPDATE CASCADE,
    FOREIGN KEY(id_funcionario) references Personas(id) ON DELETE CASCADE ON UPDATE CASCADE
);

CREATE TABLE Servicios(
    nombre VARCHAR(50) NOT NULL,
    valor FLOAT,
    descripcion VARCHAR(150) NOT NULL,
    -- Primary key
    PRIMARY KEY(nombre,nombre_oficina,id_sede),
    -- Foreign key
    nombre_oficina VARCHAR(20) NOT NULL,
    id_sede INTEGER NOT NULL,
    FOREIGN KEY(nombre_oficina,id_sede) references Oficinas(nombre,id_sede) ON DELETE CASCADE ON UPDATE CASCADE
);

CREATE TABLE Ordenes (
	id_orden INTEGER auto_increment,
	fecha_generacion DATE NOT NULL,
    estado_acceso BOOLEAN NOT NULL,
    fecha_deduccion DATE,
    -- Primary key
    PRIMARY KEY(id_orden),
    -- Foreign keys
    id_persona INTEGER NOT NULL,
    nombre_servicio VARCHAR(50) NOT NULL,
    nombre_oficina VARCHAR(20) NOT NULL,
    id_sede INTEGER NOT NULL,
    FOREIGN KEY(id_persona) references Personas(id) ON DELETE CASCADE ON UPDATE CASCADE,
    FOREIGN KEY(nombre_servicio,nombre_oficina,id_sede) references Servicios(nombre,nombre_oficina,id_sede) ON DELETE CASCADE ON UPDATE CASCADE
);

CREATE TABLE Comunicaciones(
    id_banco INTEGER NOT NULL,
    -- Primary key
    PRIMARY KEY(nombre_oficina,id_sede,id_banco),
    -- Foreign keys
    nombre_oficina VARCHAR(20) NOT NULL,
    id_sede INTEGER NOT NULL,
    FOREIGN KEY(nombre_oficina,id_sede) references Oficinas(nombre,id_sede) ON DELETE CASCADE ON UPDATE CASCADE
);