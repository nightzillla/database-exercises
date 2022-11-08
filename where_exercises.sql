USE employees;

# Find all employees with first names 'Irena', 'Vidya', or 'Maya' — 709 rows (Hint: Use IN).
SELECT emp_no, first_name FROM employees WHERE first_name IN ('Irena', 'Vidya', 'Maya');
# Find all employees whose last name starts with 'E' — 7,330 rows.
SELECT emp_no, last_name FROM employees
    WHERE emp_no < 7330 OR last_name LIKE 'E%';
# Find all employees with a 'q' in their last name — 1,873 rows.
SELECT emp_no, last_name FROM employees
    WHERE emp_no < 1873 OR last_name LIKE '%q%';



