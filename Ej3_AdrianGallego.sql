CREATE DATABASE Ejercicio3TA14;

USE Ejercicio3TA14;

CREATE TABLE Fabricantes (
codigo int,
nombre nvarchar(100),
PRIMARY KEY (codigo)
);

CREATE TABLE Articulos (
codigo int,
nombre nvarchar(100),
precio int,
codigo_fabricante int ,
PRIMARY KEY (codigo),
FOREIGN KEY (codigo_fabricante) REFERENCES Fabricantes(codigo)
ON DELETE CASCADE ON UPDATE CASCADE
);