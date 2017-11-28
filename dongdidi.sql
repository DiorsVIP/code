CREATE DATABASE information;

USE information;

SHOW TABLES;

CREATE TABLE Customers(
	CustomerID INT PRIMARY KEY,
	CName VARCHAR(8) NOT NULL,
	City VARCHAR(10),
	Tel VARCHAR(50));
INSERT INTO Customers(CustomerId,CName,City,Tel)VALUE(1,'Aha','BeiJing','1234932882');
INSERT INTO Customers(CustomerId,CName,City,Tel)VALUE(2,'Jasper','ShangHai','1345434377');
INSERT INTO Customers(CustomerId,CName,City,Tel)VALUE(3,'Max','XiAn','1547897929');
INSERT INTO Customers(CustomerId,CName,City,Tel)VALUE(4,'Dinale','SanYa','145435222');
INSERT INTO Customers(CustomerId,CName,City,Tel)VALUE(5,'Sheld','DaLi','1884928457');
INSERT INTO Customers(CustomerId,CName,City,Tel)VALUE(6,'NeiNei','LuoYang','1345932882');
INSERT INTO Customers(CustomerId,CName,City,Tel)VALUE(7,'Maria','WuHan','1724239920');

SELECT * FROM Customers;

USE information;

CREATE TABLE Goods(
	GoodsID INT PRIMARY KEY,
	GName VARCHAR(20) NOT NULL,
	Price DOUBLE,
	Number INT);
INSERT INTO Goods(GoodsID,GName,Price,Number)VALUE(100,'beer',4.0,100);
INSERT INTO Goods(GoodsID,GName,Price,Number)VALUE(101,'icecream',3.0,45);
INSERT INTO Goods(GoodsID,GName,Price,Number)VALUE(102,'frice',5.0,32);	
INSERT INTO Goods(GoodsID,GName,Price,Number)VALUE(103,'yoghurt',6.0,34);
INSERT INTO Goods(GoodsID,GName,Price,Number)VALUE(104,'hamburger',8.0,67);
INSERT INTO Goods(GoodsID,GName,Price,Number)VALUE(105,'flower',38.0,54);

SELECT * FROM Goods;

USE information;

CREATE TABLE Orders(
	GoodsID INT NOT NULL REFERENCES Goods(GoodsID) ON DELETE CASCADE,
	CustomerID INT NOT NULL REFERENCES Customers(CustomerID) ON DELETE NO ACTION,
	OrderNum INT NOT NULL,
	OrderMoney DOUBLE NOT NULL);
	
INSERT INTO Orders(GoodsID,CustomerID,OrderNum,OrderMoney)VALUE(101,2,3,9.0); 
INSERT INTO Orders(GoodsID,CustomerID,OrderNum,OrderMoney)VALUE(102,1,4,20.0); 
INSERT INTO Orders(GoodsID,CustomerID,OrderNum,OrderMoney)VALUE(103,4,5,30.0); 
INSERT INTO Orders(GoodsID,CustomerID,OrderNum,OrderMoney)VALUE(105,5,1,38.0); 
INSERT INTO Orders(GoodsID,CustomerID,OrderNum,OrderMoney)VALUE(104,3,6,48.0); 
INSERT INTO Orders(GoodsID,CustomerID,OrderNum,OrderMoney)VALUE(105,7,2,76.0); 
INSERT INTO Orders(GoodsID,CustomerID,OrderNum,OrderMoney)VALUE(101,6,4,12.0); 

SELECT * FROM Orders;
