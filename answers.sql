create database normalforms;
use normalforms;
-- Question 1
CREATE TABLE ProductDetail_1NF (
    OrderID INT,
    CustomerName VARCHAR(255),
    Product VARCHAR(255)
);

INSERT INTO ProductDetail_1NF (OrderID, CustomerName, Product)
VALUES
    (101, 'John Doe', 'Laptop'),
    (101, 'John Doe', 'Mouse'),
    (102, 'Jane Smith', 'Tablet'),
    (102, 'Jane Smith', 'Keyboard'),
    (102, 'Jane Smith', 'Mouse'),
    (103, 'Emily Clark', 'Phone');






-- Question 2
create table Orders(
    OrderID int primary key,
    CustomerName varchar(255)
    

);

insert into Orders (OrderID, CustomerName)
values
    (101, 'John Doe'),
    (102, 'Jane Smith'),
    (103, 'Emily Clark');



create table OrderProducts (
    OrderID int,
    Product varchar(255),
    Quantity int,
    FOREIGN KEY (OrderID) REFERENCES Orders(OrderID)
);

insert into OrderProducts (OrderID, Product)
values
    (101, 'Laptop'),
    (101, 'Mouse'),
    (102, 'Tablet'),
    (102, 'Keyboard'),
    (102, 'Mouse'),
    (103, 'Phone');






