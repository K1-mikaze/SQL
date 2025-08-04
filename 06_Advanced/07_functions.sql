DELIMITER //

CREATE FUNCTION function_name(parameters)
RETURNS return_datatype
[DETERMINISTIC | NOT DETERMINISTIC]
BEGIN
    -- Function body
    -- Must include a RETURN statement
    RETURN value;
END //

DELIMITER ;

DELIMITER //

CREATE FUNCTION CalculateArea(width DECIMAL(10,2), height DECIMAL(10,2))
RETURNS DECIMAL(10,2)
DETERMINISTIC
BEGIN
    DECLARE area DECIMAL(10,2);
    SET area = width * height;
    RETURN area;
END //

DELIMITER ;

DELIMITER //

CREATE FUNCTION GetCustomerStatus(total_purchases DECIMAL(10,2))
RETURNS VARCHAR(20)
DETERMINISTIC
BEGIN
    IF total_purchases > 1000 THEN
        RETURN 'Gold';
    ELSEIF total_purchases > 500 THEN
        RETURN 'Silver';
    ELSE
        RETURN 'Standard';
    END IF;
END //

DELIMITER ;

DELIMITER: Changes the statement terminator so MySQL doesn't confuse semicolons inside the function with the end of the CREATE statement.

DETERMINISTIC: Indicates whether the function always returns the same result for the same input parameters. Use NOT DETERMINISTIC for functions that return different results (like those using RAND() or CURDATE()).

Parameters: Can be IN (default), OUT, or INOUT parameters, though simple functions typically only use IN parameters.

Privileges: You need CREATE ROUTINE privilege to create functions.

Viewing Functions: To see existing functions, use:

SHOW CREATE FUNCTION function_name;

DROP FUNCTION IF EXISTS function_name;
