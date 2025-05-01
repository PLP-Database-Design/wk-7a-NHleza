-- Transform ProductDetail table to 1NF by storing each product in its own row
CREATE TABLE ProductDetail_1NF (
    OrderID INT,
    CustomerName VARCHAR(255),
    Product VARCHAR(255)
);

INSERT INTO ProductDetail_1NF (OrderID, CustomerName, Product)
SELECT OrderID, CustomerName, UNNEST(string_to_array(Products, ', '))
FROM ProductDetail;

-- Transform ProductDetail table to 1NF by storing each product in its own row
CREATE TABLE ProductDetail_1NF (
    OrderID INT,
    CustomerName VARCHAR(255),
    Product VARCHAR(255)
);

INSERT INTO ProductDetail_1NF (OrderID, CustomerName, Product)
SELECT OrderID, CustomerName, UNNEST(string_to_array(Products, ', '))
FROM ProductDetail;


-- Create OrderProducts table (Each row represents a unique product in an order)
CREATE TABLE OrderProducts (
    OrderID INT,
    Product VARCHAR(255),
    Quantity INT,
    PRIMARY KEY (OrderID, Product),
    FOREIGN KEY (OrderID) REFERENCES Orders(OrderID)
);

-- Insert OrderID, Product, and Quantity values
INSERT INTO OrderProducts (OrderID, Product, Quantity)
SELECT OrderID, Product, Quantity FROM OrderDetails;
