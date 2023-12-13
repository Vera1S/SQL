В рамках БД 'песочница' напишите след/запросы:


Вывести ко-во заказов, которое компания Speedy Express доставила в Brazil
SELECT
	COUNT(*) AS total_shipped_to_brazil
FROM Orders
JOIN Shippers ON Orders.ShipperID = Shippers.ShipperID
JOIN Customers ON Orders.CustomerID = Customers.CustomerID
WHERE
	Shippers.ShipperName = 'Speedy Express'
    AND
    Customers.Country = 'Brazil'

Вывести среднюю стоимость напитка (Beverages) из Brazil
SELECT
	AVG(Products.Price) AS avg_price

FROM Products

JOIN Suppliers ON Products.SupplierID = Suppliers.SupplierID
JOIN Categories ON Products.CategoryID = Categories.CategoryID

WHERE
	Categories.CategoryName = 'Beverages'
	AND
	Suppliers.Country = 'Brazil'

Расчитать З/П сотрудника с фамилией Davolio (проекция: зп, фамилиясотрудника)
SELECT
    SUM(Products.Price * OrderDetails.Quantity) * .05 AS Salary,
    Employees.LastName
FROM Orders
         JOIN Employees ON Orders.EmployeeID = Employees.EmployeeID
         JOIN OrderDetails ON Orders.OrderID = OrderDetails.OrderID
         JOIN Products ON OrderDetails.ProductID = Products.ProductID
WHERE
        Employees.LastName = 'Davolio';

Ссылка на песочницу:
https://www.w3schools.com/mysql/trymysql.asp?filename=trysqlselectall