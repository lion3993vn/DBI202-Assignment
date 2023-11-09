SELECT B.BorrowID, DB.BookID, B.StudentID 
		FROM Borrow B INNER JOIN DetailBorrow DB
		ON B.BorrowID = DB.BorrowID
		WHERE MONTH(DB.DateBorrow) = 1 AND YEAR(DB.DateBorrow) = 2023
