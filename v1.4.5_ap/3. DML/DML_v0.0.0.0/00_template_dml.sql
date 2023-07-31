USE InsuranceLetters
SELECT @@servername 'Servidor', db_name(dbid) 'Base de Datos' from master..sysprocesses where spid = @@spid
GO

Select getdate() as 'Fecha hora Inicial'
GO

/* Consulta SQL */
GO

Select getdate() as 'Fecha hora Final'
GO