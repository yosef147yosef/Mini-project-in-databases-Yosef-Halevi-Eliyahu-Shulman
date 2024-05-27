# Queries Without Paramaters
## Query 1
### Description
מוצא את כל העובדים שעובדים ל2 או יותר לקוחות. מחזיר את הת.ז. ושם של העובד וכן את כמות הלקוחות שהוא עובד עבורם. ממיין לפי הת.ז. של העובדים בסדר עולה
### Running + Result
![image](https://github.com/yosef147yosef/Mini-project-in-databases/assets/126463473/542bdd26-c6b0-43a5-b03c-9ec1c7a0451b)
## Query 2
### Description
מוצא את כל הלקוחות עם לפחות 2 פקדונות שאין להם הטבות. מחזיר את הת.ז. ושם של הלקוח וכן את כמות הפקדונות שיש לו שאין להם הטבות. ממיין לפי הת.ז. של הלקוחות בסדר עולה
### Running + Result
![image](https://github.com/yosef147yosef/Mini-project-in-databases/assets/126463473/db65ec5d-3b08-42b0-a63c-06f4c9245d11)
## Query 3
### Description
מוצא את כל הפקדונות שיש להם סוג ריבית שאין לאף פקדון אחר או עובד שלא עובד על אף פקדון אחר. מחזיר את מספר הפקדון, תאריך פתיחת הפקדון והכמות המופקדת בפקדון. ממין לפי מספר הפקדון.
### Running + Result
![image](https://github.com/yosef147yosef/Mini-project-in-databases/assets/126463473/39a611da-42da-46d0-9aff-1ea81d856a68)
## Query 4
### Description
מוצא את כל תאריכי הפקדונות שהם לא הפקדון שנפתח ראשון שהעובד שעובד על הפקדון עובד עליהם ולא האחרון, כלומר כל תאריכי הפקדונות שלעובד שלהם יש פקדון אחר שהוא עובד עליו שנפתח מוקדם יותר וכן פקדון שהוא עובד עליו שנפתח מאוחר יותר. מחזיר את תאריך הפקדון. ממויין לפי הזמן.
### Running + Result
![image](https://github.com/yosef147yosef/Mini-project-in-databases/assets/126463473/1593e3b5-cda4-45e5-86ec-8e8058e99de4)


# Queries With Paramaters
## Query 1
### Description
מוצא את כל הבנקים שיש להם לקוח ששמו מתחיל באות שיש בPARAM וגם עובד ששמו מתחיל באות שיש בPARAM. מחזיר את מספר הבנק ואת שמו. ממויין לפי מספר הבנק.
### Running + Result
![image](https://github.com/yosef147yosef/Mini-project-in-databases/assets/126463473/465b8d1d-ad4a-4e6a-9c1f-1d5fd33b8592)
## Query 2
### Description
מוצא את כל הבנקים עם עובד שעובד על חשבון שיש בו יותר כסף מהכמות שיש בPARAM. מחזיר את מספר הבנק ואת שמו. ממויין לפי מספר הבנק.
### Running + Result
![image](https://github.com/yosef147yosef/Mini-project-in-databases/assets/126463473/fb28f470-0cbf-4dbd-bc4a-a23d38284d7e)
## Query 3
### Description
מוצא את כל השנים בה נפתח פקדון עם ההטבה שיש בPARAM. מחזיר את השנה ואת מספר הפקדונות כאלו שנפתחו בשנה הזאת. ממויין לפני שנים.
### Running + Result
![image](https://github.com/yosef147yosef/Mini-project-in-databases/assets/126463473/b2e79f6b-91e8-4757-8be9-4ecccf03ae12)
## Query 4
### Description
מוצא את כל הפקדונות שנפתחו בשנה PARAM או מאוחר יותר ובנוסף יש העובד שלהם עובד על חשובן שנפתח בשנה PARAM או מאוחר יותר
### Running + Result
![image](https://github.com/yosef147yosef/Mini-project-in-databases/assets/126463473/2475307f-525e-4e5f-b1fb-fb96ee23b62b)
# Delete Queries
## Query 1
### Description
מוחק את כל הפקדונות שיש להם ריבית של 4 אחוז או יותר
### Running + Result
#### Before
![Query #1 Before](https://github.com/yosef147yosef/Mini-project-in-databases/assets/126463473/d219c570-3ef1-4e78-b248-9e9679e84382)
#### Run
![Query #1 Run](https://github.com/yosef147yosef/Mini-project-in-databases/assets/126463473/d4526a3d-e09f-4dea-8558-bbf951629e3e)
#### After
![Query #1 After + Query #4 Before](https://github.com/yosef147yosef/Mini-project-in-databases/assets/126463473/8aab3246-d81b-4e41-ace6-ed0638ada046)
## Query 2
### Description
מוחק את כל העובדים שלא עובדים על שום פקדון
### Running + Result
#### Before
![Query #2 Before](https://github.com/yosef147yosef/Mini-project-in-databases/assets/126463473/f9d3711b-4a9b-4a63-b215-65b8c0dcfcf3)
#### Run
![Query #2 Run](https://github.com/yosef147yosef/Mini-project-in-databases/assets/126463473/cf2e4840-2862-4f3b-b024-d920cb265303)
#### After
![Query #2 After](https://github.com/yosef147yosef/Mini-project-in-databases/assets/126463473/bfce9576-3e24-4f81-8881-4b4455544b00)

# Update Queries
## Query 1
### Description
מוסיף מיליון לכל חשבון שיש לו הטבה של Long-Term Customer
### Running + Result
#### Before
![Query #3 Before](https://github.com/yosef147yosef/Mini-project-in-databases/assets/126463473/cac3da31-5584-49aa-9336-3f008d0e8ff6)
#### Run
![Query #3 Run](https://github.com/yosef147yosef/Mini-project-in-databases/assets/126463473/f6d2799b-58a0-4aec-abe3-a79f0a0ad05e)
#### After
![Query #3 After](https://github.com/yosef147yosef/Mini-project-in-databases/assets/126463473/631c8621-7f8d-46dc-9420-13ea8eea21d8)

## Query 2
### Description
מעדכן את תאריך הפקדון להיות 1/1/2024 אם השם של הלקוח מתחיל בJ
### Running + Result
#### Before
![Query #1 After + Query #4 Before](https://github.com/yosef147yosef/Mini-project-in-databases/assets/126463473/c7d0cb61-1965-4aed-bceb-fc425144f521)
#### Run
![Query #4 Run](https://github.com/yosef147yosef/Mini-project-in-databases/assets/126463473/22058882-9faf-4a94-9538-0559487db2a7)
#### After
![Query #4 After](https://github.com/yosef147yosef/Mini-project-in-databases/assets/126463473/5494b9ff-b545-4fad-9f4d-725d02e85b58)
# Constraints
## Constraint 1
### Description
מוסיף בדיקה CHECK שהחשבון לא נפתח לפני 1/1/1900
### Running + Result
![Constraint #1 Run](https://github.com/yosef147yosef/Mini-project-in-databases/assets/126463473/a31a0c5a-70a5-4ddb-8915-fcad8b73b8bb)
![Constrain #1 Result](https://github.com/yosef147yosef/Mini-project-in-databases/assets/126463473/58d61244-00dc-4491-a3c3-99e68f32aedd)
## Constraint 2
### Description
מוסיף ברירת מחדל DEFAULT שהכמות המופקדת בפקדון יהיה 10,000
### Running + Result
![Constraint #2](https://github.com/yosef147yosef/Mini-project-in-databases/assets/126463473/c0328ed1-e7c5-4eff-bb8b-79fc1dd6b2ff)
![Constraint #2 Run](https://github.com/yosef147yosef/Mini-project-in-databases/assets/126463473/0e08ec51-5f1a-4db7-917c-dba20460e3de)
## Constraint 3
### Description
מוסיף בדיקה NOT NULL שלא חסר ערך הריבית בטבלת הריביות
### Running + Result
![Constraint #3 Run](https://github.com/yosef147yosef/Mini-project-in-databases/assets/126463473/3141f387-5d26-4539-85f2-863ad763dcdb)
![Constraint #3 Result](https://github.com/yosef147yosef/Mini-project-in-databases/assets/126463473/7b5cc0c8-8a72-45c5-9203-18e6a6d23396)

# הערות
### הערה 1
הרצנו את שאילתת הDELETE השניה אחרי הראשונה ולכן קודם ימחקו כל הפקדונות שיש להם אחוז ריבית של 4 או יותר ולאחר מכן ימחקו כל העובדים שלא עובדים על פקדון. זה יגרום לכך שכל עובד שעבד רק על פקדונות שיש בהם אחוז ריבית של 4 או יותר ימחקו. כמובן שאם נמחוק בסדר הפוך הם יישארו ויהיו הרבה יותר עובדים בסוף. כמו כן העדכון השני רץ אחרי המחיקה הראשונה ולכן התמונת לפני שלה היא זהה לתמונת אחרי של המחיקה הראשונה היות ושניהם רצים על הטבלה deposit.
