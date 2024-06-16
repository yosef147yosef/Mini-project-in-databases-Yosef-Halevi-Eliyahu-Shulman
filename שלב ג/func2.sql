-- Returns the largest ID of a bank with a name that starts with the given letter.
DROP FUNCTION IF EXISTS func2;
DELIMITER $$
CREATE FUNCTION func2(Letter VARCHAR(1)) RETURNS INT(10)
BEGIN
DECLARE res INT(10);
DECLARE BankCursor CURSOR FOR SELECT bank.Bank_ID FROM bank WHERE bank.Bank_NAME LIKE CONCAT(Letter,"%") ORDER BY bank.Bank_ID DESC;
OPEN BankCursor;
FETCH BankCursor INTO res;
CLOSE BankCursor;
RETURN res;
END$$
DELIMITER ;
