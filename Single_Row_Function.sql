-- Character Functions:
CREATE DATABASE FUN;
USE FUN;
SELECT UPPER('hello') AS upper_case,
       LOWER('WORLD') AS lower_case;
       
SELECT SUBSTR('jay jaisswal', 5, 8) AS substring,
       CONCAT('Hello', ' jay') AS concatenated,
       LENGTH('jay_faironiyamotalus') AS length,
       TRIM('  heyy  ') AS trimmed,
       REPLACE('Hello Jay', 'Hello', 'Hi') AS replaced;
       
SELECT ABS(-10) AS absolute_value,
       ROUND(3.14159, 2) AS rounded_value,
       CEIL(4.7) AS ceiling_value,
       FLOOR(4.7) AS floor_value;
       
-- Using DATE_ADD function for adding months
SELECT CURRENT_DATE AS current_date_time,
       DATE_ADD(CURRENT_DATE, INTERVAL 3 MONTH) AS three_months_later,
       TIMESTAMPDIFF(MONTH, '2024-01-01', '2024-12-31') AS months_difference,
       LAST_DAY('2024-02-15') AS last_day_of_month;
       
-- Using CURDATE() for current date and DATE_ADD/DATEDIFF for arithmetic operations
SELECT DATE_ADD(CURDATE(), INTERVAL 7 DAY) AS date_in_a_week,
       DATE_SUB(CURDATE(), INTERVAL 365 DAY) AS date_one_year_ago;
       
       
-- conversion function
SELECT CAST(0045 AS DECIMAL);
SELECT CONVERT(0045 , DECIMAL);
SELECT STR_TO_DATE('8TH JUNE 2023','%D %M %Y') AS new_date;
SELECT DATE_FORMAT('2024-12-17','%D %b %Y');














