-- drop, create and connect to SOAPDB
echo *******************************************************
echo the following command may fail because the database did
echo NOT previously exist, this is an acceptable error
echo *******************************************************

drop database SOAPDB
create database SOAPDB
connect to SOAPDB 

-- catalog SOAPDB as a odbc data source
catalog system odbc data source SOAPDB

-- create the schema
CREATE SCHEMA SOAP

-- create table SOAP.CUSTOMER
CREATE TABLE SOAP.CUSTOMER  ( CustomerID INTEGER NOT NULL, Prefix VARCHAR (10) , FirstName VARCHAR (20) ,MiddleName VARCHAR (10) ,LastName VARCHAR (20) , Title VARCHAR (50) , CustomerType VARCHAR (20) , CustomerName VARCHAR (50) , OfficePhoneNo VARCHAR (20) , MobilePhoneNo VARCHAR (20) , FaxNo VARCHAR (20) , emailAddress VARCHAR (50) ,  BillStreetNo VARCHAR (100) , BillCity VARCHAR (50) , BillState VARCHAR (20) , BillPostCode VARCHAR (10) , BillCountry VARCHAR (50) , ShipStreet VARCHAR (100) , ShipCity VARCHAR (50) , ShipState VARCHAR (20) , ShipPostCode VARCHAR (10) , ShipCountry VARCHAR (50) , RegnDate DATE , LastUpdateDate DATE , Notes VARCHAR (1000) , PRIMARY KEY (CustomerID))  DATA CAPTURE NONE  
CREATE TABLE SOAP.INVENTORY (PartNo CHARACTER (10) NOT NULL, PartName VARCHAR (50) , Location VARCHAR (50) , Quantity INTEGER , LastTransDate DATE , LastCountDate DATE , ReorderQuantity SMALLINT , QuantityOnOrder SMALLINT , OrderDate DATE , Classification VARCHAR (50) , Notes VARCHAR (1000) , PRIMARY KEY (PartNo))  DATA CAPTURE NONE  

-- create table SOAP.CREDITTB
CREATE TABLE SOAP.CREDITTB  (CreditCardNo CHARACTER (20) NOT NULL, ExpiryDate DATE , Balance DECIMAL(5,0), LastTransDate DATE, LastTransDateTime TIME, PRIMARY KEY (CreditCardNo))  DATA CAPTURE NONE  

-- create table SOAP.PRICETB
CREATE TABLE SOAP.PRICETB   (PartNo CHARACTER (10) NOT NULL, Price DECIMAL(3,0) , LastUpdateDate DATE , PRIMARY KEY (PartNo))  DATA CAPTURE NONE  

-- create table SOAP.ORDERTB
CREATE TABLE SOAP.ORDERTB   (OrderNo INTEGER NOT NULL, CustomerID INTEGER NOT NULL, OrderDate DATE, OrderAmount DECIMAL(5,0), Discount DECIMAL(5,0),  PRIMARY KEY (OrderNo)) DATA CAPTURE NONE  

-- create table SOAP.ITEMTB
CREATE TABLE SOAP.ITEMTB    (OrderNo INTEGER NOT NULL, PartNo CHARACTER (10) NOT NULL, Quantity INTEGER, PRIMARY KEY (OrderNo, PartNo) ) DATA CAPTURE NONE 

-- create table SOAP.PURCHASEORDER
CREATE TABLE SOAP.PURCHASEORDER   (PurchaseOrderID INTEGER NOT NULL, CustomerID INTEGER NOT NULL, PaymentMethod VARCHAR (10), CreditCardNo VARCHAR (20), Comment VARCHAR(50), PRIMARY KEY (PurchaseOrderID)) DATA CAPTURE NONE 

-- create table SOAP.ITEMS
CREATE TABLE SOAP.ITEMS           (PurchaseOrderID INTEGER NOT NULL, PartNumber VARCHAR(10) NOT NULL, ProductName VARCHAR(20), Quantity INTEGER, ShipDate DATE, Comment VARCHAR(50), PRIMARY KEY (PartNumber, PurchaseOrderID)) DATA CAPTURE NONE 

