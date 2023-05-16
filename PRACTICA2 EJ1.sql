CREATE DATABASE PRACTICA2;
USE PRACTICA2

CREATE TABLE empleado ( 
legajo_ID int IDENTITY PRIMARY KEY NOT NULL, 
legajo varchar(5),
nombre varchar(30), 
domicilio varchar(30),
telefono int NOT NULL,
sector varchar(30),
sueldo int NOT NULL
);

INSERT INTO empleado VALUES ('B9912','PABLO RAMIREZ','3 DE FEBRERO 992',341660354,'PRODUCCION',250000),
							('E8123','MARIANA SOSA','ESTANISLAO LOPEZ 2987',341665987,'ADMINISTRACION',260000),
							('A9400','CARLOS AGUIRRE','SANTA FE 3456',341660431,'ADMINISTRACION',230000),
							('B9199','SUSANA REPETO','CORDOBA 3309',341667809,'PRODUCCION',250000);

CREATE TABLE servicio_tecnico (
st_ID int PRIMARY KEY NOT NULL,
nombre varchar(30),
telefono int NOT NULL,
direccion varchar(30)
);

INSERT INTO servicio_tecnico VALUES (1,'ELEXTROLUX S.A.',341220956, 'DEL CAIRO 3400'),
									(2,'MARTINEZ MAQUINARIAS SRL.',0800345761,'RIOBAMBA 4567'),
									(3,'FAST RESPARACIONES S.A.',341665789,'PELLEGRINI 4578');


CREATE TABLE maquina (
maquinaID int PRIMARY KEY NOT NULL, --el ID nombrado en el ejercicio al ser solo numeros se nomencla de esta forma para que no cree el programa un "ID" nuevo. (EL identity es el encargado de hacer el numero random de ID)
modelo varchar(10),
anio_fabricacion int,
operario int NOT NULL,
contacto int NOT NULL,

st_ID int,
FOREIGN KEY (st_ID) REFERENCES servicio_tecnico(st_ID)
);

INSERT INTO maquina VALUES  (2234,'GSM-0934',1990,1,341778293,1),
							(2256,'XGP001',2022,3,341923809,2),
							(1904,'VMA3567',2000,2,341792001,3);

