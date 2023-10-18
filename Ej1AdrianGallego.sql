CREATE DATABASE Ejercicio1TA14;

USE Ejercicio1TA14;

CREATE TABLE Estacion (
identificador int auto_increment,
latitud double,
longitud double,
altitud double,
PRIMARY KEY (identificador)
);

CREATE TABLE Muestra(
identificador_estacion int,
fecha date,
temp_minima int,
temp_max int,
precipitaciones varchar(20),
humedad_min int,
humedad_max int,
velocidad_viento_min int,
velocidad_viento_max int,
FOREIGN KEY (identificador_estacion) REFERENCES Estacion(identificador)
ON DELETE CASCADE ON UPDATE CASCADE
);