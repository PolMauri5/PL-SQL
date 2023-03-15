USE Northwind;

DELIMITER XX

DROP PROCEDURE IF EXISTS forLoop XX

CREATE PROCEDURE forLoop(IN i INT)
BEGIN
    LOOP1:
    LOOP
		IF i>=10 THEN
			LEAVE LOOP1;
		END IF;
        SELECT concat("Et treurem els caixals", i);
        SET i = i+1;
	END LOOP lOOP1;
END XX
DELIMITER ;

CALL forLoop(0);