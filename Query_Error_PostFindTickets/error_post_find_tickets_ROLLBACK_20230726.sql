USE InsuranceLetters;

SELECT @@servername AS 'Servidor', db_name(dbid) AS 'Base de Datos' FROM master..sysprocesses WHERE spid = @@spid;  
SELECT getdate() AS 'Fecha hora Inicial';

  UPDATE tracking
    SET ticket_id = '16020-0001-95-180051935'
    WHERE id = '5415632'
    and application = 'car_rental_summary'

SELECT getdate() AS 'Fecha hora Final';