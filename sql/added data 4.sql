DECLARE @i INT = 1;

WHILE @i <= 100
BEGIN
    INSERT INTO Customers (customer_name, email, phone, created_at)
    VALUES (
        CONCAT('Customer_', @i),
        CONCAT('customer', @i, '@mail.com'),
        CONCAT('900000', FORMAT(@i,'0000')),
        DATEADD(DAY, -@i, GETDATE())
    );

    SET @i = @i + 1;
END
DECLARE @a INT = 1;

WHILE @a <= 100
BEGIN
    INSERT INTO Agents (agent_name, role, shift)
    VALUES (
        CONCAT('Agent_', FORMAT(@a,'000')),
        CASE 
            WHEN @a % 2 = 0 THEN 'L2 Support'
            ELSE 'L1 Support'
        END,
        CASE 
            WHEN @a % 3 = 0 THEN 'Night'
            ELSE 'Day'
        END
    );

    SET @a = @a + 1;
END
DECLARE @t INT = 1;

WHILE @t <= 700
BEGIN
    INSERT INTO Tickets
    (
        customer_id,
        agent_id,
        status_id,
        priority,
        issue_category,
        created_date,
        resolved_date
    )
    VALUES
    (
        ((@t - 1) % 100) + 1,   -- customer 1–100
        ((@t - 1) % 100) + 1,   -- agent 1–100
        CASE 
            WHEN @t % 3 = 0 THEN 3
            WHEN @t % 2 = 0 THEN 2
            ELSE 1
        END,
        CASE 
            WHEN @t % 3 = 0 THEN 'High'
            WHEN @t % 2 = 0 THEN 'Medium'
            ELSE 'Low'
        END,
        CASE 
            WHEN @t % 5 = 0 THEN 'Login Issue'
            WHEN @t % 4 = 0 THEN 'Payment Issue'
            WHEN @t % 3 = 0 THEN 'System Error'
            WHEN @t % 2 = 0 THEN 'Password Reset'
            ELSE 'Account Update'
        END,
        DATEADD(HOUR, -@t, GETDATE()),
        CASE 
            WHEN @t % 3 = 0 THEN DATEADD(HOUR, -(@t/2), GETDATE())
            ELSE NULL
        END
    );

    SET @t = @t + 1;
END
