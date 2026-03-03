Функциональные требования
1. Создание перемещений
FR-01
Система должна позволять создавать запросы на перемещение запасов в ERP.
FR-02
Система должна автоматически передавать запросы на перемещение из ERP в WMS.
FR-03
Система должна назначать задачи перемещения операторам склада в зависимости от зоны или рабочей нагрузки.

2. Проверка запасов
FR-04
Система должна проверять наличие запасов перед подтверждением перемещения.
FR-05
Система должна предотвращать подтверждение перемещения, если количество запасов недостаточно.
FR-06
Система должна проверять место хранения перед разрешением выполнения перемещения.

3. Мобильное выполнение (TSD)
FR-07
Система должна позволять операторам склада подтверждать перемещения с помощью мобильных устройств (TSD).
FR-08
Система должна требовать сканирования штрих-кода для проверки продукта и местоположения.
FR-09
Система должна отображать сообщение об ошибке, если отсканирован неверный продукт или местоположение.

4. Синхронизация запасов
FR-10
Система должна обновлять остатки запасов в WMS сразу после подтверждения перемещения.
FR-11
Система должна синхронизировать остатки запасов между WMS и ERP в режиме реального времени.
FR-12
Система должна регистрировать все ошибки синхронизации.

5. Ведение журналов и отслеживаемость
FR-13
Система должна регистрировать все операции перемещения запасов с указанием времени и идентификатора пользователя.
FR-14
Система должна хранить историю перемещений не менее 3 лет.

6. Мониторинг и контроль
FR-15
Система должна обеспечивать отслеживание статуса перемещения (создано, в процессе, завершено, отменено).
FR-16
Система должна генерировать оповещения о просроченных задачах перемещения.
FR-17
Система должна обеспечивать сравнение плана и фактов времени выполнения перемещения.

7. Интеграция с отчетностью
FR-18
Система должна экспортировать данные о перемещениях для отчетности BI.
FR-19
Система должна позволять фильтровать историю перемещений по дате, зоне, оператору и продукту.





1.Movement Creation
FR-01
The system shall allow creation of stock movement requests in ERP.
FR-02
The system shall transmit movement requests from ERP to WMS automatically.
FR-03
The system shall assign movement tasks to warehouse operators based on zone or workload.

2. Stock Validation
FR-04
The system shall validate stock availability before confirming movement.
FR-05
The system shall prevent movement confirmation if stock quantity is insufficient.
FR-06
The system shall validate storage location before allowing movement execution.

3. Mobile Execution (TSD)
FR-07
The system shall allow warehouse operators to confirm movements via mobile devices (TSD).
FR-08
The system shall require barcode scanning for product and location verification.
FR-09
The system shall display an error message if incorrect product or location is scanned.

4. Stock Synchronization
FR-10
The system shall update stock balances in WMS immediately after movement confirmation.
FR-11
The system shall synchronize stock balances between WMS and ERP in real time.
FR-12
The system shall log all synchronization errors.

5. Logging and Traceability
FR-13
The system shall log all stock movement operations with timestamp and user ID.
FR-14
The system shall store movement history for at least 3 years.

6. Monitoring and Control
FR-15
The system shall provide movement status tracking (created, in progress, completed, cancelled).
FR-16
The system shall generate alerts for overdue movement tasks.
FR-17
The system shall provide plan-fact comparison for movement execution time.

7. Reporting Integration
FR-18
The system shall export movement data for BI reporting.
FR-19
The system shall allow filtering movement history by date, zone, operator, and product.

FR-18
Система должна экспортировать данные о перемещениях для отчетности BI.

FR-19
Система должна позволять фильтровать историю перемещений по дате, зоне, оператору и продукту



