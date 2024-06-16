-- Returns Balance-Amount if Balance is greater than amount. Otherwise it will return 0.
DROP FUNCTION IF EXISTS func1;
DELIMITER $$
CREATE FUNCTION func1(Balance FLOAT, Amount FLOAT) RETURNS DECIMAL(9,2)
BEGIN
  DECLARE LeftOver DECIMAL(9,2);
  SET LeftOver = 0;
  IF Balance>Amount THEN
  SET LeftOver = Balance-Amount;
  END IF;
  RETURN LeftOver;
END$$
DELIMITER ;
