    -- Deletes all deposits that have an interest rate that is more than 4.0
DELETE
FROM
    deposit
WHERE
    deposit.Interest_Rate_ID IN(
    SELECT
        interest_rate.Interest_Rate_ID
    FROM
        interest_rate
    WHERE
        interest_rate.Interest > 4.0
);




    -- Deletes all workers who don't work on a deposit
DELETE
FROM
    worker
WHERE NOT
    EXISTS(
    SELECT
        *
    FROM
        deposit
    WHERE
        deposit.Worker_ID = worker.Worker_ID
);





-- Adds a million dollars to all accounts that have a deposit with the benefit of long-term customer
UPDATE ACCOUNT
SET ACCOUNT
    .Balance = ACCOUNT.Balance +1000000
WHERE ACCOUNT
    .Account_Number IN(
    SELECT ACCOUNT
        .Account_Number
    FROM ACCOUNT
NATURAL JOIN deposit NATURAL JOIN interest_rate WHERE interest_rate.Benefits = "Long-Term Customer"
);




    -- Changes the deposit date to be 1/1/2024 if the clients name starts with a J
UPDATE
    deposit
SET
    deposit.Deposit_Date = '2024-01-01'
WHERE
    deposit.Deposit_ID IN(
    SELECT
        deposit.Deposit_ID
    FROM
        deposit
    NATURAL JOIN ACCOUNT NATURAL JOIN CLIENT WHERE CLIENT
    .Client_NAME LIKE 'J%'
);
