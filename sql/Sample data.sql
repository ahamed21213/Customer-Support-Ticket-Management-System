INSERT INTO Ticket_Status VALUES
(1,'Open'),
(2,'In Progress'),
(3,'Closed');
INSERT INTO Agents (agent_name, role, shift) VALUES
('Ravi Kumar','L1 Support','Day'),
('Anita Sharma','L2 Support','Night'),
('Vikas Singh','L1 Support','Day');
INSERT INTO Customers (customer_name, email, phone) VALUES
('Arjun Mehta','arjun@gmail.com','9876543210'),
('Sneha Rao','sneha@gmail.com','9123456789'),
('Rahul Verma','rahul@gmail.com','9988776655');
INSERT INTO Tickets
(customer_id, agent_id, status_id, priority, issue_category, created_date, resolved_date)
VALUES
(1,1,3,'High','Login Issue','2024-01-01 10:00','2024-01-01 14:00'),
(2,2,2,'Medium','Payment Issue','2024-01-02 11:00',NULL),
(3,1,1,'Low','Account Update','2024-01-03 09:30',NULL),
(1,3,3,'High','System Error','2024-01-04 15:00','2024-01-04 22:00');
