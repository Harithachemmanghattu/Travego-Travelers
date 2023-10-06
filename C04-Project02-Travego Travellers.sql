--- Q1


create database Travego;
use Travego;
create table passengers(Passenger_id int primary key,Passenger_name varchar(20),Category varchar(20),Gender varchar(20),Boarding_city varchar(20),Destination_city varchar(20),
Distance int,Bus_Type varchar(20));
create table Price(id int,Bus_Type varchar(20),Distance int,price int);

--- Q1:  B 
insert into passengers values(1,'Sejal','AC','F' ,'Bengaluru','Chennai', 350, 'Sleeper'), 
(2, 'Anmol', 'Non-AC', 'M', 'Mumbai', 'Hyderabad', 700, 'Sitting'), 
(3, 'Pallavi', 'AC', 'F', 'Panaji', 'Bengaluru', 600, 'Sleeper'),
(4 ,'Khusboo', 'AC', 'F', 'Chennai', 'Mumbai', 1500 ,'Sleeper'), 
(5, 'Udit', 'Non-AC', 'M' ,'Trivandrum','Panaji', 1000, 'Sleeper'), 
(6, 'Ankur','AC', 'M','Nagpur', 'Hyderabad', 500, 'Sitting'), 
(7, 'Hemant', 'Non-AC', 'M', 'Panaji', 'Mumbai', 700, 'Sleeper'), 
(8,'Manish','Non-AC', 'M','Hyderabad', 'Bengaluru', 500 ,'Sitting'), 
(9, 'Piyush', 'AC', 'M','Pune', 'Nagpur', 700, 'Sitting' );
 select* from passengers;
 insert into price values(1," Sleeper", 350, 770),
(2,"Sleeper", 500, 1100),
(3, "Sleeper", 600, 1320),
(4, "Sleeper", 700, 1540),
(5, "Sleeper", 1000, 2200),
(6, "Sleeper", 1200, 2640),
(7, "Sleeper", 1500, 2700),
(8 ,"Sitting" ,500 ,620),
(9, "Sitting",600, 744),
(10 ,"Sitting" ,700 ,868),
(11, "Sitting", 1000, 1240),
(12, "Sitting", 1200, 1488),
(13,"Sitting" ,1500 ,1860);
select*from price;
--- Q2  A---
select * from passengers where gender="F" and distance>=600;
--- Q2 B---
select * from passengers where bus_type="sleeper" and distance<500;

-- Q2 C
select * from passengers where passenger_name="s%";

-- Q2 D 
select * from passengers;
select* from price;
select p.passenger_name,p.Boarding_city,p.Destination_city,
p.Bus_Type,pr.price from passengers p join price pr on p.Bus_Type=pr.bus_type and p.distance=pr.distance;
-- Q2 E 

select p.passenger_name,pr.price from passengers p join price pr
 on p.distance=pr.distance and p.bus_type=pr.bus_type
 where p.distance=1000 and p.bus_type="sitting";
 
--- Q2 F --

select * from passengers p join  price pr
 on p.bus_type=pr.bus_type 
and p.distance=pr.distance where p.passenger_name="pallavi" and p.boarding_city="bengaluru" 
and p.destination_city="panaji" and p.bus_type in ("sleeper","sitting");

--- Q2 G --
update passengers set Category="Non-Ac" where bus_type="sleeper";
select * from passengers;
-- Q2 H ---
delete from passengers where passenger_name="piyush";
commit;
-- Q2 I --
truncate passengers;
select count(*) passengers;

--- Q2 J -- 
drop table passengers;




