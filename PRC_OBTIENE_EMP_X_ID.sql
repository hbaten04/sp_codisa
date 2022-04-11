IF OBJECT_ID('PRC_OBTIENE_EMP_X_ID') 
	IS NOT NULL
DROP PROCEDURE PRC_OBTIENE_EMP_X_ID

GO

CREATE PROCEDURE PRC_OBTIENE_EMP_X_ID
(
	@pIdEmpleado	INT
)
AS

	SELECT 
				IdEmpleado
				,NombreCompleto
				,Cedula
				,Correo
				,FechaNacimiento
				,FechaIngreso
				,IdJefe
				,IdArea
				,Foto
		FROM Empleado
		WHERE IdEmpleado = @pIdEmpleado