
USE master;

GO

ALTER DATABASE GUIA2_1_Ejercicio3_DB
SET SINGLE_USER
WITH ROLLBACK IMMEDIATE;

GO

DROP DATABASE IF EXISTS GUIA2_1_Ejercicio3_DB;

GO

CREATE DATABASE GUIA2_1_Ejercicio3_DB

GO

USE GUIA2_1_Ejercicio3_DB;

GO

CREATE TABLE Localidades
(
  Id INT PRIMARY KEY IDENTITY(1,1),
  Nombre VARCHAR(100) NOT NULL,
  Codigo_Postal INT NOT NULL,
)


CREATE TABLE Alumnos
(
	Id INT PRIMARY KEY IDENTITY(1,1),
	Nombre VARCHAR(100) NOT NULL,
	Calle VARCHAR(100) ,
	Numero INT,
	Id_Localidad INT,
	--
	CONSTRAINT FK_Alumnos_Localidades FOREIGN KEY (Id_Localidad) REFERENCES Localidades(Id)	  
);

GO

INSERT INTO Localidades (Nombre, Codigo_Postal)
VALUES
('Paraná',3100),
('Hernandarias',3100),
('Hasenkamp',3100);

GO

INSERT INTO Alumnos (Nombre, Calle, Numero, Id_Localidad)
VALUES
('Luisa', 'Almafuerte', 1033, 1),
('Ernesto', 'Federación', 456, 2),
('Lucrecia', 'Las lechiguanas', 50, 1),
('Ricardo', 'Provincias Unidas', 864, 2),
('Leonel', 'Sarmiento', 200, 2),
('Liliana', 'Buenos Aires', 100, 1),
('Cecilia', 'Victoria', 146, 1),         
('Eduardo', 'San martin', 33, 3);

GO


USE master

