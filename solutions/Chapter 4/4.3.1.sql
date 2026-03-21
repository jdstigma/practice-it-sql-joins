-- SQLite
Select  p.ProductKey,
p.EnglishProductName, s.*
FROM FactInternetSales s
LEFT JOIN DimProduct p ON s.ProductKey = p.ProductKey;