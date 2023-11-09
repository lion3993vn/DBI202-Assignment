select BookID, count(*) as [Total] from DetailBorrow
			group by BookID
			having count(*) > 20