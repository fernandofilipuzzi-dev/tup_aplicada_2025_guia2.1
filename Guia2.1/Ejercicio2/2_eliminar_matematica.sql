

USE GUIA2_1_Ejercicio2_DB;


GO

-- Consulta antes de eliminar el curso de Matemáticas

SELECT * 
FROM Alumnos a
INNER JOIN Cursos c ON a.Id_Curso = c.Id
ORDER BY c.Id DESC;

GO

DELETE FROM Cursos 
WHERE Id=1;

GO

-- Consulta posterior a eliminar el curso de Matemáticas

SELECT *
FROM Alumnos a
INNER JOIN Cursos c ON a.Id_Curso = c.Id
ORDER BY c.Id DESC;

GO

USE master;