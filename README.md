# **Superstore Sales ETL & Analytics**  

## **Objective**  
This project aims to extract, transform, and load (ETL) sales data from the Superstore dataset, store it in SQL Server, and create an interactive Power BI dashboard for business insights.  

## **Description**  
The project follows a structured ETL pipeline:  

### **1. Data Cleaning and Transformation (ETL - Extract & Transform)**  
- **Excel & Python (Pandas):**  
  - Removed duplicates and missing values.  
  - Standardized column formats (dates, text fields, numerical values).  
  - Derived additional attributes (e.g., `Year`, `Month`, `Day`, `RegionID`).  

### **2. Data Loading (ETL - Load)**  
- **SQL Server:**  
  - Designed a **Star Schema** for efficient querying.  
  - Imported cleaned data into fact and dimension tables using Python (`pyodbc`).  
  - Ensured data integrity and consistency with constraints and indexing.  

### **3. Data Analysis & Visualization**  
- **Power BI:**  
  - Connected to SQL Server for real-time data access.  
  - Created interactive visualizations:  
    - **Sales & Profit Analysis over Time**  
    - **Regional & Segment-based Sales Insights**  
    - **Top 10 Best-selling Products**  
    - **Heatmap of Sales by Day of the Week**  
  - Implemented **DAX measures** for advanced calculations.  

## **Conclusion**  
This project demonstrates an end-to-end ETL process, from raw data extraction to business intelligence reporting. It highlights the power of **Python, SQL Server, and Power BI** in building scalable analytics solutions for decision-making.  

## **Dashboards**  
![Image](https://github.com/user-attachments/assets/944d4bdf-efc0-408e-a865-227fd2342768)

---


















