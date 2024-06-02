    -- Finds all banks that have a clients name and a workers name that starts with the letter in the parameter. Gives a table with the bank's ID and NAME. Sorted by the bank ID ascending.
SET @PARAM="J%" COLLATE utf8mb4_general_ci;
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
    .Client_Name LIKE @PARAM AND ACCOUNT.Bank_ID = bank.Bank_ID
) AND EXISTS(
    SELECT
        *
    FROM ACCOUNT
NATURAL JOIN deposit NATURAL JOIN worker WHERE worker.Worker_NAME LIKE @PARAM AND ACCOUNT.Bank_ID = bank.Bank_ID
)
ORDER BY
    bank.BANK_ID;



    -- Finds all banks with a worker that works on an account that has more money than the amount in the parameter. Gives the banks ID and NAME. Sorted by the bank ID
SET @PARAM=50000;
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
        worker NATURAL JOIN deposit NATURAL JOIN ACCOUNT WHERE ACCOUNT
    .Balance > @PARAM AND account.Bank_ID = bank.Bank_ID
)
ORDER BY
    bank.Bank_ID;



-- Finds all the years where two or more deposits with the benefit of paramater were deposited. Gives a table with the years and the amount of such deposits. Sorted by the year.
SET @PARAM="Long-Term Customer" COLLATE utf8mb4_general_ci;
SELECT
    YEAR(deposit.Deposit_Date) AS Y, count(*)
FROM
    deposit
NATURAL JOIN interest_rate WHERE interest_rate.Benefits = @PARAM  
GROUP BY Y
HAVING COUNT(*)>=2
ORDER BY YEAR(deposit.Deposit_Date) ASC;





-- Finds all the deposits that opened in the year PARAM or later and have a worker who works on an account that opened in the year PARAM or later. Gives the deposit ID, amount and bank ID of those deposits. Sorted by deposit ID
SET @PARAM = '2000-01-01';
SELECT
    deposit.Deposit_ID,
    deposit.Amount,
    deposit.Bank_ID
FROM
    deposit
WHERE
    YEAR(deposit.Deposit_Date) >= YEAR(@PARAM) AND deposit.Worker_ID IN(
    SELECT
        worker.Worker_ID
    FROM
        worker
    NATURAL JOIN deposit NATURAL JOIN ACCOUNT WHERE YEAR(ACCOUNT.Open_Date) >= YEAR(@PARAM)
)
ORDER BY
    deposit.Deposit_ID ASC;
