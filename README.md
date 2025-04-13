# JOINS-PRACTISE

COMPANY- CODTECH IT SOLUTIONS 

NAME-ANUSHKA VIJAYWARGIYA

INTERN ID-CT12TUG

DOMAIN-SQL

DURATION-8 WEEKS

MENTOR-NEELA SANTOSH

In this task, I performed different types of SQL joins—INNER JOIN, LEFT JOIN, RIGHT JOIN, and FULL OUTER JOIN—to combine and analyze data from two tables. This process involved creating tables, inserting sample data, and writing SQL queries to extract meaningful insights from the dataset.

Step 1: Creating the Database Schema
The first step was to create two relational tables:

Customers Table – This table stored details about customers, including their unique CustomerID, CustomerName, and City. The CustomerID acted as the primary key, ensuring that each customer had a unique identifier.

Orders Table – This table contained information about customer orders, including OrderID, CustomerID, OrderDate, and Amount. The CustomerID in this table served as a foreign key, linking each order to a corresponding customer.

To set up the database, we executed the following SQL commands:

CREATE TABLE Customers (
    CustomerID INT PRIMARY KEY,
    CustomerName VARCHAR(100),
    City VARCHAR(50)
);

CREATE TABLE Orders (
    OrderID INT PRIMARY KEY,
    CustomerID INT,
    OrderDate DATE,
    Amount DECIMAL(10,2),
    FOREIGN KEY (CustomerID) REFERENCES Customers(CustomerID)
);
Step 2: Inserting Sample Data
After defining the schema, we inserted sample data into both tables. The dataset featured Indian names and cities to keep it culturally relevant.

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
This data created realistic scenarios where some customers placed multiple orders, while others had no orders at all.

Step 3: Performing SQL Joins
To analyze the relationship between customers and orders, we executed different types of SQL joins:

1️⃣ INNER JOIN – Retrieves only matching records from both tables.

SELECT Customers.CustomerID, Customers.CustomerName, Orders.OrderID, Orders.OrderDate, Orders.Amount
FROM Customers
INNER JOIN Orders ON Customers.CustomerID = Orders.CustomerID;
🔹 This output contained only customers who placed orders, excluding those without transactions.

2️⃣ LEFT JOIN – Retrieves all customers and their orders (if any).

SELECT Customers.CustomerID, Customers.CustomerName, Orders.OrderID, Orders.OrderDate, Orders.Amount
FROM Customers
LEFT JOIN Orders ON Customers.CustomerID = Orders.CustomerID;
🔹 This output included all customers, even those without orders, with NULL values for missing order details.

3️⃣ RIGHT JOIN – Retrieves all orders and their customers.

SELECT Customers.CustomerID, Customers.CustomerName, Orders.OrderID, Orders.OrderDate, Orders.Amount
FROM Customers
RIGHT JOIN Orders ON Customers.CustomerID = Orders.CustomerID;
🔹 Since all orders had customers, this output matched the INNER JOIN result.

4️⃣ FULL OUTER JOIN – Retrieves all records from both tables.

SELECT Customers.CustomerID, Customers.CustomerName, Orders.OrderID, Orders.OrderDate, Orders.Amount
FROM Customers
FULL OUTER JOIN Orders ON Customers.CustomerID = Orders.CustomerID;
🔹 This output displayed all customers and all orders, with NULL values where no match existed.

Step 4: Analyzing the Results
Each SQL join provided unique insights into the data:

✅ INNER JOIN helped identify customers who had placed orders, filtering out inactive ones.
✅ LEFT JOIN ensured that all customers were included in the analysis, even if they had no purchases.
✅ RIGHT JOIN allowed us to focus on orders while ensuring each had a valid customer entry.
✅ FULL OUTER JOIN provided a complete picture, showing all customers and all orders, whether they were linked or not.

By using these joins, we could extract valuable business insights, such as identifying loyal customers, tracking purchasing behavior, and detecting unfulfilled potential (customers without orders). This approach demonstrated how SQL joins play a crucial role in real-world database management and decision-making. 

Conclusion
This exercise illustrated the power of SQL joins in merging and analyzing related datasets. By designing structured queries, we could effectively retrieve and interpret customer-order relationships. The use of different join types allowed us to explore various perspectives of the data, making it easier to derive business intelligence from database records. Understanding these concepts is essential for database administrators, analysts, and developers working with relational databases.

#OUTPUT
![Image](https://github.com/user-attachments/assets/b86bdb14-2961-40e1-9ded-7bc17d8508aa)

![Image](https://github.com/user-attachments/assets/6d0b7fc8-a21e-4e2b-8d15-c92aefaab610)

![Image](https://github.com/user-attachments/assets/b70baefe-9d1d-4451-9712-ae41377ca99b)

![Image](https://github.com/user-attachments/assets/695f6456-f125-4de7-927a-0cc0b220bbd3)
