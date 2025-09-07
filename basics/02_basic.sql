
--  ---- Creating a table------------

USE college;

CREATE TABLE branch (
branchId INT PRIMARY KEY,
branchName VARCHAR(50),
HOD VARCHAR(30)
);


CREATE TABLE student (
studentId INT PRIMARY KEY,
studentName VARCHAR(50),
branch INT,  -- My Sql Syntax
-- Branch int foreign key references BranchTbl(BranchID),  - This syntax works in Ms Sql but not in MySql.
studentDOB DATE,
contactNo NUMERIC(10),
address VARCHAR(100),
FOREIGN KEY(branch) REFERENCES branch(branchId)
);



-- Insert Query

INSERT INTO branch
(branchId, branchName, HOD)
VALUES
(1, 'Computer Science', 'Dr. Mohammad Yusuf'),
(2, 'Mechanical Engineering', 'Dr. Christina Fernandes'),
(3, 'Civil Engineering', 'Dr. Yasir Malik'),
(4, 'Electrical Engineering', 'Dr. Maria Joseph'),
(5, 'Electronics and Communication', 'Dr. Imran Rahman'),
(6, 'Information Technology', 'Dr. Deborah Thomas');



-- Computer Science (branchId = 1)

INSERT INTO student
(studentId, studentName, branch, studentDOB, contactNo, address)
VALUES
(1, 'Mohammad Ahmed', 1, '2000-05-15', 9876543210, '101, Silver Springs, Mumbai'),
(2, 'Aisha Khan', 1, '2001-07-20', 9876543211, '202, Green Park, Delhi'),
(3, 'Yusuf Ali', 1, '2000-09-10', 9876543212, '303, Palm Heights, Bangalore'),
(4, 'Maryam Fatima', 1, '2001-02-28', 9876543213, '404, Lake View, Hyderabad'),
(5, 'Imran Malik', 1, '2000-11-05', 9876543214, '505, Orchid Towers, Pune'),
(6, 'Sara John', 1, '2001-04-18', 9876543215, '606, Sunrise Apartments, Chennai'),
(7, 'David Wilson', 1, '2000-12-30', 9876543216, '707, Royal Residency, Kolkata'),
(8, 'Zahra Yusuf', 1, '2001-06-22', 9876543217, '808, Golden Enclave, Ahmedabad'),
(9, 'Jacob Thomas', 1, '2000-08-14', 9876543218, '909, Elite Towers, Jaipur'),
(10, 'Nadia Khan', 1, '2001-01-09', 9876543219, '1010, Platinum Heights, Lucknow'),
(11, 'Omar Faruq', 1, '2000-10-17', 9876543220, '1111, Harmony Apartments, Chandigarh'),
(12, 'Rebecca Samuel', 1, '2001-03-25', 9876543221, '1212, Serene Villas, Surat'),
(13, 'Khalid Rahman', 1, '2000-07-03', 9876543222, '1313, Pacific Towers, Nagpur'),
(14, 'Laila Yousuf', 1, '2001-09-11', 9876543223, '1414, Regal Heights, Indore'),
(15, 'Michael Fernandez', 1, '2000-04-27', 9876543224, '1515, Imperial Gardens, Bhopal');


-- Mechanical Engineering (branchId = 2)

INSERT INTO student
(studentId, studentName, branch, studentDOB, contactNo, address)
VALUES
(16, 'Ali Hassan', 2, '2000-03-10', 8765432109, '201, Green Park, Delhi'),
(17, 'Fatima Zahra', 2, '2001-07-15', 8765432110, '302, Palm Heights, Mumbai'),
(18, 'Younus Khan', 2, '2000-11-20', 8765432111, '403, Lake View, Bangalore'),
(19, 'Maria Joseph', 2, '2001-02-25', 8765432112, '504, Orchid Towers, Pune'),
(20, 'Bilal Ahmed', 2, '2000-09-05', 8765432113, '605, Sunrise Apartments, Hyderabad'),
(21, 'Sophia Fernandes', 2, '2001-04-12', 8765432114, '706, Royal Residency, Chennai'),
(22, 'Rizwan Malik', 2, '2000-12-30', 8765432115, '807, Golden Enclave, Kolkata'),
(23, 'Elizabeth Thomas', 2, '2001-06-18', 8765432116, '908, Elite Towers, Ahmedabad'),
(24, 'Shahid Rahman', 2, '2000-08-22', 8765432117, '1009, Platinum Heights, Jaipur'),
(25, 'Grace Mathew', 2, '2001-01-14', 8765432118, '1110, Harmony Apartments, Lucknow'),
(26, 'Javed Iqbal', 2, '2000-10-08', 8765432119, '1211, Serene Villas, Chandigarh'),
(27, 'Catherine D Souza', 2, '2001-03-22', 8765432120, '1312, Pacific Towers, Surat'),
(28, 'Nadeem Sheikh', 2, '2000-07-16', 8765432121, '1413, Regal Heights, Nagpur'),
(29, 'Rachel Peter', 2, '2001-09-09', 8765432122, '1514, Imperial Gardens, Indore'),
(30, 'Asif Ali', 2, '2000-05-28', 8765432123, '1615, Urban Oasis, Bhopal');


