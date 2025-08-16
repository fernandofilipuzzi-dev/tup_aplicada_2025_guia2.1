
USE master;

GO

ALTER DATABASE GUIA2_1_Ejercicio1_DB
SET SINGLE_USER
WITH ROLLBACK IMMEDIATE;

GO

DROP DATABASE IF EXISTS GUIA2_1_Ejercicio1_DB;

GO

CREATE DATABASE GUIA2_1_Ejercicio1_DB;

GO

USE GUIA2_1_Ejercicio1_DB;

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
);

GO

CREATE TABLE Cursos_Alumnos(
	Id_Curso INT NOT NULL, 
	Id_Alumno INT NOT NULL,
	CONSTRAINT PK_Cursos_Alumnos PRIMARY KEY (Id_Curso, Id_Alumno),
	CONSTRAINT FK_Cursos_Alumnos_Cursos FOREIGN KEY (Id_Curso) REFERENCES Cursos(Id)
		ON DELETE CASCADE,
	CONSTRAINT FK_Cursos_Alumnos_Alumnos FOREIGN KEY (Id_Alumno) REFERENCES Alumnos(Id),
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


INSERT INTO Alumnos (Nombre)
VALUES
('Luisa'),
('Ernesto'),
('Lucrecia'),
('Ricardo'),
('Leonel'),
('Liliana'),        
('Cecilia'),
('Eduardo');

INSERT INTO Cursos_Alumnos (Id_Curso, Id_Alumno)
VALUES
(1, 1), -- Luisa en Matemática
(2, 2), -- Ernesto en Programación
(1, 3), -- Lucrecia en Matemática
(2, 4), -- Ricardo en Programación
(2, 5), -- Leonel en Programación
(1, 6), -- Liliana en Matemática
(1, 5), -- Leonel en Matemática
(2, 8), -- Eduardo en Programación
(2, 7), -- Cecilia en Programación
(5, 8); -- Eduardo en Cocina

GO

USE master

