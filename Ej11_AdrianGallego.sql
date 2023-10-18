CREATE DATABASE Ejercicio11TA14;

USE Ejercicio11TA14;

CREATE TABLE Facultad (
codigo int,
nombre nvarchar(100),
PRIMARY KEY (codigo)
);

CREATE TABLE Investigadores (
dni varchar(8),
nom_apels nvarchar(255),
codigo_facultad int,
PRIMARY KEY (dni),
FOREIGN KEY (codigo_facultad) REFERENCES Facultad(codigo)
ON DELETE CASCADE ON UPDATE CASCADE
);

CREATE TABLE Equipos (
num_serie char(4),
nombre nvarchar(100),
codigo_facultad int,
PRIMARY KEY (num_serie),
FOREIGN KEY (codigo_facultad) REFERENCES Facultad(codigo)
ON DELETE CASCADE ON UPDATE CASCADE
);

CREATE TABLE Reserva (
dni_investigador varchar(8),
num_serie char(4),
comienzo datetime,
fin datetime,
PRIMARY KEY (dni_investigador, num_serie),
FOREIGN KEY (dni_investigador) REFERENCES Investigadores(dni)
ON DELETE CASCADE ON UPDATE CASCADE,
FOREIGN KEY (num_serie) REFERENCES Equipos(num_serie)
ON DELETE CASCADE ON UPDATE CASCADE
);

