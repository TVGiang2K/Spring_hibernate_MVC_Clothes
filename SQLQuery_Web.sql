Drop DATABASE DB_btl;
GO
CREATE DATABASE DB_web_btl;
GO
USE DB_web_btl;
GO
CREATE TABLE [Role](
Id int IDENTITY(1,1) NOT NULL primary key,
Name varchar(50) NULL UNIQUE
)
GO
CREATE TABLE Account(
Id int IDENTITY(1,1) NOT NULL primary key,
Username nvarchar(45) NULL UNIQUE,
Email nvarchar(50) NULL,
Phone nvarchar(50) Null,
[Password] varchar(100) NULL,
Fullname nvarchar(100) NULL,
[Address] nvarchar(100) NULL,
Gender bit Null,
Birthday datetime NULL,
[Enabled] bit DEFAULT 'true'
)
GO
CREATE TABLE Account_roles(
Id int IDENTITY(1,1) NOT NULL primary key,
UserId int NULL foreign key references Account(Id),
RoleId int NULL foreign key references [Role](Id)
)
GO

CREATE TABLE Producer
(
	Id int PRIMARY KEY IDENTITY,
	Name varchar(100) NOT NULL UNIQUE
)
GO
CREATE TABLE Products
(
	Id int PRIMARY KEY IDENTITY,
	Name varchar(120) NOT NULL UNIQUE,
	ProducerId int FOREIGN KEY REFERENCES Producer(Id),
	Price float NOT NULL,
    SalePrice float NULL,
    [Description] text NOT NULL,
	DateSubmitted datetime,
    Status tinyint DEFAULT '1'
)
GO
CREATE TABLE Categories
(
	Id int PRIMARY KEY IDENTITY,
	Name varchar(100) NOT NULL UNIQUE
)
GO
CREATE TABLE Cate_Pro(
Id int IDENTITY(1,1) NOT NULL primary key,
ProId int NULL FOREIGN KEY REFERENCES Products(Id),
CateId int NULL foreign key references Categories(Id)
)
GO
CREATE TABLE ProductDetail
(
	Id int PRIMARY KEY IDENTITY,
    ProId int FOREIGN KEY REFERENCES Products(Id),
	[Weight] varchar(50),
	Dimensions varchar(50),
	Materials varchar(50)
)
GO
CREATE TABLE [Images]
(
    Id int PRIMARY KEY IDENTITY,
	Name varchar(200) NULL,
    ProId int NULL FOREIGN KEY REFERENCES ProductDetail(Id)
)
GO

CREATE TABLE Size
(
    Id int PRIMARY KEY IDENTITY,
    Name varchar(5) NULL UNIQUE
)
GO

CREATE TABLE Pro_Size(
Id int IDENTITY(1,1) NOT NULL primary key,
ProId int NULL foreign key references ProductDetail(Id),
SizeId int NULL foreign key references Size(Id),
)
GO

