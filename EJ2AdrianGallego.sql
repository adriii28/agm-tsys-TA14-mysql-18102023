CREATE DATABASE Ejercicio2TA14;

USE Ejercicio2TA14;

CREATE TABLE Tema (
clave_tema smallint,
nombre varchar(40),
PRIMARY KEY (clave_tema)
);

CREATE TABLE Autor (
clave_autor int auto_increment,
nombre varchar(60),
PRIMARY KEY (clave_autor)
);

CREATE TABLE Editorial(
clave_editorial smallint,
nombre varchar(60),
direccion varchar(60),
telefono varchar(15),
PRIMARY KEY (clave_editorial)
);

CREATE TABLE Libro (
clave_libro int auto_increment,
titulo varchar(60),
idioma varchar(15),
formato varchar(15),
clave_editorial int
);
