В рамках БД "онлайн-магазин" напишите след/запросы:


1. Вывести название и стоимость в USD одного самого дорогого товара
SELECT
ProductName,
Price AS Price_usd
FROM [Products]
ORDER BY Price DESC
LIMIT 1

2. Вывести два самых дешевых товара из категории 1
SELECT *
FROM [Products]
WHERE
CategoryID = 1
ORDER BY Price
LIMIT 2

3. Удалить товары с ценой менее 50 EUR
DELETE FROM [Products]
WHERE
Price <= 50

4. Очистить поле ContactName у всех клиентов не из China
UPDATE Customers
SET
ContactName = ''
WHERE
NOT Country = 'China'

5. Применить ко всем товарам постоянную скидку в 15%
UPDATE [Products]
SET
 Price = Price * 0.85

6. Вывести товар, который находится на третьем месте среди самых дорогих
SELECT *
FROM [Products]
ORDER BY Price DESC
LIMIT 3 OFFSET 0
