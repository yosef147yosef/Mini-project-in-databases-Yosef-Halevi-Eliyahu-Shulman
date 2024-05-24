-- Create Client table
    -- Use the appropriate database
USE
    bank_deposit;
    -- Create Client table
CREATE TABLE IF NOT EXISTS CLIENT(
    Client_ID int(50) PRIMARY KEY CHECK
        (Client_ID >= 0),
        Client_NAME VARCHAR(255)
    CHECK
        (Client_NAME NOT REGEXP '[0-9]'),
        Client_Address VARCHAR(255),
        Client_Phone_Number VARCHAR(20)
    CHECK
        (Client_Phone_Number LIKE '05%'),
        Client_Email VARCHAR(255)
    CHECK
        (Client_Email LIKE '%@%.%')
);
-- Create Bank table
CREATE TABLE IF NOT EXISTS Bank(
    Bank_ID int(50) PRIMARY KEY CHECK
        (Bank_ID >= 0),
        Bank_NAME VARCHAR(255),
        Bank_Address VARCHAR(255),
        Bank_Phone_Number VARCHAR(20)
    CHECK
        (Bank_Phone_Number LIKE '05%')
);
-- Create Account table
CREATE TABLE IF NOT EXISTS ACCOUNT(
    Account_Number int(50) CHECK
        (Account_Number >= 0),
        Open_Date DATE,
        Balance DECIMAL(10, 2),
        Account_Type VARCHAR(50)
    CHECK
        (
            Account_Type = "Savings" OR Account_Type = "Business" OR Account_Type = "Checking"
        ),
        Client_ID int(50),
        Bank_ID int(50),
        FOREIGN KEY(Client_ID) REFERENCES CLIENT(Client_ID),
        FOREIGN KEY(Bank_ID) REFERENCES Bank(Bank_ID),
    	PRIMARY KEY (Bank_ID,Account_Number)
);
-- Create Worker table
CREATE TABLE IF NOT EXISTS Worker(
    Worker_ID int(50) PRIMARY KEY CHECK
        (Worker_ID >= 0),
        Worker_NAME VARCHAR(255)
    CHECK
        (Worker_NAME NOT REGEXP '[0-9]')
);
-- Create Interest Rate table
CREATE TABLE IF NOT EXISTS Interest_Rate(
    Interest_Rate_ID int(50) PRIMARY KEY CHECK
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
    Deposit_ID int(50) CHECK
        (Deposit_ID >= 0),
        Deposit_Date DATE,
        Amount DECIMAL(10, 2),
        Account_Number int(50),
        Interest_Rate_ID int(50),
    	Bank_ID int(50),
    	Worker_ID int(50),
    	FOREIGN KEY (Worker_ID) REFERENCES Worker(Worker_ID),
        FOREIGN KEY(Bank_ID, Account_Number) REFERENCES ACCOUNT(Bank_ID, Account_Number),
        FOREIGN KEY(Interest_Rate_ID) REFERENCES Interest_Rate(Interest_Rate_ID),
    	PRIMARY KEY(Deposit_ID,Account_Number, Bank_ID)
);
