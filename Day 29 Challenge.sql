USE CityHospital;
CREATE TABLE Books (
    BookID    INT AUTO_INCREMENT PRIMARY KEY,
    BookName  VARCHAR(100) NOT NULL,
    Author    VARCHAR(100) NOT NULL,
    Price     DECIMAL(8, 2) NOT NULL
);

INSERT INTO Books (BookName, Author, Price, ISBN)
VALUES ('SQL Basics',    'Arun Kumar', 299.99, '9781234567890'),
       ('Python Guide',  'Priya S',   399.99, '9789876543210'),
       ('Java Complete', 'Ram R',     499.99, '9785678901234');

ALTER TABLE Books
ADD ISBN VARCHAR(13) UNIQUE;

Select * From Books;
       
CREATE TABLE Orders (
    OrderID   INT AUTO_INCREMENT PRIMARY KEY,
    OrderDate DATE DEFAULT (CURRENT_DATE),
    Quantity  INT NOT NULL,
    BookID    INT,
    FOREIGN KEY (BookID) REFERENCES Books(BookID)
);

INSERT INTO Orders (Quantity, BookID)
VALUES (2, 1),
       (1, 2),
       (3, 1);
       
Select * From Orders;

-- Question 3
DELETE FROM Orders
WHERE OrderID IN (3, 4);

TRUNCATE TABLE Orders;