/*Cleaning DimDate Table */
SELECT 
  [FullDateAlternateKey] as Date, 
  [EnglishDayNameOfWeek] as Day, 
  [EnglishMonthName] as Month, 
  [CalendarQuarter] as Quarter, 
  [CalendarYear] as Year 
FROM 
  [AdventureWorksDW2019].[dbo].[DimDate]
WHERE CalendarYear between 2019 and 2021