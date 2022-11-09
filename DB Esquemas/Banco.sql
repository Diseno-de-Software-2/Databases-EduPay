DROP DATABASE IF EXISTS SistemaBancos;

CREATE DATABASE If NOT EXISTS SistemaBancos;
USE SistemaBancos;

CREATE TABLE Banco (
    id INTEGER auto_increment,
    nombre VARCHAR(50) UNIQUE NOT NULL,
    -- Primary key
    PRIMARY KEY(id)
);

CREATE TABLE Cuenta(
    id INTEGER auto_increment,
    numero VARCHAR(16) NOT NULL,
    nombre_titular VARCHAR(50) NOT NULL,
    email VARCHAR(30) NOT NULL,
    saldo FLOAT NOT NULL,
    -- Primary key
    PRIMARY KEY(id),
    -- Foreign key
    id_banco INTEGER NOT NULL,
    FOREIGN KEY(id_banco) references Banco(id) ON DELETE CASCADE ON UPDATE CASCADE
);

CREATE TABLE Tarjeta (
    id INTEGER auto_increment,
    numero VARCHAR(16) NOT NULL,
    nombre_titular VARCHAR(50) NOT NULL,
    fecha_expiracion DATE NOT NULL,
    cvv VARCHAR(3) NOT NULL,
    proveedor VARCHAR(20) NOT NULL,
    -- Primary key
    PRIMARY KEY(id),
    -- Foreign key
    id_cuenta INTEGER NOT NULL,
    FOREIGN KEY(id_cuenta) references Cuenta(id) ON DELETE CASCADE ON UPDATE CASCADE
);

CREATE TABLE Transaccion(
    id INTEGER auto_increment,
    fecha DATE NOT NULL,
    hora TIME NOT NULL,
    tipo ENUM('0','1') NOT NULL, -- 0: Retiro, 1: Deposito
    id_banco INTEGER NOT NULL,
    monto FLOAT NOT NULL,
    -- Primary key
    PRIMARY KEY(id),
    -- Foreign key
    id_cuenta INTEGER NOT NULL,
    numero_tarjeta VARCHAR(16),
    FOREIGN KEY(id_cuenta) 
    references Cuenta(id) ON DELETE CASCADE ON UPDATE CASCADE,
    FOREIGN KEY(id_banco) 
    references Banco(id) ON DELETE CASCADE ON UPDATE CASCADE
);
