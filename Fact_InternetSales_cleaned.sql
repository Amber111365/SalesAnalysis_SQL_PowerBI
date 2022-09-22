-- Cleaning Internet Sales Table 2019 to 2021 -- 
SELECT 
  [OrderDate],[ProductKey], 
   [CustomerKey], 
  [SalesOrderNumber], 
  [OrderQuantity], 
  [UnitPrice], 
  [TotalProductCost], 
  [SalesAmount], 
  [TaxAmt], 
  [Freight] 
FROM 
  [AdventureWorksDW2019].[dbo].[FactInternetSales] 
WHERE 
  year(OrderDate) between 2019 and 2021