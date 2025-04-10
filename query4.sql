-- Active: 1744178763407@@127.0.0.1@5432@bookstore_db

-- Calculate the total revenue generated from book sales
select sum(price*quantity)as total_revenue from orders join books on books.id=orders.book_id