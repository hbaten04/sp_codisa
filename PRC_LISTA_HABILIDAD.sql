IF OBJECT_ID('PRC_LISTA_HABILIDAD')
	IS NOT NULL
DROP PROCEDURE PRC_LISTA_HABILIDAD

GO

CREATE PROCEDURE PRC_LISTA_HABILIDAD
(
	@pIdEmpleado	INT = 0
)
AS

	IF @pIdEmpleado = 0
		BEGIN

			SELECT IdHabilidad, IdEmpleado, NombreHabilidad
			FROM Empleado_Habilidad

		END
	ELSE
		BEGIN
			
			SELECT IdHabilidad, IdEmpleado, NombreHabilidad
			FROM Empleado_Habilidad
			WHERE IdEmpleado = @pIdEmpleado

		END
