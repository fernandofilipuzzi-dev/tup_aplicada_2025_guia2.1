
USE master;

GO

ALTER DATABASE GUIA2_1_Ejercicio2_DB
SET SINGLE_USER
WITH ROLLBACK IMMEDIATE;

GO

DROP DATABASE IF EXISTS GUIA2_1_Ejercicio2_DB;

GO

CREATE DATABASE GUIA2_1_Ejercicio2_DB

GO

USE GUIA2_1_Ejercicio2_DB;

GO

CREATE TABLE Cursos(
	Id INT PRIMARY KEY IDENTITY(1,1),	
	Nombre VARCHAR(100) NOT NULL,
);

GO

CREATE TABLE Alumnos
(
	Id INT PRIMARY KEY IDENTITY(1,1),
	Nombre NVARCHAR(50) NOT NULL,
	--
	Id_Curso INT NOT NULL,
	CONSTRAINT UQ_Alumnos_Nombre_Id_Curso UNIQUE (Nombre, Id_Curso), -- esta restricción se deduce de la composición, este alumno no puede ser parte de otro curso
	CONSTRAINT FK_Alumnos_Cursos FOREIGN KEY (Id_Curso) REFERENCES Cursos(Id)
	  ON DELETE CASCADE -- si elimino el todo, elimino las partes
	  ON UPDATE CASCADE -- si actualizo la id del todo, actualizo las partes - en este caso no tiene sentido porque  la clave primaria autoincremental (IDENTITY)
);

GO



INSERT INTO Cursos (Nombre)
VALUES
('Matemática'),
('Programación'),
('Literatura'),
('Mecánica aplicada'),
('Cocina'),
('Carpintería'),
('Reparación de PC'),
('Instralación electrica domiciliaria');

SELECT * FROM Cursos;
GO

INSERT INTO Alumnos (Nombre, Id_Curso)
VALUES
('Luisa', 1),
('Ernesto', 2),
('Lucrecia', 1),
('Ricardo', 2),
('Leonel', 2),
('Liliana', 1),
('Leonel', 1),          
('Cecilia', 8);

SELECT * FROM Alumnos;

GO

USE master

