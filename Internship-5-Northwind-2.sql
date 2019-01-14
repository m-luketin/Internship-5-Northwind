SELECT TOP 50 CompanyName, ContactName, ContactTitle, Address, City, Phone FROM Customers

SELECT COUNT(*) FROM Customers
WHERE Fax is not null and Region is not null;

SELECT FirstName, LastName, Title, BirthDate FROM Employees
where BirthDate = (SELECT MAX(BirthDate) FROM Employees);

SELECT FirstName, LastName, Title, BirthDate From Employees
where BirthDate = (SELECT MIN(BirthDate) FROM Employees);

SELECT * FROM Customers
WHERE (Address LIKE '[0-9]%') and (CompanyName LIKE '__a%')
ORDER BY Country ASC;

SELECT OrderID, Quantity FROM [Order Details]
WHERE Quantity = (SELECT MAX(Quantity) FROM [Order Details]);

SELECT CustomerID FROM Customers
WHERE NOT EXISTS (SELECT CustomerID FROM Orders WHERE Orders.CustomerID = Customers.CustomerID)