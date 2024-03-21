create database temp;
use temp;

CREATE TABLE student (
id INT PRIMARY KEY,
NAME VARCHAR(255)
);
INSERT INTO student VALUES(1,'jay');
SELECT * FROM student;

drop DATABASE IF EXISTS university;
drop database if exists world;
drop database if exists college;
drop database if exists collegewallah;
drop database if exists employees;
drop database if exists temp;

create database ORG;
show databases;
use org;

create table worker(
WORKER_ID INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
FIRST_NAME CHAR(25),
LAST_NAME CHAR(25),
SALARY INT(15),
JOINING_DATE DATETIME,
DEPARTMENT CHAR(25)
);

INSERT INTO worker
(WORKER_ID , FIRST_NAME , LAST_NAME , SALARY , JOINING_DATE , DEPARTMENT) VALUES
(001, 'Jay' , 'Kumar', 800000, '14-06-26 09.00.00','HR'),
(002, 'Himanshu' , 'Singh', 300000, '14-01-26 09.00.00','Admin'),
(003, 'Karan' , 'Yadav', 500000, '14-02-26 09.00.00','HR'),
(004, 'Utkarsh' , 'Gandhi', 800000, '14-04-26 09.00.00','Admin'),
(005, 'Mohit' , 'Kumar', 500000, '14-05-26 09.00.00','HR'),
(006, 'Priyanshu' , 'Gupta', 200000, '13-03-26 09.00.00','HR'),
(007, 'Garv' , 'Singla', 400000, '11-05-26 09.00.00','Admin'),
(008, 'Prince' , 'Jaiswal', 900000, '07-03-26 09.00.00','Admin');

INSERT INTO worker
VALUES (009, 'Hrithik' , 'Kumar', NULL, '14-06-26 09.00.00','HR');

SELECT * FROM worker;

CREATE TABLE Bonus(
WORKER_REF_ID INT,
BONUS_AMOUNT INT(10),
BONUS_DATE DATETIME,
FOREIGN KEY (WORKER_REF_ID)
REFERENCES worker(WORKER_ID)
ON DELETE CASCADE
);

INSERT INTO Bonus
(WORKER_REF_ID,BONUS_AMOUNT,BONUS_DATE) VALUES
(001, 5000 , '16-02-20'),
(002, 3000 , '16-02-20'),
(003, 4000 , '16-02-20'),
(001, 4500 , '16-02-20'),
(002, 3500 , '16-02-20');

CREATE TABLE Title(
WORKER_REF_ID INT,
WORKER_TITLE CHAR(25),
AFFECTED_FROM DATETIME,
FOREIGN KEY (WORKER_REF_ID)
REFERENCES worker(WORKER_ID)
ON DELETE CASCADE
);

INSERT INTO Title
(WORKER_REF_ID,WORKER_TITLE,AFFECTED_FROM) VALUES
(001 ,'Manager','2016-02-20 00:00:00'),
(002,'Executive','2016-02-20 00:00:00'),
(008,'Executive','2016-02-20 00:00:00'),
(005,'Manager','2016-02-20 00:00:00'),
(004,'Asst. Manager','2016-02-20 00:00:00'),
(007,'Executive','2016-02-20 00:00:00'),
(006,'Lead','2016-02-20 00:00:00'),
(003,'Lead','2016-02-20 00:00:00');