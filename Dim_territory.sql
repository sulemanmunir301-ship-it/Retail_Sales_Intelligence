USE AdventureWorks2022;
GO

SELECT 
    TerritoryID,
    Name AS TerritoryName,
    [Group] AS TerritoryRegion,
    CountryRegionCode
FROM Sales.SalesTerritory;
