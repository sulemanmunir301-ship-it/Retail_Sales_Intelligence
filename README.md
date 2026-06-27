# Retail Sales Intelligence Dashboard

## Project Overview
End-to-end business intelligence project built on Microsoft SQL Server and Power BI Desktop. 
Transforms raw transactional data from AdventureWorks2022 into an executive-ready 
sales analytics dashboard covering revenue trends, product performance, and territory analysis.

## Business Problem
A retail business needs visibility into three core questions:
- Which products and categories are driving revenue?
- Which territories and regions are performing or underperforming?
- How is revenue trending year over year across online and offline channels?

## Technical Stack
- **Database:** Microsoft SQL Server 2025 Express
- **Query Tool:** SQL Server Management Studio (SSMS)
- **Dataset:** AdventureWorks2022
- **Visualization:** Power BI Desktop
- **Version Control:** GitHub

## Data Architecture — Star Schema
Fact table: `Sales.SalesOrderDetail` (121,317 rows)

Dimension tables:
- `Production.Product` — 504 products with category hierarchy
- `Sales.SalesTerritory` — 10 territories across 3 regions
- `Sales.Customer` — 19,820 customers
- `Sales.SalesOrderHeader` — order-level metadata (date, channel, territory)

## SQL Layer
Four queries building the star schema foundation:
- `Fact_query_final.sql` — Core fact table joining SalesOrderDetail + SalesOrderHeader + Product + Territory
- `Dim_product.sql` — Product dimension with subcategory and category hierarchy
- `Dim_territory.sql` — Territory dimension with region grouping
- `Dim_customer.sql` — Customer dimension with store and person data

## DAX Measures
Six measures written in Power BI:
- `Total Revenue` — SUM of LineTotal across all transactions
- `Total Orders` — DISTINCTCOUNT of SalesOrderID
- `Avg Order Value` — DIVIDE(Total Revenue, Total Orders)
- `Total Quantity` — SUM of OrderQty
- `Online Revenue` — CALCULATE filtered to OnlineOrderFlag = TRUE
- `YoY Revenue Growth %` — Year over year revenue comparison using VAR pattern

## Dashboard Pages
1. **Executive Summary** — KPI cards, revenue trend line chart, online vs offline donut, revenue by territory
2. **Product Performance** — Product revenue table, category bar chart, Top 10 products treemap
3. **Territory Analysis** — Regional column chart, country map visual, territory YoY growth table

## Key Findings
- Total Revenue: $109.85M across all years
- Business is split between online and offline channels
- Revenue and product performance varies significantly across North America, Europe, and Pacific regions
