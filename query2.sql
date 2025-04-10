-- Active: 1744178763407@@127.0.0.1@5432@bookstore_db
select * from books where price =(select max(price) from books)