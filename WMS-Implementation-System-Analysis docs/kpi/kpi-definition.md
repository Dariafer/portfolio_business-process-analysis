KPI и показатели эффективности процесса

1. Назначение KPI
Система показателей предназначена для оценки эффективности бизнес-процесса «Перемещение металлопроката на складе» после внедрения WMS.

KPI позволяют:
+контролировать скорость выполнения операций
+оценивать точность складского учёта
+выявлять узкие места
+анализировать влияние внедрения WMS на бизнес-показатели

2. Перечень KPI

| KPI                           | Описание                                                 | Формула расчёта                                    | Источник данных      | Периодичность | Ответственный       |
| ----------------------------- | -------------------------------------------------------- | -------------------------------------------------- | -------------------- | ------------- | ------------------- |
| Время выполнения перемещения  | Среднее время от создания заявки до подтверждения        | (Время подтверждения − Время создания)             | WMS / ERP            | Ежедневно     | Руководитель склада |
| Точность складских остатков   | Соответствие фактических остатков системным              | (Фактические остатки / Системные остатки) × 100%   | Инвентаризация / WMS | Ежемесячно    | Склад               |
| Доля операций через ТСД       | Процент операций, выполненных через мобильные устройства | (Операции через ТСД / Общее число операций) × 100% | WMS                  | Ежедневно     | Руководитель склада |
| Время синхронизации ERP ↔ WMS | Средняя задержка обмена данными                          | Время подтверждения − Время передачи               | Логи интеграции      | Ежедневно     | IT                  |
| Количество ошибок перемещения | Количество зарегистрированных ошибок                     | Количество инцидентов за период                    | Event Log            | Ежемесячно    | IT / Склад          |
| План-факт отклонение          | Отклонение фактического времени от планового             | Факт − План                                        | WMS                  | Еженедельно   | Руководитель склада |
| Количество просроченных задач | Доля задач, превышающих SLA                              | (Просроченные задачи / Общее число задач) × 100%   | WMS                  | Еженедельно   | Руководитель склада |
| Уровень прослеживаемости      | Доля операций с полным журналом событий                  | (Операции с логированием / Все операции) × 100%    | Audit Log            | Ежемесячно    | IT                  |


3.Целевые значения KPI

| KPI                          | Целевое значение        |
| ---------------------------- | ----------------------- |
| Время выполнения перемещения | ≤ 3 минут               |
| Точность остатков            | ≥ 99%                   |
| Доля операций через ТСД      | 100%                    |
| Время синхронизации          | ≤ 5 секунд              |
| Снижение ошибок              | −50% относительно AS IS |
| Просроченные задачи          | ≤ 5%                    |


English Version
KPI and Performance Metrics
1. KPI Purpose

The KPI framework is designed to evaluate the efficiency of the warehouse stock movement process after WMS implementation.

The metrics enable:
+Monitoring execution speed
+Measuring inventory accuracy
+Identifying bottlenecks
+Evaluating business impact

2.KPI list

| KPI                     | Description                                          | Formula                                       | Data Source      | Frequency | Responsible       |
| ----------------------- | ---------------------------------------------------- | --------------------------------------------- | ---------------- | --------- | ----------------- |
| Movement Execution Time | Average time from request creation to confirmation   | Confirmation Time − Creation Time             | WMS / ERP        | Daily     | Warehouse Manager |
| Inventory Accuracy      | Accuracy of system stock vs physical stock           | (Physical Stock / System Stock) × 100%        | Inventory / WMS  | Monthly   | Warehouse         |
| TSD Usage Rate          | Percentage of operations performed via TSD           | (TSD Operations / Total Operations) × 100%    | WMS              | Daily     | Warehouse Manager |
| ERP–WMS Sync Latency    | Average data exchange delay                          | Confirmation Time − Transfer Time             | Integration Logs | Daily     | IT                |
| Movement Error Count    | Number of recorded movement errors                   | Incident Count                                | Event Log        | Monthly   | IT / Warehouse    |
| Plan vs Fact Deviation  | Difference between planned and actual execution time | Actual − Planned                              | WMS              | Weekly    | Warehouse Manager |
| Overdue Task Rate       | Percentage of tasks exceeding SLA                    | (Overdue Tasks / Total Tasks) × 100%          | WMS              | Weekly    | Warehouse Manager |
| Traceability Level      | Percentage of fully logged operations                | (Logged Operations / Total Operations) × 100% | Audit Log        | Monthly   | IT                |

3.target kpi values

| KPI                     | Target Value  |
| ----------------------- | ------------- |
| Movement Execution Time | ≤ 3 minutes   |
| Inventory Accuracy      | ≥ 99%         |
| TSD Usage Rate          | 100%          |
| ERP–WMS Sync Latency    | ≤ 5 seconds   |
| Error Reduction         | −50% vs AS IS |
| Overdue Task Rate       | ≤ 5%          |
