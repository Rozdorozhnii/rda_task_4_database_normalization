-- Create database and tables

CREATE DATABASE ShopDB;
USE ShopDB;

CREATE TABLE Countries (
    ID INT,
    Name VARCHAR(50),
    WarehouseName VARCHAR(50),
    WarehouseAddress VARCHAR(50),
    PRIMARY KEY (ID)
);

CREATE TABLE ProductInventory (
    ID INT,
    ProductName VARCHAR(50),
    WarehouseAmount INT,
    CountryID INT,
    FOREIGN KEY (CountryID) REFERENCES Countries (ID) ON DELETE NO ACTION,
    PRIMARY KEY (ID)
);

-- Populate test data

INSERT INTO Countries (ID, Name, WarehouseName, WarehouseAddress)
  VALUES (1, 'Country1', 'Warehouse-1', 'City-1, Street-1');

INSERT INTO Countries (ID, Name, WarehouseName, WarehouseAddress)
  VALUES (2, 'Country2', 'Warehouse-2', 'City-2, Street-2');

INSERT INTO ProductInventory (ID, ProductName, WarehouseAmount, CountryID)
  VALUES (1, 'AwersomeProduct', 2, 1);

INSERT INTO ProductInventory (ID, ProductName, WarehouseAmount, CountryID)
  VALUES (2, 'AwersomeProduct', 5, 2);
