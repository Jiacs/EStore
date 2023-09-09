Product
    pid
    name
    brand
    price
    color

User
    uid
    name
    phone
    email
    age
    weight

create table Product(
    pid int,
    name varchar(256),
    brand varchar(256),
    price int,
    color varchar(256),
    ratings float
)

create table User(
    uid int UNIQUE, //唯一的
    name varchar(256), PRIMARY KEY //唯一且不为空
    phone varchar(16), 
    email varchar(256) NOT NULL//不能为空
)

UNIQUE, PRIMARY KEY, NOT NULL, AUTO_INCREMENT

create table User(
    uid int PRIMARY KEY AUTO_INCREMENT, 
    name varchar(256),  
    phone varchar(16),
    email varchar(256) NOT NULL
)

Alter table User Add age int default 26; //添加一个age int的column进user table
Alter table User drop column age; //从user table 中删除一个名为age的column

insert into User(uid, name, phone, email) values(null, 'john', '+1 99999000', 'dsakjl@djksal.com')；
insert into User values(null, 'fiona', '+1 99213999000', 'fionajl@djksal.com')
update User set name = 'mike', phone = '+1 891203801', email = 'asdjkl@dskal.com' where uid = 3;
delete from User where uid = 3;
where =/ >/ <
select * from User order by name DESC;
select * from User where age between 25 and 30;
select * from User where name like 'j%b';
select count(uid), name from User group by name;
use User
show tables
select min(age) as MINAGE, max(age) from User;
min 可以换成sun， average,等等

=====================================================================================================

create table customer(
    cid int PRIMARY KEY AUTO_INCREMENT,
    name varchar(256),
    phone varchar(20),
    email varchar(256)
);

create table Address(
    aid int PRIMARY KEY AUTO_INCREMENT,
    addressLine varchar(256),
    city varchar(256),
    pincode int,
    cid int,
    CONSTRAINT fk_customer_address FOREIGN KEY (cid)
    REFERENCES Customer(cid)
);

insert into customer values(null, 'john', '5921235612', 'dsjakljdslka@dsas.com')
insert into Address values(null, '48 dasdsad', 'New York', 21312)

select customer.name, customer.phone, Address.addressLine, Address.city
from customer
Inner Join Address on Customer.cid = Address.cid;

select customer.name, customer.phone, Address.addressLine, Address.city
from customer
Right Join Address on Customer.cid = Address.cid;