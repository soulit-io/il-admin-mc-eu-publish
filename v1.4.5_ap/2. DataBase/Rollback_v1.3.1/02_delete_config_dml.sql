USE InsuranceLettersAp 
SELECT @@servername 'Servidor', db_name(dbid) 'Base de Datos' from master..sysprocesses where spid = @@spid
GO

SELECT getdate() as 'Fecha hora Inicial'
GO

SELECT '--------------Before--------------'
SELECT COUNT(*) FROM [dbo].[application]
SELECT '--------------Before--------------'
GO

BEGIN TRAN

DELETE FROM [dbo].[email]
DELETE FROM [dbo].[email_due]
DELETE FROM [dbo].[landing]
DELETE FROM [dbo].[landing_application]
DELETE FROM [dbo].[landing_language]
DELETE FROM [dbo].[application]
DELETE FROM [dbo].[language]
DELETE FROM [dbo].[letter]
DELETE FROM [dbo].[static_section]
DELETE FROM [dbo].[static_label]
DELETE FROM [dbo].[step]
DELETE FROM [dbo].[step_handler]

SELECT '--------------After--------------'
SELECT COUNT(*) FROM [dbo].[application]
SELECT '--------------After--------------'

COMMIT TRAN

SELECT getdate() as 'Fecha hora Final'
GO