update Book
set Copies = Copies + 5
where BookID in (select BookID from (select BookID, count(*) as [total borrow] from DetailBorrow group by BookID
				having count(*) > 10) re)
