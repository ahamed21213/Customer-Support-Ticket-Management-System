;WITH Numbers AS (
    SELECT TOP 20 ROW_NUMBER() OVER (ORDER BY (SELECT NULL)) AS n
    FROM sys.objects
)
INSERT INTO Agents (agent_name, role, shift)
SELECT
    CONCAT('Agent_', n),
    CASE 
        WHEN n % 2 = 0 THEN 'L1 Support'
        ELSE 'L2 Support'
    END,
    CASE
        WHEN n % 3 = 0 THEN 'Night'
        ELSE 'Day'
    END
FROM Numbers;
