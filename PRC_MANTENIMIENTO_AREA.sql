IF OBJECT_ID('PRC_MANTENIMIENTO_AREA')
	IS NOT NULL
DROP PROCEDURE PRC_MANTENIMIENTO_AREA

GO

CREATE PROCEDURE PRC_MANTENIMIENTO_AREA(
	
	@pOp			VARCHAR(1)
	,@pIdArea		INT				= 0
	,@pNombre		VARCHAR(100)	= ''
	,@pDescripcion	VARCHAR(200)	= ''


)
AS

	IF @pOp = '1'
		BEGIN

			INSERT INTO Area
					   ([Nombre]
					   ,[Descripcion])
				 VALUES
					   (@pNombre
					   ,@pDescripcion)
		END
	ELSE IF @pOp = '2'
		BEGIN

			UPDATE Area
			   SET Nombre		= @pNombre
				  ,Descripcion	= @pDescripcion
			 WHERE IdArea		= @pIdArea

		END
	ELSE 
		BEGIN

			DELETE FROM Area
			WHERE IdArea = @pIdArea

		END










	