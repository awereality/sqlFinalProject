CREATE DATABASE gmDatabase;
GO
USE gmDatabase;
CREATE TABLE Seminars(
	SeminarID int NOT NULL,
	SemName varchar(100) NOT NULL,
	Added date NOT NULL,
	ContestWinner varchar(5),
	Cost money NOT NULL,
);
GO
CREATE TABLE Users(
	UserID int NOT NULL,
	TFA varchar(5),
	Username varchar(50) NOT NULL,
	Email varchar(100) NOT NULL,
	JoinDate date NOT NULL,
);
GO
CREATE TABLE PayMethods(
	PayID int NOT NULL,
	Method varchar(25) NOT NULL,
);
GO
CREATE TABLE Reserved(
	SeminarID int NOT NULL,
	UserID int NOT NULL,
	Reserved varchar(5) NOT NULL,
);
GO
CREATE TABLE Orders(
	OrderID int NOT NULL,
	OrderDate date NOT NULL,
	UserID int NOT NULL,
	TotalCost money NOT NULL,
);
GO
CREATE TABLE OrderDetail(
	DetailID int NOT NULL,
	Orders int NOT NULL,
	SeminarID int NOT NULL,
);
GO
CREATE TABLE Payment(
	PaymentID int NOT NULL,
	OrderID int NOT NULL,
	PayID int NOT NULL,
	PayStatus varchar(25) NOT NULL,
);
GO