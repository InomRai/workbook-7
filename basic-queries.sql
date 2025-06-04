-- 1. What is the name of the table that holds the items Northwind sells? 

Select * From Product; 

-- 2. Write a query to list the product id, product name, and unit price of every product. 
Select 
ProductID, 
ProductName, 
UnitPrice   

From 
products; 

-- 3. Write a query to list the product id, product name, and unit price of every product. Except this time, order then in ascending order by price. 
SELECT
ProductID,
ProductName,
UnitPrice 

FROM
Products 

ORDER BY UnitPrice ASC;

-- 4. What are the products that we carry where the unit price is $7.50 or less? 
Select ProductName, unitPrice 

From products 

Where UnitPrice <= 7.50 

Order By UnitPrice ASc; 

-- 5. What are the products that we carry where we have at least 100 units on hand? Order them in descending order by price. 

SELECT 

ProductID,
ProductName,
UnitPrice,
UnitsInStock 
 
FROM 

Products 
    
WHERE 

UnitsInStock >= 100 
    
ORDER BY UnitPrice DESC; 

-- 6. What are the products that we carry where we have at least 100 units on hand? Order them in descending order by price. If two or more have the same price, list those in ascending order by product name. 
SELECT 
	*
FROM 

Products 
    
WHERE 

UnitsInStock >= 100 
    
ORDER BY UnitPrice DESC, ProductName ASC; 

-- 7. What are the products that we carry where we have no units on hand, but 1 or more units of them on backorder? Order them by product name. 
Select productName, UnitInStock, BackorderQuantity 

From Products 

where UntsInStock = 0 And BackorderQuantity > 0 

order By productName ASC; 

-- 8. What is the name of the table that holds the types (categories) of the items Northwind sells? 
-- Categories 

-- 9. Write a query that lists all of the columns and all 
-- of the rows of the categories table? What is the category id of seafood? 
Select CategoryID 

From Categories 

Where CategoryName = 'Seafood' ;
 
-- 10. Examine the Products table. How does it identify the type (category) of
-- each item sold? Write a query to list all of the seafood items we carry.   

SELECT * FROM products WHERE CategoryId = 8;  
-- 11. What are the first and last names of all of the Northwind employees? 
 
 Select FirstName, LastName 
 
 From Employees;
 
-- 12. What employees have "manager" in their titles? 

Select FirstName, LastName, Title

From Employees 

Where Titl Like '%manager%'; 

-- 13. List the distinct job titles in employees. 

Select Title 

From Employees; 

-- 14. What employees have a salary that is between $200 0 and $2500? 

Select FirstName, LastName, Salary 

From Employee 

Where Salary between 2000 and 2500; 

-- 15. List all of the information about all of Northwind's suppliers. 

Select * From Supplires; 

-- 16. Examine the Products table. How do you know what supplier supplies
-- each product? Write a query to list all of the items that "Tokyo Traders"
-- supplies to Northwind 

SELECT products.ProductName 

FROM products 

JOIN suppliers ON products.SupplierID = suppliers.SupplierID 

WHERE suppliers.CompanyName = 'Tokyo Traders';