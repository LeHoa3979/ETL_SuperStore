Superstore Sales Insights
Objective
This project aims to analyze retail sales data to identify business trends, top-selling products, and regional performance. The ETL process is applied to transform raw data into a structured format, enabling effective analysis through Power BI dashboards.

Description
1️⃣ ETL Process
(Extract - Transform - Load)

Extract: Data is sourced from the SuperStore Sales DataSet.xlsx file.
Transform:
Excel: Handle missing values and standardize data formats.
Python (Pandas): Clean incorrect values, normalize data types, and generate a DateID column for time-based analysis.
Load:
Use Python (SQLAlchemy, pyodbc) to load data into SQL Server.
Implement the Star Schema for efficient data organization.
2️⃣ Data Modeling (Star Schema)
The data is structured using the Star Schema, including:

FactSales: The main fact table containing sales information.
DimCustomer, DimProduct, DimRegion, DimDate: Supporting dimension tables for analysis.
3️⃣ Power BI Dashboard
After loading data into SQL Server, Power BI is used to connect to the database and create interactive dashboards featuring:
✅ Sales analysis over time
✅ Profit by region
✅ Top 10 best-selling products
✅ Sales heatmap by day of the week
✅ Overall sales by region, payment method, and customer segment

Conclusion
Identify best-selling and underperforming products.
Compare sales performance across regions and shipping methods.
Detect seasonal sales trends.
Enhance sales strategies based on data-driven insights.
This project not only visualizes sales data but also integrates ETL, SQL, Python, and Power BI to create an automated and efficient data analysis workflow.

Technologies Used
Power BI (Dashboard, DAX, Data Modeling)
SQL Server (Star Schema, Query Optimization)
Python (Pandas, SQLAlchemy, Data Cleaning)
Excel (Data Cleaning, Preprocessing)
Future enhancements could include Machine Learning for sales forecasting. 🚀
