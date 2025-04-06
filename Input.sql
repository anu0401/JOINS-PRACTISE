--Creating Customers table
CREATE TABLE Customers (
    CustomerID INT PRIMARY KEY,
    CustomerName VARCHAR(100),
    City VARCHAR(50)
);

--Creating Orders table
CREATE TABLE Orders (
    OrderID INT PRIMARY KEY,
    CustomerID INT,
    OrderDate DATE,
    Amount DECIMAL(10,2),
    FOREIGN KEY (CustomerID) REFERENCES Customers(CustomerID)
);

--Inserting sample data
INSERT INTO Customers (CustomerID, CustomerName, City) VALUES
(1, 'Amit', 'Mumbai'),
(2, 'Priya', 'Delhi'),
(3, 'Rajesh', 'Bangalore'),
(4, 'Sneha', 'Chennai');

INSERT INTO Orders (OrderID, CustomerID, OrderDate, Amount) VALUES
(101, 1, '01-04-2024', 2500.00),
(102, 2, '02-04-2024', 1500.00),
(103, 1, '03-04-2024', 3000.00),
(104, 3, '04-04-2024', 2000.00);

--INNER JOIN
SELECT Customers.CustomerID, Customers.CustomerName, Orders.OrderID, Orders.OrderDate, Orders.Amount
FROM Customers
INNER JOIN Orders ON Customers.CustomerID = Orders.CustomerID;

--LEFT JOIN
SELECT Customers.CustomerID, Customers.CustomerName, Orders.OrderID, Orders.OrderDate, Orders.Amount
FROM Customers
LEFT JOIN Orders ON Customers.CustomerID = Orders.CustomerID;

--RIGHT JOIN
SELECT Customers.CustomerID, Customers.CustomerName, Orders.OrderID, Orders.OrderDate, Orders.Amount
FROM Customers
RIGHT JOIN Orders ON Customers.CustomerID = Orders.CustomerID;

--FULL OUTER JOIN
SELECT Customers.CustomerID, Customers.CustomerName, Orders.OrderID, Orders.OrderDate, Orders.Amount
FROM Customers
FULL OUTER JOIN Orders ON Customers.CustomerID = Orders.CustomerID;
