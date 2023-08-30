SELECT Customers.CustomerID, Customers.CustomerName, Orders.OrderID, Orders.TotalCost FROM Customers INNER JOIN ORDERS ON Customers.CustomerID = Orders.CustomerID WHERE Orders.TotalCost > 150 ORDER BY Orders.TotalCost DESC;