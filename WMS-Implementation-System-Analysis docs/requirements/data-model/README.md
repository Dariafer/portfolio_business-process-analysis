Модель данных
В этом разделе представлена ​​логическая и физическая структура базы данных для проекта внедрения WMS.
Модель данных поддерживает управление движением запасов, выполнение задач, синхронизацию с ERP и операционную отслеживаемость.

Логическая ER-модель
Логическая модель описывает основные сущности и их взаимосвязи:
1.Продукт
2.Местоположение
3.Остаток_запасов
4.Запрос_на_перемещение
5.Строка_запроса_на_перемещение
6.Задача_на_перемещение
7.Выполнение_перемещения
8.Сотрудник
9.Устройство_TSD
10.Документ_на_перемещение

Модель обеспечивает:
1.Уникальный запас для каждого (продукта, местоположения)
2.Разделение между бизнес-запросом и оперативным выполнением
3.Полную отслеживаемость движения запасов

Физическая модель данных
Физическая модель определяет:
1.Структуру таблиц
2.Первичные и внешние ключи
3.Ограничения и индексы
4.Типы данных

Схема оптимизирована для транзакционной согласованности и синхронизации в реальном времени с ERP.


Data Model
This section contains the logical and physical database design for the WMS implementation project.
The data model supports stock movement management, task execution, synchronization with ERP, and operational traceability.

Logical ER
The logical model describes core entities and their relationships:
Product
Location
Stock_Balance
Movement_Request
Movement_Request_Line
Movement_Task
Movement_Execution
Employee
TSD_Device
Movement_Document

The model ensures:
Unique stock per (product, location)
Separation between business request and operational execution
Full traceability of stock movements



Physical Data Model
The physical model defines:
Table structure
Primary and foreign keys
Constraints and indexes
Data types

The schema is optimized for transactional consistency and real-time synchronization with ERP.
