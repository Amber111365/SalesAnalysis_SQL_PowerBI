-- Cleansed DimProducts Table --
SELECT [ProductKey]
      ,[ProductAlternateKey] 
            ,[EnglishProductName]
      
      ,[StandardCost]
    
      ,[Color]
   
      ,[Size]
     
      ,[ProductLine]
    
      ,[ModelName]
   
      ,[EnglishDescription] AS ProductDetail
     
      ,COALESCE([Status], 'Outdated') AS Status --Change 'NULL' value in Status Column to 'Outdated'
  FROM [AdventureWorksDW2019].[dbo].[DimProduct] AS p 
  LEFT JOIN AdventureWorksDW2019.dbo.DimProductSubcategory AS ps ON p.ProductSubcategoryKey = ps.ProductSubcategoryKey
  LEFT JOIN AdventureWorksDW2019.dbo.DimProductCategory AS pc ON ps.ProductCategoryKey = pc.ProductCategoryKey