CREATE DATABASE SuperStoreDB1;
USE SuperStoreDB1;

CREATE TABLE FactSales (
    SalesID INT IDENTITY(1,1) PRIMARY KEY,
    OrderID NVARCHAR(50),
    CustomerID NVARCHAR(50),
    ProductID NVARCHAR(50),
    RegionID INT,
    DateID INT,
    Sales DECIMAL(18,2),
    Profit DECIMAL(18,2),
    Quantity INT,
    Discount DECIMAL(5,2)
);
CREATE TABLE DimCustomer (
    CustomerID NVARCHAR(50) PRIMARY KEY,
    CustomerName NVARCHAR(255),
    Segment NVARCHAR(50)
);
CREATE TABLE DimProduct (
    ProductID NVARCHAR(50) PRIMARY KEY,
    ProductName NVARCHAR(255),
    Category NVARCHAR(50),
    SubCategory NVARCHAR(50)
);
CREATE TABLE DimRegion (
    RegionID INT IDENTITY(1,1) PRIMARY KEY,
    Country NVARCHAR(50),
    State NVARCHAR(50),
    City NVARCHAR(50),
    PostalCode NVARCHAR(20)
);
CREATE TABLE DimDate (
    DateID INT IDENTITY(1,1) PRIMARY KEY,
    OrderDate DATE,
    ShipDate DATE,
    Year INT,
    Month INT,
    Day INT
);

/*Kiểm tra cấu trúc bảng- check table structure*/
SELECT * FROM FactSales;
SELECT * FROM DimCustomer;
SELECT * FROM DimProduct;
SELECT * FROM DimRegion;
SELECT * FROM DimDate;

/*kiểm tra dữ liệu nhập vào hợp lý chưa*/

SELECT 'DimCustomer' AS TableName, COUNT(*) FROM DimCustomer
UNION ALL
SELECT 'DimProduct', COUNT(*) FROM DimProduct
UNION ALL
SELECT 'DimRegion', COUNT(*) FROM DimRegion
UNION ALL
SELECT 'DimDate', COUNT(*) FROM DimDate
UNION ALL
SELECT 'FactSales', COUNT(*) FROM FactSales;

/*kiểm tra dữ liệu*/
SELECT TOP 10 * FROM FactSales;

/*kiểm tra dữ liệu trùng lặp*/
SELECT OrderID, CustomerID, ProductID, COUNT(*) AS DuplicateCount
FROM FactSales
GROUP BY OrderID, CustomerID, ProductID
HAVING COUNT(*) > 1;


/*kiểm tra dữ liệu trùng lặp bảng factSale*/
SELECT * 
FROM FactSales 
WHERE OrderID IN (
    SELECT OrderID FROM FactSales
    GROUP BY OrderID, CustomerID, ProductID
    HAVING COUNT(*) > 1
);