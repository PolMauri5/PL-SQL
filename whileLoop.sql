USE Northwind;

DELIMITER XX

DROP PROCEDURE IF EXISTS whileLoop XX

CREATE PROCEDURE whileLoop(IN x INT)
BEGIN
	while1:
	WHILE x > 0 DO
		SELECT concat('Falten', X, 'segons');
		SET x = x - 1;
	END WHILE while1;
    SELECT 'BOOOM XX';
END XX
DELIMITER ;
CALL whileLoop(10); -- passa el parametre
        