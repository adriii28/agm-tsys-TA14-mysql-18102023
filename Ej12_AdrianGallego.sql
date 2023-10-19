CREATE DATABASE Ejercicio12TA14;

USE Ejercicio12TA14;

CREATE TABLE Profesores (
dni varchar(8),
nombre varchar(20) unique,
apellido varchar(20),
direccion varchar(20),
titulo varchar(20),
gana double not null,
PRIMARY KEY (dni) 
);

CREATE TABLE Cursos (
codigo_unico int,
nombre_curso varchar(20) unique,
max_alumnos int,
fecha_inicio date,
fecha_fin date,
num_horas int not null,
dni_profesor varchar(8),
PRIMARY KEY (codigo_unico),
FOREIGN KEY (dni_profesor) REFERENCES Profesores(dni)
ON DELETE CASCADE ON UPDATE CASCADE
);

CREATE TABLE Alumno (
codigo_unico int,
nombre varchar(20),
apellidos varchar(20),
direccion varchar(20),
fecha_nacimiento date,
sexo char,
codigo_curso int,
PRIMARY KEY (codigo_unico),
FOREIGN KEY (codigo_curso) REFERENCES Cursos(codigo_unico)
ON DELETE CASCADE ON UPDATE CASCADE
);