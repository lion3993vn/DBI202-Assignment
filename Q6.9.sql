UPDATE Book
SET Price = Price * 0.7
WHERE Year(Warehouse_Date) < 2014;