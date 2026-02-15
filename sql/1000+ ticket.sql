;WITH Numbers AS (
    SELECT TOP 1000 ROW_NUMBER() OVER (ORDER BY (SELECT NULL)) AS n
    FROM sys.objects a
    CROSS JOIN sys.objects b
)
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
SELECT
    ABS(CHECKSUM(NEWID())) % (SELECT COUNT(*) FROM Customers) + 1 AS customer_id,
    ABS(CHECKSUM(NEWID())) % (SELECT COUNT(*) FROM Agents) + 1 AS agent_id,
    CASE
        WHEN n % 3 = 0 THEN 3   -- Closed
        WHEN n % 3 = 1 THEN 2   -- In Progress
        ELSE 1                 -- Open
    END AS status_id,
    CASE
        WHEN n % 3 = 0 THEN 'High'
        WHEN n % 3 = 1 THEN 'Medium'
        ELSE 'Low'
    END AS priority,
    CASE
        WHEN n % 4 = 0 THEN 'Login Issue'
        WHEN n % 4 = 1 THEN 'Payment Issue'
        WHEN n % 4 = 2 THEN 'Account Update'
        ELSE 'System Error'
    END AS issue_category,
    DATEADD(DAY, -ABS(CHECKSUM(NEWID())) % 60, GETDATE()) AS created_date,
    CASE
        WHEN n % 3 = 0
        THEN DATEADD(
                HOUR,
                ABS(CHECKSUM(NEWID())) % 30 + 1,
                DATEADD(DAY, -ABS(CHECKSUM(NEWID())) % 60, GETDATE())
             )
        ELSE NULL
    END AS resolved_date;
