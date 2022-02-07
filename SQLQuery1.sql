CREATE DATABASE [Database_WithCollation]
 COLLATE SQL_Latin1_General_CP1_CS_AS
GO

SELECT DATABASEPROPERTYEX('Database_WithCollation','collation');

CREATE TABLE Products (ProductID int, ProductName varchar(50) COLLATE SQL_Latin1_General_CP437_BIN)

sp_help Products

Alter TABLE Products Alter COLUMN ProductID varchar(30) COLLATE SQL_Latin1_General_CP437_BIN

create table Product (ProductID int, ProductName varchar(50))
GO
 
INSERT INTO Product values (1,'Book'), (2,'book'), (3,'ᴃook')
GO

SELECT * FROM Product WHERE ProductName COLLATE SQL_Latin1_General_CP1_CS_AS ='Book'

SELECT * FROM Product WHERE ProductName = 'Book'

SELECT * FROM Product WHERE ProductName COLLATE SQL_Latin1_General_CP850_CI_AI ='book'


