USE Northwind;

DELIMITER XX

DROP PROCEDURE IF EXISTS selectTable2 XX

CREATE PROCEDURE selectTable2(IN exportProducts VARCHAR(30))
BEGIN

    SET @nomFitxer = REPLACE(replace(CONCAT("products_",replace(now(),":",""),".csv"),' ','_'),'-', ' ');
    SET @sintaxi =	concat("SELECT *
							FROM Products
							INTO OUTFILE '", @nomFitxer,"'",
							" CHARACTER SET utf8mb4
							FIELDS TERMINATED BY ';'
							OPTIONALLY ENCLOSED BY '""'
							LINES TERMINATED BY '\\n'; ");
    
    PREPARE instruccio FROM @sintaxi;
    EXECUTE instruccio;
    DEALLOCATE PREPARE instruccio;
    
END XX
DELIMITER ;

CALL selectTable2('orders');

SELECT @@datadir;

-- backup

