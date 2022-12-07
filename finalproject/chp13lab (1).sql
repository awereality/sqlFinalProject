USE gmDatabase;
GO

/* -- View #1 --

CREATE VIEW SeminarProj
AS
SELECT SeminarID, SemName, Added, ContestWinner, Cost
FROM Seminars;
GO

SELECT * FROM SeminarProj

-- updating ContestWinner --
GO
UPDATE SeminarProj
SET ContestWinner = 'TRUE'
WHERE SeminarID = 2;
GO

SELECT * FROM SeminarProj;

-- View #2 --
GO
CREATE VIEW SecureUsers
AS
SELECT UserID, TFA, Username, Email, JoinDate FROM Users
WHERE TFA = 'TRUE';
GO

SELECT * FROM SecureUsers;

-- View #3 --

GO
CREATE VIEW TwentyDollaSem
AS
SELECT SeminarID, SemName, Added, ContestWinner, Cost 
FROM Seminars
WHERE Cost = 19.99;
GO

SELECT * FROM TwentyDollaSem;

View #4 

GO
CREATE VIEW BiggerOrders
AS
SELECT OrderID, OrderDate, Username, Orders.UserID, TotalCost
FROM Orders JOIN Users ON Orders.UserID = Users.UserID
WHERE TotalCost > 19.99;
GO

SELECT * FROM BiggerOrders;*/