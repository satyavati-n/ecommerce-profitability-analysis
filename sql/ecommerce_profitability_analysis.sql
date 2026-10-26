-- PROJECT: E-commerce Profitability Analysis
-- ANALYSIS 01: Monthly Sales and Profit
-- BUSINESS QUESTION: How do sales and profit change month by month?

SELECT
    DATE_TRUNC('month', order_date)::DATE AS month,
    ROUND(SUM(sales), 2) AS total_sales,
    ROUND(SUM(profit), 2) AS total_profit,
    COUNT(*) AS total_orders
FROM ecommerce_sales
GROUP BY DATE_TRUNC('month', order_date)
ORDER BY month;




-- PROJECT: E-commerce Profitability Analysis
-- ANALYSIS 02: Category-wise Sales and Profit
-- BUSINESS QUESTION: Which product categories generate
-- the highest sales and profit?

SELECT
    category,
    ROUND(SUM(sales), 2) AS total_sales,
    ROUND(SUM(profit), 2) AS total_profit,
    ROUND(
        SUM(profit) * 100.0 / NULLIF(SUM(sales), 0),
        2
    ) AS profit_margin_percent,
    COUNT(*) AS total_orders
FROM ecommerce_sales
GROUP BY category
ORDER BY total_sales DESC;




-- PROJECT: E-commerce Profitability Analysis
-- ANALYSIS 03: Top 10 Products by Sales
-- BUSINESS QUESTION: Which products generate the most revenue?

SELECT
    product_name,
    category,
    ROUND(SUM(sales), 2) AS total_sales,
    ROUND(SUM(profit), 2) AS total_profit,
    ROUND(
        SUM(profit) * 100.0 / NULLIF(SUM(sales), 0),
        2
    ) AS profit_margin_percent,
    COUNT(*) AS total_orders
FROM ecommerce_sales
GROUP BY product_name, category
ORDER BY total_sales DESC
LIMIT 10;



-- PROJECT: E-commerce Profitability Analysis
-- ANALYSIS 04: Region-wise Sales and Profit
-- BUSINESS QUESTION: Which regions generate the highest
-- sales and profit?

SELECT
    region,
    ROUND(SUM(sales), 2) AS total_sales,
    ROUND(SUM(profit), 2) AS total_profit,
    ROUND(
        SUM(profit) * 100.0 / NULLIF(SUM(sales), 0),
        2
    ) AS profit_margin_percent,
    COUNT(*) AS total_orders
FROM ecommerce_sales
GROUP BY region
ORDER BY total_sales DESC;




-- PROJECT: E-commerce Profitability Analysis
-- ANALYSIS 05: State-wise Sales and Profit
-- BUSINESS QUESTION: Which states contribute the most
-- sales and profit?

SELECT
    state,
    ROUND(SUM(sales), 2) AS total_sales,
    ROUND(SUM(profit), 2) AS total_profit,
    ROUND(
        SUM(profit) * 100.0 / NULLIF(SUM(sales), 0),
        2
    ) AS profit_margin_percent,
    COUNT(*) AS total_orders
FROM ecommerce_sales
GROUP BY state
ORDER BY total_sales DESC;



-- PROJECT: E-commerce Profitability Analysis
-- ANALYSIS 06: Payment Method Performance
-- BUSINESS QUESTION: Which payment methods generate the
-- highest sales and profit?

SELECT
    payment_method,
    ROUND(SUM(sales), 2) AS total_sales,
    ROUND(SUM(profit), 2) AS total_profit,
    ROUND(
        SUM(profit) * 100.0 / NULLIF(SUM(sales), 0),
        2
    ) AS profit_margin_percent,
    COUNT(*) AS total_orders
FROM ecommerce_sales
GROUP BY payment_method
ORDER BY total_sales DESC;




-- PROJECT: E-commerce Profitability Analysis
-- ANALYSIS 07: Order Status Performance
-- BUSINESS QUESTION: How do sales and profit vary by order status?

SELECT
    COALESCE(NULLIF(TRIM(order_status), ''), 'Unknown') AS order_status,
    ROUND(SUM(sales), 2) AS total_sales,
    ROUND(SUM(profit), 2) AS total_profit,
    ROUND(
        SUM(profit) * 100.0 / NULLIF(SUM(sales), 0),
        2
    ) AS profit_margin_percent,
    COUNT(*) AS total_orders
FROM ecommerce_sales
GROUP BY COALESCE(NULLIF(TRIM(order_status), ''), 'Unknown')
ORDER BY total_sales DESC;



-- PROJECT: E-commerce Profitability Analysis
-- ANALYSIS 08: Returned Order Losses by Product
-- BUSINESS QUESTION: Which products contribute most to
-- losses from returned orders?

SELECT
    product_name,
    category,
    COUNT(*) AS returned_orders,
    ROUND(SUM(sales), 2) AS recorded_sales,
    ROUND(SUM(profit), 2) AS total_profit_loss
FROM ecommerce_sales
WHERE LOWER(TRIM(order_status)) = 'returned'
GROUP BY product_name, category
ORDER BY total_profit_loss ASC
LIMIT 10;



-- PROJECT: E-commerce Profitability Analysis
-- ANALYSIS 09: Overall Business Performance
-- BUSINESS QUESTION: What are the overall sales, profit,
-- profit margin, and order counts?

SELECT
    COUNT(*) AS total_records,
    COUNT(DISTINCT order_id) AS unique_orders,
    ROUND(SUM(sales), 2) AS total_sales,
    ROUND(SUM(profit), 2) AS total_profit,
    ROUND(
        SUM(profit) * 100.0 / NULLIF(SUM(sales), 0),
        2
    ) AS overall_profit_margin_percent,
    COUNT(*) FILTER (
        WHERE profit < 0
    ) AS loss_making_records,
    COUNT(*) FILTER (
        WHERE LOWER(TRIM(order_status)) = 'returned'
    ) AS returned_records,
    COUNT(*) FILTER (
        WHERE LOWER(TRIM(order_status)) = 'cancelled'
    ) AS cancelled_records
FROM ecommerce_sales;
