#Subqueries

# USE employees;

# SELECT birth_date FROM employees
#     WHERE emp_no IN (SELECT emp_no FROM dept_manager);

USE codeup_test_db;

INSERT INTO preferences (persion_id, album_id) VALUES ((SELECT album_id FROM albums WHERE name = 'Led Zeppelin) IV'), (SELECT person_id FROM persons WHERE first_name = 'Tareq'));


