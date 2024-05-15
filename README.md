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

### Client

Represents the clients or customers in the system.

**Attributes:**
- Name: (Type: String)
- ID: (Type: Integer or String)
- Address: (Type: String)
- Phone Number: (Type: String)
- Email: (Type: String)

### Account

Represents the accounts held by clients.

**Attributes:**
- Account Number: (Type: Integer or String)
- Open Date: (Type: Date)
- Balance: (Type: Numeric)
- Account Type: (Type: String)

### Bank

Represents the banks where accounts are held.

**Attributes:**
- Bank ID: (Type: Integer or String)
- Name: (Type: String)
- Address: (Type: String)
- Phone Number: (Type: String)

### Worker

Represents the workers or employees associated with banks.

**Attributes:**
- Name: (Type: String)
- ID: (Type: Integer or String)

### Deposit

Represents the deposits made by clients into their accounts.

**Attributes:**
- Deposit ID: (Type: Integer or String)
- Deposit Date: (Type: Date)
- Amount: (Type: Numeric)

### Interest Rate

Represents the interest rates associated with deposits.

**Attributes:**
- Benefits: (Type: String)
- Type: (Type: String)
- Prime: (Type: Numeric)
- Interest: (Type: Numeric)
