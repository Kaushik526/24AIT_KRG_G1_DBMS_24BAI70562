DELIMITER //

CREATE PROCEDURE SwapCities(IN id1 INT, IN id2 INT)
BEGIN
    DECLARE temp_city VARCHAR(100);

    SELECT city INTO temp_city
    FROM Suppliers
    WHERE supplier_id = id1;

    UPDATE Suppliers
    SET city = (SELECT city FROM Suppliers WHERE supplier_id = id2)
    WHERE supplier_id = id1;

    UPDATE Suppliers
    SET city = temp_city
    WHERE supplier_id = id2;

END //

DELIMITER ;