
# Mini Project In Databases
## מגישים: אליהו שולמן ויוסף הלוי
# Deposits Department - Bank:
The Deposits Department is responsible for managing all aspects related to deposit accounts within the bank.
This department therefore must know about all the depost, the accounts and banks they are in, the clients of those deposits and the workers who work on them.
# Entity-Relationship Diagram (ERD)
![image](https://github.com/yosef147yosef/Mini-project-in-databases/assets/126463473/99dc14fa-2af6-424d-892b-a164d2dc0465)


# Data Structure Diagram (DSD)
![image](https://github.com/yosef147yosef/Mini-project-in-databases/assets/126463473/d036d21c-97eb-4b84-b664-b38444eb3822)

## Entities:

### Bank

Represents the banks where accounts are held.

**Attributes:**
- **Primary Key** Bank ID: (Type: Integer)
- Name: (Type: String)
- Address: (Type: String)
- Phone Number: (Type: String)

### Account

Represents the accounts in the banks.

**Attributes:**
- **Primary Key** Account Number: (Type: Integer or String)
- **Primary Key** Bank ID: (Type: Integer)
- Open Date: (Type: Date)
- Balance: (Type: Numeric)
- Account Type: (Type: String)
- Client ID: (Type: Integer)


### Client

Represents the clients of the accounts.

**Attributes:**
- **Primary Key** ID: (Type: Integer)
- Name: (Type: String)
- Address: (Type: String)
- Phone Number: (Type: String)
- Email: (Type: String)

### Worker

Represents the workers that are responsible for deposits.

**Attributes:**
- **Primary Key** ID: (Type: Integer)
- Name: (Type: String)

### Deposit

Represents the deposits in an account.

**Attributes:**
- **Primary Key** Deposit ID: (Type: Integer or String)
- **Primary Key** Account Number: (Type: Integer)
- **Primary Key** Bank ID: (Type: Integer)
- Interest Rate ID: (Type: Integer)
- Deposit Date: (Type: Date)
- Amount: (Type: Numeric)
- Worker ID: (Type: Integer)

### Interest Rate

Represents the interest rates associated with deposits.

**Attributes:**
- **Primary Key** Interest Rate ID (Type: Integer)
- Benefits: (Type: String)
- Type: (Type: String)
- Prime: (Type: Numeric)
- Interest: (Type: Numeric)

  
## Connections

### In: Account to Deposit (One-to-Many)

Each deposit is associated with exactly one account.
Foreign Key: Account Number and Bank ID in the Deposit entity.

### Has: Client to Account (One-to-Many)

Each account has is owned by exactly one client.
Foreign Key: Client ID in the Account entity.

### Responsible: Worker to Deposit (One-to-Many)

Each deposit has exactly one worker that is responsible for it.
Foreign Keys: Worker ID in the Deposit entity.

### Has: Interest Rate to Deposit (One-to-Many)

Each deposit has exactly one interest rate.
Foreign Key: Interest Rate ID in the Deposit entity.

### In: Bank to Account (One-to-Many)

Each account is in exactly one bank.
Foreign Key: Bank ID in the Account entity.


## Weak Entities

### Account
Account is a weak entity that is not fully defined without the entity Bank.
It gets an attribute of Bank ID as part of its primary key.

### Deposit
Deposit is a weak entity that is not fully defined without the entity Account.
It gets the attributes of Bank ID and Account Number as part of its primary key.
# הפעולות ליצירת הטבלאות
מופיע בקובץ Generators שבתוך קובץ הדוח
# הבסיס נתונים אחרי יצירת הטבלאות והכנסת הנתונים
## הבסיס נתונים
![image](https://github.com/yosef147yosef/Mini-project-in-databases/assets/126463473/f0483f30-185d-4898-be32-3f1d9e7d1be6)
## הטבלאות
### Account
-- Create Account table
CREATE TABLE IF NOT EXISTS ACCOUNT(
    Account_Number INT(50) CHECK
        (Account_Number >= 0),
        Open_Date DATE,
        Balance DECIMAL(10, 2),
        Account_Type VARCHAR(50)
    CHECK
        (
            Account_Type = "Savings" OR Account_Type = "Business" OR Account_Type = "Checking"
        ),
        Client_ID INT(50),
        Bank_ID INT(50),
        FOREIGN KEY(Client_ID) REFERENCES CLIENT(Client_ID),
        FOREIGN KEY(Bank_ID) REFERENCES Bank(Bank_ID),
        PRIMARY KEY(Bank_ID, Account_Number)
);
![image](https://github.com/yosef147yosef/Mini-project-in-databases/assets/126463473/a691b9ce-9443-404d-aca0-bca9ba481540)
![image](https://github.com/yosef147yosef/Mini-project-in-databases/assets/126463473/f59a6eca-8dcc-4952-9746-1d063fe4f998)
### Bank
-- Create Bank table
CREATE TABLE IF NOT EXISTS Bank(
    Bank_ID INT(50) PRIMARY KEY CHECK
        (Bank_ID >= 0),
        Bank_NAME VARCHAR(255),
        Bank_Address VARCHAR(255),
        Bank_Phone_Number VARCHAR(20)
    CHECK
        (Bank_Phone_Number LIKE '05%')
);
![image](https://github.com/yosef147yosef/Mini-project-in-databases/assets/126463473/5a8f6d48-00e5-4934-89f7-02d79e50eaf8)
![image](https://github.com/yosef147yosef/Mini-project-in-databases/assets/126463473/d6bb0d06-16a9-4d05-a8fc-74f017a5b90f)
### Client
-- Create Client table 
CREATE TABLE IF NOT EXISTS CLIENT(
    Client_ID INT(50) PRIMARY KEY CHECK
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
![image](https://github.com/yosef147yosef/Mini-project-in-databases/assets/126463473/a29e3840-eda7-48a3-9fb4-c161cb01ce38)
![image](https://github.com/yosef147yosef/Mini-project-in-databases/assets/126463473/51310782-bc5e-43aa-91bd-fafff9fc9530)
### Deposit
-- Create Deposit table
CREATE TABLE IF NOT EXISTS Deposit(
    Deposit_ID INT(50) CHECK
        (Deposit_ID >= 0),
        Deposit_Date DATE,
        Amount DECIMAL(10, 2),
        Account_Number INT(50),
        Interest_Rate_ID INT(50),
        Bank_ID INT(50),
        Worker_ID INT(50),
        FOREIGN KEY(Worker_ID) REFERENCES Worker(Worker_ID),
        FOREIGN KEY(Bank_ID, Account_Number) REFERENCES ACCOUNT(Bank_ID, Account_Number),
        FOREIGN KEY(Interest_Rate_ID) REFERENCES Interest_Rate(Interest_Rate_ID),
        PRIMARY KEY(
            Deposit_ID,
            Account_Number,
            Bank_ID
        )
);
![image](https://github.com/yosef147yosef/Mini-project-in-databases/assets/126463473/027e2e18-bb3f-4663-a933-bdc104fe6308)
![image](https://github.com/yosef147yosef/Mini-project-in-databases/assets/126463473/6a465a4e-aed0-4dec-bcd6-45bd5b110cb4)
### Interest_Rate
-- Create Interest Rate table
CREATE TABLE IF NOT EXISTS Interest_Rate(
    Interest_Rate_ID INT(50) PRIMARY KEY CHECK
        (Interest_Rate_ID >= 0),
        Benefits VARCHAR(255)
    CHECK
        (
            Benefits = "None" OR Benefits = "Long-Term Customer" OR Benefits = "Soldier" OR Benefits = "Student"
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
![image](https://github.com/yosef147yosef/Mini-project-in-databases/assets/126463473/82cd46d4-dac0-41aa-a60f-ee4a9c6461c4)
![image](https://github.com/yosef147yosef/Mini-project-in-databases/assets/126463473/5f683f47-7dda-4a5d-bfbf-06b6d571506c)
### Worker
-- Create Worker table
CREATE TABLE IF NOT EXISTS Worker(
    Worker_ID INT(50) PRIMARY KEY CHECK
        (Worker_ID >= 0),
        Worker_NAME VARCHAR(255)
    CHECK
        (Worker_NAME NOT REGEXP '[0-9]')
);
![image](https://github.com/yosef147yosef/Mini-project-in-databases/assets/126463473/a38e3743-7b28-4e26-9b51-fb6fde3357a6)
![image](https://github.com/yosef147yosef/Mini-project-in-databases/assets/126463473/6bf0d380-e1f6-43ea-b293-86e4243be441)






# גיבוי ושחזור נתונים
## גיבוי נתונים
![image](https://github.com/yosef147yosef/Mini-project-in-databases/assets/126463473/b352bfcc-aea0-4f6a-9e27-1f6731036597)
## שחזור נתומים
![image](https://github.com/yosef147yosef/Mini-project-in-databases/assets/126463473/abdc135a-bbc0-4811-88b1-7f9125b5c6dc)

## הערות
### הערה 1
בהתחלה עשינו קשר בין WORKER לDEPOSIT ובנוסף עוד קשר בין WORKER לBANK. הבננו שכפל הקשרים האלה יוצר בעיה כי יכול להיות שעובד עובד בבנק ועובד על פקדון שנמצא בבנק אחר בכלל ולכן החלטנו להוריד את אחד מהקשרים. בחרנו להוריד את הקשר בין WORKER לBANK כיוון שהעבודה שלנו זה על פקדון ולכן היה נראה לנו יותר מתאים להשאיר כמה שיותר קשרים עם הישות של פקדון בעצמו. בנוסף אם משאירים קשר על הפקדון זה נותן לנו מידע גם על איזה חשבון ואיזה בנק העובד עובד ולכן היה נראה לנו שעדיף לבחור את הדבר הכולל יותר.
### הערה 2
למרות שכל הקבצים יש בהם 500 שורות כפי שניתן לראות בקבצי CSV שהעלנו בפועל בטבלת הנתונים יש בערך בין 450 עד 480 שורות משום שלא הקפדנו ליצור ערכים יחודיים ולכן יש כמה סתירות לפעמים ובנוסף יש גם אילוצי מקום לPHPMYADMIN שגרם לחיתוך של כמה עשרות השורות האחרונות של כמה קבצים. בכל מקרה יש יותר מ400 שורות בכל הטבלאות כפי שניתן לראות (כמובן שגם כמה שורות נדחו בגלל הגבלות של מפתח זר כיון שהיו שורות מהטבלה האחרת שלא נכנסו בגלל אילוצי מקום של PHPMYADMIN).
### הערה 3
לשם של הבנקים יש שמות של FirstName מהאתר של mockaroo כי הדבר היחיד שמצאנו שמציאותי יותר כלל פסיקים שזה הפריע לקבצי הCSV.
### הערה 4
כללנו את createTables.sql ואת insertTales.sql בקובץ אחד של createTables+insertTable.sql כיון שכתבנו את התנאים בתוך הטבלאות ולא אחר כך בעזרת פעולת ALTER TABLE.
### הערה 5
אתה תאריכים יצרנו בEXCEL ובEXCEL זה הפורמט הלא נכון ולכן בחרנו ליצור ערכים רנודמליים בטווח הנכון לשדות. יש בזה בעיה שלחודשים שונים יש כמות ימים שונה ולכן יש תלות. כדי לפתור את הבעיה הזאת קבענו שיהיה 30 ימים מקסימום בחודש ועברנו על הערכים הבודדים שהיו בפברואר ה-29 או 30 ושינינו אותם ל-28 ידנית

