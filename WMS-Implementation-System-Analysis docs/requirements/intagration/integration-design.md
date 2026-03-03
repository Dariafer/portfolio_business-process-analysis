Интеграционная архитектура WMS
1. Назначение интеграционного слоя

Интеграционный слой обеспечивает синхронный обмен данными между ERP, WMS, мобильными устройствами (TSD) и BI-системой в рамках бизнес-процесса «Перемещение металлопроката на складе».

Цель интеграции — обеспечить:
-актуальность остатков
-отсутствие дублирования данных
-прослеживаемость операций
-контроль ошибок синхронизации

2. Участвующие системы
-ERP (1С:ERP)
Назначение: формирование заявок на перемещение, бухгалтерский и управленческий учёт.
-WMS
Назначение: управление складскими операциями, адресным хранением и выполнением заданий.
-TSD (терминалы сбора данных)
Назначение: мобильная фиксация факта перемещения и сканирование штрихкодов.
-BI (Power BI)
Назначение: аналитика, мониторинг KPI, формирование отчётности.

3. Архитектура взаимодействия

ERP → WMS
Тип интеграции: REST API
Назначение: передача заявки на перемещение.

WMS → ERP
Тип интеграции: REST API
Назначение: подтверждение выполнения перемещения и обновление остатков.

WMS → BI
Тип интеграции: выгрузка данных (ETL / репликация БД)
Назначение: формирование отчётности.

TSD → WMS
Тип интеграции: внутренний API
Назначение: подтверждение выполнения задания кладовщиком.

4. Сценарий потока данных

-В ERP создаётся заявка на перемещение.
-ERP передаёт заявку в WMS.
-WMS формирует операционное задание.
-Кладовщик выполняет перемещение и подтверждает его через TSD.
-WMS обновляет остатки на складе.
-WMS передаёт подтверждение в ERP.
-Данные передаются в BI для расчёта показателей.

5. Структура передаваемых данных
 В рамках интеграции ERP → WMS передаётся объект «Заявка на перемещение».
Объект содержит бизнес-данные, необходимые для создания операционного задания в WMS

Таблица 1.Атрибуты запроса

| Поле           | Тип       | Описание                              | Обязательное |
|----------------|-----------|---------------------------------------|-------------|
| request_id     | string    | Уникальный идентификатор заявки      | Да          |
| product_id     | integer   | Идентификатор продукции              | Да          |
| from_location  | string    | Исходная ячейка хранения             | Да          |
| to_location    | string    | Целевая ячейка хранения              | Да          |
| quantity       | decimal   | Количество продукции                 | Да          |
| created_at     | datetime  | Дата и время создания заявки         | Да          |

Пример полезной нагрузки 
{
  "request_id": "MR-10234",
  "product_id": 123,
  "from_location": "A-01-01",
  "to_location": "B-02-03",
  "quantity": 50,
  "created_at": "2026-03-03T10:15:00"
}

Пример структуры запроса демонстрирует формат и состав данных, передаваемых между системами. Он используется для согласования API-контракта и обеспечения корректной синхронизации данных.

6. Контроль ошибок и целостность данных

-Повторная передача одной и той же заявки исключается по уникальному request_id.
-При сбое передачи выполняется автоматическая повторная попытка.
-Все интеграционные ошибки фиксируются в журнале.
-При расхождении остатков формируется инцидент.
-Время синхронизации не должно превышать 5 секунд.




WMS Integration Architecture
1. Integration Layer Purpose

-The integration layer ensures synchronous data exchange between ERP, WMS, mobile devices (TSD), and the BI system within the warehouse movement process.
-The integration is designed to ensure:
-Real-time stock accuracy
-Elimination of data duplication
-Full traceability of operations
-Control over synchronization errors

2. Systems Involved
ERP (1C:ERP)
Purpose: Creation of movement requests and accounting records.

WMS
Purpose: Management of warehouse operations, location-based storage, and task execution.

TSD (Handheld Devices)
Purpose: Mobile confirmation of stock movements and barcode scanning.

BI System (Power BI)
Purpose: Analytics, KPI monitoring, and reporting.

3. Interaction Architecture
ERP → WMS
Integration type: REST API
Purpose: Transfer movement request data.

WMS → ERP
Integration type: REST API
Purpose: Confirm movement execution and update stock balances.

WMS → BI
Integration type: ETL / Database replication
Purpose: Reporting and KPI calculation.

TSD → WMS
Integration type: Internal API
Purpose: Confirm execution of warehouse tasks.

4. Movement Data Flow Scenario

-A movement request is created in ERP.
-ERP sends the request to WMS.
-WMS generates an operational task.
-The warehouse operator executes the movement and confirms it via TSD.
-WMS updates stock balances.
-WMS sends confirmation back to ERP.
-Data is transferred to BI for KPI calculation.

5. Data Structure

Within the ERP → WMS integration, a “Movement Request” object is transferred.
This object contains the business data required to create an operational task in WMS.

5.1 Request Attributes
Field	Type	Description	Required
request_id	string	Unique movement request identifier	Yes
product_id	integer	Product identifier	Yes
from_location	string	Source storage location	Yes
to_location	string	Destination storage location	Yes
quantity	decimal	Quantity to move	Yes
created_at	datetime	Request creation timestamp	Yes

5.2 Example Request Payload
{
  "request_id": "MR-10234",
  "product_id": 123,
  "from_location": "A-01-01",
  "to_location": "B-02-03",
  "quantity": 50,
  "created_at": "2026-03-03T10:15:00"
}

The request structure demonstrates the format and composition of data exchanged between systems.
It serves as the basis for defining the API contract and ensuring correct data synchronization.

6. Error Handling and Data Integrity
-Duplicate requests are prevented using a unique request_id.
-Transmission failures trigger automatic retry mechanisms.
-All integration errors are logged.
-Stock discrepancies generate incident records.
-Synchronization latency shall not exceed 5 seconds.
