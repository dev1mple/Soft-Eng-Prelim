-- Create suppliers Table
CREATE TABLE suppliers (
    supplier_id INT AUTO_INCREMENT PRIMARY KEY,
    supplier_name VARCHAR(50),
    contact_phone VARCHAR(50),
    supplier_address VARCHAR(50)
);

-- Create medicine Table
CREATE TABLE medicine (
    medicine_name INT AUTO_INCREMENT PRIMARY KEY,
    medicine_id VARCHAR(50),
    supplier_id VARCHAR(50),
    price VARCHAR(50),
    expiration_date DATE,
    quantity_in_stock INT
);

-- Create SalesDescription Table
CREATE TABLE SalesDescription (
    sale_id INT AUTO_INCREMENT PRIMARY KEY,
    medicine_id VARCHAR(50),
    quantity INT(50)
);

-- Create Sales Table
CREATE TABLE Sales (
    sale_id INT AUTO_INCREMENT PRIMARY KEY,
    customer_id VARCHAR,
    sale_date DATE,
    employee_id VARCHAR
);

-- Create Employees Table
CREATE TABLE Employees (
    employee_id INT AUTO_INCREMENT PRIMARY KEY,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    position VARCHAR(50)
);

-- Create Customers Table
CREATE TABLE Customers (
    customer_id INT AUTO_INCREMENT PRIMARY KEY,
    first_name VARCHAR(50),
    phone VARCHAR,
    customer_address VARCHAR
);
