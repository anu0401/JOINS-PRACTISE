--Output for INNER JOIN:
| CustomerID | CustomerName | OrderID | OrderDate  | Amount  |
|------------|-------------|---------|------------|---------|
| 1          | Amit        | 101     | 01-04-2024 | 2500.00 |
| 1          | Amit        | 103     | 03-04-2024 | 3000.00 |
| 2          | Priya       | 102     | 02-04-2024 | 1500.00 |
| 3          | Rajesh      | 104     | 04-04-2024 | 2000.00 |

--Output for LEFT JOIN:
| CustomerID | CustomerName | OrderID | OrderDate  | Amount  |
|------------|-------------|---------|------------|---------|
| 1          | Amit        | 101     | 01-04-2024 | 2500.00 |
| 1          | Amit        | 103     | 03-04-2024 | 3000.00 |
| 2          | Priya       | 102     | 02-04-2024 | 1500.00 |
| 3          | Rajesh      | 104     | 04-04-2024 | 2000.00 |
| 4          | Sneha       | NULL    | NULL       | NULL    |

--Output for RIGHT JOIN:
| CustomerID | CustomerName | OrderID | OrderDate  | Amount  |
|------------|-------------|---------|------------|---------|
| 1          | Amit        | 101     | 01-04-2024 | 2500.00 |
| 1          | Amit        | 103     | 03-04-2024 | 3000.00 |
| 2          | Priya       | 102     | 02-04-2024 | 1500.00 |
| 3          | Rajesh      | 104     | 04-04-2024 | 2000.00 |

--Output for FULL OUTER JOIN:
| CustomerID | CustomerName | OrderID | OrderDate  | Amount  |
|------------|-------------|---------|------------|---------|
| 1          | Amit        | 101     | 01-04-2024 | 2500.00 |
| 1          | Amit        | 103     | 03-04-2024 | 3000.00 |
| 2          | Priya       | 102     | 02-04-2024 | 1500.00 |
| 3          | Rajesh      | 104     | 04-04-2024 | 2000.00 |
| 4          | Sneha       | NULL    | NULL       | NULL    |