-- Civil Engineering (branchId = 3)

INSERT INTO student
(studentId, studentName, branch, studentDOB, contactNo, address)
VALUES
(31, 'Mohsin Khan', 3, '2000-04-12', 7654321098, '301, Green Park, Delhi'),
(32, 'Christina Fernandes', 3, '2001-08-19', 7654321099, '402, Palm Heights, Mumbai'),
(33, 'Zubair Ahmed', 3, '2000-12-03', 7654321090, '503, Lake View, Bangalore'),
(34, 'Anna Joseph', 3, '2001-03-28', 7654321091, '604, Orchid Towers, Pune'),
(35, 'Faisal Malik', 3, '2000-07-14', 7654321092, '705, Sunrise Apartments, Hyderabad'),
(36, 'Linda Mathew', 3, '2001-01-22', 7654321093, '806, Royal Residency, Chennai'),
(37, 'Imtiaz Rahman', 3, '2000-05-17', 7654321094, '907, Golden Enclave, Kolkata'),
(38, 'Martha Thomas', 3, '2001-10-05', 7654321095, '1008, Elite Towers, Ahmedabad'),
(39, 'Sohail Khan', 3, '2000-02-28', 7654321096, '1109, Platinum Heights, Jaipur'),
(40, 'Joy Fernandes', 3, '2001-06-11', 7654321097, '1210, Harmony Apartments, Lucknow'),
(41, 'Nazim Ahmed', 3, '2000-11-03', 7654321108, '1311, Serene Villas, Chandigarh'),
(42, 'Clara D Souza', 3, '2001-04-19', 7654321109, '1412, Pacific Towers, Surat'),
(43, 'Tariq Malik', 3, '2000-09-25', 7654321110, '1513, Regal Heights, Nagpur'),
(44, 'Evelyn Peter', 3, '2001-01-10', 7654321111, '1614, Imperial Gardens, Indore'),
(45, 'Waqas Sheikh', 3, '2000-06-15', 7654321112, '1715, Urban Oasis, Bhopal');


-- Electrical Engineering (branchId = 4)

INSERT INTO student
(studentId, studentName, branch, studentDOB, contactNo, address)
VALUES
(46, 'Aamir Khan', 4, '2000-07-07', 6543210987, '401, Green Park, Delhi'),
(47, 'Susan Fernandes', 4, '2001-11-14', 6543210986, '502, Palm Heights, Mumbai'),
(48, 'Yasir Malik', 4, '2000-03-22', 6543210985, '603, Lake View, Bangalore'),
(49, 'Lydia Joseph', 4, '2001-08-09', 6543210984, '704, Orchid Towers, Pune'),
(50, 'Junaid Ahmed', 4, '2000-12-30', 6543210983, '805, Sunrise Apartments, Hyderabad'),
(51, 'Nina Mathew', 4, '2001-05-18', 6543210982, '906, Royal Residency, Chennai'),
(52, 'Shakil Rahman', 4, '2000-10-05', 6543210981, '1007, Golden Enclave, Kolkata'),
(53, 'Deborah Thomas', 4, '2001-02-22', 6543210980, '1108, Elite Towers, Ahmedabad'),
(54, 'Salman Khan', 4, '2000-06-11', 6543210979, '1209, Platinum Heights, Jaipur'),
(55, 'Carol Fernandes', 4, '2001-09-25', 6543210978, '1310, Harmony Apartments, Lucknow'),
(56, 'Irfan Malik', 4, '2000-01-14', 6543210977, '1411, Serene Villas, Chandigarh'),
(57, 'Jessica D Souza', 4, '2001-04-08', 6543210976, '1512, Pacific Towers, Surat'),
(58, 'Noman Sheikh', 4, '2000-08-22', 6543210975, '1613, Regal Heights, Nagpur'),
(59, 'Rebecca Peter', 4, '2001-12-10', 6543210974, '1714, Imperial Gardens, Indore');


-- Electronics and Communication (branchId = 5)

