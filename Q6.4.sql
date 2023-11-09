select c.CateID ,c.CateName, count(*) as [Number of Book] 
		from Category c inner join Book b 
		on c.CateID = b.CateID 
		group by c.CateID ,c.CateName