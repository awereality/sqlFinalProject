/* Final Project Procedures | Gavino Martinelli - 12/4/22 |

USE gmDatabase;
GO
CREATE PROC spSeminars
AS
SELECT * FROM Seminars
WHERE ContestWinner = 'TRUE'
ORDER BY Cost;

EXEC spSeminars;

--

USE gmDatabase;
GO
CREATE PROC spContestWinner
	@ContestStatus nvarchar(6) = '%'
AS
BEGIN
	SELECT * FROM Seminars
	WHERE ContestWinner LIKE @ContestStatus;
END

EXEC spContestWinner 'False%';

--

USE gmDatabase;
GO
CREATE PROC spMethodNames
		@PayMethodID int,
		@PayMethodName varchar(25) OUTPUT
AS
SELECT @PayMethodName = Method
FROM PayMethods
WHERE PayID = @PayMethodID;
GO

DECLARE @PayMethodName varchar(25);
EXEC spMethodNames 1, @PayMethodName OUTPUT;
SELECT @PayMethodName AS 'PayPal';

--

USE gmDatabase;
GO
CREATE PROC spRevenue
AS
DECLARE @OrderSum money;
SELECT @OrderSum = SUM(TotalCost)
FROM Orders
RETURN @OrderSum;
GO

DECLARE @OrderSum money;
EXEC @OrderSum = spRevenue;
PRINT 'Total revenue is : ' + CONVERT(varchar, @OrderSum);
GO

-- User Defined Functions 

USE gmDatabase;
GO
CREATE FUNCTION fnUserLookUp
	(@Username varchar(50) = '%')
	RETURNS int
BEGIN
	RETURN(SELECT UserID FROM Users WHERE Username LIKE @Username);
END;

SELECT UserID, TFA, Email, JoinDate FROM Users
WHERE UserID = dbo.fnUserLookUp('dogecoin23');

--

USE gmDatabase;
GO
CREATE FUNCTION fnLookUp
	(@SeminarID int)
	RETURNS table
RETURN
	(SELECT * FROM Seminars WHERE @SeminarID = Seminars.SeminarID);

SELECT * FROM dbo.fnLookUp(2); 

-- Final Project Triggers 

USE gmDatabase;
GO
SELECT * INTO OrderArchive
FROM Orders
WHERE 1=0;

ALTER TABLE OrderArchive
ADD Activity varchar(50);
GO

CREATE TRIGGER Orders_INSERT ON Orders
	AFTER INSERT
AS
BEGIN
	SET NOCOUNT ON;
	DECLARE @OrderID int
		DECLARE @OrderDate date
		DECLARE @UserID int
		DECLARE @TotalCost money
	
	SELECT @OrderID = INSERTED.OrderID, @OrderDate = INSERTED.OrderDate, @UserID = INSERTED.UserID, @TotalCost = INSERTED.TotalCost FROM INSERTED

	INSERT INTO OrderArchive VALUES(@OrderID, @OrderDate, @UserID, @TotalCost, 'Inserted')
END
GO

INSERT INTO Orders VALUES(6, '2022-12-4', 3, 29.98);
GO

SELECT * FROM OrderArchive;

--

CREATE TRIGGER Orders_DELETE ON Orders
	AFTER DELETE
AS
BEGIN
	SET NOCOUNT ON;
	DECLARE @OrderId int
		DECLARE @OrderDate date
		DECLARE @UserID int
		DECLARE @TotalCost money
	
	SELECT @OrderID = DELETED.OrderID, @OrderDate = DELETED.OrderDate, @UserID = DELETED.UserID, @TotalCost = DELETED.TotalCost FROM DELETED

	INSERT INTO OrderArchive VALUES(@OrderID, @OrderDate, @UserID, @TotalCost, 'Deleted')
END
GO

DELETE FROM Orders WHERE OrderID = 6;
GO

SELECT * FROM OrderArchive;

--

CREATE TRIGGER Orders_UPDATE ON Orders
	AFTER UPDATE
AS
BEGIN
	SET NOCOUNT ON;
	DECLARE @OrderId int
		DECLARE @OrderDate date
		DECLARE @UserID int
		DECLARE @TotalCost money
	
	SELECT @OrderID = INSERTED.OrderID, @OrderDate = INSERTED.OrderDate, @UserID = INSERTED.UserID, @TotalCost = INSERTED.TotalCost FROM INSERTED

	INSERT INTO OrderArchive VALUES(@OrderID, @OrderDate, @UserID, @TotalCost, 'Updated')
END
GO

INSERT INTO Orders VALUES(6, '2022-11-23', 5, 100.00);
GO

UPDATE Orders
SET TotalCost = 98.89
WHERE OrderDate = '2022-11-23';
GO

SELECT * FROM OrderArchive;*/

