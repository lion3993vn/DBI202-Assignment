delete
from DetailBorrow
where DateBorrow < '2023-1-1' 
				and DateExpired < '2023-1-1'

delete from Borrow
WHERE NOT EXISTS (
	select 1
	from DetailBorrow db
	where Borrow.BorrowID = db.BorrowID
)
