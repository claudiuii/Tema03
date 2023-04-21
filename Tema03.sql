--Exercise 1 - You have to create a report based on the tables Production.Product and Production.ProductCategory.
--The report should contain the product name and the category name of each product.

SELECT p.Name AS "Product Name", pc.Name AS "Category Name"
FROM Production.Product AS p
LEFT JOIN Production.ProductSubcategory AS ps
ON p.ProductSubcategoryID=ps.ProductSubcategoryID
LEFT JOIN Production.ProductCategory AS pc
ON pc.ProductCategoryID=ps.ProductCategoryID



--Exercise 2 - Write a query that returns all customers who placed at least one order, with detailed information about each one.
--The tables are Sales.Customer, Sales.SalesOrderHeader and Sales.SalesOrderDetail.

SELECT c.PersonID,
*
FROM Sales.SalesOrderHeader AS soh
JOIN Sales.Customer AS c
ON c.CustomerID=soh.CustomerID
JOIN Sales.SalesOrderDetail AS sod
ON soh.SalesOrderID=sod.SalesOrderID



--Exercise 3 - You have to create a report based on the tables Production.ProductSubcategory and Production.ProductCategory.
--The report should return every combination between the category name and the subcategory name.

SELECT pc.name AS "Category Name", ps.name "Subcategory Name"
from Production.ProductCategory AS pc
cross join Production.ProductSubcategory AS ps