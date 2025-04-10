-- Active: 1744178763407@@127.0.0.1@5432@bookstore_db

-- List all customers who have placed more than one order.

SELECT name ,count(*) as orders_count from orders join customers on customers.id=orders.customer_id GROUP BY customers.id having count(*)>1