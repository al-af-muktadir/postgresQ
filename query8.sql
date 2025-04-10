-- Active: 1744178763407@@127.0.0.1@5432@bookstore_db
delete from customers where id not in (select customer_id from orders)
