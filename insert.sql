-- Active: 1744178763407@@127.0.0.1@5432@bookstore_db
INSERT INTO books (id, title, author, price, stock, published_year) VALUES
(1, 'The Pragmatic Programmer', 'Andrew Hunt', 40.00, 10, 1999),
(2, 'Clean Code', 'Robert C. Martin', 35.00, 5, 2008),
(3, 'You Don''t Know JS', 'Kyle Simpson', 30.00, 8, 2014),
(4, 'Refactoring', 'Martin Fowler', 50.00, 3, 1999),
(5, 'Database Design Principles', 'Jane Smith', 20.00, 0, 2018);


INSERT into customers(id,name,email,joined_date) VALUES 
( 1,'Alice','alice@email.com'  , '2023-01-10' ),
( 2,'Bob','bob@email.com'      , '2022-05-15' ),
(3,'Charlie','charlie@email.com' , '2023-06-20')

INSERT into orders VALUES 
(  1, 1 , 2 , 1 , '2024-03-10 '),
( 2 , 2  , 1 , 1 ,'2024-02-2' ),
( 3, 1 , 3, 2,'2024-03-05 ')






select * from customers