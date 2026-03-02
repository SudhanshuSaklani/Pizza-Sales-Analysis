select * from pizza_sales;

--1)Total Revenue
SELECT SUM(total_price) AS total_revenue
	FROM 	pizza_sales;

--2)Average Order Value
SELECT SUM(price)/COUNT(DISTINCT(order_details_id)) AS average_order_value
	FROM pizza_sales;


--3)Total Pizza Sold
SELECT SUM(quantity) AS total_pizza_sold
	FROM pizza_sales;


--4)Total Orders
SeLECT COUNT(DISTINCT(order_details_id)) AS total_orders
	FROM pizza_sales;


--5)Average Pizzas Per Order
SELECT SUM(quantity)/COUNT(DISTINCT(order_details_id)) AS Average_pizza_per_order
	FROM pizza_sales;

/*------------------------------------------------------------------------------*/


--6)Daily Trend for Total Orders
SELECT TO_CHAR(order_date::date, 'Day') AS order_day,
		COUNT(DISTINCT order_details_id) AS total_order
FROM pizza_sales
GROUP BY order_day
ORDER BY total_order DESC;

	
--7)Monthly Trend for Total Orders
SELECT TO_CHAR(order_date::date, 'Month') AS monthly_orders,
		COUNT(DISTINCT order_details_id) AS total_order
FROM pizza_sales 
GROUP BY monthly_orders
ORDER BY total_order DESC;

--8)% of Sales by Pizza Category
SELECT pizza_category,
		ROUND(SUM(total_price:: numeric)*100/(SELECT SUM(total_price::numeric) FROM pizza_sales),2) as sales_percentage
FROM pizza_sales
GROUP BY pizza_category
ORDER BY sales_percentage DESC;

--9)% of Sales by Pizza Size
SELECT pizza_size,
		ROUND(SUM(total_price::numeric)*100/(SELECT SUM(total_price::numeric) FROM pizza_sales),2)
		AS Sales_percent
FROM pizza_sales
GROUP BY pizza_size
ORDER BY sales_percent DESC;


--10)Top 5 Best Sellers by Revenue
SELECT pizza_name,
	ROUND(SUM(total_price:: NUMERIC),2)AS total_revenue
FROM pizza_sales
GROUP BY pizza_name
ORDER BY total_revenue DESC 
LIMIT 5;

--11)Bottom 5 Sellers by Revenue
SELECT pizza_name,
	ROUND(SUM(total_price:: NUMERIC),2) AS total_revenue
FROM pizza_sales
GROUP BY pizza_name
ORDER BY total_revenue 
LIMIT 5;

--12)Top 5 Best Sellers by Quantity
SELECT pizza_name,
	SUM(quantity) AS quantity_sold
FROM pizza_sales
GROUP BY pizza_name
ORDER BY quantity_sold DESC 
LIMIT 5;

--13)Bottom 5 Sellers by Quantity
SELECT pizza_name,
	SUM(quantity) AS quantity_sold
FROM pizza_sales
GROUP BY pizza_name
ORDER BY quantity_sold 
LIMIT 5;

--14)Top 5 Best Sellers by Total Orders--------------------- select * from pizza_sales
SELECT pizza_name,
	COUNT(DISTINCT order_details_id) AS total_orders
FROM pizza_sales
GROUP BY pizza_name
ORDER BY total_orders DESC 
LIMIT 5;

--15)Bottom 5 Best Sellers by Total Orders
SELECT pizza_name, 
	COUNT(DISTINCT order_details_id) AS total_orders
FROM pizza_sales
GROUP BY pizza_name
ORDER BY total_orders 
LIMIT 5;

--16)Number of Customers each day & Busiest hours
SELECT 	order_date,
	COUNT(DISTINCT order_details_id) AS num_customers
FROM pizza_sales
GROUP BY order_date
ORDER BY order_date;

SELECT EXTRACT(HOUR FROM order_time::TIME) AS order_hour,
	COUNT(DISTINCT order_details_id) AS num_order
FROM pizza_sales
GROUP BY order_hour
ORDER BY num_order DESC;
	

--17)Seasonality trends
SELECT TO_CHAR(order_date:: DATE, 'Month') AS months,
	COUNT(DISTINCT order_details_id) AS total_order
FROM pizza_sales
GROUP BY months
ORDER BY months;

--18)Average Daily Orders
WITH daily_order AS
	(SELECT order_date,
		COUNT(DISTINCT order_details_id) AS daily_order_count
	FROM pizza_sales
	GROUP BY order_date)

SELECT AVG(daily_order_count) AS avg_order_per_day
	FROM daily_order ;

--19)Average number of pizza per day
WITH daily_order AS
(
	SELECT order_date,
		SUM(quantity) as total_pizza_sold
	FROM pizza_sales
	GROUP BY order_date
)
SELECT ROUND(AVG(total_pizza_sold),2 ) AS avg_pizza_per_day
FROM daily_order;