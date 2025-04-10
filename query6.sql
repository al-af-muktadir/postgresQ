-- Active: 1744178763407@@127.0.0.1@5432@bookstore_db

--Find the average price of books in the store.

select round(avg(price),2) as avg_book_price from books