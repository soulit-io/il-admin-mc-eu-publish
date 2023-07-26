USE InsuranceLetters
SELECT @@servername 'Servidor', db_name(dbid) 'Base de Datos' from master..sysprocesses where spid = @@spid
GO

Select getdate() as 'Fecha hora Inicial'
GO

USE [InsuranceLetters]
GO

SELECT *
FROM tracking t
LEFT JOIN tracking_property tp1 ON tp1.tracking_id = t.id
WHERE LOWER(tp1.value) = 'caroline0203@gmail.com';

Select getdate() as 'Fecha hora Final'
GO