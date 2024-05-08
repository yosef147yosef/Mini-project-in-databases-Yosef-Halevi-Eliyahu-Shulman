-- Finds all workers who work for more than one client
SELECT
    worker.NAME,
    CLIENT.NAME
FROM
    worker
NATURAL JOIN deposit NATURAL JOIN ACCOUNT NATURAL JOIN CLIENT GROUP BY worker.NAME
HAVING
    COUNT(*) > 1;
    -- Finds all banks with a worker that works on two or more accounts that have more than a million dollars
SELECT
    bank.NAME
FROM
    bank
WHERE
    EXISTS(
    SELECT
        *
    FROM
        worker
    NATURAL JOIN deposit NATURAL JOIN ACCOUNT WHERE ACCOUNT
    .Balance > 1000000 AND worker.Bank_ID = bank.Bank_ID
GROUP BY
    worker.ID
HAVING
    COUNT(*) > 1
);
-- Finds all workers that have multiple clients that share their name in a bank that they work
SELECT
    worker.ID
FROM
    worker
NATURAL JOIN bank NATURAL JOIN ACCOUNT NATURAL JOIN CLIENT WHERE worker.NAME = CLIENT.NAME
GROUP BY CLIENT
    .ID
HAVING
    COUNT(*) > 1;

-- Finds all clients with a deposit that has no benefits and orders them in ascending order by name
SELECT CLIENT
    .NAME
FROM CLIENT
NATURAL JOIN ACCOUNT NATURAL JOIN deposit WHERE deposit.Interest_Rate_ID IN(
    SELECT
        interest_rate.Interest_Rate_ID
    FROM
        interest_rate
    WHERE
        interest_rate.Benefits = "None"
)
ORDER BY CLIENT
    .NAME ASC;

    -- Deletes all deposits that have an interest rate higher than 3
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
        interest_rate.Interest > 3.0
);
    -- Deletes all workers who work in one or less banks
DELETE
FROM
    worker
WHERE
    worker.ID IN(
    SELECT
        worker.ID
    FROM
        worker
    NATURAL JOIN bank GROUP BY worker.ID
    HAVING
        COUNT(*) <= 1
);
-- Adds ten thousand dollars to all accounts that have a deposit with the benefit of long-term customer
UPDATE ACCOUNT
SET ACCOUNT
    .Balance = ACCOUNT.Balance +10000
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
    deposit.Deposit_Date = "1/1/2024"
WHERE
    deposit.Deposit_ID IN(
    SELECT
        deposit.Deposit_ID
    FROM
        deposit
    NATURAL JOIN ACCOUNT NATURAL JOIN CLIENT WHERE CLIENT
    .NAME LIKE 'J%'
);
