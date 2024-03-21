CREATE DATABASE CUSTOMERS;
USE CUSTOMERS;

CREATE TABLE Customer(
id INT PRIMARY KEY,
Cname VARCHAR(255),
Address VARCHAR(255),
Gender CHAR(2),
City VARCHAR(255),
pincode INTEGER
);

-- WAYS OF INSERTING DATA 
INSERT INTO Customer(id, Cname, Address, Gender, City, pincode)
VALUES (0001,'combo coding','GNDEC','M','LUDHIANA',141006);

INSERT INTO Customer(id, Cname)
VALUES (0002,'JAY THE GREAT');
-- UPDATE
UPDATE customer SET Address='siliguri',gender='M' WHERE ID='0002';
 

INSERT INTO Customer
 VALUES (1441, 'cODING COMBO','Hostel 02','M','HAJIPUR',844504);

 INSERT INTO Customer
 VALUES (1251, 'Jay Jaiswal','Hostel 02','M','Ludhiana',141006),
        (1256, 'Mohit Kumar','Firozpur','M','Ludhiana',141007),
        (1241, 'Raushan Kumar','Hostel 04','M','Ludhiana',141076),
        (1151, 'Utkarsh Kumar','Bagdor','M','Bengal',147606),
        (12551, 'Himanshu Singh','Station Road','M','Patliputra',161006),
        (13251, 'Priyanshu Gupta','Simla puri','M','Ludhiana',141036);
        
INSERT INTO Customer
 VALUES (1200, 'Jay Kumar','Desari','M','Vaishali',NULL);
 
-- UPDATE MULTIPLE ROWS
-- SET SQL_SAFE_UPDATES = 1; safe mode is activated
-- SET SQL_SAFE_UPDATES = 0; safe mode is disabled

SET SQL_SAFE_UPDATES = 1;
UPDATE customer SET pincode = 141006;

-- Add in multiple rows
UPDATE customer SET pincode = pincode + 1;

-- DELETE
DELETE FROM customer WHERE id = 2; -- JAY THE GREAT WILL BE DELETED

-- DELETE WHOLE TABLE
SET SQL_SAFE_UPDATES = 0;
DELETE FROM customer;

 SELECT * FROM Customer;
 
 CREATE TABLE Order_detail (
 Order_id INTEGER PRIMARY KEY,
 delivery_date DATE,
 cust_id INT,
 -- FOREIGN KEY(cust_id) REFERENCES Customer(id) ON DELETE CASCADE
 FOREIGN KEY(cust_id) REFERENCES Customer(id) ON DELETE SET NULL
 );
 
 INSERT INTO Order_detail
 VALUES (1,'1029-03-11',1151),
        (2,'1029-03-11',13251);
 
SELECT * FROM Order_detail;

CREATE TABLE account(
id INT PRIMARY KEY,
name VARCHAR(255) UNIQUE,
balance INT,
CONSTRAINT acc_balance_chk CHECK(balance > 1000)
);

INSERT INTO account(id, name, balance)
value(1,'A', 1001); 

-- we can not write name A again and can not put balance < 1000
INSERT INTO account(id, name, balance)
value(2,'B', 2000); 
SELECT * FROM account; 

CREATE TABLE Bank_account(
id INT PRIMARY KEY,
name VARCHAR(255) UNIQUE,
balance INT NOT NULL DEFAULT 0
);

INSERT INTO Bank_account(id, name)
value(1,'A'); 


INSERT INTO Bank_account(id, name)
value(2,'B'); 
SELECT * FROM Bank_account;


-- ADD NEW COLUMN
ALTER TABLE bank_account ADD interest FLOAT NOT NULL DEFAULT 0;
SELECT * FROM Bank_account;

-- MODIFY THE DATATYPE OF ATTRIBUTE
ALTER TABLE bank_account MODIFY interest DOUBLE NOT NULL DEFAULT 0;
SELECT * FROM Bank_account;

-- DESC (GIVE INFO ABOUT DATATYPE,KEY,NULL,DEFAULT)
DESC bank_account;



-- CHANGE COLUMN(RENAME THE COLUMN oldname-->interest newname-->saving_interest)
ALTER TABLE bank_account CHANGE COLUMN interest saving_interest FLOAT NOT NULL DEFAULT 0;
SELECT * FROM Bank_account;

-- DROP COLUMN
ALTER TABLE bank_account DROP COLUMN saving_interest;
SELECT * FROM Bank_account;

-- RENAME THE TABLE
ALTER TABLE bank_account RENAME TO account_detail;



























 
 