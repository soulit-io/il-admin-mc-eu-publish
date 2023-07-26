USE InsuranceLetters
SELECT @@servername 'Servidor', db_name(dbid) 'Base de Datos' from master..sysprocesses where spid = @@spid
GO

SELECT getdate() as 'Fecha hora Inicial'
GO

SELECT '--------------Before--------------'
SELECT COUNT(*) FROM [dbo].[parameter]
SELECT '--------------Before--------------'
GO

BEGIN TRAN

DELETE FROM [dbo].[parameter] where identifier = 'compatible_browser';
GO

SET IDENTITY_INSERT [dbo].[parameter] OFF 
INSERT [dbo].[parameter] ([identifier], [value]) VALUES (N'compatible_browser', N'Firefox,Chrome,Chrome Mobile,Edge,Safari,Mobile Safari,Chrome Mobile iOS')
GO

SELECT '--------------After--------------'
SELECT COUNT(*) FROM [dbo].[parameter] 
SELECT '--------------After--------------'
COMMIT TRAN
SELECT getdate() as 'Fecha hora Final'


