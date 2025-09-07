
--  ---- Creating a table------------

USE college;

CREATE TABLE branch (
branchId int PRIMARY KEY,
branchName VARCHAR(50),
HOD VARCHAR(30)
);


CREATE TABLE student (
studentId INT PRIMARY KEY,
sudentName VARCHAR(50),
branch INT,  -- My Sql Syntax
-- Branch int foreign key references BranchTbl(BranchID),  - This syntax works in Ms Sql but not in MySql.
studentDOB DATE,
contactNo NUMERIC(10),
adress VARCHAR(100),
FOREIGN KEY(branch) REFERENCES branch(branchId)
);









