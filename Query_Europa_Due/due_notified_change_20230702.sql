USE InsuranceLettersEur;

SELECT @@servername AS 'Servidor', db_name(dbid) AS 'Base de Datos' FROM master..sysprocesses WHERE spid = @@spid;  
SELECT getdate() AS 'Fecha hora Inicial';

    UPDATE tracking_property
    SET name = 'duenotified_CHANGED'
    WHERE tracking_id IN (
        SELECT t.id
        FROM tracking AS t
        INNER JOIN tracking_property AS tp1 ON tp1.tracking_id = t.id
        WHERE ticket_id IS NOT NULL
            AND ticket_id <> ''
            AND tp1.name = 'email'
            AND date > '2022-07-12'
            AND tp1.value NOT IN (
                SELECT tp1.value AS email
                FROM tracking AS t
                INNER JOIN tracking_property AS tp1 ON tp1.tracking_id = t.id
                WHERE ticket_id IS NOT NULL
                    AND ticket_id <> ''
                    AND tp1.name = 'email'
                    AND date > '2023-05-12'
            )
    )
    AND tracking_property.name = 'duenotified';

SELECT getdate() AS 'Fecha hora Final';