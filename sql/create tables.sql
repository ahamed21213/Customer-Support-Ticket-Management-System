CREATE TABLE Customers (
    customer_id INT IDENTITY(1,1) PRIMARY KEY,
    customer_name VARCHAR(100),
    email VARCHAR(100),
    phone VARCHAR(15),
    created_at DATETIME DEFAULT GETDATE()
);

CREATE TABLE Agents (
    agent_id INT IDENTITY(1,1) PRIMARY KEY,
    agent_name VARCHAR(100),
    role VARCHAR(50),
    shift VARCHAR(20)
);

CREATE TABLE Ticket_Status (
    status_id INT PRIMARY KEY,
    status_name VARCHAR(30)
);

CREATE TABLE Tickets (
    ticket_id INT IDENTITY(1,1) PRIMARY KEY,
    customer_id INT,
    agent_id INT,
    status_id INT,
    priority VARCHAR(20),
    issue_category VARCHAR(50),
    created_date DATETIME,
    resolved_date DATETIME,
    CONSTRAINT FK_Tickets_Customers FOREIGN KEY (customer_id)
        REFERENCES Customers(customer_id),
    CONSTRAINT FK_Tickets_Agents FOREIGN KEY (agent_id)
        REFERENCES Agents(agent_id),
    CONSTRAINT FK_Tickets_Status FOREIGN KEY (status_id)
        REFERENCES Ticket_Status(status_id)
);
