RACI-матрица ответственности
1. Назначение
RACI-матрица определяет роли и ответственность участников процесса «Перемещение металлопроката на складе» в целевой модели (TO BE).
R — Responsible (Исполняет)
A — Accountable (Несёт ответственность)
C — Consulted (Консультируется)
I — Informed (Информируется)


2.RACI для операционного процесса

| Активность              | Руководитель склада | Кладовщик | IT | Бухгалтерия | BI-аналитик |
| ----------------------- | ------------------- | --------- | -- | ----------- | ----------- |
| Создание заявки в ERP   | A                   | I         | I  | R           | I           |
| Передача заявки в WMS   | I                   | I         | A  | I           | I           |
| Формирование задания    | A                   | I         | I  | I           | I           |
| Выполнение перемещения  | I                   | R         | I  | I           | I           |
| Подтверждение через ТСД | I                   | R         | I  | I           | I           |
| Синхронизация остатков  | I                   | I         | A  | I           | I           |
| Контроль план-факт      | R                   | I         | I  | I           | C           |
| Анализ KPI              | A                   | I         | I  | I           | R           |
| Управление инцидентами  | A                   | C         | R  | I           | I           |

3.RACI для этапа внедрения

| Этап                      | Руководитель проекта | Руководитель склада | IT | Подрядчик WMS |
| ------------------------- | -------------------- | ------------------- | -- | ------------- |
| Анализ требований         | A                    | R                   | C  | C             |
| Настройка системы         | I                    | C                   | A  | R             |
| Интеграционная разработка | I                    | I                   | A  | R             |
| Тестирование              | C                    | R                   | A  | R             |
| Пилотный запуск           | A                    | R                   | C  | C             |
| Go-Live                   | A                    | R                   | R  | C             |
| Поддержка                 | I                    | R                   | A  | C             |


English Version
RACI Responsibility Matrix
1. Purpose
The RACI matrix defines roles and responsibilities for the stock movement process in the TO BE model.
R — Responsible
A — Accountable
C — Consulted
I — Informed

2. Operational RACI

| Activity                | Warehouse Manager | Operator | IT | Accounting | BI Analyst |
| ----------------------- | ----------------- | -------- | -- | ---------- | ---------- |
| ERP Request Creation    | A                 | I        | I  | R          | I          |
| Request Transfer to WMS | I                 | I        | A  | I          | I          |
| Task Creation           | A                 | I        | I  | I          | I          |
| Movement Execution      | I                 | R        | I  | I          | I          |
| TSD Confirmation        | I                 | R        | I  | I          | I          |
| Stock Synchronization   | I                 | I        | A  | I          | I          |
| Plan vs Fact Control    | R                 | I        | I  | I          | C          |
| KPI Analysis            | A                 | I        | I  | I          | R          |
| Incident Management     | A                 | C        | R  | I          | I          |


3.Implementation RACI

| Phase                   | Project Manager | Warehouse Manager | IT | WMS Vendor |
| ----------------------- | --------------- | ----------------- | -- | ---------- |
| Requirement Analysis    | A               | R                 | C  | C          |
| System Configuration    | I               | C                 | A  | R          |
| Integration Development | I               | I                 | A  | R          |
| Testing                 | C               | R                 | A  | R          |
| Pilot Launch            | A               | R                 | C  | C          |
| Go-Live                 | A               | R                 | R  | C          |
| Support                 | I               | R                 | A  | C          |


