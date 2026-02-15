DECLARE @startCustomer INT;
SELECT @startCustomer = ISNULL(MAX(customer_id), 0) FROM Customers;

DECLARE @i INT = 1;

WHILE @i <= 500
BEGIN
    INSERT INTO Customers (customer_name, email, phone, created_at)
    VALUES (
        CONCAT('Customer_', @startCustomer + @i),
        CONCAT('customer', @startCustomer + @i, '@mail.com'),
        CONCAT('91', FORMAT(@startCustomer + @i, '0000000000')),
        DATEADD(DAY, -(@i % 365), GETDATE())
    );

    SET @i = @i + 1;
END
