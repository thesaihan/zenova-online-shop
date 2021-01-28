show databases;

create database zenova;

use zenova;

show tables;

create table products(id int primary key auto_increment, name varchar(255), description varchar(520), price float, color varchar(255));

desc products;

insert into products(name, description, price, color) values ("Short Pants", "Push through your squats, lunges and leg presses. These short tights offer a light compression fit with a supportive, locked-in feel. Made to manage heat and moisture, they include breathable mesh cooling zones that target airflow as your workout ramps up.", 32.5, "#cccccc"),
("Hoodie", "Zip up in comfort between workouts. This hoodie features contrast 3-Stripes down the shoulders and sleeves and a subtle adidas logo on the chest. The soft track jacket is made of cotton and recycled polyester fleece for cozy warmth.", 78.6, "#10155c"),
("Ultraboost 20 Shoes", "Goodbye gravity. We designed these adidas Ultraboost running shoes using insights from space. Together with NASA, we ran experiments in gravity to micro-tune Boost midsoles to perform better on earth. And because all the innovation is pointless without thought for the planet, the shoes stand as part of our commitment to help end plastic waste.", 180.0, "#FE4C38");

select * from products;

update products set name="Stripped Short Pants" where id=1;

delete from products where id=2;
