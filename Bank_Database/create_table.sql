USE bank_info;


-- creating the tables
CREATE TABLE IF NOT EXISTS bank_employees (
    emp_id INTEGER,
    emp_name VARCHAR(50) NOT NULL, 
    emp_branch VARCHAR(30), 
    emp_salary INTEGER, 
    gender VARCHAR(10)
);


-- displaying the tables
SHOW TABLES;