INSERT INTO SOAP.CUSTOMER ( CustomerID,Prefix,FirstName,LastName,CustomerName,OfficePhoneNo,emailAddress,BillStreetNo,BillCity,BillState,BillPostCode,BillCountry,RegnDate, CustomerType) VALUES ( 001, 'Mr.', 'Malcom','Fraser','Acme Corporation','(888) 888-8888','TestSOAP@hotmail.com','555 Richmond Street','Markham','ON','L6G 1C7','Canada','2002-11-20', 'PREFERRED') 

INSERT INTO SOAP.CUSTOMER ( CustomerID,Prefix,FirstName,LastName,CustomerName,OfficePhoneNo,emailAddress,BillStreetNo,BillCity,BillState,BillPostCode,BillCountry,RegnDate, CustomerType) VALUES ( 002, 'Mrs.', 'Chris', 'Lynn', 'Acme Corporation', '(888) 888-8888', 'TestSOAP@hotmail.com', '555 Richmond Street', 'Toronto', 'ON', 'L6G 1C7', 'Canada', '2002-11-20', 'PREFERRED') 

INSERT INTO SOAP.CUSTOMER ( CustomerID,Prefix,FirstName,LastName,CustomerName,OfficePhoneNo,emailAddress,BillStreetNo,BillCity,BillState,BillPostCode,BillCountry,RegnDate, CustomerType) VALUES ( 003, 'Mr.', 'John', 'Lynn', 'Acme Corporation', '(888) 888-8888', 'TestSOAP@hotmail.com', '555 Richmond Street', 'Toronto', 'ON', 'L6G 1C7', 'Canada', '2002-11-20', 'PREFERRED')

INSERT INTO SOAP.CUSTOMER ( CustomerID,Prefix,FirstName,LastName,CustomerName,OfficePhoneNo,emailAddress,BillStreetNo,BillCity,BillState,BillPostCode,BillCountry,RegnDate, CustomerType) VALUES ( 004, 'Mr.', 'Adam', 'Smith', 'Acme Corporation', '(888) 888-8888', 'TestSOAP@hotmail.com', '555 Richmond Street', 'Toronto', 'ON', 'L6G 1C7', 'Canada', '2002-11-20', 'PREFERRED')

INSERT INTO SOAP.CUSTOMER ( CustomerID,Prefix,FirstName,LastName,CustomerName,OfficePhoneNo,emailAddress,BillStreetNo,BillCity,BillState,BillPostCode,BillCountry,RegnDate, CustomerType) VALUES ( 005, 'Mr.', 'Alan', 'White', 'Acme Corporation', '(888) 888-8888', 'TestSOAP@hotmail.com', '555 Richmond Street', 'Toronto', 'ON', 'L6G 1C7', 'Canada', '2002-11-20', 'PREFERRED')

INSERT INTO SOAP.CUSTOMER ( CustomerID,Prefix,FirstName,LastName,CustomerName,OfficePhoneNo,emailAddress,BillStreetNo,BillCity,BillState,BillPostCode,BillCountry,RegnDate, CustomerType) VALUES ( 006, 'Mr.', 'Dave', 'Baird', 'Acme Corporation', '(888) 888-8888', 'TestSOAP@hotmail.com', '555 Richmond Street', 'Toronto', 'ON', 'L6G 1C7', 'Canada', '2002-11-20', 'PREFERRED')

INSERT INTO SOAP.CUSTOMER ( CustomerID,Prefix,FirstName,LastName,CustomerName,OfficePhoneNo,emailAddress,BillStreetNo,BillCity,BillState,BillPostCode,BillCountry,RegnDate, CustomerType) VALUES ( 007, 'Mr.', 'Mike', 'Wu', 'Acme Corporation', '(888) 888-8888', 'TestSOAP@hotmail.com', '555 Richmond Street', 'Toronto', 'ON', 'L6G 1C7', 'Canada', '2002-11-20', 'REGULAR')

