USE practice;

-- IT WILL SHOW ALL THE TABLES IN THE DATABASE
SHOW TABLES;

-- it will display all thhe columns in the table
DESCRIBE employes;



-- inserting multiple values to the table
INSERT INTO employes(emp_id, emp_name, emp_state)
VALUES 
    (12589, 'Subhasish', 'Odisha'),
    (12590, 'Ankit', 'Kolkata'),
    (12591, 'Rohit', 'Delhi'),
    (12592, 'Priya', 'Mumbai');


