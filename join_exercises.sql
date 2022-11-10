SHOW TABLES;

USE employees;
# Using the example in the Associative Table Joins section as a guide, write a query that shows each department along with the name of the current manager for that department.
SELECT dept_name AS Department, CONCAT (first_name, ' ', last_name) AS Empolyee_Manager FROM employees
JOIN dept_manager AS de ON de.emp_no = employees.emp_no
JOIN departments AS d ON d.dept_no = de.dept_no
WHERE to_date = '9999-01-01';
# Find the name of all departments currently managed by women.
SELECT dept_name AS Department, CONCAT (first_name, ' ', last_name) AS Empolyee_Manager FROM employees
JOIN dept_manager AS de ON de.emp_no = employees.emp_no
JOIN departments AS d ON d.dept_no = de.dept_no
WHERE to_date = '9999-01-01' AND gender = 'F';
# Find the current titles of employees currently working in the Customer Service department.
SELECT t.title, COUNT(*) AS total
FROM titles AS t
JOIN dept_emp AS de ON de.emp_no = t.emp_no
JOIN departments AS d ON d.dept_no = de.dept_no
WHERE d.dept_no = 'd009'
GROUP BY title
ORDER BY total DESC;

SELECT * FROM departments;
SELECT * FROM dept_emp;