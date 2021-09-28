-- create table
CREATE TABLE notes (
    ID int NOT NULL PRIMARY KEY,
    body varchar(200),
    student_id int NOT NULL,
);

INSERT INTO notes (ID, body, student_id)
VALUES
    (1, '', 5949),
    (2, 'Anne', 3395),
    (3, 'Theresa', 3840),
    (4, 'Issac', 4849),
    (5, 'Zack', 2345),
    (6, 'Finn', 3425);

