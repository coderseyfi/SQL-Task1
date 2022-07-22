create table Users(
Id int primary key identity(1,1),
Name nvarchar(20),
Surname nvarchar(20),
Email varchar(50) not null constraint ck_email check(len(Email) >=4 and len(Email)<=100) 
);

create table Posts(
Id int primary key identity,
LikeCount int,
CreatedAt date,
Title nvarchar(50),
PostText nvarchar(500) not null,
UserId int foreign key references Users(Id)
);


insert into Users
values('Zaman','Safarov','zamansafarov2@gmail.com'),
('Abbas','Mammadli','abbas211@gmail.com'),
('Ramin','Safarli','raminsafar2@gmail.com'),
('Seyfi','Nacafli','nadjaflee224@gmail.com'),
('Ali','Aliyev','ali909@gmail.com'),
('Farid','Aliyev','aliyevfarid202@gmail.com'),
('Necef','Hesedov','necef.h@gmail.com')


alter table Users
add unique(Email)

insert into Posts
values(54,'2011-01-28','Sunday Funday','Open Instagram',1),
(122,'2013-03-23','Sunday Funday','Swipe from left to right to open your Stories camera',2),
(232,'2011-01-13','Sunday Funday','Swipe until Create is active',3),
(312,'2012-12-02','Sunday Funday','Swipe until "Aa" is active',4),
(546,'2015-07-23','Sunday Funday','Tap where it says "Tap to type"',5),
(575,'2011-01-17','Sunday Funday','Type your post',6),
(575,'2011-01-03','Sunday Funday','Edit your post (if you want to)',7)