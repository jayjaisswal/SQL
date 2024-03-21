CREATE DATABASE University ;

USE University;

CREATE TABLE Classmates(
Name VARCHAR(30),
Urn INT,
Crn INT
);

INSERT INTO Classmates
VALUES
("Jay Kumar",2203844,2221063),
("Mohit Kumar",2203857,2221076),
("Himanshu Singh",2203837,2221088);

SELECT * FROM Classmates;