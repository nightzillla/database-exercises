# USE employees;
# SELECT * FROM employees e;
# SHOW INDEXES FROM employees;
# SHOW INDEXES FROM salaries;

USE codeup_test_db;
SHOW INDEXES FROM albums;
DESCRIBE albums;
SELECT * FROM albums;
INSERT INTO albums (artist, name, release_date, sales,genre) VALUES ('Metallica', 'Metallica', 1991, 21.2,'Thrash metal');
ALTER TABLE albums ADD UNIQUE unique_artist_name (artist, name);
DELETE FROM albums WHERE id = 31;
ALTER TABLE albums DROP INDEX unique_artist_name;
# ALTER TABLE albums CHANGE artist name VARCHAR(35) ;


