INSERT INTO Tickets
(customer_id, agent_id, status_id, priority, issue_category, created_date, resolved_date)
VALUES
(11,11,3,'High','Login Issue',DATEADD(HOUR,-12,GETDATE()),DATEADD(HOUR,-4,GETDATE())),
(12,12,3,'Medium','Payment Issue',DATEADD(HOUR,-20,GETDATE()),DATEADD(HOUR,-6,GETDATE())),
(13,13,3,'Low','Account Update',DATEADD(HOUR,-15,GETDATE()),DATEADD(HOUR,-3,GETDATE())),
(14,14,3,'High','System Error',DATEADD(HOUR,-18,GETDATE()),DATEADD(HOUR,-5,GETDATE())),
(15,15,3,'Medium','Password Reset',DATEADD(HOUR,-10,GETDATE()),DATEADD(HOUR,-2,GETDATE())),

(16,16,3,'Low','Profile Update',DATEADD(HOUR,-14,GETDATE()),DATEADD(HOUR,-4,GETDATE())),
(17,17,3,'High','Login Issue',DATEADD(HOUR,-22,GETDATE()),DATEADD(HOUR,-8,GETDATE())),
(18,18,3,'Medium','Payment Issue',DATEADD(HOUR,-16,GETDATE()),DATEADD(HOUR,-6,GETDATE())),
(19,19,3,'Low','Account Update',DATEADD(HOUR,-12,GETDATE()),DATEADD(HOUR,-3,GETDATE())),
(20,20,3,'High','System Error',DATEADD(HOUR,-24,GETDATE()),DATEADD(HOUR,-10,GETDATE()));
