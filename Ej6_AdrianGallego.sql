CREATE DATABASE Ejercicio6TA14;

USE Ejercicio6TA14;

CREATE TABLE Peliculas (
codigo int,
nombre nvarchar(100),
calificacion_edad int,
PRIMARY KEY (codigo)
);

CREATE TABLE Salas (
codigo int,
nombre nvarchar(100),
codigo_pelicula int,
PRIMARY KEY (codigo),
FOREIGN KEY (codigo_pelicula) REFERENCES Peliculas(codigo)
ON DELETE CASCADE ON UPDATE CASCADE
);