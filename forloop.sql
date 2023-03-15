USE Northwind;

DELIMITER XX

DROP PROCEDURE IF EXISTS forLoop XX

CREATE PROCEDURE forLoop(IN i INT)
BEGIN
    LOOP1:
    LOOP
		IF i>=10 THEN
			LEAVE loop1;
		END IF;
        SELECT "Et treurem els caixals";
        SET i = i-1;
	END LOOP lOOP1;
END forLoop
DELIMITER ;

CALL forLoop(2)