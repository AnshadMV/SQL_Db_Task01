CREATE TABLE dbo.Books
(
    BookID INT IDENTITY(1,1) PRIMARY KEY,      
    Title NVARCHAR(250) NOT NULL,
    Author NVARCHAR(200) NOT NULL,
    PublicationYear INT CHECK (PublicationYear BETWEEN 1000 AND 2100),
    ISBN NVARCHAR(20) NULL,
    Genre NVARCHAR(100) NULL,
    CreatedAt DATETIME2 DEFAULT SYSUTCDATETIME()
);
INSERT INTO dbo.Books (Title, Author, PublicationYear, ISBN, Genre)
VALUES
('To Kill a Mockingbird', 'Harper Lee', 1960, '9780061120084', 'Fiction'),
('1984', 'George Orwell', 1949, '9780451524935', 'Dystopian'),
('Pride and Prejudice', 'Jane Austen', 1813, '9780141439518', 'Classic'),
('The Great Gatsby', 'F. Scott Fitzgerald', 1925, '9780743273565', 'Classic'),
('The Hobbit', 'J.R.R. Tolkien', 1937, '9780547928227', 'Fantasy'),
('Animal Farm', 'George Orwell', 1945, '9780451526342', 'Satire'),
('A Brief History of Time', 'Stephen Hawking', 1988, '9780553380163', 'Science'),
('The Fault in Our Stars', 'John Green', 2012, '9780142424179', 'Young Adult');

SELECT COUNT(*) AS TotalBooks FROM dbo.Books;
SELECT BookID, Title, Author, PublicationYear, ISBN, Genre
FROM dbo.Books
WHERE PublicationYear = 1949;

SELECT * FROM dbo.Books
WHERE Author = 'George Orwell';


SELECT * FROM dbo.Books
WHERE Author LIKE '%Orwell%';

SELECT DISTINCT Author
FROM dbo.Books
ORDER BY Author;

SELECT * FROM dbo.Books
WHERE Author = 'George Orwell';


SELECT * FROM dbo.Books
WHERE Title LIKE '%Animal%';


SELECT DISTINCT Author
FROM dbo.Books
ORDER BY Author;


SELECT * FROM dbo.Books
WHERE PublicationYear BETWEEN 1900 AND 1999
ORDER BY PublicationYear;


SELECT TOP(5) * FROM dbo.Books
ORDER BY PublicationYear DESC, Title;



SELECT TOP(5) * FROM dbo.Books
ORDER BY PublicationYear DESC, Title;



SELECT Title, COUNT(*) AS Cnt
FROM dbo.Books
GROUP BY Title
HAVING COUNT(*) > 1;


UPDATE dbo.Books
SET ISBN = '9780141439518'
WHERE BookID = 3;

DELETE FROM dbo.Books
WHERE BookID = 8;   