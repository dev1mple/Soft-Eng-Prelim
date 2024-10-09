Select all the customers written by the user with a customer_id of 4. 
SELECT * FROM Customers
WHERE customer_id = 4;

Which employees have made sales to a specific customer, and on what dates?
SELECT 
    Employees.first_name AS employee_first_name, 
    Employees.last_name AS employee_last_name, 
    Sales.sale_date
FROM 
    Sales
JOIN 
    Employees ON Sales.employee_id = Employees.employee_id
JOIN 
    Customers ON Sales.customer_id = Customers.customer_id
WHERE 
    Customers.first_name = 'Phaidra';

What is the total amount spent by each customer on their purchases?

SELECT 
    Customers.first_name AS customer_name, 
    SUM(medicine.price * SalesDescription.quantity) AS total_amount_spent
FROM 
    SalesDescription
JOIN 
    Sales ON SalesDescription.sale_id = Sales.sale_id
JOIN 
    Customers ON Sales.customer_id = Customers.customer_id
JOIN 
    medicine ON SalesDescription.medicine_id = medicine.medicine_id
GROUP BY 
    Customers.first_name;

Get the total quantity of medicine sold to each customer:

SELECT Customers.customer_id, Customers.first_name, SUM(SalesDescription.quantity) AS total_quantity
FROM SalesDescription
JOIN Sales ON Sales.sale_id = SalesDescription.sale_id
JOIN Customers ON Sales.customer_id = Customers.customer_id
GROUP BY Customers.customer_id;
