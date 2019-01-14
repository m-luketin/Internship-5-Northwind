CREATE TABLE Titles (

	ID INT IDENTITY(1,1),
	Title varchar(30)
)
INSERT INTO Titles
(Title)
VALUES
('CEO'), ('VP'), ('Investment associate'), ('Investment analyst')

CREATE TABLE Users(
	ID INT IDENTITY(1,1),
	FirstName varchar(20),
	LastName varchar(20),
	OIB char(11),
	PhoneNumber varchar(15),
	Adress varchar(20),
	City varchar(20),
	Country varchar(20),
	PostalNumber char(5)
)
ALTER TABLE Users
ADD CONSTRAINT OIB UNIQUE(OIB);

INSERT INTO Users
(FirstName, LastName, OIB, PhoneNumber, Adress, City, Country, PostalNumber)
VALUES
( 'Marko', 'Markic', '12345678901', '0976231212', 'Vinkovacka 12', 'Split', 'Hrvatska', '21000'),
('Ivo', 'Ivic', '12345123451', '0912121212', 'Vukovarska 55', 'Split', 'Hrvatska', '21000'),
('Ante', 'Antic', '12312312312', '0953213221', 'Ilica 11', 'Zagreb', 'Hrvatska', '10000') 


CREATE TABLE Transactions(
	ID INT IDENTITY(1,1),
	TransactionDate datetime,
	Status bit
)

ALTER TABLE Transactions
ADD Description varchar(50);

INSERT INTO Transactions
(TransactionDate, Status)
VALUES
(1/2/2018, 1),(15/12/2017, 0), (17/5/2011, 1)

UPDATE Transactions
SET TransactionDate = (1/1/2020)
WHERE Status = 0;

DELETE Transactions
WHERE TransactionDate = (1/1/2020);


CREATE TABLE Employees(
	ID INT IDENTITY(1,1),
	FirstName varchar(20),
	LastName varchar(20),
	Title varchar(30),
	E_mail varchar(30)
)

ALTER TABLE Employees
ADD EmployeeNotes varchar(100);

INSERT INTO Employees
(FirstName, LastName, Title, E_mail, EmployeeNotes)
VALUES
( 'Marko', 'Markic', 'CEO', 'marko@markic.com', 'bla'),
('Ivo', 'Ivic', 'VP', 'ivo@ivic.com', 'blabla'),
('Ante', 'Antic', 'Investment analyst', 'ante@antic.com', 'blablabla') 

SELECT * FROM Employees 
WHERE FirstName LIKE '[A-G]%'

