/* Final Project Lab | Gavino Martinelli 

USE gmDatabase;
SELECT sum(Cost) AS [Sum of Seminars $], count(SeminarID) AS [Total Seminars Available]
FROM Seminars;

USE gmDatabase;
SELECT count(Users.UserID) AS [Total Registered / Users], min(Orders.TotalCost) AS [Minimum Total],
avg(Orders.TotalCost) as [Average Total], max(Orders.TotalCost) AS [Max Total]
FROM Users 
JOIN Orders ON Users.UserID=Orders.UserID;

USE gmDatabase;
SELECT min(Cost) AS [Min Cost], avg(Cost) AS [Avg Cost], max(Cost) AS [Max Cost]
FROM Seminars

USE gmDatabase;
SELECT Username, Email, JoinDate, sum(Orders.TotalCost) AS [Cost]
FROM Users
JOIN Orders ON Users.UserID=Orders.UserID
GROUP BY Username, Email, JoinDate, Orders.TotalCost
ORDER BY Username, Email, JoinDate, Orders.TotalCost;*/