INSERT INTO student
(studentId, studentName, branch, studentDOB, contactNo, address)
VALUES
(60, 'Arif Khan', 5, '2000-09-19', 5432109876, '501, Green Park, Delhi'),
(61, 'Maria Joseph', 5, '2001-01-25', 5432109875, '602, Palm Heights, Mumbai'),
(62, 'Zaid Malik', 5, '2000-05-10', 5432109874, '703, Lake View, Bangalore'),
(63, 'Sophia Fernandes', 5, '2001-10-15', 5432109873, '804, Orchid Towers, Pune'),
(64, 'Bashir Ahmed', 5, '2000-02-28', 5432109872, '905, Sunrise Apartments, Hyderabad'),
(65, 'Linda Mathew', 5, '2001-07-09', 5432109871, '1006, Royal Residency, Chennai'),
(66, 'Imran Rahman', 5, '2000-11-22', 5432109870, '1107, Golden Enclave, Kolkata'),
(67, 'Grace Peter', 5, '2001-04-05', 5432109869, '1208, Elite Towers, Ahmedabad'),
(68, 'Nadeem Sheikh', 5, '2000-08-18', 5432109868, '1309, Platinum Heights, Jaipur'),
(69, 'Evelyn D Souza', 5, '2001-12-30', 5432109867, '1410, Harmony Apartments, Lucknow'),
(70, 'Sajid Khan', 5, '2000-06-14', 5432109866, '1511, Serene Villas, Chandigarh'),
(71, 'Joy Thomas', 5, '2001-09-28', 5432109865, '1612, Pacific Towers, Surat'),
(72, 'Waqar Malik', 5, '2000-01-10', 5432109864, '1713, Regal Heights, Nagpur'),
(73, 'Rachel Fernandes', 5, '2001-05-23', 5432109863, '1814, Imperial Gardens, Indore'),
(74, 'Tahir Ahmed', 5, '2000-10-07', 5432109862, '1915, Urban Oasis, Bhopal');


-- Information Technology (branchId = 6)

INSERT INTO student
(studentId, studentName, branch, studentDOB, contactNo, address)
VALUES
(75, 'Adnan Khan', 6, '2000-11-12', 4321098765, '601, Green Park, Delhi'),
(76, 'Christina Joseph', 6, '2001-03-18', 4321098764, '702, Palm Heights, Mumbai'),
(77, 'Zahid Malik', 6, '2000-07-30', 4321098763, '803, Lake View, Bangalore'),
(78, 'Lydia Fernandes', 6, '2001-12-05', 4321098762, '904, Orchid Towers, Pune'),
(79, 'Fahad Ahmed', 6, '2000-04-19', 4321098761, '1005, Sunrise Apartments, Hyderabad'),
(80, 'Martha Mathew', 6, '2001-09-12', 4321098760, '1106, Royal Residency, Chennai'),
(81, 'Imran Rahman', 6, '2000-01-25', 4321098759, '1207, Golden Enclave, Kolkata'),
(82, 'Deborah Thomas', 6, '2001-06-08', 4321098758, '1308, Elite Towers, Ahmedabad'),
(83, 'Sajjad Sheikh', 6, '2000-10-22', 4321098757, '1409, Platinum Heights, Jaipur'),
(84, 'Evelyn D Souza', 6, '2001-02-15', 4321098756, '1510, Harmony Apartments, Lucknow'),
(85, 'Noman Malik', 6, '2000-07-09', 4321098755, '1611, Serene Villas, Chandigarh'),
(86, 'Grace Peter', 6, '2001-11-28', 4321098754, '1712, Pacific Towers, Surat'),
(87, 'Waqas Ahmed', 6, '2000-05-14', 4321098753, '1813, Regal Heights, Nagpur'),
(88, 'Joy Joseph', 6, '2001-09-30', 4321098752, '1914, Imperial Gardens, Indore'),
(89, 'Tariq Khan', 6, '2000-02-20', 4321098751, '2015, Urban Oasis, Bhopal');




-- --- Select Query

SELECT * FROM branch;

SELECT * FROM student;

SELECT branchName, HOD FROM branch;

SELECT studentName, branch, contactNo FROM student;


SELECT * FROM branch WHERE HOD = "Dr. Imran Rahman";

SELECT * FROM student WHERE branch = 1;
SELECT * FROM student WHERE studentName = "Aisha Khan";
SELECT * FROM student WHERE studentId = 89;


-- Update query

UPDATE student set contactNo = 9867432345 where studentId = 23;


-- Delete query

DELETE FROM student WHERE studentId = 89;


-- Delete table

DROP TABLE student;


-- Empty the table

TRUNCATE TABLE student;


-- Delete database

DROP DATABASE college;


-- Alter Query
-- Add Column

ALTER TABLE branch aDD HODSalary int;


-- Delete Column

ALTER TABLE branch DROP COLUMN HODSalary;






