INSERT INTO SOAP.CUSTOMER ( CustomerID,Prefix,FirstName,LastName,CustomerName,OfficePhoneNo,emailAddress,BillStreetNo,BillCity,BillState,BillPostCode,BillCountry,RegnDate, CustomerType) VALUES ( 008, 'Mr.', 'Dick', 'Jones', 'Acme Corporation', '(888) 888-8888', 'TestSOAP@hotmail.com', '555 Richmond Street', 'Toronto', 'ON', 'L6G 1C7', 'Canada', '2002-11-20', 'REGULAR')

INSERT INTO SOAP.CUSTOMER ( CustomerID,Prefix,FirstName,LastName,CustomerName,OfficePhoneNo,emailAddress,BillStreetNo,BillCity,BillState,BillPostCode,BillCountry,RegnDate, CustomerType) VALUES ( 009, 'Ms.', 'Kevin', 'Tam', 'Acme Corporation', '(888) 888-8888', 'TestSOAP@hotmail.com', '555 Richmond Street', 'Toronto', 'ON', 'L6G 1C7', 'Canada', '2002-11-20', 'REGULAR')

INSERT INTO SOAP.CUSTOMER ( CustomerID,Prefix,FirstName,LastName,CustomerName,OfficePhoneNo,emailAddress,BillStreetNo,BillCity,BillState,BillPostCode,BillCountry,RegnDate, CustomerType) VALUES ( 010, 'Mr.', 'Harry', 'Chau', 'Acme Corporation', '(888) 888-8888', 'TestSOAP@hotmail.com', '555 Richmond Street', 'Toronto', 'ON', 'L6G 1C7', 'Canada', '2002-11-20', 'REGULAR')

INSERT INTO SOAP.CUSTOMER ( CustomerID,Prefix,FirstName,LastName,CustomerName,OfficePhoneNo,emailAddress,BillStreetNo,BillCity,BillState,BillPostCode,BillCountry,RegnDate, CustomerType) VALUES ( 011, 'Mr.', 'Mark', 'Twain', 'Acme Corporation', '(888) 888-8888', 'TestSOAP@hotmail.com', '555 Richmond Street', 'Toronto', 'ON', 'L6G 1C7', 'Canada', '2002-11-20', 'REGULAR')

-- populate the inventory table
INSERT INTO SOAP.INVENTORY ( PartNo , PartName , Location , Quantity , LastTransDate , LastCountDate , ReorderQuantity , QuantityOnOrder , OrderDate , Classification , Notes ) VALUES ( '100-abc' , 'Acme Inegrator'  ,   'Warehouse1' , 12   , '1999-12-31' , '2002-06-12' , 6   , 0  , NULL , 'Lethal Waste' , 'These things break')

INSERT INTO SOAP.INVENTORY ( PartNo , PartName , Location , Quantity , LastTransDate , LastCountDate , ReorderQuantity , QuantityOnOrder , OrderDate , Classification , Notes ) VALUES ( '200-def' , 'GUI Toolkit'     ,   'Warehouse2' , 1411 , '2001-12-31' , '2002-06-12' , 100 , 0  , NULL , 'Hazardous' , 'These things break things')

INSERT INTO SOAP.INVENTORY ( PartNo , PartName , Location , Quantity , LastTransDate , LastCountDate , ReorderQuantity , QuantityOnOrder , OrderDate , Classification , Notes ) VALUES ( '300-ghi' , 'WMQI Integrator' ,   'Warehouse1' , 142  , '2002-06-30' , '2002-06-12' , 100 , 58 , NULL , 'Malodorous' , 'These things smell')

INSERT INTO SOAP.INVENTORY ( PartNo , PartName , Location , Quantity , LastTransDate , LastCountDate , ReorderQuantity , QuantityOnOrder , OrderDate , Classification , Notes ) VALUES ( '400-jkl' , 'ThinkPad T40'    ,   'Warehouse1' , 1523 , '2002-06-30' , '2002-06-12' , 100 , 0  , NULL , 'Humorous' , 'These things make people smile')

