-- Query 1: Find the top 5 most profitable helmet products to feature in ads.
SELECT
    Sub_Category,
    Product,
    Profit
FROM
    Sales
WHERE
    Sub_Category = 'Helmets'
ORDER BY
    Profit DESC
LIMIT 5;

-- Query 2: Discover which country generates the most revenue from Hydration Packs.
SELECT
    Country,
    SUM(Revenue) AS TotalRevenue
FROM
    Sales
WHERE
    Sub_Category = 'Hydration Packs'
GROUP BY
    Country
ORDER BY
    TotalRevenue DESC;

-- Query 3: Calculate the average age of customers for 'Bottles and Cages' to identify the target demographic.
SELECT
    AVG(Customer_Age) AS average_all_ages
FROM
    sales
WHERE
    Sub_Category = 'Bottles and Cages';