


USE GUIA2_1_Ejercicio2_DB;


GO


SELECT * 
FROM Alumnos a
INNER JOIN Cursos c ON a.Id_Curso = c.Id
ORDER BY c.Id DESC;

GO

DELETE FROM Cursos 
WHERE Id=1;

GO

SELECT * 
FROM Alumnos a
INNER JOIN Cursos c ON a.Id_Curso = c.Id
ORDER BY c.Id DESC;


GO

USE master;