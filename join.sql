CREATE DATABASE JOINS;
USE JOINS;

CREATE TABLE Project(
id  INT PRIMARY KEY,
empID INT,
name varchar(20),
startdate DATE,
clientID INT
);


INSERT INTO Project (id, empID, name, startdate, clientID) VALUES
 (1, 1, 'A', '2021-04-21',3),
 (2, 2, 'B', '2021-03-12',1),
 (3, 3, 'C', '2021-01-16',5),
 (4, 3, 'D', '2021-04-27',2),
 (5, 5, 'E', '2021-05-01',4);

SELECT * FROM Project;

CREATE TABLE Employee(
id  INT PRIMARY KEY,
fname varchar(20),
Lname VARCHAR(20),
Age INT,
emailID varchar(30),
phoneNo INT,
city VARCHAR(20)
);

INSERT INTO Employee (id, fname, Lname, Age, emailID, phoneNo, city) VALUES
    (1, 'jay','kumar', 20, 'kumarjay13833@gmail.com', 737647, 'hajipur'),
    (2, 'prince','kumar', 21, 'kumarprince13833@gmail.com', 732647, 'desari'),
    (3, 'hrithik','jaiswal', 20, 'jaishk13833@gmail.com', 737667, 'pune'),
    (4, 'riya','jaiswal', 20, 'riyajais13833@gmail.com', 737648, 'loma'),
    (5, 'tannu','kumari', 20, 'kumaritannu13833@gmail.com', 7937647, 'bhagwanpur');
    
SELECT * FROM Employee;
    
CREATE TABLE Client(
id  INT PRIMARY KEY,
first_name varchar(20),
last_name VARCHAR(20),
Age INT,
emailID varchar(30),
phoneNo INT,
city VARCHAR(20),
empID INT
);

INSERT INTO Client (id, first_name, last_name, Age, emailID, phoneNo, city, empID) VALUES
       (1, 'stieve', 'Rogers', 103, 'stieve@hotmail.com', 333, 'patna', 3),
       (2, 'Mr', 'stark', 47, 'stark@hotmail.com', 323, 'ludhiana', 3),
       (3, 'Mr', 'hulk', 44, 'hulk@hotmail.com', 31133, 'amritsar', 1),
       (4, 'Mr', 'thor', 1000, 'thor@hotmail.com', 33323, 'delhi', 5),
       (5, 'Mrs', 'Captain', 23, 'captain@hotmail.com', 33873, 'mumbai', 2);

SELECT * FROM Client;

-- inner join
-- enlist all the employees ID's, names alogn with the project allocated to them












