/****** Object:  StoredProcedure [dbo].[SP_UsuarioByID]    Script Date: 09/05/2017 22:35:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Aaron Bellot Rovira
-- Create date: 09/05/2017
-- Description:	Get an User by Id
-- =============================================
CREATE PROCEDURE [dbo].[SPUsuarioByID] 
	-- Parameters
	@ID int
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	
	SELECT * FROM dbo.Usuarios AS usu WHERE usu.idUsuario = @ID
END
