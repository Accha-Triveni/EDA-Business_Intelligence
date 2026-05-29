sql_queries = """

-- TOP 5 PRODUCTS BY SALES

SELECT
    "Product Name",
    SUM(Sales) AS Total_Sales
FROM df
GROUP BY "Product Name"
ORDER BY Total_Sales DESC
LIMIT 5;

-- TOP CATEGORY BY PROFIT

SELECT
    Category,
    SUM(Profit) AS Total_Profit
FROM df
GROUP BY Category
ORDER BY Total_Profit DESC;

-- REGION WITH HIGHEST SALES

SELECT
    Region,
    SUM(Sales) AS Total_Sales
FROM df
GROUP BY Region
ORDER BY Total_Sales DESC;

"""
