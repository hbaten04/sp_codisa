IF OBJECT_ID('PRC_MANTENIMIENTO_EMPLEADO')
	IS NOT NULL
DROP PROCEDURE PRC_MANTENIMIENTO_EMPLEADO

GO

CREATE PROCEDURE PRC_MANTENIMIENTO_EMPLEADO
(
	@pOp				VARCHAR(1)
	,@pIdEmpleado		INT				
	,@pNombreCompleto	VARCHAR(100)	= ''
	,@pCedula			VARCHAR(50)		= ''
	,@pCorreo			VARCHAR(100)	= ''
	,@pFechaNacimiento	DATE			=NULL
	,@pFechaIngreso		DATE			=NULL
	,@pIdJefe			INT				=NULL
	,@pIdArea			INT				=NULL
	,@pFoto				VARBINARY(MAX) = NULL
)
AS

	IF @pOp = '1'
		BEGIN


			INSERT INTO Empleado
					   (NombreCompleto
					   ,Cedula
					   ,Correo
					   ,FechaNacimiento
					   ,FechaIngreso
					   ,IdJefe
					   ,IdArea
					   ,Foto)
				 VALUES
					   (@pNombreCompleto
					   ,@pCedula
					   ,@pCorreo
					   ,@pFechaNacimiento
					   ,@pFechaIngreso
					   ,@pIdJefe
					   ,@pIdArea
					   ,@pFoto
					   )



		END

	ELSE IF @pOp = '2'
		BEGIN

			UPDATE [dbo].[Empleado]
			   SET [NombreCompleto]		= @pNombreCompleto
				  ,[Cedula]				= @pCedula
				  ,[Correo]				= @pCorreo
				  ,[FechaNacimiento]	= @pFechaNacimiento
				  ,[FechaIngreso]		= @pFechaIngreso
				  ,[IdJefe]				= @pIdJefe
				  ,[IdArea]				= @pIdArea
				  ,[Foto]				= @pFoto
			 WHERE IdEmpleado = @pIdEmpleado

		END

	ELSE
		BEGIN
			DELETE FROM Empleado
			WHERE IdEmpleado = @pIdEmpleado
		END