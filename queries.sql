-- Finds all workers who work for more than two clients. Gives their id, name and how many clients they work for. Sorted by the worker ID ascending
SELECT
    v.Worker_ID,
    v.Worker_NAME,
    COUNT(*)
FROM
    (
    SELECT DISTINCT
        worker.Worker_ID,
        worker.Worker_NAME,
        CLIENT.Client_ID,
        CLIENT.Client_Name
    FROM
        worker
    NATURAL JOIN deposit NATURAL JOIN ACCOUNT NATURAL JOIN CLIENT
) AS v
GROUP BY
    v.Worker_ID,
    v.Worker_NAME
HAVING
    COUNT(*) > 2
ORDER BY
    v.Worker_ID;
    -- Finds all banks that have a clients name that starts with the letter J and a workers name that starts with the letter J. Gives a table with the bank's ID and NAME. Sorted by the bank ID ascending.
SELECT
    bank.Bank_ID,
    bank.Bank_NAME
FROM
    bank
WHERE
    EXISTS(
    SELECT
        *
    FROM ACCOUNT
NATURAL JOIN CLIENT WHERE CLIENT
    .Client_Name LIKE "J%" AND ACCOUNT.Bank_ID = bank.Bank_ID
) AND EXISTS(
    SELECT
        *
    FROM ACCOUNT
NATURAL JOIN deposit NATURAL JOIN worker WHERE worker.Worker_NAME LIKE "J%" AND ACCOUNT.Bank_ID = bank.Bank_ID
)
ORDER BY
    bank.BANK_ID;
    -- Finds all banks with a worker that works on two or more accounts that have more than ten thousand dollars. Gives the banks ID and NAME. Sorted by the bank ID
SELECT
    bank.Bank_ID,
    bank.Bank_NAME
FROM
    bank
WHERE
    EXISTS(
    SELECT
        *
    FROM
        worker
    NATURAL JOIN deposit NATURAL JOIN ACCOUNT WHERE ACCOUNT
    .Balance > 10000 AND deposit.Bank_ID = bank.Bank_ID
GROUP BY
    worker.Worker_ID
HAVING
    COUNT(*) > 1
)
ORDER BY
    bank.Bank_ID;
    -- Finds all clients with multiple deposits that have no benefits. Gives the clients ID, NAME and how many deposits they have with no benefits. Sorted by client ID in ascending order.
SELECT CLIENT
    .Client_ID,
    CLIENT.Client_NAME,
    COUNT(*)
FROM CLIENT
NATURAL JOIN ACCOUNT NATURAL JOIN deposit NATURAL JOIN interest_rate WHERE interest_rate.Benefits = "None"
GROUP BY CLIENT
    .Client_ID,
    CLIENT.Client_NAME
HAVING
    COUNT(*) > 1
ORDER BY CLIENT
    .Client_ID;
    -- Deletes all deposits that have an interest rate that is less than 3.0 or more than 4.0
START TRANSACTION
    ;
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
        interest_rate.Interest < 3.0 OR interest_rate.Interest > 4.0
);
SELECT
    *
FROM
    deposit;
ROLLBACK
    ;
    -- Deletes all workers who don't work on a deposit
START TRANSACTION
    ;
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
SELECT
    *
FROM
    worker;
ROLLBACK
    ;
-- Adds a million dollars to all accounts that have a deposit with the benefit of long-term customer
START TRANSACTION
    ;
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
SELECT
    *
FROM ACCOUNT
    ;
ROLLBACK
    ;
    -- Changes the deposit date to be 1/1/2024 if the clients name starts with a J
START TRANSACTION
    ;
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
SELECT
    *
FROM
    deposit;
ROLLBACK
    ;
