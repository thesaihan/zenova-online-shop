show databases;

create database zenova;

use zenova;

show tables;

create table products(id int primary key auto_increment, name varchar(255), price float, color varchar(255));

desc products;

insert into products(name, price, color) values ("Short Pants", 32.5, "#cccccc"), ("Hoodie", 78.6, "#10155c");

select * from products;

update products set name="Stripped Short Pants" where id=1;

delete from products where id=2;
