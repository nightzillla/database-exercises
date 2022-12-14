USE employees;
####### functions exercises #####
# Update your queries for employees whose names start and end with 'E'. Use concat() to combine their first and last name together as a single column in your results.
SELECT CONCAT(first_name, ' ', last_name) AS name FROM employees WHERE first_name LIKE 'E%';
# Find all employees born on Christmas — 842 rows.
SELECT * FROM employees WHERE year(birth_date) BETWEEN 1960 and 2000
    And month(birth_date) = 12;

# Find all employees hired in the 90s and born on Christmas — 362 rows.
SELECT * FROM employees WHERE year(hire_date) BETWEEN 1990 and 1999
                          And (month(birth_date) = 12
                          And day(birth_date) = 25);
# Change the query for employees hired in the 90s and born on Christmas such that the first result is the oldest employee who was hired last. It should be Khun Bernini.
SELECT * FROM employees WHERE year(hire_date) BETWEEN 1990 and 1999
      And (month(birth_date) = 12
      And day(birth_date) = 25)
      ORDER BY (hire_date) DESC;

# For your query of employees born on Christmas and hired in the 90s, use datediff() to find how many days they have been working at the company (Hint: You might also need to use now() or curdate()).
SELECT first_name, hire_date, birth_date, DATEDIFF(now(),hire_date) AS daysInCompany FROM employees WHERE year(hire_date) BETWEEN 1990 and 1999
    And (month(birth_date) = 12
    And day(birth_date) = 25)




