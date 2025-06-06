use northwind;


-- insert a software category
insert into categories (CategoryName, Description)
values ('Software', 'Software products for the enterprise.');

-- 1. Add a new supplier.
INSERT INTO suppliers (companyname, postalcode)
VALUES ('Microsoft', 98052);

-- 2. Add a new product provided by that supplier
INSERT INTO Products (ProductName, SupplierID, CategoryID, UnitPrice)
VALUES ("Microsoft Office 365", 30,9,99.99);

-- 3. List all products and their suppliers.
SELECT *
FROM products
INNER JOIN suppliers ON products.SupplierID = suppliers.SupplierID;

-- 4. Raise the price of your new product by 15%.
UPDATE products 
SET UnitPrice = UnitPrice *1.5
WHERE ProductID = 70;

-- 5. List the products and prices of all products from that supplier.
SELECT ProductID, ProductName, UnitPrice
FROM products
JOIN Suppliers on products.SupplierID = suppliers.SupplierID
WHERE CompanyName = 'Microsoft';

-- 6. Delete the new product.
DELETE FROM products
WHERE ProductName = 'Microsoft Office 365';

-- 7. Delete the new supplier.
DELETE FROM suppliers 
WHERE CompanyName = 'Microsoft';

-- 8. List all products.
SELECT *
FROM products;

-- 9. List all suppliers.
SELECT * 
FROM suppliers; 