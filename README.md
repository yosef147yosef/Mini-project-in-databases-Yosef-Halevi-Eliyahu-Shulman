# Mini-project-in-databases
# Deposits Department:
The Deposits Department is responsible for managing all aspects related to deposit accounts within the bank.
This department oversees the opening, maintenance, and servicing of deposit accounts, which may include savings accounts, checking accounts, and certificates of deposit (CDs).
# Entity-Relationship Diagram (ERD)
![image](https://github.com/yosef147yosef/Mini-project-in-databases/assets/128507240/fd2d8e3e-e683-4aba-99a0-21edd940d4a4)

# Data Structure Diagram (DSD)
![WhatsApp Image 2024-05-07 at 19 46 01_4b6fc5b4](https://github.com/yosef147yosef/Mini-project-in-databases/assets/128507240/66d66744-76a7-41a5-8f9c-378687efc2b0)

## Entities:
# Entity Description

This repository contains descriptions of entities in a system.

## Entities Description


### Bank

Description: Represents the banks where accounts are held.

**Attributes:**
- Bank_ID: (Type: Integer)
- Name: (Type: String)
- Address: (Type: String)
- Phone_Number: (Type: String)

### Account

Description: Represents the accounts in the banks.

**Attributes:**
- Account_Number: (Type: Integer or String)
- Open_Date: (Type: Date)
- Balance: (Type: Numeric)
- Account_Type: (Type: String)
- Bank_ID: (Type: Integer)
- Client_ID: (Type: Integer)


### Client

Description: Represents the clients of the accounts.

**Attributes:**
- Name: (Type: String)
- ID: (Type: Integer)
- Address: (Type: String)
- Phone_Number: (Type: String)
- Email: (Type: String)


### Deposit

Description: Represents the deposits in an account.

**Attributes:**
- Deposit ID: (Type: Integer or String)
- Deposit Date: (Type: Date)
- Amount: (Type: Numeric)
- Interest_Rate_ID: (Type: Integer)
- Account_Number: (Type: Integer)

### Interest Rate

Description: Represents the interest rates associated with deposits.

**Attributes:**
- Benefits: (Type: String)
- Type: (Type: String)
- Prime: (Type: Numeric)
- Interest: (Type: Numeric)
- Interest_Rate_ID (Type: Integer)
  
### Worker

Description: Represents the workers that work in the banks responsible for deposits.

**Attributes:**
- Name: (Type: String)
- ID: (Type: Integer)


## Connections

### Deposit to Account (One-to-Many)

Description: Each deposit is associated with one account.
Foreign Key: Account Number in the Deposit entity.

### Client to Account (One-to-Many)

Description: Each client can have multiple accounts.
Foreign Key: Client ID in the Account entity.

### Worker to Bank (Many-to-Many)

Description: Represents the association between workers and banks.
Foreign Keys: Worker ID and Bank ID.

### Interest Rate to Deposit (One-to-Many)

Description: Each deposit is associated with one interest rate.
Foreign Key: Interest Rate ID in the Deposit entity.

### Deposit to Worker (Many-to-Many)

Description: Represents the association between deposits and workers.
Foreign Keys: Deposit ID and Worker ID.

## Weak Entity

### Deposit

Description: Represents the deposits made by clients into their accounts.

**Attributes:**
- Deposit ID: (Type: Integer or String)
- Deposit Date: (Type: Date)
- Amount: (Type: Numeric)



