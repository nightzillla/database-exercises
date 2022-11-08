USE employees;

#PART ONE
# Find all employees with first names 'Irena', 'Vidya', or 'Maya' — 709 rows (Hint: Use IN).
SELECT emp_no, first_name FROM employees WHERE first_name IN ('Irena', 'Vidya', 'Maya');
# Find all employees whose last name starts with 'E' — 7,330 rows.
SELECT emp_no, last_name FROM employees
    WHERE emp_no < 7330 OR last_name LIKE 'E%';
# Find all employees with a 'q' in their last name — 1,873 rows.
SELECT emp_no, last_name FROM employees
    WHERE emp_no < 1873 OR last_name LIKE '%q%';

#PART TWO
# Update your query for 'Irena', 'Vidya', or 'Maya' to use OR instead of IN — 709 rows.
SELECT emp_no, first_name FROM employees WHERE first_name = 'Irena' OR first_name = 'Vidya' OR first_name = 'Maya';
# Add a condition to the previous query to find everybody with those names who is also male — 441 rows.
SELECT emp_no, first_name, gender FROM employees WHERE (first_name = 'Irena' OR first_name = 'Vidya' OR first_name = 'Maya') AND gender = 'M';
# Find all employees whose last name starts or ends with 'E' — 30,723 rows.
SELECT emp_no, last_name FROM employees
    WHERE last_name LIKE 'E%E';
# Duplicate the previous query and update it to find all employees whose last name starts and ends with 'E' — 899 rows.
SELECT emp_no, last_name FROM employees
    WHERE last_name LIKE 'E%E';
# Find all employees with a 'q' in their last name but not 'qu' — 547 rows.
SELECT emp_no, last_name FROM employees
    WHERE last_name LIKE '%Q%' AND last_name NOT LIKE '%qu%';


