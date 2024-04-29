-- Before you start, ensure you're connected to the PostgreSQL server. Use the appropriate client command line or GUI.

-- TASK: Connect to the 'school' database. This is a PostgreSQL command line operation.
-- HINT: Use \c followed by the database name to connect to your database from the psql command line interface.
\c school

-- TASK: Create a table named 'students' with columns for id (as a primary key), name, age, grade. Later, you will add an 'email' column.
-- HINT: Use the CREATE TABLE command. Define 'id' as SERIAL PRIMARY KEY, and specify 'name', 'age', and 'grade' with appropriate data types (VARCHAR for name, INTEGER for age and grade).
-- After creating the table, verify its creation.
-- HINT FOR VERIFICATION: Use the \dt command to list all tables in the current database.
CREATE TABLE students (id SERIAL PRIMARY KEY, name VARCHAR(255), age INTEGER, grade INTEGER);

-- TASK: Add an 'email' column of type VARCHAR(255) to the 'students' table.
-- HINT: Use the ALTER TABLE command followed by ADD COLUMN, then specify the column name and its data type.
-- Verify the column addition by selecting all rows from the table (even though it will be empty at this point).
-- HINT FOR SELECTION: Use SELECT * FROM followed by the table name; this will display all columns and rows, showing the structure including the new column.
ALTER TABLE students ADD COLUMN email VARCHAR(255);

-- TASK: Insert a row into the 'students' table. Choose any appropriate values for name, age, grade, and email.
-- HINT: Use the INSERT INTO command followed by the table name and a list of column names in parentheses. Use VALUES to specify the corresponding values for each column.
-- Verify the row insertion by selecting all rows from the table.
-- HINT: Similar to the previous selection hint, but now it should return the row you've just inserted.
INSERT INTO students (name, age, grade, email) VALUES ('Cris Garcia', 27, 100, 'crisg@sas.upenn.edu');

-- TASK: Increase the grade of all students by 1.
-- HINT: Use the UPDATE command followed by the table name. Use SET to specify which column to update ('grade') and how to update it (increment its current value by 1).
-- Verify the update by selecting all rows.
UPDATE students SET grade = grade + 1;

-- TASK: Set the grade to 11 for all students aged 15.
-- HINT: Similar to the previous UPDATE command, but include a WHERE clause to target only rows where 'age' equals 15.
-- Verify the update by selecting all rows.
UPDATE students SET grade = 11 WHERE age = 15;

-- TASK: Update the email of the student named 'John Doe' (or whatever name you used).
-- HINT: Use UPDATE with a WHERE clause to specify the condition (e.g., WHERE name = 'John Doe'), then use SET to change the 'email' column value.
-- Verify the update by selecting the row for the student you updated.
UPDATE students SET email = 'crisg@upenn.edu' WHERE name = 'Cris Garcia';

-- TASK: Select the row for the student named 'John Doe'.
-- HINT: Use SELECT * FROM with a WHERE clause to filter rows based on the 'name' column.
SELECT * FROM students WHERE name='Cris Garcia';

-- TASK: Select all rows for students aged 15.
-- HINT: Similar to the previous SELECT command, but adjust the WHERE clause to filter based on 'age'.
SELECT * FROM students WHERE age = 15;

-- TASK: Select only the 'name' and 'email' columns for all students.
-- HINT: Instead of using *, specify the column names you want to retrieve in your SELECT statement.
SELECT name, email FROM students;

-- TASK: Select all columns for all students.
-- HINT: Use SELECT * FROM to fetch all columns from the 'students' table.
SELECT * FROM students;

-- TASK: Delete the row for the student named 'John Doe'.
-- HINT: Use DELETE FROM with a WHERE clause to specify which row(s) to remove based on the 'name' column.
-- Verify the deletion by selecting all rows to ensure the row has been removed.
DELETE FROM students WHERE name = 'Cris Garcia';