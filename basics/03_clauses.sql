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











