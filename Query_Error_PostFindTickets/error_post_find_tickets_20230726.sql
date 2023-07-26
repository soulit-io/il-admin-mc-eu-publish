USE InsuranceLetters;

SELECT @@servername AS 'Servidor', db_name(dbid) AS 'Base de Datos' FROM master..sysprocesses WHERE spid = @@spid;  
SELECT getdate() AS 'Fecha hora Inicial';

  UPDATE tracking
    SET ticket_id = ''
    WHERE id = '5415632'
    and application = 'car_rental_summary'

SELECT getdate() AS 'Fecha hora Final';