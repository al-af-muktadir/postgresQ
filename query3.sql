

-- Find the total number of orders placed by each customer.

select c.name ,count(*) as total_orders from customers c join orders on c.id=orders.customer_id GROUP BY c.id ORDER BY count(*) desc

