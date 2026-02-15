;WITH Numbers AS (
    SELECT TOP 200 ROW_NUMBER() OVER (ORDER BY (SELECT NULL)) AS n
    FROM sys.objects
)
INSERT INTO Customers (customer_name, email, phone)
SELECT
    CONCAT('Customer_', n),
    CONCAT('customer', n, '@mail.com'),
    CONCAT('9', RIGHT('000000000' + CAST(n AS VARCHAR), 9))
FROM Numbers;
