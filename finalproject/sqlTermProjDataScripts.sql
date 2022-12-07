USE [gmDatabase]
GO
INSERT [dbo].[Seminars] ([SeminarID], [SemName], [Added], [ContestWinner], [Cost]) VALUES (1, N'Industrias Bachoco', CAST(N'2002-10-27' AS Date), N'TRUE', 19.9900)
GO
INSERT [dbo].[Seminars] ([SeminarID], [SemName], [Added], [ContestWinner], [Cost]) VALUES (2, N'Pillowtex', CAST(N'2002-09-20' AS Date), N'FALSE', 9.9900)
GO
INSERT [dbo].[Seminars] ([SeminarID], [SemName], [Added], [ContestWinner], [Cost]) VALUES (3, N'Wellsford Real Properties', CAST(N'2001-06-01' AS Date), N'TRUE', 19.9900)
GO
INSERT [dbo].[Seminars] ([SeminarID], [SemName], [Added], [ContestWinner], [Cost]) VALUES (4, N'Quipp, Inc', CAST(N'2001-04-20' AS Date), N'TRUE', 19.9900)
GO
INSERT [dbo].[Seminars] ([SeminarID], [SemName], [Added], [ContestWinner], [Cost]) VALUES (5, N'ValueClick, Inc', CAST(N'2000-11-05' AS Date), N'FALSE', 19.9900)
GO
INSERT [dbo].[Users] ([UserID], [TFA], [Username], [Email], [JoinDate]) VALUES (1, N'TRUE', N'rparsian86', N'reina.parisian76@hotmail.com', CAST(N'2022-10-21' AS Date))
GO
INSERT [dbo].[Users] ([UserID], [TFA], [Username], [Email], [JoinDate]) VALUES (2, N'TRUE', N'Nash', N'nash50@yahoo.com', CAST(N'2022-10-20' AS Date))
GO
INSERT [dbo].[Users] ([UserID], [TFA], [Username], [Email], [JoinDate]) VALUES (3, N'FALSE', N'dogecoin23', N'noah_farrell40@hotmail.com', CAST(N'2022-10-13' AS Date))
GO
INSERT [dbo].[Users] ([UserID], [TFA], [Username], [Email], [JoinDate]) VALUES (4, N'FALSE', N'IronCowIO', N'alvena87@gmail.com', CAST(N'2022-10-21' AS Date))
GO
INSERT [dbo].[Users] ([UserID], [TFA], [Username], [Email], [JoinDate]) VALUES (5, N'TRUE', N'Administrator', N'yolanda66@hotmail.com', CAST(N'2022-10-05' AS Date))
GO
INSERT [dbo].[Orders] ([OrderID], [OrderDate], [UserID], [TotalCost]) VALUES (1, CAST(N'2022-12-20' AS Date), 2, 49.9700)
GO
INSERT [dbo].[Orders] ([OrderID], [OrderDate], [UserID], [TotalCost]) VALUES (2, CAST(N'2022-12-21' AS Date), 1, 19.9900)
GO
INSERT [dbo].[Orders] ([OrderID], [OrderDate], [UserID], [TotalCost]) VALUES (3, CAST(N'2022-12-21' AS Date), 3, 19.9900)
GO
INSERT [dbo].[Orders] ([OrderID], [OrderDate], [UserID], [TotalCost]) VALUES (4, CAST(N'2022-12-22' AS Date), 4, 29.9800)
GO
INSERT [dbo].[Orders] ([OrderID], [OrderDate], [UserID], [TotalCost]) VALUES (5, CAST(N'2022-12-23' AS Date), 5, 49.9700)
GO
INSERT [dbo].[OrderDetail] ([DetailID], [OrderID], [SeminarID]) VALUES (1, 1, 1)
GO
INSERT [dbo].[OrderDetail] ([DetailID], [OrderID], [SeminarID]) VALUES (2, 1, 2)
GO
INSERT [dbo].[OrderDetail] ([DetailID], [OrderID], [SeminarID]) VALUES (3, 1, 4)
GO
INSERT [dbo].[OrderDetail] ([DetailID], [OrderID], [SeminarID]) VALUES (4, 2, 3)
GO
INSERT [dbo].[OrderDetail] ([DetailID], [OrderID], [SeminarID]) VALUES (5, 3, 3)
GO
INSERT [dbo].[OrderDetail] ([DetailID], [OrderID], [SeminarID]) VALUES (6, 4, 4)
GO
INSERT [dbo].[OrderDetail] ([DetailID], [OrderID], [SeminarID]) VALUES (7, 4, 5)
GO
INSERT [dbo].[OrderDetail] ([DetailID], [OrderID], [SeminarID]) VALUES (8, 5, 1)
GO
INSERT [dbo].[OrderDetail] ([DetailID], [OrderID], [SeminarID]) VALUES (9, 5, 2)
GO
INSERT [dbo].[OrderDetail] ([DetailID], [OrderID], [SeminarID]) VALUES (10, 5, 4)
GO
INSERT [dbo].[Reserved] ([SeminarID], [UserID], [Reserved]) VALUES (1, 2, N'TRUE')
GO
INSERT [dbo].[Reserved] ([SeminarID], [UserID], [Reserved]) VALUES (2, 1, N'FALSE')
GO
INSERT [dbo].[Reserved] ([SeminarID], [UserID], [Reserved]) VALUES (3, 3, N'FALSE')
GO
INSERT [dbo].[Reserved] ([SeminarID], [UserID], [Reserved]) VALUES (4, 4, N'FALSE')
GO
INSERT [dbo].[Reserved] ([SeminarID], [UserID], [Reserved]) VALUES (5, 5, N'TRUE')
GO
INSERT [dbo].[PayMethods] ([PayID], [Method]) VALUES (1, N'PayPal')
GO
INSERT [dbo].[PayMethods] ([PayID], [Method]) VALUES (2, N'Apple Pay')
GO
INSERT [dbo].[PayMethods] ([PayID], [Method]) VALUES (3, N'Google Pay')
GO
INSERT [dbo].[PayMethods] ([PayID], [Method]) VALUES (4, N'Cash App')
GO
INSERT [dbo].[PayMethods] ([PayID], [Method]) VALUES (5, N'Bitcoin')
GO
INSERT [dbo].[Payment] ([PaymentID], [OrderID], [PayID], [PayStatus]) VALUES (1, 2, 1, N'Complete')
GO
INSERT [dbo].[Payment] ([PaymentID], [OrderID], [PayID], [PayStatus]) VALUES (2, 1, 5, N'In-Complete')
GO
INSERT [dbo].[Payment] ([PaymentID], [OrderID], [PayID], [PayStatus]) VALUES (3, 3, 2, N'Complete')
GO
INSERT [dbo].[Payment] ([PaymentID], [OrderID], [PayID], [PayStatus]) VALUES (4, 4, 3, N'Complete')
GO
INSERT [dbo].[Payment] ([PaymentID], [OrderID], [PayID], [PayStatus]) VALUES (5, 5, 4, N'Complete')
GO
