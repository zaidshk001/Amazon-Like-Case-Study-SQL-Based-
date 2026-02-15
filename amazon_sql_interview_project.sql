/*
==========================================================
Project: Amazon SQL Interview Practice Case Study
Author: Zaid Shaikh
Database: sql_practice
Purpose:
This project simulates real-world Amazon-style SQL interview 
questions covering aggregation, window functions, ranking,
anti-joins, anomaly detection, and time-series edge cases.
==========================================================
*/

-- ==========================================================
-- DATABASE SETUP
-- ==========================================================

CREATE DATABASE IF NOT EXISTS sql_practice;
USE sql_practice;

-- ==========================================================
-- TABLE CREATION
-- ==========================================================

CREATE TABLE customers (
    customer_id INT PRIMARY KEY,
    customer_name VARCHAR(50),
    signup_date DATE
);

CREATE TABLE products (
    product_id INT PRIMARY KEY,
    product_name VARCHAR(50),
    category VARCHAR(50)
);

CREATE TABLE purchases (
    purchase_id INT PRIMARY KEY,
    customer_id INT,
    product_id INT,
    purchase_date DATE
);

CREATE TABLE sales (
    sale_id INT PRIMARY KEY,
    store_id INT,
    product_id INT,
    sale_amount DECIMAL(10,2),
    sale_date DATE
);

CREATE TABLE order_details (
    order_id INT,
    product_id INT
);

CREATE TABLE employees (
    employee_id INT PRIMARY KEY,
    name VARCHAR(50),
    manager_id INT,
    department_id INT,
    salary DECIMAL(10,2)
);

CREATE TABLE deliveries (
    supplier_id INT,
    order_date DATE,
    delivery_date DATE,
    quantity INT
);

CREATE TABLE orders (
    order_id INT PRIMARY KEY,
    customer_id INT,
    order_date DATE
);

CREATE TABLE agent_logs (
    log_id INT PRIMARY KEY,
    agent_id INT,
    login_time DATETIME,
    logout_time DATETIME
);

-- ==========================================================
-- DATA INSERTION
-- ==========================================================

INSERT INTO customers VALUES
(1,'Zaid','2025-01-10'),
(2,'Aisha','2025-02-15'),
(3,'Rahul','2025-03-01'),
(4,'Sara','2025-04-20'),
(5,'Omar','2025-05-05'),
(6,'Neha','2025-06-12');

INSERT INTO products VALUES
(101,'iPhone','Electronics'),
(102,'Laptop','Electronics'),
(103,'Headphones','Electronics'),
(201,'Shirt','Clothing'),
(202,'Jeans','Clothing'),
(301,'Blender','Home'),
(302,'Microwave','Home');

INSERT INTO purchases VALUES
(1,1,101,'2026-01-05'),
(2,1,201,'2026-01-10'),
(3,1,301,'2026-01-15'),
(4,2,101,'2026-01-05'),
(5,2,102,'2026-01-05'),
(6,2,201,'2026-02-01'),
(7,3,101,'2025-08-01'),
(8,3,102,'2025-09-01'),
(9,4,101,'2026-02-01'),
(10,4,201,'2026-02-10'),
(11,4,301,'2026-02-20'),
(12,5,101,'2026-02-01');

INSERT INTO sales VALUES
(1,1,101,1000,'2026-02-01'),
(2,1,101,1200,'2026-02-02'),
(3,1,101,800,'2026-02-03'),
(4,1,201,300,'2026-02-01'),
(5,1,201,500,'2026-02-02'),
(6,2,101,2000,'2026-02-01'),
(7,2,201,400,'2026-02-01'),
(8,2,301,700,'2026-02-02'),
(9,1,101,100,'2026-02-10'),
(10,1,101,5000,'2026-02-11');

INSERT INTO employees VALUES
(1,'John',NULL,1,100000),
(2,'Alice',1,1,70000),
(3,'Bob',1,2,60000),
(4,'Carol',2,1,75000),
(5,'David',NULL,2,90000),
(6,'Eve',5,2,50000),
(7,'Frank',NULL,3,120000);

INSERT INTO deliveries VALUES
(1,'2026-01-01','2026-01-03',200),
(1,'2026-01-05','2026-01-06',150),
(2,'2026-01-01','2026-01-10',50),
(2,'2026-01-05','2026-01-20',300),
(3,'2026-01-01','2026-01-02',500);

INSERT INTO orders VALUES
(1,1,'2026-01-01'),
(2,1,'2026-02-01'),
(3,1,'2026-02-05'),
(4,2,'2026-01-01'),
(5,2,'2026-02-01'),
(6,3,'2025-06-01'),
(7,4,'2026-02-01');

INSERT INTO agent_logs VALUES
(1,101,'2026-02-10 09:00:00','2026-02-10 17:00:00'),
(2,101,'2026-02-10 22:00:00','2026-02-11 02:00:00'),
(3,102,'2026-02-10 10:00:00','2026-02-12 15:00:00'),
(4,103,'2026-02-11 23:30:00','2026-02-12 00:30:00');

-- ==========================================================
-- SAMPLE AMAZON-STYLE QUESTIONS INCLUDED
-- ==========================================================

-- 1. Customers who purchased on exactly 3 days last month
-- 2. Top selling product per category
-- 3. Product-level anomaly detection
-- 4. Employees above department average
-- 5. Median salary per department
-- 6. Customers who purchased from all categories
-- 7. Cumulative sales above store average
-- 8. Monthly store ranking
-- 9. Moving 5-day average per product
-- 10. Agent login/logout midnight split logic

-- (Queries intentionally omitted here to keep script clean.
-- They can be stored in a separate analytical_queries.sql file.)
