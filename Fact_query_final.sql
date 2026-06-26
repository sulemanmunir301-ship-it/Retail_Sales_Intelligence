USE AdventureWorks2022;
GO

SELECT 
    sod.SalesOrderID,
    sod.SalesOrderDetailID,
    sod.ProductID,
    p.Name AS ProductName,
    p.ProductSubcategoryID,
    sod.OrderQty,
    sod.UnitPrice,
    sod.LineTotal,
    soh.OrderDate,
    soh.CustomerID,
    soh.TerritoryID,
    st.Name AS TerritoryName,
    st.[Group] AS TerritoryRegion,
    soh.OnlineOrderFlag
FROM Sales.SalesOrderDetail sod
JOIN Sales.SalesOrderHeader soh 
    ON sod.SalesOrderID = soh.SalesOrderID
JOIN Production.Product p
    ON sod.ProductID = p.ProductID
JOIN Sales.SalesTerritory st
    ON soh.TerritoryID = st.TerritoryID;

    USE AdventureWorks2022;
GO

SELECT 
    sod.SalesOrderID,
    sod.SalesOrderDetailID,
    sod.ProductID,
    p.Name AS ProductName,
    p.ProductSubcategoryID,
    sod.OrderQty,
    sod.UnitPrice,
    sod.LineTotal,
    soh.OrderDate,
    YEAR(soh.OrderDate) AS OrderYear,
    MONTH(soh.OrderDate) AS OrderMonth,
    soh.CustomerID,
    soh.TerritoryID,
    st.Name AS TerritoryName,
    st.[Group] AS TerritoryRegion,
    soh.OnlineOrderFlag
FROM Sales.SalesOrderDetail sod
JOIN Sales.SalesOrderHeader soh 
    ON sod.SalesOrderID = soh.SalesOrderID
JOIN Production.Product p
    ON sod.ProductID = p.ProductID
JOIN Sales.SalesTerritory st
    ON soh.TerritoryID = st.TerritoryID;