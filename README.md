# **🍕 Pizza Sales Analysis (PostgreSQL + Python + Power BI)**
## **Project Overview**

This project analyzes pizza sales data to uncover business insights related to revenue, customer behavior, and product performance.

The dataset is sourced from Maven Analytics and processed using Python and PostgreSQL before being visualized in Power BI.

The goal of this project was to simulate a real-world data workflow:

Data ingestion

Database storage

SQL-based analysis

Business KPI creation

Interactive dashboard reporting

## **Key Questions Explored using pgSQL**
1. **Total Revenue**: Total Revenue generated over the period.

2. **Average Order Value**: Average order value throughout the year.

3. **Total Pizza Sold**: Total number of Pizzas sold.

4. **Total Orders**: Total Orders placed.

5. **Average Pizzas Per Order**: Average Pizzas ordered per order.

6. **Daily Trend for Total Orders**: By days of the week, trend for sales throughout the year.

7. **Monthly Trend for Total Orders**: Monthly Trend for Total Orders to analuze seasonality.

8. **% of Sales by Pizza Category**: Percentage of total sales, each 4 Categories contributes.

9. **% of Sales by Pizza Size**: Percentage of total sales, each of 5 sizes Contributes.

10. **Top 5 Best Sellers by Revenue, Total Quantity & Total Orders**: Top 5 Best selling Pizza by Revenue, Total Quantity & Total Orders.

11. **5 lowest Sellers by Revenue, Total Quantity & Total Orders**: 5 lowest selling Pizzas by Revenue, Total Quantity & Total Orders.

12. **Number of Customers each day & Busiest hours**: Number of customer served each day and busy operating hours.

13. **Average Orders & Pizzaper Day**:Average Orders placed per Day & Pizzas sold per day.

## **Tech Stack**

Python – Data ingestion and table merging

PostgreSQL – Data storage and SQL analysis

SQL – Business queries and KPI calculations

Power BI – Interactive dashboard visualization

Git & GitHub – Version control and project management

## **Project Workflow**

Raw CSV files were loaded using Python.

Data was inserted into PostgreSQL database.

Multiple tables were merged and structured properly.

SQL queries were written to calculate KPIs and business metrics.

Results were visualized in Power BI dashboard.

## **SQL Analysis Examples**

Some of the SQL logic includes:

Revenue calculation using SUM(quantity * price)

Aggregation using GROUP BY

Date extraction for monthly trend analysis

JOIN operations across multiple tables

Ranking top-selling products
## **Power BI Dashboard**

The dashboard includes:

KPI Cards (Revenue, Orders, AOV)

Sales Trend Line Chart

Category-wise Revenue Breakdown

Top 5 / Bottom 5 Products

Order Distribution by Time

## **📂 Project Structure**
![image](https://github.com/SudhanshuSaklani/Pizza-Sales-Analysis/blob/306c88e0842ed6fb24a6431123c9ef4044db3b97/Screenshot/Screenshot%202026-03-02%20235127.png)

## **How To Run This Project**

Clone repository

Install dependencies: pip install -r requirements.txt

Configure PostgreSQL credentials

Run Python ingestion scripts

Execute SQL queries

Open Power BI file for dashboard
## **Project Objective**

This project demonstrates:

End-to-end data pipeline creation

SQL-based business problem solving

Dashboard development for decision making

Real-world data analytics workflow
#
![image alt](https://github.com/SudhanshuSaklani/Pizza-Sales-Analysis/blob/0cf0b0c8ffc6d5a66da7ac932b4bccde8ac72d3b/Screenshot/one.png)

![image alt](https://github.com/SudhanshuSaklani/Pizza-Sales-Analysis/blob/60493b68590a0f2137ece2fbebde5d5c4f611a23/Screenshot/three.png)





