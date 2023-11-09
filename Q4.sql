create table Category(
	CateID NVARCHAR(50) not null PRIMARY KEY,
	CateName NVARCHAR(50)
)


create table Book(
	BookID NVARCHAR(50) not null PRIMARY KEY,
	Title NVARCHAR(50),
	Publishing NVARCHAR(50),
	Author NVARCHAR(50),
	Pages INT CHECK (Pages > 5),
	Copies INT CHECK (Copies > 1),
	Price DECIMAL(10, 2) CHECK (Price > 0),
	Warehouse_Date Date,
	Position NVARCHAR(50),
	CateID NVARCHAR(50) not null,
	FOREIGN KEY (CateID) REFERENCES Category(CateID)
)

create table StudentCard(
	StudentID NVARCHAR(50) not null PRIMARY KEY,
	StudentName NVARCHAR(50),
	Expired Date,
	Major NVARCHAR(50),
)

create table Student(
	StudentID NVARCHAR(50) not null PRIMARY KEY,
	Email NVARCHAR(50),
	Phone NVARCHAR(50),
	FOREIGN KEY (StudentID) REFERENCES StudentCard(StudentID)
)

create table Borrow(
	BorrowID INT not null PRIMARY KEY,
	StudentID NVARCHAR(50) not null,
	TotalBorrow INT,
	StatusBorrow NVARCHAR(255),
	FOREIGN KEY (StudentID) REFERENCES Student(StudentID)
)

create table DetailBorrow(
	BorrowID INT not null,
	BookID NVARCHAR(50) not null,
	DateBorrow date,
	DateExpired date,
	NOBook INT,
	PRIMARY KEY (BorrowID, BookID),
	FOREIGN KEY (BorrowID) REFERENCES Borrow(BorrowID),
	FOREIGN KEY (BookID) REFERENCES Book(BookID)
)