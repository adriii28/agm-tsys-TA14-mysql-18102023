CREATE DATABASE Ejercicio5TA14;

USE Ejercicio5TA14;	

CREATE TABLE Almacenes (
codigo int,
lugar nvarchar(100),
capacidad int,
PRIMARY KEY (codigo)
);

CREATE TABLE Cajas(
num_referencia char(5),
contenido nvarchar(100),
valor int,
almacen int,
codigo_almacen int,
PRIMARY KEY (num_referencia),
FOREIGN KEY (codigo_almacen) REFERENCES Almacenes(codigo)
ON DELETE CASCADE ON UPDATE CASCADE
);