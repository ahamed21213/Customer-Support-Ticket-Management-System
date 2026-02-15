SELECT 'Customers' AS TableName, COUNT(*) AS Total FROM Customers
UNION ALL
SELECT 'Agents', COUNT(*) FROM Agents
UNION ALL
SELECT 'Tickets', COUNT(*) FROM Tickets
UNION ALL
SELECT 'Ticket_Status', COUNT(*) FROM Ticket_Status;
