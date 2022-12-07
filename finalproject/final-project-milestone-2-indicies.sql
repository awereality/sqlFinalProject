USE gmDatabase;
GO
CREATE INDEX idx_RUser ON Reserved(UserID);
GO
CREATE INDEX idx_OUser ON Orders(UserID);
GO
CREATE INDEX idx_Orders ON OrderDetail(OrderID);
GO
CREATE INDEX idx_Seminar ON OrderDetail(SeminarID);
GO
CREATE INDEX idx_POrders ON Payment(OrderID);
GO
CREATE INDEX idx_Payments ON Payment(PayID);