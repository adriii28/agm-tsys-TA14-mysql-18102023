CREATE DATABASE Ejercicio9TA14;

USE Ejercicio9TA14;

CREATE TABLE Cientificos (
dni varchar(8),
nom_apels nvarchar(255),
PRIMARY KEY (dni)
);

CREATE TABLE Proyecto (
id char(4),
nombre nvarchar(255),
horas int,
PRIMARY KEY (id)
);

CREATE TABLE AsignadoA (
cientifico varchar(8),
proyecto char(4),
PRIMARY KEY (cientifico, proyecto),
FOREIGN KEY (cientifico) REFERENCES Cientificos(dni)
ON DELETE CASCADE ON UPDATE CASCADE,
FOREIGN KEY (proyecto) REFERENCES Proyecto(id)
ON DELETE CASCADE ON UPDATE CASCADE
);