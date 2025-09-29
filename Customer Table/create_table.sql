CREATE TABLE Customer (
    Customer_ID INT AUTO_INCREMENT PRIMARY KEY,
    First_Name VARCHAR(50),
    Last_Name VARCHAR(50),
    Date_of_Birth DATE,
    Address VARCHAR(150),
    Phone_Number VARCHAR(20),
    Email VARCHAR(100) UNIQUE,
    National_ID VARCHAR(50) UNIQUE,
    Date_Joined DATE
);