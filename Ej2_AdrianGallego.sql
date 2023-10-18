CREATE DATABASE Ejercicio2TA14;

USE Ejercicio2TA14;

CREATE TABLE Editorial(
clave_editorial smallint,
nombre varchar(60),
direccion varchar(60),
telefono varchar(15),
PRIMARY KEY (clave_editorial)
);

CREATE TABLE Libro (
clave_libro int ,
titulo varchar(60),
idioma varchar(15),
formato varchar(15),
clave_editorial smallint,
PRIMARY KEY (clave_libro),
FOREIGN KEY (clave_editorial) REFERENCES Editorial(clave_editorial)
ON DELETE CASCADE ON UPDATE CASCADE
);

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

CREATE TABLE Ejemplar(
clave_ejemplar int,
clave_libro int,
numero_orden smallint,
edicion smallint,
ubicacion varchar(15),
categoria char,
PRIMARY KEY (clave_ejemplar),
FOREIGN KEY (clave_libro) REFERENCES Libro(clave_libro)
ON DELETE CASCADE ON UPDATE CASCADE
);


CREATE TABLE Socio (
clave_socio int,
nombre varchar(15),
direccion varchar(60),
telefono varchar(15),
categoria char,
PRIMARY KEY (clave_socio)
);

CREATE TABLE Prestamo (
clave_socio int,
clave_ejemplar int,
numero_orden smallint,
fecha_prestamo date,
fecha_devolucion date,
notas blob,
PRIMARY KEY (clave_socio,clave_ejemplar,numero_orden),
FOREIGN KEY (clave_socio) REFERENCES Socio(clave_socio)
ON DELETE CASCADE ON UPDATE CASCADE,
FOREIGN KEY (clave_ejemplar) REFERENCES Ejemplar(clave_ejemplar)
ON DELETE CASCADE ON UPDATE CASCADE
);

CREATE TABLE TrataSobre (
clave_libro int,
clave_tema smallint,
FOREIGN KEY (clave_libro) REFERENCES Libro(clave_libro)
ON DELETE CASCADE ON UPDATE CASCADE,
FOREIGN KEY (clave_tema) REFERENCES Tema(clave_tema)
ON DELETE CASCADE ON UPDATE CASCADE
);

CREATE TABLE EscritoPor (
clave_libro int,
clave_autor int,
FOREIGN KEY (clave_libro) REFERENCES Libro(clave_libro)
ON DELETE CASCADE ON UPDATE CASCADE,
FOREIGN KEY (clave_autor) REFERENCES Autor(clave_autor)
ON DELETE CASCADE ON UPDATE CASCADE
);

