DROP DATABASE IF EXISTS bamazon_db;
CREATE DATABASE bamazon_db;
USE bamazon_db;

CREATE TABLE products (
  item_id INTEGER(10) AUTO_INCREMENT NOT NULL,
  product_name VARCHAR(50) NOT NULL,
  department_name VARCHAR(50) NOT NULL,
  price INTEGER(10) NOT NULL,
  stock_quantity INTEGER(10) NOT NULL,
  PRIMARY KEY (item_id)
);

INSERT INTO products (product_name, department_name, price, stock_quantity) 
values ('Steak', 'Food', 20, 5);

INSERT INTO products (product_name, department_name, price, stock_quantity) 
values ('Ultrawide Monitor', 'Electronics', 500, 2);

INSERT INTO products (product_name, department_name, price, stock_quantity) 
values ('Mac Pro', 'Electronics', 5000, 20);

INSERT INTO products (product_name, department_name, price, stock_quantity) 
values ('Samsung TV', 'Electronics', 750, 10);

INSERT INTO products (product_name, department_name, price, stock_quantity) 
values ('Kitchen Plates', 'Home', 10, 12);

INSERT INTO products (product_name, department_name, price, stock_quantity) 
values ('Yeti Cooler', 'Home', 250, 6);

INSERT INTO products (product_name, department_name, price, stock_quantity) 
values ('Yeti Tumbler', 'Home', 50, 10);

INSERT INTO products (product_name, department_name, price, stock_quantity) 
values ('Sleeping Bag', 'Home', 50, 79);

INSERT INTO products (product_name, department_name, price, stock_quantity) 
values ('Yeti Tumbler', 'Home', 50, 10);

INSERT INTO products (product_name, department_name, price, stock_quantity) 
values ('Drill', 'Home', 100, 17);

INSERT INTO products (product_name, department_name, price, stock_quantity) 
values ('Hammer', 'Home', 10, 12);

INSERT INTO products (product_name, department_name, price, stock_quantity) 
values ('Screwdriver', 'Home', 10, 13);

select * from products