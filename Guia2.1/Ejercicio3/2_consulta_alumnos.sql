


USE GUIA2_1_Ejercicio3_DB;

GO

SELECT a.Nombre, a.Calle, a.Numero, l.Nombre AS Localidad
FROM Alumnos a
LEFT JOIN Localidades l
	ON a.Id_Localidad = l.Id;

GO

USE master;