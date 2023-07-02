USE InsuranceLettersEur;

SELECT @@servername AS 'Servidor', db_name(dbid) AS 'Base de Datos' FROM master..sysprocesses WHERE spid = @@spid;  
SELECT getdate() AS 'Fecha hora Inicial';

    UPDATE tracking_property
    SET name = 'duenotified'
    WHERE tracking_property.name = 'duenotified_CHANGED';

SELECT getdate() AS 'Fecha hora Final';