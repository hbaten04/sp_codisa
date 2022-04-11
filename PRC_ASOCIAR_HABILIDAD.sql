IF OBJECT_ID('PRC_ASOCIAR_HABILIDAD')
	IS NOT NULL
DROP PROC PRC_ASOCIAR_HABILIDAD
GO

CREATE PROCEDURE PRC_ASOCIAR_HABILIDAD
(
	@pIdEmpleado		INT
	,@pNombreHabilidad	VARCHAR(100)
)
AS

	INSERT INTO Empleado_Habilidad(IdEmpleado, NombreHabilidad)
	VALUES(@pIdEmpleado, @pNombreHabilidad)