CREATE TABLE Color
(
    Id int PRIMARY KEY IDENTITY,
	Name varchar(10) NULL UNIQUE
)
GO
CREATE TABLE Pro_Color(
Id int IDENTITY(1,1) NOT NULL primary key,
ProId int NULL foreign key references ProductDetail(Id),
ColorId int NULL foreign key references Color(Id)
)
GO
CREATE TABLE Orders
(
    Id int PRIMARY KEY IDENTITY,
	RecipientName varchar(100),
	AcId int Null foreign key references Account(Id),
	[Address] varchar(100) NULL,
	Phone varchar(50),
	Quantity int NULL,
	TotalPrice float Not Null,
	Status tinyint DEFAULT '1'
)
GO
CREATE TABLE OrderDetail
(
    Id int PRIMARY KEY IDENTITY,
	ProId int Null foreign key references ProductDetail(Id),
	OrId int NULL foreign key references Orders(Id)
)
GO
INSERT [Role] VALUES (N'ROLE_ADMIN')
GO
INSERT [Role] VALUES (N'ROLE_USER')
GO
INSERT Account(Username ,Email ,Phone ,[Password] ,Fullname ,[Address] ,Gender ,Birthday) VALUES (N'admin',N'admin@gmail.com', N'0399999993', N'$2a$12$fgQHk4ioj5KmleObfoj/7OzSW0DUdkB53erRQdXxx9GW5yG2TdnGK',N'Nguyễn','Ha Noi - Viet Nam',1,'1997-01-12')
GO
INSERT Account(Username ,Email ,Phone ,[Password] ,Fullname ,[Address] ,Gender ,Birthday) VALUES (N'user',N'user@gmail.com', N'0399999999', N'$2a$12$fgQHk4ioj5KmleObfoj/7OzSW0DUdkB53erRQdXxx9GW5yG2TdnGK','Hoa','TP HCM - Viet Nam',0,'1999-01-12')
GO
INSERT Account_roles (UserId, RoleId) VALUES (1, 1)
GO
INSERT Account_roles (UserId, RoleId) VALUES (1, 2)
GO
INSERT Account_roles (UserId, RoleId) VALUES (2, 2)
GO
INSERT Producer VALUES (N'Louis Vuitton'),
(N'Zara'),
(N'Hermes'),
(N'H&M'),
(N'Gucci'),
(N'Chanel'),
(N'Burberry'),
(N'Prada'),
(N'Coach'),
(N'Armani')
go
insert into Products values(N'Esprit Ruffle Shirt', 2, 40, 30, '“The secrets of Grisham’s
success are no secret at all. There are two of them: his pacing, which
ranges from fast to breakneck, and his Theme—little guy takes on big
conspiracy with the little guy getting the win in the end.” —Time
magazineThe law, by its nature, creates drama, and a new Grisham promises
us an inside look at the dirty machineries of process and power, with
plenty of entertainment” —Los Angeles Times','2022-01-12', 1),
(N'Herschel supply', 1, 40, 0, '“The secrets of Grisham’s
success are no secret at all. There are two of them: his pacing, which
ranges from fast to breakneck, and his Theme—little guy takes on big
conspiracy with the little guy getting the win in the end.” —Time
magazineThe law, by its nature, creates drama, and a new Grisham promises
us an inside look at the dirty machineries of process and power, with
plenty of entertainment” —Los Angeles Times','2022-02-13', 1),
(N'Only Check Trouser', 7, 70, 60, '“The secrets of Grisham’s
success are no secret at all. There are two of them: his pacing, which
ranges from fast to breakneck, and his Theme—little guy takes on big
conspiracy with the little guy getting the win in the end.” —Time
magazineThe law, by its nature, creates drama, and a new Grisham promises
us an inside look at the dirty machineries of process and power, with
plenty of entertainment” —Los Angeles Times','2022-03-14', 0),
(N'Classic Trench Coat', 3, 50, 0, '“The secrets of Grisham’s
success are no secret at all. There are two of them: his pacing, which
ranges from fast to breakneck, and his Theme—little guy takes on big
conspiracy with the little guy getting the win in the end.” —Time
magazineThe law, by its nature, creates drama, and a new Grisham promises
us an inside look at the dirty machineries of process and power, with
plenty of entertainment” —Los Angeles Times','2022-04-15', 0),
(N'Front Pocket Jumper', 4, 90, 60, '“The secrets of Grisham’s
success are no secret at all. There are two of them: his pacing, which
ranges from fast to breakneck, and his Theme—little guy takes on big
conspiracy with the little guy getting the win in the end.” —Time
magazineThe law, by its nature, creates drama, and a new Grisham promises
us an inside look at the dirty machineries of process and power, with
plenty of entertainment” —Los Angeles Times','2022-05-16', 1),
(N'Vintage Inspired Classic', 5, 80, 0, '“The secrets of Grisham’s
success are no secret at all. There are two of them: his pacing, which
ranges from fast to breakneck, and his Theme—little guy takes on big
conspiracy with the little guy getting the win in the end.” —Time
magazineThe law, by its nature, creates drama, and a new Grisham promises
us an inside look at the dirty machineries of process and power, with
plenty of entertainment” —Los Angeles Times','2021-06-17', 0),
(N'Shirt in Stretch Cotton', 6, 80, 70, '“The secrets of Grisham’s
success are no secret at all. There are two of them: his pacing, which
ranges from fast to breakneck, and his Theme—little guy takes on big
conspiracy with the little guy getting the win in the end.” —Time
magazineThe law, by its nature, creates drama, and a new Grisham promises
us an inside look at the dirty machineries of process and power, with
plenty of entertainment” —Los Angeles Times','2021-07-18', 1),
(N'Pieces Metallic Printed', 8, 90, 0, '“The secrets of Grisham’s
success are no secret at all. There are two of them: his pacing, which
ranges from fast to breakneck, and his Theme—little guy takes on big
conspiracy with the little guy getting the win in the end.” —Time
magazineThe law, by its nature, creates drama, and a new Grisham promises
us an inside look at the dirty machineries of process and power, with
plenty of entertainment” —Los Angeles Times','2023-01-10', 1),
(N'Converse All Star Hi Plimsolls', 9, 50, 30, '“The secrets of Grisham’s
success are no secret at all. There are two of them: his pacing, which
ranges from fast to breakneck, and his Theme—little guy takes on big
conspiracy with the little guy getting the win in the end.” —Time
magazineThe law, by its nature, creates drama, and a new Grisham promises
us an inside look at the dirty machineries of process and power, with
plenty of entertainment” —Los Angeles Times','2023-02-19', 0),
(N'Femme T-Shirt In Stripe', 10, 60, 40, '“The secrets of Grisham’s
success are no secret at all. There are two of them: his pacing, which
ranges from fast to breakneck, and his Theme—little guy takes on big
conspiracy with the little guy getting the win in the end.” —Time
magazineThe law, by its nature, creates drama, and a new Grisham promises
us an inside look at the dirty machineries of process and power, with
plenty of entertainment” —Los Angeles Times','2022-08-19', 1),
(N'BLACK SNEAKERS SPORT', 4, 80, 60, '“The secrets of Grisham’s
success are no secret at all. There are two of them: his pacing, which
ranges from fast to breakneck, and his Theme—little guy takes on big
conspiracy with the little guy getting the win in the end.” —Time
magazineThe law, by its nature, creates drama, and a new Grisham promises
us an inside look at the dirty machineries of process and power, with
plenty of entertainment” —Los Angeles Times','2022-09-11', 1),
(N'T-Shirt with Sleeve', 10, 90, 0, '“The secrets of Grisham’s
success are no secret at all. There are two of them: his pacing, which
ranges from fast to breakneck, and his Theme—little guy takes on big
conspiracy with the little guy getting the win in the end.” —Time
magazineThe law, by its nature, creates drama, and a new Grisham promises
us an inside look at the dirty machineries of process and power, with
plenty of entertainment” —Los Angeles Times','2023-03-14', 1),
(N'Pretty Little Thing', 7, 70, 40, '“The secrets of Grisham’s
success are no secret at all. There are two of them: his pacing, which
ranges from fast to breakneck, and his Theme—little guy takes on big
conspiracy with the little guy getting the win in the end.” —Time
magazineThe law, by its nature, creates drama, and a new Grisham promises
us an inside look at the dirty machineries of process and power, with
plenty of entertainment” —Los Angeles Times','2021-01-11', 0),
(N'Mini Silver Mesh Watch', 8, 70, 0, '“The secrets of Grisham’s
success are no secret at all. There are two of them: his pacing, which
ranges from fast to breakneck, and his Theme—little guy takes on big
conspiracy with the little guy getting the win in the end.” —Time
magazineThe law, by its nature, creates drama, and a new Grisham promises
us an inside look at the dirty machineries of process and power, with
plenty of entertainment” —Los Angeles Times','2021-07-24', 1),
(N'GREY RUKCSAK', 3, 30, 0, '“The secrets of Grisham’s
success are no secret at all. There are two of them: his pacing, which
ranges from fast to breakneck, and his Theme—little guy takes on big
conspiracy with the little guy getting the win in the end.” —Time
magazineThe law, by its nature, creates drama, and a new Grisham promises
us an inside look at the dirty machineries of process and power, with
plenty of entertainment” —Los Angeles Times','2020-03-04', 1),
(N'GREY HOODIE', 5, 60, 55, '“The secrets of Grisham’s
success are no secret at all. There are two of them: his pacing, which
ranges from fast to breakneck, and his Theme—little guy takes on big
conspiracy with the little guy getting the win in the end.” —Time
magazineThe law, by its nature, creates drama, and a new Grisham promises
us an inside look at the dirty machineries of process and power, with
plenty of entertainment” —Los Angeles Times','2020-07-14', 1)
go
INSERT Categories VALUES (N'WOMEN FASHION'),
(N'MEN FASHION'),
(N'SPORT'),
(N'BAGS'),
(N'FOOTWEAR'),
(N'Watches'),
(N'GLASSES'),
(N'HOODIES'),
(N'JACKET'),
(N'HAT'),
(N'KIDS FASHION')
Go
INSERT Cate_Pro VALUES (1, 1),
(2, 2),
(3, 3),
(4, 4),
(5, 5),
(6, 6),
(7, 7),
(8, 8),
(9, 9),
(10, 10),
(11, 11),
(12, 2),
(13, 3),
(14, 3),
(15, 8),
(16, 11),
(1, 3),
(2, 8),
(3, 11),
(5, 3),
(9, 1),
(9, 2),
(8, 1),
(8, 11),
(16, 2),
(13, 1)
go

INSERT ProductDetail VALUES(1, N'0,97kg',N'110 x 33 x 100 cm',N'cotton'),
(2 , N'0,37kg',N'110 x 33 x 200 cm',N'kaki'),
(3 , N'0,57kg',N'110 x 30 x 100 cm',N'60% cotton'),
(4 , N'1,67kg',N'110 x 43 x 200 cm',N'Canvas'),
(5 , N'1,57kg',N'60 x 34 x 80 cm',N'40% cotton'),
(6 , N'1,97kg',N'70 x 36 x 80 cm',N'Stainless Steel'),
(7 , N'1,91kg',N'180 x 53 x 190 cm',N'50% cotton'),
(8 , N'0,92kg',N'160 x 40 x 200 cm',N'30% cotton'),
(9 , N'0,93kg',N'170 x 37 x 200 cm',N'Synthetic materials'),
(10 , N'0,94kg',N'130 x 33 x 150 cm',N'Canvas'),
(11 , N'0,98kg',N'120 x 34 x 160 cm',N'40% cotton'),
(12 , N'0,87kg',N'110 x 35 x 170 cm',N'kaki'),
(13 , N'0,77kg',N'140 x 32 x 180 cm',N'50% cotton'),
(14 , N'0,77kg',N'150 x 31 x 120 cm',N'kaki'),
(15 , N'0,67kg',N'160 x 30 x 110 cm',N'Canvas'),
(16 , N'0,57kg',N'170 x 38 x 190 cm',N'Ceramic Cotton')
go
INSERT [Images] VALUES (N'product-1.jpg', 1),
(N'product-1-01-detail.jpg', 1),
(N'product-1-02-detail.jpg', 1),
(N'product-1-03-detail.jpg', 1),
(N'product-2.jpg', 2),
(N'product-2-01-detail.jpg', 2),
(N'product-2-02-detail.jpg', 2),
(N'product-2-03-detail.jpg', 2),
(N'product-3.jpg', 3),
(N'product-3-01-detail.jpg', 3),
(N'product-3-02-detail.jpg', 3),
(N'product-3-03-detail.jpg', 3),
(N'product-15.jpg', 15),
(N'product-15-01-detail.jpg', 15),
(N'product-15-02-detail.jpg', 15),
(N'product-15-03-detail.jpg', 15),
(N'product-9.jpg', 9),
(N'product-9-01-detail.jpg', 9),
(N'product-9-02-detail.jpg', 9),
(N'product-9-03-detail.jpg', 9),
(N'product-9-04-detail.jpg', 9),
(N'product-9-05-detail.jpg', 9),
(N'product-6.jpg', 6),
(N'product-6-01-detail.jpg', 6),
(N'product-6-02-detail.jpg', 6),
(N'product-6-03-detail.jpg', 6),
(N'product-16.jpg', 16),
(N'product-16-01-detail.jpg', 16),
(N'product-16-02-detail.jpg', 16),
(N'product-16-03-detail.jpg', 16),
(N'product-5.jpg', 5),
(N'product-5-01-detail.jpg', 5),
(N'product-5-02-detail.jpg', 5),
(N'product-5-03-detail.jpg', 5),
(N'product-4.jpg', 4),
(N'product-4-01-detail.jpg', 4),
(N'product-4-02-detail.jpg', 4),
(N'product-4-03-detail.jpg', 4),
(N'product-4-04-detail.jpg', 4),
(N'product-12.jpg', 12),
(N'product-12-01-detail.jpg', 12),
(N'product-12-02-detail.jpg', 12),
(N'product-12-03-detail.jpg', 12),
(N'product-7.jpg', 7),
(N'product-7-01-detail.jpg', 7),
(N'product-7-02-detail.jpg', 7),
(N'product-7-03-detail.jpg', 7),
(N'product-8.jpg', 8),
(N'product-8-01-detail.jpg', 8),
(N'product-8-02-detail.jpg', 8),
(N'product-8-03-detail.jpg', 8),
(N'product-10.jpg', 10),
(N'product-10-01-detail.jpg', 10),
(N'product-10-02-detail.jpg', 10),
(N'product-10-03-detail.jpg', 10),
(N'product-11.jpg', 11),
(N'product-11-01-detail.jpg', 11),
(N'product-11-02-detail.jpg', 11),
(N'product-11-03-detail.jpg', 11),
(N'product-13.jpg', 13),
(N'product-13-01-detail.jpg', 13),
(N'product-13-02-detail.jpg', 13),
(N'product-13-03-detail.jpg', 13),
(N'product-14.jpg', 14),
(N'product-14-01-detail.jpg', 14),
(N'product-14-02-detail.jpg', 14),
(N'product-14-03-detail.jpg', 14),
(N'product-14-04-detail.jpg', 14)
go
INSERT Size VALUES (N'S'),
(N'M'),
(N'L'),
(N'XL'),
(N'XXL')
go
INSERT Color VALUES('Red'), 
('Orange'), 
('Yelloww'), 
('Green'), 
('Blue'), 
('Purple'), 
('Black'), 
('White'), 
('Brown'), 
('Pink'), 
('Gray')
go
INSERT Pro_Size VALUES (1,1),
(1,2),
(1,3),
(1,4),
(2,1),
(2,3),
(2,5),
(3,4),
(3,5),
(3,3),
(4,2),
(4,1),
(4,3),
(5,1),
(5,3),
(6,2),
(6,3),
(6,5),
(7,4),
(7,3),
(8,1),
(8,2),
(9,3),
(9,4),
(9,2),
(10,4),
(10,3),
(11,5),
(12,1),
(12,2),
(12,3),
(12,4),
(12,5),
(13,4),
(13,5),
(14,3),
(15,2),
(15,3),
(16,2),
(16,3),
(16,4),
(16,5)
go
INSERT Pro_Color VALUES (1,5),
(1,2),
(1,8),
(1,11),
(2,10),
(2,1),
(2,3),
(2,5),
(3,9),
(3,7),
(3,6),
(3,11),
(4,2),
(4,1),
(4,3),
(5,8),
(5,10),
(5,9),
(5,7),
(6,2),
(6,3),
(6,5),
(6,9),
(7,4),
(7,3),
(7,8),
(7,11),
(8,10),
(8,2),
(8,9),
(8,6),
(9,3),
(9,4),
(9,2),
(9,7),
(10,4),
(10,3),
(11,5),
(12,1),
(12,2),
(12,3),
(12,4),
(12,8),
(13,4),
(13,7),
(14,3),
(15,2),
(15,11),
(16,2),
(16,10),
(16,4),
(16,9)
go
select * from [Role];
select * from Account;
select * from Account_roles;
select * from Producer;
select * from Products;
select * from Categories;
select * from Cate_Pro;
select * from [Images];
select * from ProductDetail;
select * from Size;
select * from Color;
select * from Pro_Size;
select * from Pro_Color;
select * from Orders;
select * from OrderDetail;