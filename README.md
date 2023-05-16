# BDD1_TUIA
https://github.com/LuuLuu135/BdD_2023.git

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
empresa_CUIT int PRIMARY KEY NOT NULL,
empresa_nombre varchar(30) NOT NULL,
telefono int NOT NULL,
direccion varchar(30) NOT NULL
);

INSERT INTO empresa VALUES (2209384744,'Aerolíneas Argentinas',08001112278,'Avellaneda 
3259');


CREATE TABLE vuelo (
ID_vuelo int IDENTITY PRIMARY KEY NOT NULL,
destino varchar(30) NOT NULL,
vuelo_ida varchar(30) NOT NULL,
vuelo_vuelta varchar(30) NOT NULL,

empresa_CUIT int,
FOREIGN KEY (empresa_CUIT) REFERENCES empresa(empresa_CUIT)

);

INSERT INTO vuelo VALUES  ('Paris, Francia','01/02/2023', '20/02/2023',2209384744);




CREATE TABLE relacion_turista_vuelo (

PRIMARY KEY (ID_turista,ID_vuelo),

ID_turista int,
FOREIGN KEY (ID_turista) REFERENCES turista(ID_turista),

ID_vuelo int,
FOREIGN KEY (ID_vuelo) REFERENCES vuelo(ID_vuelo)

);

-- INSERT INTO relacion_turista_vuelo VALUES (


SERVICIOTECNICOID int,
FOREIGN KEY (SERVICIOTECNICOID) REFERENCES SERVICIOTEC(SERVICIOTECNICOID)
);

INSERT INTO MAQUINA VALUES  (2234,'GSM-0934',1990,1,341778293,1),
							(2256,'XGP001',2022,3,341923809,2),
							(1904,'VMA3567',2000,2,341792001,3);


SELECT * FROM EMPLEADO; -- para ver en forma de tabla se pone asi
