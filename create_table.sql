-- Active: 1744178763407@@127.0.0.1@5432@bookstore_db
create table books (
    id SERIAL PRIMARY KEY,
    title VARCHAR(100),
    author VARCHAR(100),
    price INTEGER Check(price>0),
    stock Integer  check (stock>=0) NOT NULL,
    published_year Integer 
)



create table customers (
    id SERIAL PRIMARY KEY,
    name VARCHAR(20),
   email VARCHAR(30) UNIQUE,
    joined_date Date DEFAULT current_date
)

create table orders (
    id SERIAL PRIMARY KEY,
    customer_id INTEGER,
    book_id INTEGER,
   quantity INTEGER Check(quantity>0),
    order_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
   Foreign Key (customer_id) REFERENCES customers(id),
   Foreign Key (book_id) REFERENCES books(id)
)


