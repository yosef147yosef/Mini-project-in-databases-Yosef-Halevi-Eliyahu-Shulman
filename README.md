# Mini Project In Databases
# Deposits Department:
The Deposits Department is responsible for managing all aspects related to deposit accounts within the bank.
This department oversees the opening, maintenance, and servicing of deposit accounts, which may include savings accounts, checking accounts, and certificates of deposit (CDs).
# Entity-Relationship Diagram (ERD)
![image](https://github.com/yosef147yosef/Mini-project-in-databases/assets/126463473/a556f475-b5c9-45d8-9674-43aa9762b08d)


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
- Bank ID (Type: Integer)

### Deposit

Represents the deposits in an account.

**Attributes:**
- **Primary Key** Deposit ID: (Type: Integer or String)
- **Primary Key** Interest Rate ID: (Type: Integer)
- Deposit Date: (Type: Date)
- Amount: (Type: Numeric)
- Account Number: (Type: Integer)
- Bank ID: (Type: Integer)
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
Foreign Key: Account Number in the Deposit entity.

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

### Works In: Bank to Worker (One-to-Many)

Each worker works in exactly one bank.
Foreign Key: Bank ID in the Worker entity.

## Weak Entities

### Account
Account is a weak entity that is not fully defined without the entity Bank.
It gets an attribute of Bank ID as part of its primary key.

### Deposit
Deposit is a weak entity that is not fully defined without the entity Interest Rate.
It gets an attribute of Interes Rate ID as part of its primary key.

