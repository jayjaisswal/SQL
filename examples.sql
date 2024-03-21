-- SELECT KEYWORD
SELECT * FROM worker;
SELECT SALARY FROM worker;
SELECT FIRST_NAME,SALARY FROM worker;
SELECT 44 + 11;
SELECT NOW();  -- TELLS SERVER TIME
SELECT LCASE('PRinCE');
SELECT LCASE('PRinCE');
SELECT UCASE('prince');

-- WHERE KEYWORD
SELECT * FROM worker WHERE SALARY >500000;
SELECT * FROM worker WHERE DEPARTMENT = 'HR';

-- BETWEEN KEYWORD
-- EXAMPLE salary[500000,900000]  500000,900000 Both are inclusive
SELECT * FROM worker WHERE SALARY BETWEEN 500000 AND 900000;

-- IN keyword(reduced or condition)
-- HR,ADMIN
SELECT *FROM worker WHERE DEPARTMENT = 'HR' OR DEPARTMENT = 'ADMIN' OR DEPARTMENT = 'ACCOUNT';

-- BETTER WAY: IN 
SELECT * FROM worker WHERE DEPARTMENT IN ('HR','ADMIN','ACCOUNT');

-- NOT KEYWORD
SELECT * FROM worker WHERE DEPARTMENT NOT IN ('HR');

-- NULL KEYWORD
SELECT * FROM worker;
SELECT * FROM worker WHERE SALARY IS NULL;

-- WILDCARD
SELECT * FROM worker WHERE first_name LIKE '%y%'; -- print the name contain 'y'.

-- I Want to print those a which come in 2nd number
SELECT * FROM worker WHERE first_name LIKE '_a%'; 

-- Sorting using ORDER BY
SELECT * FROM worker ORDER BY salary; -- by default Ascending(ASC)
SELECT * FROM worker ORDER BY salary DESC; -- descending order;

-- Distinct keyword
SELECT DISTINCT department FROM worker;

-- GROUP BY
SELECT department, COUNT(department) from worker GROUP BY department;

-- AVG salary per department
SELECT department, AVG(salary) from worker GROUP BY department;

-- MIN
SELECT department, MIN(salary) from worker GROUP BY department;

-- MAX
SELECT department, MAX(salary) from worker GROUP BY department;

-- SUM
SELECT department, SUM(salary) from worker GROUP BY department;

-- GROUP BY HAVING (e.g., find out dept. where more than 3 workers are working) 
SELECT department, COUNT(department) from worker GROUP BY department HAVING COUNT(department) >3;










