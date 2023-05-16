CREATE DATABASE EJ2;
USE EJ2


CREATE TABLE profesor (
legajo int PRIMARY KEY NOT NULL,
nombre VARCHAR(30) NOT NULL
);
INSERT INTO profesor VALUES (43402, 'VIVIANA PERRONE');


CREATE TABLE curso (

curso_ID int IDENTITY PRIMARY KEY NOT NULL,
Nombre VARCHAR(60),
año int,

);


INSERT INTO curso VALUES('Entorno  de Programación', 2012),
						('Redes', 2014),
						('Sistemas Operativos Open-Source', 2013),
						('Linux embebido', 2014);


CREATE TABLE relacion_profesor_curso (
PRIMARY KEY (legajo,curso_ID),
legajo int,
curso_ID int,
FOREIGN KEY (legajo) REFERENCES profesor(legajo),
FOREIGN KEY (curso_ID) REFERENCES curso(curso_ID)
);

INSERT INTO relacion_profesor_curso VALUES (43402,1),
											(43402,2),
											(43402,3),
											(43402,4);


CREATE TABLE publicacion (
ID_Publicacion int IDENTITY PRIMARY KEY NOT NULL,
Nombre VARCHAR(70),
Lugar VARCHAR(100),
Pagina VARCHAR(10),
Año int,
legajo int

FOREIGN KEY (legajo) REFERENCES profesor(legajo)
);

INSERT INTO publicacion VALUES ('Aplicaciones de IA en la interpretacion del lenguaje natural','Revista "Avances en IA"numero 48','34-90', 2012, 43402),
								('Bases de Datos Para Principiantes','"Revista Tecnología para el Nuevo Mundo, numero 4','41-66',2013,43402);


CREATE TABLE especialidad(
ID_especialidad int IDENTITY PRIMARY KEY NOT NULL,
Nombre VARCHAR(30)
);

INSERT INTO especialidad VALUES('REDES'),
								('SISTEMAS OPERATIVOS'),
								('BASE DE DATOS');


CREATE TABLE relacion_profesor_especialidad(

PRIMARY KEY(legajo, ID_especialidad),
legajo int,
ID_especialidad int

FOREIGN KEY (legajo) REFERENCES profesor(legajo),
FOREIGN KEY (ID_especialidad) REFERENCES especialidad(ID_especialidad)
);

INSERT INTO relacion_profesor_especialidad VALUES (43402,1),
													(43402,2),
													(43402,3);



--USE BDD1
--DROP DATABASE EJ2;