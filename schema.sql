CREATE TABLE Customers (
  CustomerID INT PRIMARY KEY,
  Name VARCHAR(255),
  Email VARCHAR(255),
  Password VARCHAR(255),
  Address VARCHAR(255)
);

CREATE TABLE Products (
  ProductID INT PRIMARY KEY,
  Name VARCHAR(255),
  Description VARCHAR(255),
  Price DECIMAL(10, 2),
  StockQuantity INT,
  Category VARCHAR(255)
);

CREATE TABLE Orders (
  OrderID INT PRIMARY KEY,
  CustomerID INT,
  OrderDate DATE,
  TotalAmount DECIMAL(10, 2)
);

CREATE TABLE OrderItems (
  OrderItemID INT PRIMARY KEY,
  OrderID INT,
  ProductID INT,
  Quantity INT,
  Subtotal DECIMAL(10, 2)
);

CREATE TABLE Payments (
  PaymentID INT PRIMARY KEY,
  OrderID INT,
  PaymentMethod VARCHAR(255),
  PaymentDate DATE,
  Amount DECIMAL(10, 2)
);

CREATE TABLE Inventory (
  InventoryID INT,
  ProductID INT,
  Quantity INT,
  ReorderLevel INT,
  ReorderQuantity INT
);
