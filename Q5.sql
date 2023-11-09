INSERT INTO Category(CateID, CateName) VALUES
('LT', N'Sách văn học'),
('IT', N'Sách IT'),
('ENG', N'Sách tiếng anh'),
('DU', N'Sách du lịch'),
('KT', N'Sách kinh tế'),
('TD', N'Sách thiết kế đồ họa');

INSERT INTO Book(BookID, Title, Publishing, Author, Pages, Copies, Price, Warehouse_Date, Position, CateID) VALUES
('BOOK-1', N'Tắt đèn', N'NXB Hội Nhà Văn', N'Nam Cao', 100, 2, 100000, '2023-01-5', 'A1', 'LT'),
('BOOK-2', N'Truyện Kiều', N'NXB Kim Đồng', N'Nguyễn Du', 300, 3, 200000, '2023-01-10', 'A2', 'LT'),
('BOOK-3', 'Doraemon', N'NXB Kim Đồng', 'Fujiko F. Fujio', 200, 4, 150000, '2023-02-05', 'A3', 'LT'),
('BOOK-4', 'Sapiens: A Brief History of Humankind', 'Random House', 'Yuval Noah Harari', 500, 5, 300000, '2023-05-01', 'A4', 'IT'),
('BOOK-5', 'Code Complete', 'Pearson Education', 'Steve McConnell', 1000, 2, 500000, '2023-04-06', 'A5', 'IT'),
('BOOK-6', 'English Grammar in Use', 'Cambridge University Press', 'Raymond Murphy', 400, 3, 300000, '2023-01-02', 'A6', 'ENG'),
('BOOK-7', 'Harry Potter', 'Scholastic Press', 'J.K. Rowling', 300, 2, 200000, '2023-01-11', 'A7', 'ENG'),
('BOOK-8', 'Lonely Planet Vietnam', 'Lonely Planet', 'Lonely Planet', 200, 4, 150000, '2023-08-11', 'A8', 'DU'),
('BOOK-9', 'Rich Dad Poor Dad', 'Random House', 'Robert Kiyosaki', 200, 3, 200000, '2023-10-11', 'A9', 'KT'),
('BOOK-10', 'The Design of Everyday Things', 'Basic Books', 'Donald Norman', 400, 2, 300000, '2023-10-18', 'A10', 'TD'),
('BOOK-11', 'SQL Guide', 'Apress', 'Ben Forta', 500, 2, 100000, '2023-08-04', 'A1', 'IT'),
('BOOK-12', 'Python Programming', 'Reilly Media', 'Mark Lutz', 600, 3, 200000, '2023-09-05', 'A2', 'IT');

INSERT INTO StudentCard(StudentID, StudentName, Expired, Major) VALUES
('SE17001', N'Nguyễn Văn A', '2027-07-20', N'IT'),
('SE17002', N'Trần Thị B', '2027-08-21', N'Thiết kế đồ họa'),
('SE17003', N'Lê Quang C', '2027-09-22', N'Du lịch'),
('SE17004', N'Đặng Thị D', '2027-10-23', N'Kinh tế'),
('SE17005', N'Hoàng Văn E', '2027-11-24', N'Ngôn ngữ Anh'),
('SE17006', N'Nguyễn Thị F', '2027-07-25', N'IT'),
('SE17007', N'Phan Thị G', '2027-08-26', N'Thiết kế đồ họa'),
('SE17008', N'Đỗ Thị H', '2027-09-27', N'Ngôn ngữ Anh');

INSERT INTO Student(StudentID, Email, Phone) VALUES
('SE17001', 'nguyenvana@gmail.com', '091xxx'),
('SE17002', 'tranthib@gmail.com', '092xxx'),
('SE17003', 'lequangc@gmail.com', '093xxx'),
('SE17004', 'dangthid@gmail.com', '094xxx'),
('SE17005', 'hoangvaned@gmail.com', '095xxx'),
('SE17006', 'nguyenthif@gmail.com', '096xxx'),
('SE17007', 'phanthig@gmail.com', '097xxx'),
('SE17008', 'dothih@gmail.com', '098xxx');

INSERT INTO Borrow(BorrowID, StudentID, TotalBorrow, StatusBorrow) VALUES
(1001, 'SE17001', 2, N'Chưa trả sách'),
(1002, 'SE17002', 3, N'Đã trả sách'),
(1003, 'SE17003', 1, N'Chưa trả sách'),
(1004, 'SE17004', 2, N'Chưa trả sách'),
(1005, 'SE17005', 1, N'Đã trả sách'),
(1006, 'SE17006', 3, N'Chưa trả sách'),
(1007, 'SE17007', 2, N'Chưa trả sách'),
(1008, 'SE17008', 1, N'Đã trả sách'),
(1009, 'SE17001', 1, N'Chưa trả sách'),
(1010, 'SE17002', 1, N'Đã trả sách');

INSERT INTO DetailBorrow(BorrowID, BookID, DateBorrow, DateExpired, NOBook) VALUES
(1001, 'BOOK-1', '2023-01-05', '2023-02-01', 2),
(1001, 'BOOK-2', '2023-01-05', '2023-02-01', 1),
(1002, 'BOOK-3', '2023-01-08', '2023-03-01', 3),
(1002, 'BOOK-4', '2023-01-08', '2023-03-01', 1),
(1002, 'BOOK-5', '2023-01-08', '2023-03-01', 1),
(1003, 'BOOK-6', '2023-03-02', '2023-04-01', 1),
(1004, 'BOOK-7', '2023-04-05', '2023-05-01', 2),
(1005, 'BOOK-8', '2023-05-04', '2023-06-01', 1),
(1006, 'BOOK-9', '2023-06-03', '2023-07-01', 3),
(1006, 'BOOK-10', '2023-06-03', '2023-07-01', 2),
(1007, 'BOOK-1', '2023-07-06', '2023-08-01', 1),
(1007, 'BOOK-2', '2023-07-06', '2023-08-01', 2),
(1008, 'BOOK-3', '2023-08-09', '2023-09-01', 1),
(1009, 'BOOK-4', '2023-09-15', '2023-10-01', 1),
(1010, 'BOOK-5', '2023-10-20', '2023-11-01', 1);