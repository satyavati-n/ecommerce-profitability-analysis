\# E-commerce Profitability Analysis



\## Project Overview

This project analyzes Indian e-commerce sales data to understand sales performance, profitability, customer returns, and regional performance.



The goal is to identify business opportunities and areas where profitability may be improved using data analysis.



\## Business Problems

\- How do sales and profit change month by month?

\- Which product categories generate the most sales and profit?

\- Which products perform best and which make losses?

\- Which regions and states are most profitable?

\- How do payment methods perform?

\- How much profit is lost through returned orders?

\- What is the overall business performance?



\## Tools Used

\- Microsoft Excel — data cleaning and preparation

\- PostgreSQL — SQL analysis and business insights

\- Power BI — planned for dashboard development



\## Dataset

The dataset contains 850 records after removing duplicate Order IDs.



\## Key Findings

\- \*\*Total recorded sales:\*\* ₹2,08,50,066.35

\- \*\*Total recorded profit:\*\* ₹6,75,411.54

\- \*\*Overall profit margin:\*\* 3.24%

\- \*\*Highest-sales category:\*\* Mobiles \& Accessories

\- \*\*Loss-making category:\*\* Home \& Kitchen

\- \*\*Highest-sales month:\*\* May 2023

\- \*\*Highest-sales state:\*\* Maharashtra

\- \*\*Highest-profit region:\*\* West

\- \*\*Returned orders:\*\* 58 records, with a combined recorded profit of -₹2,28,411.77



\## SQL Analysis

1\. Monthly Sales and Profit

2\. Category-wise Sales and Profit

3\. Top 10 Products by Sales

4\. Region-wise Sales and Profit

5\. State-wise Sales and Profit

6\. Payment Method Performance

7\. Order Status Performance

8\. Returned Order Losses by Product

9\. Overall Business Performance



\## Project Status

\- \[x] Dataset cleaning

\- \[x] SQL analysis

\- \[ ] Excel dashboard

\- \[ ] Power BI dashboard

\- \[ ] Final business recommendations



\## Important Note

The findings describe the values recorded in the dataset. Cancelled orders have recorded sales but zero profit, so sales should not automatically be interpreted as realized revenue without validating the dataset's business rules.





## 📊 Dashboard Preview

### Dashboard Overview
![Dashboard Overview](images/dashboard-overview.png)

### Sales Analysis
![Sales Analysis](images/sales-analysis.png)

### Detailed Analysis
![Detailed Analysis](images/detailed-analysis.png)




## 🔍 Key Business Findings

The analysis of 850 e-commerce order records revealed the following:

- **Overall performance:** Total sales were ₹2,08,50,066.35, with a total profit of ₹6,75,411.54 and an overall profit margin of 3.24%.
- **Top sales category:** Mobiles & Accessories generated ₹95,06,179.75 in sales and ₹3,71,787.15 in profit.
- **Loss-making category:** Home & Kitchen recorded a loss of ₹67,894.62, with a negative profit margin of 3.67%.
- **Regional performance:** The West region generated the highest sales at ₹69,78,072.60 and the highest profit at ₹3,20,958.13.
- **Product profitability:** The Wakefit mattress generated ₹9,17,426.60 in sales but recorded a loss of ₹1,58,120.48.
- **Returns:** Returned orders recorded a total loss of ₹2,28,411.77.

### Business Recommendations

- Investigate costs, pricing, and discounts in the Home & Kitchen category.
- Review the profitability of high-sales products that are generating losses.
- Analyze return reasons and product-level return rates to reduce losses.
- Study the West region's performance to identify practices that may be useful in other regions.
- Track profit margin alongside sales instead of judging performance by sales alone.

