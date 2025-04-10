-- Active: 1744178763407@@127.0.0.1@5432@bookstore_db

--Increase the price of all books published before 2000 by 10%.
update books set price=(price+price*0.1) where published_year<2000


