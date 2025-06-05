-- 1. List the product id, product name, unit price and category name of all
-- products. Order by category name and within that, by product name.
SELECT 
ProductID,
ProductName,
UnitPrice,
CategoryName
FROM products
JOIN categories on products.CategoryID = categories.CategoryID
ORDER BY CategoryName, ProductName;

-- 2. List the product id, product name, unit price and supplier name of all
-- products that cost more than $75. Order by product name.
SELECT 
ProductID,
ProductName,
UnitPrice,
CompanyName
FROM products
INNER JOIN suppliers on products.SupplierID = suppliers.SupplierID
WHERE UnitPrice > 75
ORDER BY ProductName;

-- 3. List the product id, product name, unit price, category name, and supplier
-- name of every product. Order by product name.
SELECT 
ProductID,
ProductName,
UnitPrice,
CategoryName,
CompanyName
FROM products
INNER JOIN categories on products.categoryID = categories.CategoryID
INNER JOIN suppliers on products.SupplierID = suppliers.SupplierID
order by categoryname, productname;

-- 4. What is the product name(s) and categories of the most expensive
-- products? HINT: Find the max price in a subquery and then use that in
-- your more complex query that joins products with categories.
select ProductName, categories.CategoryName, UnitPrice
from products
join categories on products.CategoryID = categories.CategoryID
where products.UnitPrice = ( 
	select MAX(UnitPrice)
    from products);

-- 5. List the order id, ship name, ship address, and shipping company name of
-- every order that shipped to Germany.

SELECT
OrderID,
ShipName,
ShipAddress,
ShipCountry
FROM orders
JOIN categories on orders.categoryID = categories.categoryID
WHERE 
ORDER BY CategoryName,ProductName;

-- 6. List the order id, order date, ship name, ship address of all orders that
-- ordered "Sasquatch Ale"? 