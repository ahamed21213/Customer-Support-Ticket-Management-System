SELECT issue_category,
AVG(TIMESTAMPDIFF(HOUR, created_date, resolved_date)) AS avg_delay_hours
FROM Tickets
WHERE resolved_date IS NOT NULL
GROUP BY issue_category;
