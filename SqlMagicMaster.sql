create database sqlmagicmaster;
use sqlmagicmaster;
-- Question 1:Create User Table
create table User(id int primary key,firstName varchar(100),lastName varchar(100),age int,salary int);
insert into User values(1,"KeerthiSri","Chindukuri",21,90000);
insert into User values(2,"Manaswini","Bhaskaruni",20,100000);
-- Question 2:Creating Movie Table and adding to the User table
create table Movie(id int not null,movieName varchar(100),hero varchar(100),heroine varchar(100),ticketprice int,movieRating int,
foreign key(id) references User(id));
insert into Movie values(1,"Jalsa","PawanKalyan","Iliyana",300,9);
insert into Movie values(2,"Julayi","AlluArjun","Iliyana",200,4);
insert into Movie values(1,"RRR","NTR","Aliyabhat",500,9);
insert into Movie values(1,"Bahubali","Prabhas","anushka",400,7);
insert into Movie values(2,"Laddubabu","AllariNaresh","Bhoomika",100,2);
insert into Movie values(2,"Maghadheera","Ramcharan","Kajal",150,6);
insert into Movie values(2,"Darling","Prabhas","Kajal",250,5);
-- Question 3:List Of Movies Watched By User1
select movieName from Movie where id=1; 
-- Question 3:List Of Movies Watched By User2
select movieName from Movie where id=2;
-- Question 4:List Of Movies Watched By User1 and ticketprice is greater than 150
select movieName from Movie where id=1 and ticketPrice>150; 
-- Question 4:List Of Movies Watched By User2 and ticketprice is greater than 150
select movieName from Movie where id=2 and ticketPrice>150; 
-- Question 5:List Of Movies Watched By User1 and movieRating is less than 5
select movieName from Movie where id=1 and movieRating<5; 
-- Question 5:List Of Movies Watched By User2 and movieRating is less than 5
select movieName from Movie where id=2 and movieRating<5; 
-- Question 6:List Of Movies Watched By User1 and where herione repeats more than or equal to 2 times
 select movieName from Movie where id=1 group by heroine having count(*)>=2;
-- Question 6:List Of Movies Watched By User2 and where herione repeats more than or equal to 2 times
select movieName from Movie where id=2 group by heroine having count(*)>=2;
-- Question 7:Total Amount Spent By User1 On Movies
select sum(ticketPrice) from Movie where id=1; 
 -- Question 7:Total Amount Spent By User2 on Movies
select sum(ticketPrice) from Movie where id=2;
-- Question 7: Average Amount Spent By User1 on Movies
select avg(ticketPrice) from Movie where id=1; 
-- Question 7:Average Amount Spent By User2 on Movies
select avg(ticketPrice)from Movie where id=2;  



