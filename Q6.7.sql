select b.StudentID, sc.StudentName, b.BorrowID, bo.Title, db.DateBorrow, db.DateExpired 
			from Borrow b inner join DetailBorrow db
			on b.BorrowID = db.BorrowID
			inner join Book bo
			on db.BookID = bo.BookID
			inner join StudentCard sc
			on b.StudentID = sc.StudentID
			order by db.DateBorrow asc