USE InsuranceLetters 
SELECT @@servername 'Servidor', db_name(dbid) 'Base de Datos' from master..sysprocesses where spid = @@spid
GO

SELECT getdate() as 'Fecha hora Inicial'
GO

SELECT '--------------Before--------------'
SELECT VALUE FROM [dbo].[parameter] WHERE identifier = 'VERSION'
SELECT '--------------Before--------------'
GO

BEGIN TRAN

DELETE FROM [dbo].[parameter] where identifier IN ('VERSION')
INSERT [dbo].[parameter] ([identifier], [value]) VALUES ( N'VERSION', N'3.13.8') 

SELECT '--------------After--------------'
SELECT VALUE FROM [dbo].[parameter] WHERE identifier = 'VERSION'
SELECT '--------------After--------------'

COMMIT TRAN

SELECT getdate() as 'Fecha hora Final'
GO