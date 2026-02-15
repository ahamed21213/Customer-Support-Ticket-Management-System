SELECT a.agent_name, COUNT(t.ticket_id) AS tickets_handled
FROM Agents a
LEFT JOIN Tickets t ON a.agent_id = t.agent_id
GROUP BY a.agent_name;
