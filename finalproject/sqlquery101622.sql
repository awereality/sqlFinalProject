/* USE gmDatabase;
GO
INSERT INTO PayMethods VALUES (1,'PayPal')
INSERT INTO PayMethods VALUES (2,'Apple Pay')
INSERT INTO PayMethods VALUES (3,'Google Pay')
INSERT INTO PayMethods VALUES (4,'Cash App')
INSERT INTO PayMethods VALUES (5,'Bitcoin') 

INSERT INTO Seminars VALUES (1, 'Industrias Bachoco','2002-10-27','TRUE', $19.99)
INSERT INTO Seminars VALUES (2, 'Pillowtex','2002-09-20','FALSE', $9.99)
INSERT INTO Seminars VALUES (3, 'Wellsford Real Properties','2001-06-01','TRUE', $19.99)
INSERT INTO Seminars VALUES (4, 'Quipp, Inc','2001-04-20','TRUE', $19.99)
INSERT INTO Seminars VALUES (5, 'ValueClick, Inc','2000-11-5','FALSE', $19.99) 

INSERT INTO Users VALUES (1, 'TRUE', 'rparsian86','reina.parisian76@hotmail.com','2022-10-21')
INSERT INTO Users VALUES (2, 'TRUE', 'Nash','nash50@yahoo.com','2022-10-20')
INSERT INTO Users VALUES (3, 'FALSE', 'dogecoin23','noah_farrell40@hotmail.com','2022-10-13')
INSERT INTO Users VALUES (4, 'FALSE', 'IronCowIO','alvena87@gmail.com','2022-10-21')
INSERT INTO Users VALUES (5, 'TRUE', 'Administrator','yolanda66@hotmail.com','2022-10-05') 

INSERT INTO Reserved VALUES (1, 2, 'TRUE')
INSERT INTO Reserved VALUES (2, 1, 'FALSE')
INSERT INTO Reserved VALUES (3, 3, 'FALSE')
INSERT INTO Reserved VALUES (4, 4, 'FALSE')
INSERT INTO Reserved VALUES (5, 5, 'TRUE') 

INSERT INTO Orders VALUES (1, '2022-12-20',2,$49.97)
INSERT INTO Orders VALUES (2, '2022-12-21',1,$19.99)
INSERT INTO Orders VALUES (3, '2022-12-21',3,$19.99)
INSERT INTO Orders VALUES (4, '2022-12-22',4,$29.98)
INSERT INTO Orders VALUES (5, '2022-12-23',5,$49.97) 

INSERT INTO Payment VALUES (1, 2, 1, 'Complete')
INSERT INTO Payment VALUES (2, 1, 5, 'In-Complete')
INSERT INTO Payment VALUES (3, 3, 2, 'Complete')
INSERT INTO Payment VALUES (4, 4, 3, 'Complete')
INSERT INTO Payment VALUES (5, 5, 4, 'Complete') 

INSERT INTO OrderDetail VALUES (1, 1, 1)
INSERT INTO OrderDetail VALUES (2, 1, 2)
INSERT INTO OrderDetail VALUES (3, 1, 4)
INSERT INTO OrderDetail VALUES (4, 2, 3)
INSERT INTO OrderDetail VALUES (5, 3, 3)
INSERT INTO OrderDetail VALUES (6, 4, 4)
INSERT INTO OrderDetail VALUES (7, 4, 5)
INSERT INTO OrderDetail VALUES (8, 5, 1)
INSERT INTO OrderDetail VALUES (9, 5, 2)
INSERT INTO OrderDetail VALUES (10, 5, 4) */