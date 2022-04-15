--1 create table
CREATE TABLE orders (
   order_id SERIAL PRIMARY KEY,
    person_id INTEGER,
    product_name VARCHAR(500),
    Product_price NUMERIC,
    quantity INTEGER
);

--2 make five orders with different people and order numbers.
INSERT INTO orders (person_id, product_name, product_price, quantity)
VALUES
(1, 'hot_dog', 2.00, 2),
(1, 'cheese_burger', 4.00, 2),
(2, 'cheese_burger', 4.00, 1),
(2, 'burger', 3.00, 1),
(3, 'hot_dog', 2.00, 6),
(4, 'burger', 3.00, 3);

--3 select all orders from the table
SELECT * FROM orders;

--4 Calculate the total number of products ordered.
SELECT SUM(quantity) FROM orders;

--5 Calculate the total order price.
SELECT SUM(product_price * quantity) FROM orders;

--6 Calculate the total order price by a single person_id.
SELECT SUM(product_price * quantity) FROM orders WHERE person_id = 0;