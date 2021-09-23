-- create table
CREATE TABLE students (
    ID int NOT NULL PRIMARY KEY,
    FirstName varchar(200) NOT NULL,
    MiddleName varchar(200),
    LastName varchar(200) NOT NULL,
    Age int NOT NULL,
    Location varchar(200)
);

INSERT INTO students (ID, FirstName, MiddleName, LastName, Age, Location)
VALUES
    (1, 'Juan', NULL, 'Cruz', 18, 'Manila'),
    (2, 'Anne', NULL, 'Wall', 20, 'Manila'),
    (3, 'Theresa', NULL, 'Joseph', 21, 'Manila'),
    (4, 'Issac', NULL, 'Gray', 19, 'Laguna'),
    (5, 'Zack', NULL, 'Matthews', 22, 'Marikina'),
    (6, 'Finn', NULL, 'Lam', 25, 'Manila');

UPDATE students
SET
    FirstName='Ivan',
    MiddleName='Ingram',
    LastName='Howard',
    Age=25,
    Location='Bulacan'
WHERE ID=1;

DELETE FROM students WHERE ID=6;


SELECT COUNT(*) FROM students;


SELECT * FROM students WHERE location='Manila';


SELECT AVG(Age) FROM students;


SELECT * FROM students ORDER BY Age DESC;