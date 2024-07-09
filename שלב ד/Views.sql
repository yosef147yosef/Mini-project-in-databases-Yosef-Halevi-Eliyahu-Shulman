CREATE VIEW IF NOT EXISTS ClientDeposit AS SELECT CLIENT
    .Client_ID,
    deposit.Amount
FROM CLIENT
NATURAL JOIN ACCOUNT NATURAL JOIN deposit;
CREATE VIEW IF NOT EXISTS ClerkSalary AS SELECT
    salaries.Worker_ID,
    salaries.Net
FROM
    salaries
WHERE
    salaries.Worker_ID IN(
    SELECT
        clerk.Worker_ID
    FROM
        clerk
);





 -- Returns all the clerks who work for a deposit with more than 10,000 dollars in it and their salaries.
 SELECT Worker_ID,Net
 FROM clerksalary NATURAL JOIN worker NATURAL JOIN deposit
 WHERE deposit.Amount>10000;
 
 -- Returns the clerk who has the biggest salary and his salary
 SELECT *
 FROM clerksalary
 WHERE clerksalary.Net >= ALL(SELECT Net FROM clerksalary);








-- Return all the clients of a bank with a phone number that starts with 058 and their amount deposited.
SELECT Client_ID, Amount
FROM clientdeposit NATURAL JOIN account NATURAL JOIN bank
WHERE bank.Bank_Phone_Number LIKE "058%";

-- Return all the clients who have more than one deposit and the sum of the amount they deposited
SELECT Client_ID,SUM(Amount)
FROM clientdeposit
GROUP BY Client_ID
HAVING count(*)>1;
