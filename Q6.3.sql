select * from Borrow b inner join DetailBorrow db on b.BorrowID = db.BorrowID
			where b.StatusBorrow = N'Chưa trả sách'
			order by db.DateBorrow asc