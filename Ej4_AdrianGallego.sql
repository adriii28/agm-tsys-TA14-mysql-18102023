CREATE DATABASE Ejercicio4TA14;

USE Ejercicio4TA14;

CREATE TABLE Departamentos (
codigo int,
nombre nvarchar(100),
presupuesto int,
PRIMARY KEY (codigo)
);

CREATE TABLE Empleados (
dni varchar(8),
nombre nvarchar(100),
apellidos nvarchar(255),
codigo_departamento int,
PRIMARY KEY (dni),
FOREIGN KEY (codigo_departamento) REFERENCES Departamentos(codigo)
ON DELETE CASCADE ON UPDATE CASCADE
);
