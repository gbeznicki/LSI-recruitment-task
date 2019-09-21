SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Gustaw BeŸnicki>
-- Create date: <Create Date,21-09-2019, 15:40>
-- Description:	<Description, Procedure for inserting data into HistoryReports table>
-- Execution example: < EXEC ReportHistoryInsert @ID = null, @ExportName = 'TEST', @DateTimeOfExport = null, @UserName = 'USER', @LocalName = 'Lokal 1' >
-- =============================================
CREATE PROCEDURE ReportHistoryInsert
	-- Add the parameters for the stored procedure here
	@ID uniqueIdentifier = null,
	@ExportName varchar(max) = '', -- if ExportName is null than insert empty string (could change to something else later according to will)
	@DateTimeOfExport smalldatetime, 
	@UserName varchar(max) = null,
	@LocalName varchar(max) = ''
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;
	-- id validation, if null than generate new Guid
	IF @ID is null
	BEGIN
		DECLARE @GUID UNIQUEIDENTIFIER
		SET @GUID = NEWID()
		SET @ID = @GUID
	END

	-- datetime validation, if null than generate new SmallDateTime
	IF @DateTimeOfExport is null
	BEGIN		
		SET @DateTimeOfExport = CAST(CAST(GETDATE() AS DATE) AS SMALLDATETIME)
	END
	
	BEGIN TRY
		INSERT INTO dbo.ReportsHistory(ID, ExportName, DateTimeOfExport, UserName, LocalName)
		VALUES (@ID, @ExportName, @DateTimeOfExport, @UserName, @LocalName)
	END TRY
	BEGIN CATCH
		-- userName validation, if is null than throw exception
		THROW;
	END CATCH;
END
GO