IF OBJECT_ID('PRC_LISTA_EMPLEADO_X_AREA') 
	IS NOT NULL
DROP PROC PRC_LISTA_EMPLEADO_X_AREA

GO 

CREATE PROCEDURE PRC_LISTA_EMPLEADO_X_AREA
(
	@pIdArea	INT	= 0
)
AS


	IF @pIdArea = 0
		BEGIN 

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

		END 
	ELSE
		BEGIN
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
			WHERE IdArea = @pIdArea

		END