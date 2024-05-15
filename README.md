# Mini-project-in-databases
# Deposits Department:
The Deposits Department is responsible for managing all aspects related to deposit accounts within the bank.
This department oversees the opening, maintenance, and servicing of deposit accounts, which may include savings accounts, checking accounts, and certificates of deposit (CDs).
# Entity-Relationship Diagram (ERD)
![image](https://github.com/yosef147yosef/Mini-project-in-databases/assets/128507240/fd2d8e3e-e683-4aba-99a0-21edd940d4a4)

# Data Structure Diagram (DSD)
![WhatsApp Image 2024-05-07 at 19 46 01_4b6fc5b4](https://github.com/yosef147yosef/Mini-project-in-databases/assets/128507240/66d66744-76a7-41a5-8f9c-378687efc2b0)

## Entities:

1. **Client:**
   - Description: Represents the clients or customers in your system.
   - Attributes:
     - Name: (Type: String)
     - ID: (Type: Integer or String)
     - Address: (Type: String)
     - Phone Number: (Type: String)
     - Email: (Type: String)

2. **Account:**
   - Description: Represents the accounts held by clients.
   - Attributes:
     - Account Number: (Type: Integer or String)
     - Open Date: (Type: Date)
     - Balance: (Type: Numeric)
     - Account Type: (Type: String)

3. **Bank:**
   - Description: Represents the banks where accounts are held.
   - Attributes:
     - Bank ID: (Type: Integer or String)
     - Name: (Type: String)
     - Address: (Type: String)
     - Phone Number: (Type: String)

4. **Worker:**
   - Description: Represents the workers or employees associated with banks.
   - Attributes:
     - Name: (Type: String)
     - ID: (Type: Integer or String)

5. **Deposit:**
   - Description: Represents the deposits made by clients into their accounts.
   - Attributes:
     - Deposit ID: (Type: Integer or String)
     - Deposit Date: (Type: Date)
     - Amount: (Type: Numeric)

6. **Interest Rate:**
   - Description: Represents the interest rates associated with deposits.
   - Attributes:
     - Benefits: (Type: String)
     - Type: (Type: String)
     - Prime: (Type: Numeric)
     - Interest: (Type: Numeric)

## Connections:

- **Deposit to Account (One-to-Many):**
  - Description: Each deposit is associated with one account.
  - Foreign Key: Account Number in the Deposit entity.

- **Worker to Bank (One-to-Many):**
  - Description: Each worker is employed by one bank.
  - Foreign Key: Bank ID in the Worker entity.

- **Interest Rate to Deposit (One-to-Many):**
  - Description: Each deposit is associated with one interest rate.
  - Foreign Key: Interest Rate ID in the Deposit entity.

## Weak Entity:

- **Deposit:**
   - Description: Represents the deposits made by clients into their accounts.
   - Attributes:
     - Deposit ID: (Type: Integer or String)
     - Deposit Date: (Type: Date)
     - Amount: (Type: Numeric)
     

