CREATE DATABASE STUDENT;
USE STUDENT;
-- Create a table for students
CREATE TABLE Students (
    student_id INT PRIMARY KEY,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    date_of_birth DATE,
    email VARCHAR(100),
    Address VARCHAR(100),
    College VARCHAR(100)
);


-- Inserting sample data
INSERT INTO Students (student_id, first_name, last_name, date_of_birth, email,Address,College)
VALUES 
(1, 'Jay', 'Kumar', '2000-01-15', 'kumarjay13833@gmail.com','Hostel no.2','GNDEC'),
(2, 'Rana', 'Jyoti', '1999-05-20', 'ranajyoti13833@gmail.com','Hostel no.3','AIIMS'),
(3, 'Navin', 'Kumar', '2001-08-10', 'navink13833@gmail.com','Hostel no.1','GNDEC'),
(4, 'sushant', 'Gurav', '1998-05-20', 'gauravsus13833@gmail.com','Hostel no.5','CGC'),
(5, 'Prince', 'Jaiswal', '1999-12-20', 'prince13833@gmail.com','Hostel no.2','PTU'),
(6, 'Golu', 'Kumar', '1996-05-20', 'kumargolu13833@gmail.com','Hostel no.3','MAKUT');

SELECT * FROM students;

-- adding new row to a table
INSERT INTO Students (student_id, first_name, last_name, date_of_birth, email, Address, College)
VALUES (7, 'Michael', 'Brown', '1998-12-25', 'michael.brown@example.com','USA','FaironiyaM');

-- Inserting rows with NULL values:
INSERT INTO Students (student_id, first_name, last_name, date_of_birth, email)
VALUES (8, 'Sarah', NULL, NULL, 'sarah@example.com');

-- Inserting rows with specific date values:
INSERT INTO Students (student_id, first_name, last_name, date_of_birth, email)
VALUES (9, 'Sophia', 'Anderson', '2003-05-20', 'sophia.anderson@example.com');

-- Updating rows in the table:
SET SQL_SAFE_UPDATES = 0;
UPDATE Students SET email = 'john.doe@gmail.com' WHERE first_name = 'Jay';

-- Updating two columns:
UPDATE Students SET first_name = 'jai', last_name = 'jaisswal' WHERE student_id = 1;

-- Removing a row from the table:
DELETE FROM Students WHERE student_id = 4;

CREATE TABLE StudentDetails (
    class_id INT PRIMARY KEY,
    Class VARCHAR(100),
    Phone_No VARCHAR(20)
);

INSERT INTO StudentDetails (class_id, Class, Phone_No)
VALUES 
(1, 'Btech', '123-456-7890'),
(2, 'Btech', '456-789-0123'),
(3, 'Btech', '789-012-3456');

SELECT * FROM StudentDetails;
-- Updating rows based on another table:
UPDATE Students
SET Address = (
    SELECT Phone_No 
    FROM StudentDetails 
    WHERE Students.student_id = StudentDetails.class_id
);
SELECT * FROM Students;


DELETE FROM Students
WHERE student_id IN (SELECT class_id FROM StudentDetails);










