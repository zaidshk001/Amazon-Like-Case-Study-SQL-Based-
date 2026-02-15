# 🧠 Amazon SQL Interview Practice Project

This project simulates advanced SQL problems commonly asked in Amazon and other top tech/data analytics interviews.

It includes a structured database schema and realistic business datasets covering:

- E-commerce transactions
- Sales analytics
- Employee hierarchy
- Supplier performance
- Time-series login tracking

---

## 🎯 Project Purpose

The goal of this repository is to practice and demonstrate strong SQL fundamentals including:

- Aggregation & Grouping
- Window Functions
- Ranking & Partitioning
- Median calculation
- Moving averages
- Anti-joins (NOT EXISTS)
- Conditional aggregation
- Date boundary handling
- Time-series edge cases (midnight splits)
- Anomaly detection

This project reflects real interview-level SQL reasoning.

---

## 🗂 Database Schema

The database includes the following tables:

| Table | Description |
|-------|------------|
| customers | Customer master data |
| products | Product catalog with categories |
| purchases | Customer purchase history |
| sales | Store-level sales transactions |
| orders | Order history |
| order_details | Product combinations per order |
| employees | Organizational hierarchy |
| deliveries | Supplier delivery performance |
| agent_logs | Agent login/logout time tracking |

---

## 🔥 Example Interview Questions Solved

1. Identify customers who made purchases on exactly three different days in the last month.
2. Find the top highest-selling product in each category.
3. Detect product-level sales anomalies.
4. Calculate the median salary in each department.
5. Rank stores by monthly sales performance.
6. Identify customers who purchased from all available categories.
7. Compute cumulative store sales above average thresholds.
8. Calculate moving averages using window functions.
9. Detect missing product records in transactional tables.
10. Handle midnight login/logout edge cases in time-series data.

---

## 🛠 Key SQL Concepts Demonstrated

- CTEs (Common Table Expressions)
- ROW_NUMBER()
- DENSE_RANK()
- AVG() OVER()
- SUM() OVER()
- Conditional SUM with CASE
- EXISTS vs NOT IN
- Date boundary calculations
- Recursive and time-series logic

---

## 💡 Why This Project Is Valuable

This repository demonstrates:

- Strong analytical SQL thinking
- Performance-aware query writing
- Clean structure and documentation
- Real-world edge case handling
- Interview-level SQL problem solving

It reflects preparation for Data Analyst / Business Intelligence / Product Analyst roles.
