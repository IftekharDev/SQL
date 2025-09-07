-- ---------------------Data Base Queries -------------

CREATE DATABASE college;

USE college;

CREATE TABLE Student (
rollno INT,
name VARCHAR(30),
age INT
);

INSERT INTO student VALUES
(101, "Adam", 14),
(102, "Bob", 12);

SELECT * FROM Student;

CREATE DATABASE IF NOT EXISTS college;

DROP DATABASE IF EXISTS college;

SHOW DATABASES;

SHOW TABLES;


CREATE DATABASE IF NOT EXISTS Instagram;


-- --------------------Create Table ------------------------


USE Instagram;

CREATE TABLE user (
id INT PRIMARY KEY,
name VARCHAR(50) NOT NULL,
age INT,
email VARCHAR(50) UNIQUE,
followers INT DEFAULT 0,
following INT,
CONSTRAINT CHECK (age >=13)
);

DROP TABLE user;

CREATE TABLE post (
id INT PRIMARY KEY,
content VARCHAR(150),
user_id INT,
FOREIGN KEY (user_id) REFERENCES user(id)
);


-- ---------- Insert Query -----------------------------------

INSERT INTO user
(id, name, age, email, followers, following)
VALUES
(1, "Adam", 14, "adam@yahoo.in", 123, 145),
(2, "Priya Sharma", 19, "priya.sharma@gmail.com", 456, 234),
(3, "Rajesh Kumar", 25, "rajesh.kumar@outlook.com", 892, 345),
(4, "Ananya Patel", 17, "ananya.patel@yahoo.com", 321, 187),
(5, "Vikram Singh", 22, "vikram.singh@hotmail.com", 678, 456),
(6, "Neha Gupta", 16, "neha.gupta@gmail.com", 234, 198),
(7, "Amit Verma", 30, "amit.verma@yahoo.in", 1023, 567),
(8, "Sneha Reddy", 28, "sneha.reddy@outlook.com", 765, 432),
(9, "Rohit Malhotra", 21, "rohit.malhotra@gmail.com", 543, 321),
(10, "Kavita Joshi", 18, "kavita.joshi@yahoo.com", 987, 654),
(11, "Mohan Lal", 35, "mohan.lal@hotmail.com", 1200, 789),
(12, "Pooja Iyer", 24, "pooja.iyer@gmail.com", 432, 312),
(13, "Arjun Mehta", 20, "arjun.mehta@yahoo.in", 654, 432),
(14, "Swati Nair", 29, "swati.nair@outlook.com", 876, 543),
(15, "Deepak Rao", 23, "deepak.rao@gmail.com", 345, 234),
(16, "Meera Bansal", 15, "meera.bansal@yahoo.com", 210, 123),
(17, "Nitin Chawla", 31, "nitin.chawla@hotmail.com", 1123, 876),
(18, "Riya Kapoor", 17, "riya.kapoor@gmail.com", 567, 345),
(19, "Sameer Desai", 26, "sameer.desai@yahoo.in", 789, 567),
(20, "Anjali Menon", 22, "anjali.menon@outlook.com", 456, 321),
(21, "Karan Gill", 19, "karan.gill@gmail.com", 321, 210),
(22, "Tara Khanna", 27, "tara.khanna@yahoo.com", 987, 654),
(23, "Vivek Nanda", 33, "vivek.nanda@hotmail.com", 1345, 987),
(24, "Isha Chatterjee", 16, "isha.chatterjee@gmail.com", 234, 187),
(25, "Rahul Saxena", 20, "rahul.saxena@yahoo.in", 543, 321);



-- --------------- Select Queries ---------------------------------------

SELECT id, name , email FROM user;

SELECT id, name , age FROM user;

SELECT * FROM user;

SELECT DISTINCT age FROM user;




 