# 🚗 Uber Data Analysis (SQL Project)

This project uses SQL to analyze Uber ride data, focusing on key metrics such as driver earnings, ride durations, fare amounts, and passenger behaviors.

## 📌 Key Objectives

- Analyze driver earnings and performance  
- Explore ride metrics like distance, fare, and duration  
- Evaluate passenger patterns by pickup location and payment method  
- Use SQL queries to derive insights from real-time ride data  

## 📊 Dataset Overview

- **Ride Stats Table** (`ur1`):  
  `ride_id`, `driver_id`, `passenger_id`, `pickup_location`, `dropoff_location`, `ride_duration`, `fare_amount`, `payment_method`, `ride_timestamp`, etc.

- **Driver Stats Table** (`ud1`):  
  `driver_id`, `driver_name`, `earnings`, `total_rides`, `rating`, `join_date`, etc.

- **Passenger Stats Table** (`up`):  
  `passenger_id`, `passenger_name`, `total_spent`, `signup_date`, `rating`, etc.

## 📊 Key Analyses and Queries

### 🚗 Ride Metrics
- **Average Ride Duration**
- **Rides with fare > 20**
- **Shortest Rides by Location**
- **Rides with same Pickup and Drop-off**
- **Rides with distances > 19 or < avg distance**
- **Ride distribution by payment method and pickup location**

### 👨‍✈️ Driver Insights
- **Top 5 Highest-Earning Drivers**
- **Drivers with Earnings <= Max Earnings**
- **Drivers with 100+ rides and their avg ratings**
- **Drivers operating in all pickup locations**
- **Drivers who joined and drove on the same day**
- **Bottom 5 Drivers by Avg Earnings**

### 🧑‍🤝‍🧑 Passenger Insights
- **Passengers with 300+ pickup locations**
- **Top 3 Passengers by Spending**
- **Passengers riding on signup date**
- **Rides by passengers with ratings > 4**
- **Passengers with rides in 5+ different pickup locations**

### 💰 Fare & Earnings Analysis
- **Total Earnings per Driver**
- **Rides with fare above average**
- **Avg fare for weekday rides**
- **Avg fare for passengers with 20+ rides**
- **Sum and Avg fare for passengers using multiple payment methods**
- **Pickup location with max avg fare**
- **(Planned) Pickup location with highest % increase in avg fare**

### 🧠 Advanced & Analytical Queries
- **Drivers operating in all pickup locations**
- **Avg ratings for drivers serving both cash & card**
- **Passenger spend and ride count correlation**
- **Fare patterns across payment methods**

## ✅ Skills Applied

- SQL Joins (`INNER JOIN`, `LEFT JOIN`) and Filtering (`WHERE`, `HAVING`)  
- Aggregation & Grouping (`GROUP BY`, `ORDER BY`, `SUM`, `AVG`)  
- Subqueries and Nested Queries  
- Date Functions (`DATE()`, `WEEKDAY()`, `DATE_FORMAT()`)

## 📊 Tools Used

- **SQL (MySQL/PostgreSQL)**
- SQL Functions: `AVG()`, `MAX()`, `MIN()`, `COUNT()`, `ROUND()`
- SQL Clauses: `GROUP BY`, `HAVING`, `JOIN`, `ORDER BY`, `WHERE`, `SUBQUERIES`
- Date Functions: `DATE()`, `WEEKDAY()`, `DATE_FORMAT()`

## 📝 Project Highlights

- ✅ 40+ unique SQL queries covering real-world business use cases
- ✅ Demonstrates skills in advanced SQL (subqueries, joins, aggregations)
- ✅ Designed for performance insights & business decision-making
- ✅ Great foundation for building BI dashboards with Power BI / Tableau
