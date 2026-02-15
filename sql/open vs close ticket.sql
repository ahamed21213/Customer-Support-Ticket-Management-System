SELECT ts.status_name, COUNT(*) AS total_tickets
FROM Tickets t
JOIN Ticket_Status ts ON t.status_id = ts.status_id
GROUP BY ts.status_name;
