CREATE PROCEDURE CreateTicket(
    IN p_customer_id INT,
    IN p_priority VARCHAR(20),
    IN p_category VARCHAR(50)
)
BEGIN
    INSERT INTO Tickets
    (customer_id, priority, issue_category, status_id, created_date)
    VALUES
    (p_customer_id, p_priority, p_category, 1, NOW());
END;
