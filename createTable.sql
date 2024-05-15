-- Create Client table
    -- Use the appropriate database
USE
    bank_deposit;
    -- Create Client table
CREATE TABLE IF NOT EXISTS CLIENT(
    ID VARCHAR(50) PRIMARY KEY CHECK
        (ID >= 0),
        NAME VARCHAR(255)
    CHECK
        (NAME NOT REGEXP '[0-9]'),
        Address VARCHAR(255),
        Phone_Number VARCHAR(20)
    CHECK
        (Phone_Number LIKE '05%'),
        Email VARCHAR(255)
    CHECK
        (Email LIKE '%@%.%')
);
-- Create Bank table
CREATE TABLE IF NOT EXISTS Bank(
    Bank_ID VARCHAR(50) PRIMARY KEY CHECK
        (Bank_ID >= 0),
        NAME VARCHAR(255),
        Address VARCHAR(255),
        Phone_Number VARCHAR(20)
    CHECK
        (Phone_Number LIKE '05%')
);
-- Create Account table
CREATE TABLE IF NOT EXISTS ACCOUNT(
    Account_Number VARCHAR(50) PRIMARY KEY CHECK
        (Account_Number >= 0),
        Open_Date DATE,
        Balance DECIMAL(10, 2),
        Account_Type VARCHAR(50)
    CHECK
        (
            Account_Type = "Savings" OR Account_Type = "Business" OR Account_Type = "Checking"
        ),
        Client_ID VARCHAR(50),
        Bank_ID VARCHAR(50),
        FOREIGN KEY(Client_ID) REFERENCES CLIENT(ID),
        FOREIGN KEY(Bank_ID) REFERENCES Bank(Bank_ID)
);
-- Create Worker table
CREATE TABLE IF NOT EXISTS Worker(
    ID VARCHAR(50) PRIMARY KEY CHECK
        (ID >= 0),
        NAME VARCHAR(255)
    CHECK
        (NAME NOT REGEXP '[0-9]'),
        Bank_ID VARCHAR(50)
);
-- Create Interest Rate table
CREATE TABLE IF NOT EXISTS Interest_Rate(
    Interest_Rate_ID VARCHAR(50) PRIMARY KEY CHECK
        (Interest_Rate_ID >= 0),
        Benefits VARCHAR(255)
    CHECK
        (
            Benefits = "None" OR Benefits = "Long-Term Customer" OR Benefits = "Solider" OR Benefits = "Student"
        ),
        TYPE VARCHAR(50)
    CHECK
        (
            TYPE = "Short-term" OR TYPE = "Long-term"
        ),
        Prime DECIMAL(10, 2)
    CHECK
        (Prime >= 0),
        Interest DECIMAL(10, 2)
    CHECK
        (Interest >= 0)
);
-- Create Deposit table
CREATE TABLE IF NOT EXISTS Deposit(
    Deposit_ID VARCHAR(50) PRIMARY KEY CHECK
        (Deposit_ID >= 0),
        Deposit_Date DATE,
        Amount DECIMAL(10, 2),
        Account_Number VARCHAR(50),
        Interest_Rate_ID VARCHAR(50),
        FOREIGN KEY(Account_Number) REFERENCES ACCOUNT(Account_Number),
        FOREIGN KEY(Interest_Rate_ID) REFERENCES Interest_Rate(Interest_Rate_ID)
);
