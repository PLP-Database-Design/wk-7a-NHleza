-- Transform ProductDetail table to 1NF by storing each product in its own row
CREATE TABLE ProductDetail_1NF (
    OrderID INT,
    CustomerName VARCHAR(255),
    Product VARCHAR(255)
);

INSERT INTO ProductDetail_1NF (OrderID, CustomerName, Product)
SELECT OrderID, CustomerName, UNNEST(string_to_array(Products, ', '))
FROM ProductDetail;

