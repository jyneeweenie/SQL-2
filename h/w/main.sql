CREATE TABLE Customers (
    customer_id INT PRIMARY KEY,
    customer_name VARCHAR(255),
    contact_name VARCHAR(255),
    email VARCHAR(255),
    phone VARCHAR(50)
);
CREATE TABLE Products (
    product_id INT PRIMARY KEY,
    product_name VARCHAR(255),
    price DECIMAL(10, 2)
);
CREATE TABLE Customer_Products (
    customer_id INT,
    product_id INT,
    FOREIGN KEY (customer_id) REFERENCES Customers(customer_id),
    FOREIGN KEY (product_id) REFERENCES Products(product_id),
    PRIMARY KEY (customer_id, product_id)
);
-- Insert customers
INSERT INTO Customers (customer_id, customer_name, contact_name, email, phone)
VALUES
    (1, 'Alfredson', 'Alfred Smith', 'alfred@example.com', '123-456-7890'),
    (2, 'Barton', 'Barbara Johnson', 'barbara@example.com', '234-567-8901'),
    (3, 'Corbin', 'Charles Davis', 'charles@example.com', '345-678-9012'),
    (4, 'Anderson', 'Anna Lee', 'anna@example.com', '456-789-0123');

-- Insert products
INSERT INTO Products (product_id, product_name, price)
VALUES
    (1, 'Laptop', 999.99),
    (2, 'Smartphone', 499.99),
    (3, 'Tablet', 299.99);

-- Associate customers with products
INSERT INTO Customer_Products (customer_id, product_id)
VALUES
    (1, 1),
    (1, 2),
    (3, 2),
    (4, 3);
SELECT
    c.customer_id,
    c.customer_name,
    c.contact_name,
    c.email,
    c.phone,
    p.product_name,
    p.price
FROM
    Customers c
JOIN
    Customer_Products cp ON c.customer_id = cp.customer_id
JOIN
    Products p ON cp.product_id = p.product_id
WHERE
    c.customer_name LIKE 'A%' AND c.customer_name LIKE '%or%'
ORDER BY
    c.customer_name;
