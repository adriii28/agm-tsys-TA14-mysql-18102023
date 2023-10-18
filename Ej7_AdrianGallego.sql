CREATE DATABASE Ejercicio7TA14;

USE Ejercicio7TA14;

CREATE TABLE Despachos (
numero int,
capacidad int,
PRIMARY KEY (numero)
);

CREATE TABLE Directores (
dni varchar(8),
nom_apels nvarchar(255),
dni_jefe varchar(8),
codigo_despacho int,
PRIMARY KEY (dni),
FOREIGN KEY (dni_jefe) REFERENCES Directores(dni)
ON DELETE CASCADE ON UPDATE CASCADE,
FOREIGN KEY (codigo_despacho) REFERENCES Despachos(numero)
ON DELETE CASCADE ON UPDATE CASCADE
);