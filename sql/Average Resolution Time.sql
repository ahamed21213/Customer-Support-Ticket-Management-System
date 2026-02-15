SELECT
AVG(TIMESTAMPDIFF(HOUR, created_date, resolved_date)) AS avg_resolution_hours
FROM Tickets
WHERE resolved_date IS NOT NULL;
