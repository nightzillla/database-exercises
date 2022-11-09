-- Aggregate Function
USE employees;

SELECT COUNT(*), gender FROM employees GROUP BY gender;

SELECT AVG(DATEDIFF(hire_date, birth_date))/365 FROM employees;
-- FIND THE YOUNGEST
SELECT MIN(DATEDIFF(hire_date, birth_date))/365 FROM employees;
-- FIND THE OLDEST
SELECT MAX(DATEDIFF(hire_date, birth_date))/365 FROM employees;

# FUNCTIONALLY IDENTICAL:
SELECT first_name FROM employees GROUP BY first_name;
SELECT DISTINCT first_name FROM employees;

SELECT COUNT(first_name), first_name FROM employees GROUP BY first_name ORDER BY COUNT(first_name) DESC;
