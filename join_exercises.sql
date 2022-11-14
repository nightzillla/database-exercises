SHOW TABLES;

USE employees;
# # Using the example in the Associative Table Joins section as a guide, write a query that shows each department along with the name of the current manager for that department.
# SELECT dept_name AS Department, CONCAT (first_name, ' ', last_name) AS Empolyee_Manager FROM employees
# JOIN dept_manager AS de ON de.emp_no = employees.emp_no
# JOIN departments AS d ON d.dept_no = de.dept_no
# WHERE to_date = '9999-01-01';
# # Find the name of all departments currently managed by women.
# SELECT dept_name AS Department, CONCAT (first_name, ' ', last_name) AS Empolyee_Manager FROM employees
# JOIN dept_manager AS de ON de.emp_no = employees.emp_no
# JOIN departments AS d ON d.dept_no = de.dept_no
# WHERE to_date = '9999-01-01' AND gender = 'F';
# # Find the current titles of employees currently working in the Customer Service department.
# SELECT t.title, COUNT(*) AS total
# FROM titles AS t
# JOIN dept_emp AS de ON de.emp_no = t.emp_no
# JOIN departments AS d ON d.dept_no = de.dept_no
# WHERE d.dept_no = 'd009'
# GROUP BY title
# ORDER BY total DESC;
#
# SELECT * FROM departments;
# SELECT * FROM dept_emp;

# WALK THROUGH
# Using the example in the Associative Table Joins section as a guide, write a query that shows each department along with the name of the current manager for that department.
SELECT d.dept_name AS 'Department Name', CONCAT(e.first_name, ' ', e.last_name) AS 'Department Manager' FROM employees e JOIN dept_manager dm on e.emp_no = dm.emp_no JOIN departments d on dm.dept_no = d.dept_no WHERE dm.to_date LIKE '9%' ORDER BY d.dept_name;
# Find the name of all departments currently managed by women.
SELECT d.dept_name AS 'Department Name',
CONCAT(e.first_name, ' ', e.last_name)
AS 'Department Manager'
FROM employees e JOIN dept_manager dm on e.emp_no = dm.emp_no
JOIN departments d on dm.dept_no = d.dept_no WHERE dm.to_date LIKE '9%'
AND e.gender = 'F'
ORDER BY d.dept_name;
# Find the current titles of employees currently working in the Customer Service department.
SELECT title, COUNT(title) FROM titles t JOIN employees e on e.emp_no = t.emp_no JOIN dept_emp de on e.emp_no = de.emp_no WHERE de.dept_no LIKE '%9' AND t.to_date LIKE '9%' AND de.to_date LIKE '9%' GROUP BY title ORDER BY COUNT(title) DESC;
# Find the current salary of all current managers.
SELECT d.dept_name AS 'Department Name',
    CONCAT(e.first_name, ' ', e.last_name) AS 'Department Manager',
    s.salary FROM salaries s JOIN employees e on e.emp_no = s.emp_no
        JOIN dept_manager dm on e.emp_no = dm.emp_no
        JOIN departments d on dm.dept_no = d.dept_no
        WHERE dm.to_date LIKE '9%' AND s.to_date LIKE '9%' ORDER BY d.dept_name;
