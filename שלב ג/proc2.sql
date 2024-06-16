-- Selects all records from the Interest_Rate table that have an interest rate less than the given interest rate.
DROP PROCEDURE IF EXISTS proc2;
DELIMITER $$
CREATE PROCEDURE proc2(InterestInput DECIMAL(9,2))
BEGIN
SELECT * FROM interest_rate WHERE interest_rate.Interest<InterestInput;
END$$
DELIMITER ;
