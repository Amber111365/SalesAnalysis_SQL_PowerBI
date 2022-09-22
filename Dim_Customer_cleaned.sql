-- Cleaning Customer Table --
SELECT 
  [CustomerKey] AS 'Customer Key', 
  [FirstName] AS 'First Name', 
  [LastName] AS 'Last Name', 
  FirstName + ' ' + LastName As 'Full Name', 
  [BirthDate], 
  [MaritalStatus], 
  CASE WHEN Gender = 'M' THEN 'Male' ELSE 'Female' END AS Gender, 
  Cast([YearlyIncome] as int) AS YearlyIncome,   --Remove 0 after '.' in Yearly income
  [TotalChildren], 
  [EnglishEducation] as EduLevel, 
  [EnglishOccupation] as Occupation, 
  [DateFirstPurchase], 
  [CommuteDistance],
  g.city AS [CustomerCity],
  g.EnglishCountryRegionName AS [CustomerCountry]
FROM 
  [AdventureWorksDW2019].[dbo].[DimCustomer] as c
JOIN [AdventureWorksDW2019].dbo.DimGeography AS g ON g.GeographyKey = c.GeographyKey