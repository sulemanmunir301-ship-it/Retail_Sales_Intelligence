USE AdventureWorks2022;
GO

SELECT 
    c.CustomerID,
    p.FirstName,
    p.LastName,
    st.Name AS TerritoryName,
    c.StoreID,
    s.Name AS StoreName
FROM Sales.Customer c
LEFT JOIN Person.Person p
    ON c.PersonID = p.BusinessEntityID
LEFT JOIN Sales.SalesTerritory st
    ON c.TerritoryID = st.TerritoryID
LEFT JOIN Sales.Store s
    ON c.StoreID = s.BusinessEntityID;