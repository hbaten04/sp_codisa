IF OBJECT_ID('PRC_LISTA_EMPLEADO_CBO')
	IS NOT NULL
DROP PROCEDURE PRC_LISTA_EMPLEADO_CBO

GO

CREATE PROCEDURE PRC_LISTA_EMPLEADO_CBO
AS

	SELECT IdEmpleado
		,NombreCompleto
	FROM Empleado