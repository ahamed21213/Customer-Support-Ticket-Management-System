INSERT INTO Tickets
(customer_id, agent_id, status_id, priority, issue_category, created_date)
VALUES
(1,1,1,'High','Login Issue',DATEADD(HOUR,-5,GETDATE())),
(2,2,2,'Medium','Payment Issue',DATEADD(HOUR,-10,GETDATE())),
(3,3,1,'Low','Account Update',DATEADD(HOUR,-2,GETDATE())),
(4,4,2,'High','System Error',DATEADD(HOUR,-8,GETDATE())),
(5,5,1,'Medium','Password Reset',DATEADD(HOUR,-1,GETDATE())),

(6,6,1,'Low','Profile Update',DATEADD(HOUR,-6,GETDATE())),
(7,7,2,'High','Login Issue',DATEADD(HOUR,-12,GETDATE())),
(8,8,1,'Medium','Payment Issue',DATEADD(HOUR,-3,GETDATE())),
(9,9,2,'Low','Account Update',DATEADD(HOUR,-9,GETDATE())),
(10,10,1,'High','System Error',DATEADD(HOUR,-7,GETDATE()));
