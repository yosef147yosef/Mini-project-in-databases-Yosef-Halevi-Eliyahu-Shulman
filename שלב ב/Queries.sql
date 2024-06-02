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




-- Finds all the deposit that have an interest rate and worker that no other deposits have. Gives the deposit ID the deposit date and the amount. Sorted by the deposit ID.
SELECT
    d.Deposit_ID,YEAR(d.deposit_Date),MONTH(d.Deposit_Date),DAY(d.Deposit_Date),d.Amount
FROM
    deposit AS d
WHERE NOT
    EXISTS(
    SELECT
        *
    FROM
        deposit
    WHERE
        (
            deposit.Interest_Rate_ID = d.Interest_Rate_ID OR deposit.Worker_ID = d.Worker_ID
        ) AND deposit.Deposit_ID != d.Deposit_ID
)
ORDER BY
    d.Deposit_ID ASC;





-- Finds all the deposit dates that are not the earliest or latest deposit date that the worker is working on. Gives the date in Y,M,D format. Sorted by the date.
SELECT
    YEAR(d.Deposit_Date),
    MONTH(d.Deposit_Date),
    DAY(d.Deposit_Date)
FROM
    deposit AS d
WHERE
    d.Deposit_Date > ANY(
    SELECT
        deposit.Deposit_Date
    FROM
        deposit
    WHERE
        deposit.Worker_ID = d.Worker_ID
) AND d.Deposit_Date < ANY(
    SELECT
        deposit.Deposit_Date
    FROM
        deposit
    WHERE
        deposit.Worker_ID = d.Worker_ID
)
ORDER BY
    YEAR(d.Deposit_Date),
    MONTH(d.Deposit_Date),
    DAY(d.Deposit_Date);

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
