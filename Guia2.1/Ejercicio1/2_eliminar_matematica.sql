﻿


USE GUIA2_1_Ejercicio1_DB;


GO


SELECT a.Nombre AS Nombre_Alumno, c.Nombre AS Nombre_Curso 
FROM Alumnos a
LEFT JOIN Cursos_Alumnos c_a ON  c_a.Id_Alumno = a.Id
LEFT JOIN Cursos c ON c_a.Id_Curso=c.Id
ORDER BY a.Nombre DESC;

GO

DELETE FROM Cursos 
WHERE Id=1;

GO

SELECT a.Nombre AS Nombre_Alumno, c.Nombre AS Nombre_Curso 
FROM Alumnos a
LEFT JOIN Cursos_Alumnos c_a ON  c_a.Id_Alumno = a.Id
LEFT JOIN Cursos c ON c_a.Id_Curso=c.Id
ORDER BY a.Nombre DESC;

GO

USE master;