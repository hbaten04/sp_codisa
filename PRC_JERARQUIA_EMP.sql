IF OBJECT_ID('PRC_JERARQUIA_EMP') 
	IS NOT NULL
DROP PROC PRC_JERARQUIA_EMP

GO

CREATE PROCEDURE PRC_JERARQUIA_EMP
AS
SELECT B.IdEmpleado
		,CASE 
			WHEN B.IdJefe = B.IdEmpleado
				THEN '#'
				ELSE CAST(B.IdJefe AS VARCHAR)
			END IdJefe
		,B.NombreCompleto FROM Empleado A
	INNER JOIN Empleado B
		ON A.IdEmpleado = B.IdJefe

