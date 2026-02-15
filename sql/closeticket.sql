CREATE PROCEDURE CloseTicket(IN p_ticket_id INT)
BEGIN
    UPDATE Tickets
    SET status_id = 3,
        resolved_date = NOW()
    WHERE ticket_id = p_ticket_id;
END;
