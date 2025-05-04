-- Question 1
-- Create a new table following 1NF rules
CREATE TABLE ProductDetail_1NF (
    OrderID INT,
    CustomerName VARCHAR(100),
    Product VARCHAR(100)
);

-- Insert transformed data, ensuring each product is in a separate row
INSERT INTO ProductDetail_1NF(OrderID, CustomerName, Product)
    VALUES
    (101,'John Deo','Laptop'),
    (101,'John Deo','Mouse'),
    (102,'Jane Smith','Tablet'),
    (102,'Jane Smith','Keyboard'),
    (102,'Jane Smith','Tablet'),
    (103,'Emily Clark','Phone');

-- Question 2
-- Create Orders table (Each OrderID maps to a CustomerName)
CREATE TABLE Orders (
    OrderID INT PRIMARY KEY,
    CustomerName VARCHAR(100)
);

INSERT INTO Orders (OrderID, CustomerName)
    VALUES
    (101,'John Deo'),
    (102,'Jane Smith'),
    (103,'Emily Clark');
  
CREATE TABLE OrderProducts (
    OrderID INT,
    Product VARCHAR(100),
    Quantity INT,
    PRIMARY KEY (OrderID, Product),
    FOREIGN KEY (OrderID) REFERENCES Orders(OrderID)
);


INSERT INTO OrderProducts (OrderID, Product, Quantity)
    (101,'Laptop,'2),
    (101,'Mouse'1),
    (102,'Tablet'3),
    (102,'Keyboard'1),
    (102,'Mouse',2),
    (103,'Phone'1);
