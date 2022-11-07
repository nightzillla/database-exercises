USE codeup_test_db;
# Understand MySQL operators
# Use the INSERT statement to create data
# Use the SELECT statement to read data
# Use the UPDATE statement to update data
# Use the DELETE statement to delete data
# Introduce the WHERE clause
# CRUD operations, meaning "Create, Read, Update, and Delete"

-- The name of all albums by Pink Floyd.
SELECT * FROM albums WHERE artist = 'Pink Floyd';

-- The year Sgt.Pepper's Lonely Hearts Club Band was released
SELECT release_date FROM albums WHERE name = 'Sgt.Pepper''s Lonely Hearts Club Band';
-- The genre for Nevermind
SELECT genre FROM albums WHERE genre = 'Nevermind';
-- Which albums were released in the 1990s
SELECT * FROM albums WHERE release_date between 1990 AND 1999;
-- Which albums had less than 20 million certified sales
SELECT * FROM albums WHERE sales < 20;
-- All the albums with a genre of "Rock". Why do these query results not include albums with a genre of "Hard rock" or "Progressive rock"?
SELECT artist FROM albums WHERE genre = 'Hard rock';

-- As always, commit your changes after each step and push them out

