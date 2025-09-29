CREATE TABLE Accounts (
    Account_ID INT AUTO_INCREMENT PRIMARY KEY,
    Customer_ID INT NOT NULL,
    Account_Type ENUM('Savings', 'Checking', 'Loan') NOT NULL,
    Balance DECIMAL(15,2) DEFAULT 0.00,
    Opened_Date DATE DEFAULT (CURRENT_DATE),
    Status ENUM('Active', 'Frozen', 'Closed') DEFAULT 'Active',
    
    -- Foreign key connects this table back to Customer
    CONSTRAINT fk_customer 
        FOREIGN KEY (Customer_ID) REFERENCES Customer(Customer_ID)
        ON UPDATE CASCADE
        ON DELETE CASCADE
);