-- populate the credit table
INSERT INTO SOAP.CREDITTB (CreditCardNo , ExpiryDate , Balance , LastTransDate, LastTransDateTime ) VALUES ('4502-3601-5630-12221' ,  '2005-06-30' , 1000.00,  '2002-05-30', '10:30:35')
INSERT INTO SOAP.CREDITTB (CreditCardNo , ExpiryDate , Balance , LastTransDate, LastTransDateTime ) VALUES ('4502-3602-5630-12222' ,  '2005-06-30' , 1500.00,  '2002-06-30', '11:30:35')
INSERT INTO SOAP.CREDITTB (CreditCardNo , ExpiryDate , Balance , LastTransDate, LastTransDateTime ) VALUES ('4502-3603-5630-12223' ,  '2006-06-30' , 2500.00,  '2002-07-30', '12:30:35')
INSERT INTO SOAP.CREDITTB (CreditCardNo , ExpiryDate , Balance , LastTransDate, LastTransDateTime ) VALUES ('4502-3604-5630-12224' ,  '2007-06-30' , 3500.00,  '2002-08-30', '13:30:35')  
INSERT INTO SOAP.CREDITTB (CreditCardNo , ExpiryDate , Balance , LastTransDate, LastTransDateTime ) VALUES ('4502-3605-5630-12225' ,  '2007-06-30' , 3500.00,  '2002-08-30', '13:30:35')  
INSERT INTO SOAP.CREDITTB (CreditCardNo , ExpiryDate , Balance , LastTransDate, LastTransDateTime ) VALUES ('4502-3606-5630-12226' ,  '2007-06-30' , 3500.00,  '2002-08-30', '13:30:35')  
INSERT INTO SOAP.CREDITTB (CreditCardNo , ExpiryDate , Balance , LastTransDate, LastTransDateTime ) VALUES ('4502-3607-5630-12227' ,  '2007-06-30' , 3500.00,  '2002-08-30', '13:30:35')  
INSERT INTO SOAP.CREDITTB (CreditCardNo , ExpiryDate , Balance , LastTransDate, LastTransDateTime ) VALUES ('4502-3608-5630-12228' ,  '2007-06-30' , 3500.00,  '2002-08-30', '13:30:35')  
INSERT INTO SOAP.CREDITTB (CreditCardNo , ExpiryDate , Balance , LastTransDate, LastTransDateTime ) VALUES ('4502-3609-5630-12229' ,  '2007-06-30' , 3500.00,  '2002-08-30', '13:30:35')  
INSERT INTO SOAP.CREDITTB (CreditCardNo , ExpiryDate , Balance , LastTransDate, LastTransDateTime ) VALUES ('4502-3610-5630-12230' ,  '2007-06-30' , 3500.00,  '2002-08-30', '13:30:35')  
INSERT INTO SOAP.CREDITTB (CreditCardNo , ExpiryDate , Balance , LastTransDate, LastTransDateTime ) VALUES ('4502-3611-5630-12231' ,  '2007-06-30' , 3500.00,  '2002-08-30', '13:30:35')  

-- populate the price table
INSERT INTO SOAP.PRICETB  (PartNo , Price , LastUpdateDate ) VALUES ( '100-abc' , 20.0 , '2002-12-30') 
INSERT INTO SOAP.PRICETB  (PartNo , Price , LastUpdateDate ) VALUES ( '200-def' , 20.0 , '2002-12-30') 
INSERT INTO SOAP.PRICETB  (PartNo , Price , LastUpdateDate ) VALUES ( '300-ghi' , 20.0 , '2002-12-30') 
INSERT INTO SOAP.PRICETB  (PartNo , Price , LastUpdateDate ) VALUES ( '400-jkl' , 20.0 , '2002-12-30') 

-- commit the changes
commit

-- disconnect from the database
-- CONNECT RESET
