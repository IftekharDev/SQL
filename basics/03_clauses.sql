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








