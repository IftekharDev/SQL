--  Clauses

-- Where Clause

USE instagram;

SELECT * FROM user;

SELECT * FROM user
WHERE followers>=200;

SELECT name, followers FROM user
WHERE followers>50;

SELECT * FROM user
WHERE age<16;


-- Operators in Where

SELECT * FROM user
WHERE age + 1= 18;

-- Logical Operators

SELECT name, age, followers FROM user
WHERE age > 18 AND followers >=200;


SELECT name, age, followers FROM user
WHERE age > 18 OR followers >=200;


SELECT name, age, followers FROM user
WHERE age BETWEEN 15 AND 20;				-- 15 and 20 included.


SELECT name, age, followers, email FROM user
WHERE email IN 
("rajesh.kumar@outlook.com", "meera.bansal@yahoo.com", "arjun.mehta@yahoo.in", "iftars2774@gmail.com");


SELECT name, age, followers FROM user
WHERE age IN (14, 17, 24);


SELECT name, age, followers FROM user
WHERE age NOT IN (14, 17, 24);


-- Limit clause

SELECT name, age, followers FROM user
WHERE age>21 LIMIT 10;


SELECT name, age, followers FROM user
LIMIT 10;


-- Order By Clause

SELECT name, age, followers FROM user
ORDER BY followers ASC;


SELECT name, age, followers FROM user
ORDER BY followers DESC;

SELECT name, age, followers FROM user
ORDER BY followers;						-- Default sorting ASC.



-- Aggregate Functions

SELECT MAX(followers) FROM user;

SELECT MAX(age) FROM user;

SELECT COUNT(age) FROM user
WHERE age > 21;

SELECT MIN(age) FROM user;

SELECT AVG(age) FROM user;

SELECT SUM(followers) FROM user;


-- Group By Clause

SELECT age, COUNT(id) FROM user
GROUP BY age;

SELECT age, COUNT(id) FROM user
GROUP BY age
ORDER BY COUNT(id);

SELECT age, MAX(followers) FROM user
GROUP BY age;


-- Having Clause

SELECT age, MAX(followers) FROM user
GROUP BY age
HAVING MAX(followers) > 500;


-- General Order

SELECT age, MAX(followers) FROM user
GROUP BY age
HAVING MAX(followers) > 500
ORDER BY age;


-- Update Table

UPDATE user
SET followers = 725
WHERE age = 19;

SET SQL_SAFE_UPDATES = 0;

SELECT name, age, followers
FROM user
WHERE age = 19;

-- Delete Table

DELETE FROM user
WHERE age<15 AND followers<200;

SELECT name, age , followers
FROM user
WHERE age<15 AND followers<200;


-- Alter Table

ALTER TABLE user
ADD COLUMN city VARCHAR(40) DEFAULT "Delhi";

SELECT * FROM user;


ALTER TABLE user
DROP COLUMN city;


ALTER TABLE user
RENAME TO instaUser;

ALTER TABLE instaUser
RENAME TO user;


ALTER TABLE user
CHANGE COLUMN followers subs INT DEFAULT 0;

ALTER TABLE user
CHANGE COLUMN subs followers INT DEFAULT 0;


ALTER TABLE user
MODIFY followers INT DEFAULT 5;

INSERT INTO user
(id, name, age, email, following) VALUES
(27, "Furquan Shaikh", 25, "shaikhf@gmail.com", 625);

ALTER TABLE user
MODIFY followers INT DEFAULT 0;


-- Truncate table

TRUNCATE TABLE user;


-- Practice Question

USE college;

CREATE TABLE teacher (
id INT PRIMARY KEY,
name VARCHAR(50),
subject VARCHAR(50),
salary INT
);

INSERT INTO teacher
(id, name, subject, salary)
VALUES 
(23, "Ajay", "Math", 50000),
(47, "Bharat", "English", 60000),
(18, "Chetan", "Chemistry", 45000),
(9, "Divya", "Physics", 75000);

SELECT * FROM teacher;

SELECT * FROM teacher
WHERE salary > 55000;

ALTER TABLE teacher
CHANGE COLUMN salary ctc INT;

ALTER TABLE teacher
CHANGE COLUMN ctc salary INT;

UPDATE teacher
SET salary = (salary + salary/4);

ALTER TABLE teacher
ADD COLUMN city VARCHAR(50) DEFAULT "Gurgaon";

ALTER TABLE teacher
DROP COLUMN city;



-- ----------------------------------------------

CREATE TABLE studentInfo( 
roll_no INT PRIMARY KEY,
name VARCHAR(50),
city VARCHAR(50),
marks INT
);

INSERT INTO studentInfo
(roll_no, name, city, marks)
VALUES
(110, "Adam", "Delhi", 76),
(108, "Bob", "Mumbai", 65),
(124, "Casey", "Pune", 94),
(112, "Duke", "Pune", 80);

SELECT * FROM studentInfo;

SELECT * FROM studentInfo
WHERE marks >= 75;

SELECT DISTINCT city FROM studentInfo;

SELECT city, COUNT(roll_no) FROM studentInfo
GROUP BY city;

SELECT city, MAX(marks) FROM studentInfo
GROUP BY city;

SELECT AVG(marks) FROM studentInfo;

ALTER TABLE studentInfo
ADD COLUMN grade VARCHAR(30);

UPDATE studentInfo
SET grade = "O"
WHERE marks > 80;

UPDATE studentInfo
SET grade = "A"
WHERE marks BETWEEN 70 AND 80;

UPDATE studentInfo
SET grade = "B"
WHERE marks BETWEEN 60 AND 69;

