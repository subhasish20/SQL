
In a **banking database**, you wouldn’t just throw everything in one huge table; rather, you’d split it into **entities** (like Customers, Accounts, Transactions, etc.), and each entity has its important columns (attributes).  



### 1. **Customer Table** 👤  
Holds information about the person who owns accounts.  
- `Customer_ID` (Primary Key, unique ID)  
- `First_Name`  
- `Last_Name`  
- `Date_of_Birth`  
- `Address`  
- `Phone_Number`  
- `Email`  
- `National_ID / Social_Security_Number`  
- `Date_Joined`  

---

### 2. **Accounts Table** 💳  
Represents different bank accounts owned by customers.  
- `Account_ID` (Primary Key)  
- `Customer_ID` (Foreign Key → Customer Table)  
- `Account_Type` (Savings, Checking, Loan, etc.)  
- `Balance`  
- `Opened_Date`  
- `Status` (Active, Frozen, Closed)  

---

### 3. **Transactions Table** 💸  
Records all money movements in/out of accounts.  
- `Transaction_ID` (Primary Key)  
- `Account_ID` (Foreign Key → Accounts)  
- `Transaction_Type` (Deposit, Withdrawal, Transfer, Payment)  
- `Amount`  
- `Transaction_Date`  
- `Description` (e.g., “ATM Withdrawal,” “Online Transfer”)  
- `Counterparty_Account` (if transfer to another account)  

---

### 4. **Loans Table** 🏠  
If the bank provides loans, track them separately.  
- `Loan_ID` (Primary Key)  
- `Customer_ID` (Foreign Key → Customer)  
- `Loan_Type` (Home, Car, Personal, etc.)  
- `Loan_Amount`  
- `Interest_Rate`  
- `Start_Date`  
- `End_Date`  
- `Remaining_Balance`  

---

### 5. **Cards Table** (Optional) 💳  
For credit/debit cards linked to accounts.  
- `Card_ID` (Primary Key)  
- `Account_ID` (Foreign Key → Accounts)  
- `Card_Type` (Debit, Credit)  
- `Card_Number` (securely stored, usually encrypted/masked)  
- `Expiry_Date`  
- `CVV` (extremely protected, in real systems often not stored)  
- `Status` (Active, Blocked, Expired)  

---

### 6. **Employees Table** 👔  
Because banks also need to track staff.  
- `Employee_ID` (Primary Key)  
- `Name`  
- `Role` (Manager, Teller, Support, etc.)  
- `Branch_ID` (if multiple branches exist)  

---

### 7. **Branch Table** 🏢  
Stores info on branches of the bank.  
- `Branch_ID` (Primary Key)  
- `Branch_Name`  
- `Address`  
- `Phone_Number`  

---

🔥 **Big Picture:**  
- **Customer** ↔ **Account** (One-to-Many)  
- **Account** ↔ **Transaction** (One-to-Many)  
- **Customer** ↔ **Loan** (One-to-Many)  
- **Account** ↔ **Card** (One-to-One or One-to-Many)  
- **Branch** ↔ **Employee / Customer Accounts** (Many-to-One)  

---
