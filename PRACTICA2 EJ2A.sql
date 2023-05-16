CREATE DATABASE PRACTICA2;
USE PRACTICA2

CREATE TABLE turista ( 
ID_turista int IDENTITY PRIMARY KEY NOT NULL, 
nombre varchar(30) NOT NULL, 
edad int NOT NULL, 
nacionalidad varchar(30) NOT NULL, 
);

INSERT INTO turista VALUES ('Juan Pérez',25,'Argentino');


CREATE TABLE empresa ( 
empresa_CUIT bigint PRIMARY KEY NOT NULL, 
empresa_nombre varchar(30) NOT NULL, 
telefono bigint NOT NULL, 
direccion varchar(30) NOT NULL 
);


INSERT INTO empresa VALUES (2209384744,'Aerolíneas Argentinas',08001112278,'Avellaneda 3259');


CREATE TABLE vuelo ( 
ID_vuelo int IDENTITY PRIMARY KEY NOT NULL, 
destino varchar(30) NOT NULL, 
vuelo_ida varchar(30) NOT NULL, 
vuelo_vuelta varchar(30) NOT NULL,

empresa_CUIT bigint, 
FOREIGN KEY (empresa_CUIT) REFERENCES empresa(empresa_CUIT)

);


INSERT INTO vuelo VALUES ('Paris, Francia','01/02/2023', '20/02/2023',2209384744);


CREATE TABLE relacion_turista_vuelo (

PRIMARY KEY (ID_turista,ID_vuelo),

ID_turista int, FOREIGN KEY (ID_turista) REFERENCES turista(ID_turista),

ID_vuelo int, FOREIGN KEY (ID_vuelo) REFERENCES vuelo(ID_vuelo)

);

INSERT INTO relacion_turista_vuelo VALUES (1,1);

