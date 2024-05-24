
# Mini Project In Databases
## מגישים: אליהו שולמן ויוסף הלוי
# Deposits Department - Bank:
The Deposits Department is responsible for managing all aspects related to deposit accounts within the bank.
This department therefore must know about all the depost, the accounts and banks they are in, the clients of those deposits and the workers who work on them.
# Entity-Relationship Diagram (ERD)
![image](https://github.com/yosef147yosef/Mini-project-in-databases/assets/126463473/99dc14fa-2af6-424d-892b-a164d2dc0465)


# Data Structure Diagram (DSD)
![WhatsApp Image 2024-05-07 at 19 46 01_4b6fc5b4](https://github.com/yosef147yosef/Mini-project-in-databases/assets/128507240/66d66744-76a7-41a5-8f9c-378687efc2b0)

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
![image](https://github.com/yosef147yosef/Mini-project-in-databases/assets/126463473/3b0d032d-b382-4104-8ed5-0a04461141b2)
## הטבלאות
### Account
![image](https://github.com/yosef147yosef/Mini-project-in-databases/assets/126463473/6e6f7da4-a9a0-4f41-8f91-ca923706fc41)
### Bank
![image](https://github.com/yosef147yosef/Mini-project-in-databases/assets/126463473/d6bb0d06-16a9-4d05-a8fc-74f017a5b90f)
### Client
![image](https://github.com/yosef147yosef/Mini-project-in-databases/assets/126463473/51310782-bc5e-43aa-91bd-fafff9fc9530)
### Deposit
![image](https://github.com/yosef147yosef/Mini-project-in-databases/assets/126463473/87653e39-31b1-4d38-8e1a-31207477263d)
### Interest_Rate
![image](https://github.com/yosef147yosef/Mini-project-in-databases/assets/126463473/5f683f47-7dda-4a5d-bfbf-06b6d571506c)
### Worker
![image](https://github.com/yosef147yosef/Mini-project-in-databases/assets/126463473/6bf0d380-e1f6-43ea-b293-86e4243be441)






# גיבוי ושחזור נתונים
## גיבוי נתונים
![image](https://github.com/yosef147yosef/Mini-project-in-databases/assets/126463473/b352bfcc-aea0-4f6a-9e27-1f6731036597)
## שחזור נתומים
![image](https://github.com/yosef147yosef/Mini-project-in-databases/assets/126463473/abdc135a-bbc0-4811-88b1-7f9125b5c6dc)

## הערות
### הערה 1
בהתחלה עשינו קשר בין WORKER לDEPOSIT ובנוסף עוד קשר בין WORKER לBANK. הבננו שכפל הקשרים האלה יוצר בעיה כי יכול להיות שעובד עובד בבנק ועובד על פקדון שנמצא בבנק אחר בכלל ולכן החלטנו להוריד את אחד מהקשרים. בחרנו להוריד את הקשר בין WORKER לBANK כיוון שהעבודה שלנו זה על פקדון ולכן היה נראה לנו יותר מתאים להשאיר כמה שיותר קשרים עם הישות של פקדון בעצמו
### הערה 2
למרות שכל הקבצים יש בהם 500 שורות כפי שניתן לראות בקבצי CSV שהעלנו בפועל בטבלת הנתונים יש בערך בין 450 עד 480 שורות משום שלא הקפדנו ליצור ערכים יחודיים ולכן יש כמה סתירות לפעמים ובנוסף יש גם אילוצי מקום לPHPMYADMIN שגרם לחיתוך של כמה עשרות השורות האחרונות של כמה קבצים. בכל מקרה יש יותר מ400 שורות בכל הטבלאות כפי שניתן לראות (כמובן שגם כמה שורות נדחו בגלל הגבלות של מפתח זר כיון שהיו שורות מהטבלה האחרת שלא נכנסו בגלל אילוצי מקום של PHPMYADMIN).
### הערה 3
לשם של הבנקים יש שמות של FirstName מהאתר של mockaroo כי הדבר היחיד שמצאנו שמציאותי יותר כלל פסיקים שזה הפריע לקבצי הCSV.
### הערה 4
לא העלנו קובץ insertTables.sql כיון שכללנו את התנאים על הטבלאות בקובץ createTables.sql וכיון שבPHPMYADMIN אפשר להשתמש בIMPORT במקום להשתמש בפעולת INSERT

