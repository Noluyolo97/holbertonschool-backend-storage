-- Create a function SafeDiv that divides (and returns) the first by
-- the second number or returns 0 if the second number is equal to 0.
DELIMITER $$

DROP FUNCTION IF EXISTS SafeDiv;

CREATE FUNCTION SafeDiv (a INT, b INT)
RETURNS FLOAT
BEGIN
    DECLARE ret FLOAT;
    IF b = 0 THEN
        SET ret = 0;
    ELSE
        SET ret = a / b;
    END IF;
    RETURN ret;
END $$
