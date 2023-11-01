 //Домашняя работа от 26.10.2023

 //1. Приведите десять типовых бизнес-процессов для предметной области ВИДЕО-ХОСТИНГ (Youtube),
    // а также их соответствие по CRUD.
     //   В соответствие по SQL CRUD (Create, Read, Update, Delete):

    //    1. Загрузка видео: Create

    //    2. Просмотр видео: Read

    //    3. Комментирование видео: Create

    //    4. Оценка видео (лайки/дизлайки): Create, Update

    //    5. Подписка на канал: Create

    //    6. Уведомления о новых видео: Create

    //    7. Рекомендации видео: Read

    //    8. Редактирование видео-описания: Update

    //    9. Управление каналом (для владельцев): Create, Update

    //    10. Удаление видео: Delete



    //2. В рамках БД "песочница" напишите след/запросы:
     //Задача 1. Вывести название и стоимость товаров от 20 EUR.
             // SELECT ProductName, Price
             //FROM [Products]
              //WHERE  Price >= 20

        //Задача 2. Вывести страны поставщиков.
    //    SELECT Country
    //    FROM [Suppliers]

        //Задача 3. В упорядоченном по стоимости виде вывести название и стоимость товаров от всех поставщиков,
        // кроме поставщика 1.
        // SELECT ProductName, Price, SupplierID
        //FROM [Products]
        //WHERE NOT SupplierID = '1'

        //Задача 4. Вывести контактные имена клиентов, кроме тех, что из France и USA.
        // SELECT ContactName, Country
        //FROM [Customers]
        //WHERE NOT Country = 'France'
        //AND
        //NOT Country = 'USA'

        //Задача 5. Вывести два самых дорогих товара из категории 4
        //SELECT *
        //FROM [Products]
        //WHERE CategoryID = 4
        //ORDER BY Price DESC
        //LIMIT 2
