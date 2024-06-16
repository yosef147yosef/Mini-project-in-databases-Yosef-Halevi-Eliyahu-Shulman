-- Adds a worker by the name of "Andy" with the id given into the worker table. If it is null or already exists in the table the name "Andy" will be added with the minimal id that does not already exist in the table.
DROP PROCEDURE IF EXISTS proc1;
DELIMITER $$
CREATE PROCEDURE proc1(NewID INT)
BEGIN
DECLARE minID INT;
DECLARE CONTINUE HANDLER FOR 1048,1062
BEGIN
SET minID = 0;
label: LOOP
    SET minID = minID +1;
    select minID ;
    IF NOT EXISTS(SELECT * FROM worker WHERE worker.Worker_ID = minID) THEN
     LEAVE label;
    END IF;
 END LOOP label;
    INSERT INTO worker
	VALUES (minID, "Andy");
END ;
INSERT INTO worker
VALUES (NewID, "Andy");
END$$
DELIMITER ;
