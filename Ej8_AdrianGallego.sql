CREATE DATABASE Ejercicio8TA14;

USE Ejercicio8TA14;

CREATE TABLE Piezas (
codigo int,
nombre nvarchar(100),
PRIMARY KEY (codigo)
);

CREATE TABLE Proveedores (
id char(4),
nombre nvarchar(100),
PRIMARY KEY (id)
);

CREATE TABLE Suministra (
codigo_pieza int,
id_proveedor char(4),
precio int,
PRIMARY KEY (codigo_pieza, id_proveedor),
FOREIGN KEY (codigo_pieza) REFERENCES Piezas(codigo)
ON DELETE CASCADE ON UPDATE CASCADE,
FOREIGN KEY (id_proveedor) REFERENCES Proveedores(id)
ON DELETE CASCADE ON UPDATE CASCADE
);