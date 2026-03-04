sample-queries 


SELECT AVG(EXTRACT(EPOCH FROM (e2.event_timestamp - e1.event_timestamp))) AS avg_execution_time_seconds
FROM event_log e1
JOIN event_log e2 
ON e1.movement_request_id = e2.movement_request_id
WHERE e1.event_type = 'CREATED'
AND e2.event_type = 'COMPLETED';

SELECT COUNT(*)
FROM movement_requests
WHERE status = 'OVERDUE';

SELECT p.name, l.zone, l.cell_code, s.quantity
FROM stock_balance s
JOIN products p ON s.product_id = p.id
JOIN locations l ON s.location_id = l.id
ORDER BY l.zone, l.cell_code;

SELECT COUNT(*)
FROM event_log
WHERE event_type = 'ERROR';
