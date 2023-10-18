CREATE DATABASE Ejercicio10TA14;

USE Ejercicio10TA14;

CREATE TABLE Cajeros (
codigo int,
nom_apels nvarchar(255),
PRIMARY KEY (codigo)
);

CREATE TABLE Productos (
codigo int,
nombre nvarchar(100),
precio int,
PRIMARY KEY (codigo)
);

CREATE TABLE MaquinasRegistradoras (
codigo int,
piso int,
PRIMARY KEY (codigo)
);

CREATE TABLE Venta (
codigo_cajero int,
codigo_maquina int,
codigo_producto int,
PRIMARY KEY (codigo_cajero, codigo_maquina, codigo_producto),
FOREIGN KEY (codigo_cajero) REFERENCES Cajeros(codigo)
ON DELETE CASCADE ON UPDATE CASCADE,
FOREIGN KEY (codigo_maquina) REFERENCES MaquinasRegistradoras(codigo)
ON DELETE CASCADE ON UPDATE CASCADE,
FOREIGN KEY (codigo_producto) REFERENCES Productos(codigo)
ON DELETE CASCADE ON UPDATE CASCADE
);

