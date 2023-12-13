В рамках БД "онлайн-магазин" напишите след/запросы:
1. добавления нового продукта
   INSERT INTO
2.выборки всех продуктов или выборки конкретного продукта по ID
  CREATE
3.  обновления цены продукта по его ID
  UPDATE
4. удаления продукта по его ID
DELETE


Вывести название и стоимость в USD одного самого дорогого проданного товара
SELECT
	Products.ProductName,
	Products.Price AS Price_usd
FROM OrderDetails
JOIN OrderDetails ON OrderDetails.ProductID = Products.ProductID
ORDER BY Price DESC
LIMIT 1

Вывести два самых дорогих товара из категории Beverages из USA
SELECT
Categories.CategoryName,
Products.ProductName
FROM Products
JOIN Suppliers ON Products.SupplierID = Suppliers.SupplierID
JOIN Categories ON Products.CategoryID = Categories.CategoryID
WHERE
Products.CategoryID = 'Beverages'
AND
 Suppliers.Country = 'USA'
ORDER BY Price DESC
LIMIT 2

Удалить товары с ценой менее 50 EUR
DELETE FROM Products
WHERE
    Price > 50

Вывести список стран, которые поставляют морепродукты

SELECT
Suppliers.Country,
Categories.CategoryName = Seafood
FROM Suppliers;
LEFT JOIN Categories ON Products.CategoryID = Categories.CategoryID
LEFT JOIN Suppliers ON Products.SupplierID=Suppliers.SupplierID

Очистить поле ContactName у всех клиентов не из China
