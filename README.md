# Mini Project In Databases
# Deposits Department:
The Deposits Department is responsible for managing all aspects related to deposit accounts within the bank.
This department oversees the opening, maintenance, and servicing of deposit accounts, which may include savings accounts, checking accounts, and certificates of deposit (CDs).
# Entity-Relationship Diagram (ERD)
![image](https://github.com/yosef147yosef/Mini-project-in-databases/assets/126463473/3bdc9b9e-a508-4f77-8973-f64e41560274)
[{"version":2,"www":"erdplus.com","shapes":[{"type":"Entity","details":{"name":"Bank","type":"regular","x":911,"y":421.9000015258789,"isDisjointed":true,"isTotalSpecialization":true,"isSubtype":false,"supertypeEntityId":null,"id":1}},{"type":"Entity","details":{"name":"Client","type":"regular","x":1001,"y":126.9000015258789,"isDisjointed":true,"isTotalSpecialization":true,"isSubtype":false,"supertypeEntityId":null,"id":2}},{"type":"Entity","details":{"name":"Account","type":"weak","x":649,"y":200.9000015258789,"isDisjointed":true,"isTotalSpecialization":true,"isSubtype":false,"supertypeEntityId":null,"id":3}},{"type":"Entity","details":{"name":"Worker","type":"regular","x":521,"y":439,"isDisjointed":true,"isTotalSpecialization":true,"isSubtype":false,"supertypeEntityId":null,"id":4}},{"type":"Entity","details":{"name":"Deposit","type":"weak","x":348,"y":146.9000015258789,"isDisjointed":true,"isTotalSpecialization":true,"isSubtype":false,"supertypeEntityId":null,"id":5}},{"type":"Entity","details":{"name":"Interest Rate","type":"regular","x":189,"y":424.9000015258789,"isDisjointed":true,"isTotalSpecialization":true,"isSubtype":false,"supertypeEntityId":null,"id":6}},{"type":"Attribute","details":{"name":"Interest Rate ID","isDerived":false,"isMultivalued":false,"isOptional":false,"isComposite":false,"isUnique":true,"x":50,"y":448.9000015258789,"id":7}},{"type":"Attribute","details":{"name":"Interest","isDerived":false,"isMultivalued":false,"isOptional":false,"isComposite":false,"isUnique":false,"x":298,"y":432.9000015258789,"id":9}},{"type":"Attribute","details":{"name":"Type","isDerived":false,"isMultivalued":false,"isOptional":false,"isComposite":false,"isUnique":false,"x":296,"y":481.9000015258789,"id":11}},{"type":"Attribute","details":{"name":"Benefits","isDerived":false,"isMultivalued":false,"isOptional":false,"isComposite":false,"isUnique":false,"x":211,"y":512.9000015258789,"id":13}},{"type":"Attribute","details":{"name":"Prime","isDerived":false,"isMultivalued":false,"isOptional":false,"isComposite":false,"isUnique":false,"x":117,"y":503.9000015258789,"id":15}},{"type":"Attribute","details":{"name":"ID","isDerived":false,"isMultivalued":false,"isOptional":false,"isComposite":false,"isUnique":true,"x":440,"y":514,"id":17}},{"type":"Attribute","details":{"name":"Name","isDerived":false,"isMultivalued":false,"isOptional":false,"isComposite":false,"isUnique":false,"x":541,"y":524,"id":19}},{"type":"Attribute","details":{"name":"ID","isDerived":false,"isMultivalued":false,"isOptional":false,"isComposite":false,"isUnique":true,"x":871,"y":57,"id":21}},{"type":"Attribute","details":{"name":"Name","isDerived":false,"isMultivalued":false,"isOptional":false,"isComposite":false,"isUnique":false,"x":1003,"y":50.900001525878906,"id":23}},{"type":"Attribute","details":{"name":"Phone Number","isDerived":false,"isMultivalued":false,"isOptional":false,"isComposite":false,"isUnique":false,"x":1101,"y":75.9000015258789,"id":25}},{"type":"Attribute","details":{"name":"Address","isDerived":false,"isMultivalued":false,"isOptional":false,"isComposite":false,"isUnique":false,"x":1117,"y":154.9000015258789,"id":27}},{"type":"Attribute","details":{"name":"Email","isDerived":false,"isMultivalued":false,"isOptional":false,"isComposite":false,"isUnique":false,"x":1077,"y":230.9000015258789,"id":29}},{"type":"Attribute","details":{"name":"Bank ID","isDerived":false,"isMultivalued":false,"isOptional":false,"isComposite":false,"isUnique":true,"x":1053,"y":454.9000015258789,"id":31}},{"type":"Attribute","details":{"name":"Address","isDerived":false,"isMultivalued":false,"isOptional":false,"isComposite":false,"isUnique":false,"x":1001,"y":492.9000015258789,"id":33}},{"type":"Attribute","details":{"name":"Name","isDerived":false,"isMultivalued":false,"isOptional":false,"isComposite":false,"isUnique":false,"x":904,"y":501.9000015258789,"id":35}},{"type":"Attribute","details":{"name":"Phone Number","isDerived":false,"isMultivalued":false,"isOptional":false,"isComposite":false,"isUnique":false,"x":804,"y":492.9000015258789,"id":37}},{"type":"Attribute","details":{"name":"Deposit ID","isDerived":false,"isMultivalued":false,"isOptional":false,"isComposite":false,"isUnique":true,"x":183,"y":82.9000015258789,"id":39}},{"type":"Attribute","details":{"name":"Deposit Date","isDerived":false,"isMultivalued":false,"isOptional":false,"isComposite":false,"isUnique":false,"x":307,"y":53.900001525878906,"id":41}},{"type":"Attribute","details":{"name":"Amount","isDerived":false,"isMultivalued":false,"isOptional":false,"isComposite":false,"isUnique":false,"x":432,"y":70.9000015258789,"id":43}},{"type":"Attribute","details":{"name":"Account Number","isDerived":false,"isMultivalued":false,"isOptional":false,"isComposite":false,"isUnique":true,"x":552,"y":102.9000015258789,"id":45}},{"type":"Attribute","details":{"name":"Open Date","isDerived":false,"isMultivalued":false,"isOptional":false,"isComposite":false,"isUnique":false,"x":652,"y":50.900001525878906,"id":47}},{"type":"Attribute","details":{"name":"Account Type","isDerived":false,"isMultivalued":false,"isOptional":false,"isComposite":false,"isUnique":false,"x":724,"y":95.9000015258789,"id":49}},{"type":"Attribute","details":{"name":"Balance","isDerived":false,"isMultivalued":false,"isOptional":false,"isComposite":false,"isUnique":false,"x":737,"y":156.9000015258789,"id":51}},{"type":"Relationship","details":{"name":"In","isIdentifying":true,"x":772,"y":321,"slots":[{"slotIndex":0,"minimum":"","maximum":"","participation":"unspecified","cardinality":"unspecified","role":"","entityId":1},{"slotIndex":1,"minimum":"","maximum":"","participation":"unspecified","cardinality":"one","role":"","entityId":3}],"id":53}},{"type":"Relationship","details":{"name":"Has","isIdentifying":true,"x":226,"y":321,"slots":[{"slotIndex":0,"minimum":"","maximum":"","participation":"unspecified","cardinality":"unspecified","role":"","entityId":6},{"slotIndex":1,"minimum":"","maximum":"","participation":"unspecified","cardinality":"one","role":"","entityId":5}],"id":56}},{"type":"Relationship","details":{"name":"In","isIdentifying":false,"x":486,"y":197,"slots":[{"slotIndex":0,"minimum":"","maximum":"","participation":"unspecified","cardinality":"one","role":"","entityId":5},{"slotIndex":1,"minimum":"","maximum":"","participation":"unspecified","cardinality":"unspecified","role":"","entityId":3}],"id":59}},{"type":"Relationship","details":{"name":"Has","isIdentifying":false,"x":854,"y":186,"slots":[{"slotIndex":0,"minimum":"","maximum":"","participation":"unspecified","cardinality":"one","role":"","entityId":3},{"slotIndex":1,"minimum":"","maximum":"","participation":"unspecified","cardinality":"unspecified","role":"","entityId":2}],"id":62}},{"type":"Relationship","details":{"name":"Responsible","isIdentifying":false,"x":427,"y":283,"slots":[{"slotIndex":0,"minimum":"","maximum":"","participation":"unspecified","cardinality":"unspecified","role":"","entityId":4},{"slotIndex":1,"minimum":"","maximum":"","participation":"unspecified","cardinality":"one","role":"","entityId":5}],"id":65}},{"type":"Relationship","details":{"name":"Works In","isIdentifying":false,"x":697,"y":415,"slots":[{"slotIndex":0,"minimum":"","maximum":"","participation":"unspecified","cardinality":"one","role":"","entityId":4},{"slotIndex":1,"minimum":"","maximum":"","participation":"unspecified","cardinality":"unspecified","role":"","entityId":1}],"id":89}}],"connectors":[{"type":"Connector","details":{"id":66},"source":7,"destination":6},{"type":"Connector","details":{"id":67},"source":9,"destination":6},{"type":"Connector","details":{"id":68},"source":11,"destination":6},{"type":"Connector","details":{"id":69},"source":13,"destination":6},{"type":"Connector","details":{"id":70},"source":15,"destination":6},{"type":"Connector","details":{"id":71},"source":17,"destination":4},{"type":"Connector","details":{"id":72},"source":19,"destination":4},{"type":"Connector","details":{"id":73},"source":21,"destination":2},{"type":"Connector","details":{"id":74},"source":23,"destination":2},{"type":"Connector","details":{"id":75},"source":25,"destination":2},{"type":"Connector","details":{"id":76},"source":27,"destination":2},{"type":"Connector","details":{"id":77},"source":29,"destination":2},{"type":"Connector","details":{"id":78},"source":31,"destination":1},{"type":"Connector","details":{"id":79},"source":33,"destination":1},{"type":"Connector","details":{"id":80},"source":35,"destination":1},{"type":"Connector","details":{"id":81},"source":37,"destination":1},{"type":"Connector","details":{"id":82},"source":39,"destination":5},{"type":"Connector","details":{"id":83},"source":41,"destination":5},{"type":"Connector","details":{"id":84},"source":43,"destination":5},{"type":"Connector","details":{"id":85},"source":45,"destination":3},{"type":"Connector","details":{"id":86},"source":47,"destination":3},{"type":"Connector","details":{"id":87},"source":49,"destination":3},{"type":"Connector","details":{"id":88},"source":51,"destination":3},{"type":"RelationshipConnector","details":{"slotIndex":0,"id":54},"source":1,"destination":53},{"type":"RelationshipConnector","details":{"slotIndex":1,"id":55},"source":3,"destination":53},{"type":"RelationshipConnector","details":{"slotIndex":0,"id":57},"source":6,"destination":56},{"type":"RelationshipConnector","details":{"slotIndex":1,"id":58},"source":5,"destination":56},{"type":"RelationshipConnector","details":{"slotIndex":0,"id":60},"source":5,"destination":59},{"type":"RelationshipConnector","details":{"slotIndex":1,"id":61},"source":3,"destination":59},{"type":"RelationshipConnector","details":{"slotIndex":0,"id":63},"source":3,"destination":62},{"type":"RelationshipConnector","details":{"slotIndex":1,"id":64},"source":2,"destination":62},{"type":"RelationshipConnector","details":{"slotIndex":0,"id":66},"source":4,"destination":65},{"type":"RelationshipConnector","details":{"slotIndex":1,"id":67},"source":5,"destination":65},{"type":"RelationshipConnector","details":{"slotIndex":0,"id":90},"source":4,"destination":89},{"type":"RelationshipConnector","details":{"slotIndex":1,"id":91},"source":1,"destination":89}],"width":2000,"height":1000}Uploading undefined (1).erdplus…]()

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
- **Primary Key** Interest Rate ID: (Type: Integer)
- Deposit Date: (Type: Date)
- Amount: (Type: Numeric)
- Account Number: (Type: Integer)
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

### Account to Deposit (One-to-Many)

Each deposit is associated with exactly one account.
Foreign Key: Account Number in the Deposit entity.

### Client to Account (One-to-Many)

Each account has is owned by exactly one client.
Foreign Key: Client ID in the Account entity.

### Worker to Deposit (One-to-Many)

Each deposit has exactly one worker that works on it.
Foreign Keys: Worker ID in the Deposit entity.

### Interest Rate to Deposit (One-to-Many)

Each deposit has exactly one interest rate.
Foreign Key: Interest Rate ID in the Deposit entity.

### Bank to Account (One-to-Many)

Each account is in exactly one bank.
Foreign Key: Bank ID in the Account entity.

## Weak Entities

### Account
Account is a weak entity that is not fully defined without the entity Bank.
It gets an attribute of Bank ID as part of its primary key.

### Deposit
Deposit is a weak entity that is not fully defined without the entity Interest Rate.
It gets an attribute of Interes Rate ID as part of its primary key.

