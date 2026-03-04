Мониторинг и SLA
1. Назначение

Мониторинг обеспечивает контроль стабильности интеграций, производительности WMS и соблюдения целевых KPI после внедрения.
SLA (Service Level Agreement) фиксирует допустимые параметры работы системы.

2.Контролируемые параметры 

| Показатель                       | Целевое значение | Критическое значение | Источник контроля | Ответственный       |
| -------------------------------- | ---------------- | -------------------- | ----------------- | ------------------- |
| Время ответа API                 | ≤ 3 сек          | > 10 сек             | Логи API          | IT                  |
| Синхронизация ERP ↔ WMS          | ≤ 5 сек          | > 15 сек             | Integration Logs  | IT                  |
| Доступность системы              | ≥ 99.5%          | < 98%                | Monitoring Tool   | IT                  |
| Количество интеграционных ошибок | ≤ 1%             | > 5%                 | Error Log         | IT                  |
| Просроченные складские задачи    | ≤ 5%             | > 15%                | WMS               | Руководитель склада |
| Потеря данных                    | 0 случаев        | ≥ 1                  | Audit Log         | IT                  |

3.Уровни SLA

| Уровень     | Описание                  | Время реакции  | Время устранения |
| ----------- | ------------------------- | -------------- | ---------------- |
| Критический | Полная остановка операций | 15 минут       | 2 часа           |
| Высокий     | Нарушена синхронизация    | 30 минут       | 4 часа           |
| Средний     | Замедление работы         | 2 часа         | 8 часов          |
| Низкий      | Некритичные ошибки        | 1 рабочий день | 3 рабочих дня    |

4.Процесс мониторинга
1)Логи интеграции анализируются автоматически.
2)При превышении пороговых значений формируется алерт.
3)Ответственный сотрудник получает уведомление.
4)Инцидент регистрируется в системе управления задачами.
5)После устранения проводится анализ первопричины.



English Version
Monitoring and SLA
1. Purpose
Monitoring ensures stability of integrations, WMS performance, and compliance with defined KPI targets.
SLA defines acceptable service parameters.

2. Monitored Metrics

| Metric                  | Target Value | Critical Threshold | Source           | Responsible       |
| ----------------------- | ------------ | ------------------ | ---------------- | ----------------- |
| API Response Time       | ≤ 3 sec      | > 10 sec           | API Logs         | IT                |
| ERP–WMS Sync Latency    | ≤ 5 sec      | > 15 sec           | Integration Logs | IT                |
| System Availability     | ≥ 99.5%      | < 98%              | Monitoring Tool  | IT                |
| Integration Error Rate  | ≤ 1%         | > 5%               | Error Log        | IT                |
| Overdue Warehouse Tasks | ≤ 5%         | > 15%              | WMS              | Warehouse Manager |
| Data Loss               | 0 cases      | ≥ 1                | Audit Log        | IT                |

3.SLA levels

| Level    | Description             | Response Time  | Resolution Time |
| -------- | ----------------------- | -------------- | --------------- |
| Critical | Full operational stop   | 15 min         | 2 hours         |
| High     | Sync disruption         | 30 min         | 4 hours         |
| Medium   | Performance degradation | 2 hours        | 8 hours         |
| Low      | Minor issues            | 1 business day | 3 business days |


4.Monitoring Process
1)Integration logs are automatically analyzed.
2)Alerts are triggered when thresholds are exceeded.
3)Responsible personnel receive notification.
4)Incident is registered in the task system.
5)Root cause analysis is performed after resolution.

