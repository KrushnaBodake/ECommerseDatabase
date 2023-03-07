create Database ECommerce
use  ECommerce
create table tblRole(
roleid int primary key identity(1,1),
rolename varchar(20)
)

select *from tblRole;
select*from tblUser

create table tblUser(
id int primary key identity(1,1),
username varchar(50),
email varchar(50),
password varchar(50),
contact varchar(20),
roleid int ,
isactive int)
select*from tblUser

alter table tblUser add constraint fk_roleid foreign key (roleid)references tblRole(roleid)

create table tblCategory(
catid int primary key identity(1,1),
catname varchar(30)
)
select  *from tblCategory
select  *from tblProduct

Create table tblProduct(
prodid int primary key identity(1,1),
prodname varchar(30),
price numeric(10,2),
imageurl varchar(500),
company varchar(30),
catid int,
constraint fk_catid foreign key (catid)references tblCategory(catid),
discount int ,
description varchar(500),
stock int
)






       
