USE northwind;

DELIMITER ronbarcelo
DROP PROCEDURE IF EXISTS helloWordld ronbarcelo

CREATE PROCEDURE helloWordld()
BEGIN
	SELECT 'hola que tal';
END ronbarcelo

DELIMITER ;