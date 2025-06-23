create table customers
( id int primary key auto_increment,
 name varchar(50),
 email varchar (50) 
 );
 
 create table order_details (
 id int references customers(id),
 order_date date,
 order_item varchar(50),
 price float);

insert into order_details (id, order_date, order_item, price) values 
(1, '2024-10-10', 'Pizza', 12.99),
(2, '2024-10-10', 'Burger', 9.50),
(1, '2024-10-11', 'Salad', 7.50),
(3, '2024-10-11', 'Pasta', 11.99),
(4, '2024-10-12', 'Sandwich', 6.99),
(2, '2024-10-12', 'Fries', 4.00);

-----step 3, 4
select c.name, od.order_date, od.order_item, od.price
from customers c
join order_details od on c.id = od.id
;

----step 5
select c.name, sum(od.price) as total_spent
from customers c
join order_details od on c.id = od.id
group by name
;

-----step 6
select c.name, count(c.id) as number_of_orders
from customers c
join order_details od on c.id = od.id
group by c.name
;

------step 7
select c.id, c.name, od.order_date, od.order_item, od.price
from customers c
join order_details od on c.id = od.id
where  od.order_date >= '2024-10-11';

--------step 8
 SELECT c.name, o.order_date, COUNT(o.id) AS order_count
 FROM order_details o 
 JOIN customers c ON o.id = c.id
 GROUP BY c.name, o.order_date
 HAVING COUNT(o.id) > 1;

--------Task 2: Sales Data Analysis
 CREATE TABLE products (
    product_id SERIAL PRIMARY KEY,
    product_name VARCHAR(100),
    price DECIMAL(10, 2)
 );
 CREATE TABLE sales (
    sale_id SERIAL PRIMARY KEY,
    product_id INT REFERENCES products(product_id),
    quantity_sold INT,
    sale_date DATE,
    total_revenue DECIMAL(10, 2)
 );
  INSERT INTO products (product_name, price)
 VALUES 
('Laptop', 1000.00),
 ('Smartphone', 500.00),
 ('Tablet', 300.00);
 
  INSERT INTO sales (product_id, quantity_sold, sale_date, 
total_revenue)
 VALUES
 (1, 5, '2024-10-10', 5000.00),
 (2, 10, '2024-10-11', 5000.00),
 (3, 3, '2024-10-12', 900.00),
 (1, 2, '2024-10-13', 2000.00);
 
 select p.product_name, sum(s.total_revenue) as total_revenue, sum(s.quantity_sold) as total_quantity_sold
 from products p
 join sales s on p.product_id = s.product_id
 group by p.product_name;
 ;
 
 

