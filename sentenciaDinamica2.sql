USE Northwind;

DELIMITER XX

DROP PROCEDURE IF EXISTS selectTable XX

CREATE PROCEDURE selectTable(IN tableName VARCHAR(30))
BEGIN

    SET @sintaxi = concat("SELECT * FROM ", tableName, ";");
    
    PREPARE instruccio FROM @sintaxi;
    EXECUTE instruccio;
    DEALLOCATE PREPARE instruccio;
    
END XX
DELIMITER ;

CALL selectTable('products');