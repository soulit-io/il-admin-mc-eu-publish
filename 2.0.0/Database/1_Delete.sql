USE [il-admin-mc-eu]

SELECT @@servername 'Servidor', db_name(dbid) 'Base de Datos' from master..sysprocesses where spid = @@spid
GO

SELECT getdate() as 'Fecha hora Inicial'
GO

SELECT '--------------Before--------------'
SELECT COUNT(*) FROM [dbo].[staticLabels]
SELECT '--------------Before--------------'
GO

BEGIN TRAN

DELETE FROM [dbo].[Languages]
DELETE FROM [dbo].[staticLabels]
DELETE FROM [dbo].[Parameters]


SELECT '--------------After--------------'
SELECT COUNT(*) FROM [dbo].[staticLabels]
SELECT '--------------After--------------'

COMMIT TRAN

SELECT getdate() as 'Fecha hora Final'
GO


