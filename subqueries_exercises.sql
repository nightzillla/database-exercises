USE employees;
# Find all the employees with the same hire date as employee 101010 using a subquery.
SELECT first_name, last_name, hire_date
FROM employees
WHERE emp_no IN (
    SELECT emp_no
    FROM dept_manager
)
LIMIT 69;
# Find all the titles held by all employees with the first name Aamod.
SELECT first_name, title
FROM employees, titles
WHERE first_name = 'Aamod';
# Find all the current department managers that are female.
SELECT d.dept_name AS 'Department Name',
    CONCAT(e.first_name, ' ', e.last_name)
    AS 'Department Manager'
    FROM employees e JOIN dept_manager dm on e.emp_no = dm.emp_no
    JOIN departments d on dm.dept_no = d.dept_no WHERE dm.to_date LIKE '9%'
    AND e.gender = 'F'
    ORDER BY first_name, last_name;

#BONUS
# 1. Find all the department names that currently have female managers.
SELECT dept_name From departments WHERE dept_no
    IN (SELECT dept_no FROM dept_manager dm
    JOIN employees e on dm.emp_no = e.emp_no
    WHERE e.gender = 'F' AND dm.to_date LIKE '999%') ORDER BY dept_name;

# 2. Find the first and last name of the employee with the highest salary.
SELECT first_name, last_name FROM employees WHERE emp_no IN (
    SELECT emp_no FROM salaries WHERE (salary IN (SELECT MAX(salary) FROM salaries))
    )
