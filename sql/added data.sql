DECLARE @startAgent INT;
SELECT @startAgent = ISNULL(MAX(agent_id), 0) FROM Agents;

DECLARE @a INT = 1;

WHILE @a <= 200
BEGIN
    INSERT INTO Agents (agent_name, role, shift)
    VALUES (
        CONCAT('Agent_', FORMAT(@startAgent + @a, '0000')),
        CASE 
            WHEN (@startAgent + @a) % 3 = 0 THEN 'L3 Support'
            WHEN (@startAgent + @a) % 2 = 0 THEN 'L2 Support'
            ELSE 'L1 Support'
        END,
        CASE 
            WHEN (@startAgent + @a) % 2 = 0 THEN 'Night'
            ELSE 'Day'
        END
    );

    SET @a = @a + 1;
END
