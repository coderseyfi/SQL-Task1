
create table Employee(
Id int primary key identity,
Name nvarchar(20),
Surname nvarchar(20),
FatherName nvarchar(20),
PositionId int foreign key references Position(Id),
Salary decimal(18,2)
);

create table Position(
Id int primary key identity,
Name nvarchar(20),
);

create table Branch (
Id int primary key identity,
Name nvarchar(20),
);

create table Product (
Id int primary key identity,
Name nvarchar(20),
Purchase_price decimal(18,2),
Sell_price decimal(18,2)
);

create table Sale (
Id int primary key identity,
ProductId int foreign key references Product(Id),
EmployeeId int foreign key references Employee(Id),
Date_of_sale date,
BranchId int foreign key references Branch(Id)
);

insert into Employee
values('Seyfi','Necefli','Meherrem',1,4000),
('Zaman','Safarov','Eyvaz',2,3000),
('Abbas','Mammadli','Sahil',3,2400),
('Ramin','Safarli','Rahil',4,2430),
('Farid','Aliyev','Murad',5,2500)

insert into Position
values('Team Leader'),
('Manager'),
('Assistant Manager'),
('Executive'),
('Director')

insert into Branch
values('Absheron'),
('Ahmadli'),
('Yasamal'),
('Nizami'),
('Nesimi')

insert into Product
values('Coca-cola',0.6,0.9),
('Sun',0.2,0.7),
('Egg',0.1,0.15),
('Hicaz',3,5),
('Fanta',0.6,0.9)

insert into Sale
values(1,1,'2020-02-23',1),
(2,2,'2022-01-22',2),
(3,3,'2021-05-12',3),
(4,4,'2019-10-10',4),
(5,5,'2022-08-08',5)

select (e.Surname + ' ' + e.Name + ' '+ e.FatherName) 'SAA', p.Name 'Product', p.Purchase_price, p.Sell_price ,b.Name 'Branch' from Sale s 
join Employee e on e.Id = s.EmployeeId
join Product p on p.Id = s.ProductId
join Branch b on b.Id = s.BranchId



