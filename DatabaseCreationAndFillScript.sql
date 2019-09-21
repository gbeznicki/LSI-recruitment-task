CREATE DATABASE [LSI_Reporting_Tool]
GO

USE [LSI_Reporting_Tool]
GO
/****** Object:  Table [dbo].[ReportReportsHistory]    Script Date: 21.09.2019 18:06:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ReportReportsHistory](
	[Report] [uniqueidentifier] NOT NULL,
	[ReportsHistory] [uniqueidentifier] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Reports]    Script Date: 21.09.2019 18:06:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Reports](
	[ID] [uniqueidentifier] NOT NULL,
	[Name] [varchar](max) NULL,
	[CreatedOn] [smalldatetime] NOT NULL,
	[Text] [xml] NOT NULL,
 CONSTRAINT [PK_Reports] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ReportsHistory]    Script Date: 21.09.2019 18:06:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ReportsHistory](
	[ID] [uniqueidentifier] NOT NULL,
	[ExportName] [varchar](max) NOT NULL,
	[DateTimeOfExport] [smalldatetime] NOT NULL,
	[UserName] [varchar](max) NOT NULL,
	[LocalName] [varchar](max) NULL,
 CONSTRAINT [PK_ReportsHistory] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
INSERT [dbo].[ReportsHistory] ([ID], [ExportName], [DateTimeOfExport], [UserName], [LocalName]) VALUES (N'903feb3c-4d26-4a13-96be-03588151ec48', N'TEST', CAST(N'2019-09-21T00:00:00' AS SmallDateTime), N'USER', N'Lokal 1')
INSERT [dbo].[ReportsHistory] ([ID], [ExportName], [DateTimeOfExport], [UserName], [LocalName]) VALUES (N'7757b290-f150-4cce-b83d-247396b1632a', N'TEST', CAST(N'2019-09-21T00:00:00' AS SmallDateTime), N'USER', N'Lokal 1')
INSERT [dbo].[ReportsHistory] ([ID], [ExportName], [DateTimeOfExport], [UserName], [LocalName]) VALUES (N'fb3d93d7-c161-4b98-aae2-2ada0a3e69bb', N'TEST', CAST(N'2019-09-21T00:00:00' AS SmallDateTime), N'USER', N'Lokal 1')
INSERT [dbo].[ReportsHistory] ([ID], [ExportName], [DateTimeOfExport], [UserName], [LocalName]) VALUES (N'bc4be196-59b7-4e33-88a4-37426756d1a9', N'TEST', CAST(N'2019-09-21T00:00:00' AS SmallDateTime), N'USER', N'Lokal 1')
INSERT [dbo].[ReportsHistory] ([ID], [ExportName], [DateTimeOfExport], [UserName], [LocalName]) VALUES (N'8b14ccae-591e-47b3-9795-3d5c3249107f', N'TEST', CAST(N'2019-09-21T00:00:00' AS SmallDateTime), N'USER', N'Lokal 1')
INSERT [dbo].[ReportsHistory] ([ID], [ExportName], [DateTimeOfExport], [UserName], [LocalName]) VALUES (N'b436a9de-9b7c-479d-91c0-8229d560428d', N'TEST', CAST(N'2019-09-21T00:00:00' AS SmallDateTime), N'USER', N'Lokal 1')
INSERT [dbo].[ReportsHistory] ([ID], [ExportName], [DateTimeOfExport], [UserName], [LocalName]) VALUES (N'c9905ec7-f855-4e70-9655-866d5cf591f7', N'TEST', CAST(N'2019-09-21T00:00:00' AS SmallDateTime), N'USER', N'Lokal 1')
INSERT [dbo].[ReportsHistory] ([ID], [ExportName], [DateTimeOfExport], [UserName], [LocalName]) VALUES (N'683f5a07-e60c-47e8-89b8-a3a83b513edf', N'TEST', CAST(N'2019-09-21T00:00:00' AS SmallDateTime), N'USER', N'Lokal 1')
INSERT [dbo].[ReportsHistory] ([ID], [ExportName], [DateTimeOfExport], [UserName], [LocalName]) VALUES (N'c0b9f1bd-db5b-451b-b8f4-ab89908983d7', N'TEST', CAST(N'2019-09-21T00:00:00' AS SmallDateTime), N'USER', N'Lokal 1')
INSERT [dbo].[ReportsHistory] ([ID], [ExportName], [DateTimeOfExport], [UserName], [LocalName]) VALUES (N'3fa323fb-aec5-49dd-b476-b5a8649a5dd3', N'TEST', CAST(N'2019-09-21T00:00:00' AS SmallDateTime), N'USER', N'Lokal 1')
INSERT [dbo].[ReportsHistory] ([ID], [ExportName], [DateTimeOfExport], [UserName], [LocalName]) VALUES (N'b3e05925-4666-4e94-9834-b67fc38287ac', N'TEST', CAST(N'2019-09-21T00:00:00' AS SmallDateTime), N'USER', N'Lokal 1')
INSERT [dbo].[ReportsHistory] ([ID], [ExportName], [DateTimeOfExport], [UserName], [LocalName]) VALUES (N'aed58bff-0e45-4036-a1af-e4ab08d30c93', N'TEST', CAST(N'2019-09-21T00:00:00' AS SmallDateTime), N'USER', N'Lokal 1')
INSERT [dbo].[ReportsHistory] ([ID], [ExportName], [DateTimeOfExport], [UserName], [LocalName]) VALUES (N'2fa9126c-a60d-43bd-a73e-fba260731905', N'TEST', CAST(N'2019-09-21T00:00:00' AS SmallDateTime), N'USER', N'Lokal 1')
ALTER TABLE [dbo].[ReportReportsHistory]  WITH CHECK ADD  CONSTRAINT [FK_ReportReportsHistory_Reports] FOREIGN KEY([Report])
REFERENCES [dbo].[Reports] ([ID])
GO
ALTER TABLE [dbo].[ReportReportsHistory] CHECK CONSTRAINT [FK_ReportReportsHistory_Reports]
GO
ALTER TABLE [dbo].[ReportReportsHistory]  WITH CHECK ADD  CONSTRAINT [FK_ReportReportsHistory_ReportsHistory] FOREIGN KEY([ReportsHistory])
REFERENCES [dbo].[ReportsHistory] ([ID])
GO
ALTER TABLE [dbo].[ReportReportsHistory] CHECK CONSTRAINT [FK_ReportReportsHistory_ReportsHistory]
GO
/****** Object:  StoredProcedure [dbo].[ReportHistoryInsert]    Script Date: 21.09.2019 18:06:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Gustaw Beźnicki>
-- Create date: <Create Date,21-09-2019, 15:40>
-- Description:	<Description, Procedure for inserting data into HistoryReports table>
-- =============================================
CREATE PROCEDURE [dbo].[ReportHistoryInsert]
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
