USE employees;

SELECT * FROM employees e;
SHOW INDEXES FROM employees;
SHOW INDEXES FROM salaries;
SELECT salary FROM salaries WHERE salary BETWEEN 50000 AND 70000;
# Return 10 employees in a result set named 'full_name' in the format of 'last name, first name' for each employee.
SELECT CONCAT(first_name, ' ', last_name) AS full_name
FROM employees
LIMIT 10;
# Add the date of birth for each employee as 'DOB' to the query.
SELECT CONCAT(first_name, ' ', last_name, ' ',birth_date) AS full_name
FROM employees
WHERE birth_date;
# Update the query to format full name to include the employee number so it is formatted as 'employee number - last name, first name'.
SELECT CONCAT(emp_no, ' ', last_name, ' ', first_name, ' ',birth_date)
AS full_name, birth_date DOB
FROM employees
WHERE birth_date;

