USE LibraryDB;

INSERT INTO Books (ID, Title, Author, Price, IsAvailable)
VALUES
(1, 'HTML', 'Andro Ahmad', 55.44, 1),
(2, 'CSS', 'James Andro', 50.95, 0),
(3, 'Java Script', 'William Ali', 34.98, 0);

SELECT * FROM Books
WHERE Price > 50;

UPDATE Books
SET Price = 333.30
WHERE ID = 3;

DELETE FROM Books
WHERE ID = 2;

SELECT * FROM Books;
