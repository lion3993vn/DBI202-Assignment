create trigger Book_ChangeBorrow on Borrow
after insert, update as
begin
	Declare @total int, @totalBorrow int;
	select @total = sum(Copies) from Book;
	select @totalBorrow = sum(TotalBorrow) from Borrow where StatusBorrow = N'Chưa trả sách';
	set @total = @total - @totalBorrow;
	select @total as [Remaining Books], @totalBorrow as [Books Borrowed]
end