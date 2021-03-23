-- 1

create database assignment;
use assignment;

-- 3

create table authors (authorid int , name  varchar(55) );

-- 3.a

insert into authors values ( 1 , "J.K. Rowling") , (2 , "Thomas Hardy"), (3," Oscar Wilde"),
 ( 4, "Sidney Sheldon") , ( 5,"Alistair Maclean") ,(6 ,"Jane Autsen");
 
 -- 3.b 
 
 insert into authors values ( 7,"Chetan Bagath") , (8, "William Shakespeare"), (9,"Charles Dickens");
 
 -- 3.c
 
 SET SQL_SAFE_UPDATES=0;
 update authors
 set name = "Alastair McNeal" where authorid = 5;
 
 -- 4
 
 create table books (bookid int , title varchar(50)  , authorid int);
 
 -- 4.a
 
 insert into books values ( 1, "Harry Potter and the Philosopher's Stone",1),
		(2,"Harry Potter and the Chamber of Secrets",1),
		(3,"Harry Potter and the Half-Blood Prince",1),
		(4,"Harry Potter and the Goblet of Fire",1),
		(5,"Night Without End",5),
		(6,"Fear is the Key",5),
		(7,"Where Eagles Dare",5),
		(8,"Sense and Sensibility",6),
		(9,"Pride and Prejudice",6),
		(10,"Emma",6),
		(11,"Random Book",22);
   
 -- 4.b 
 
delete from books where bookid= 11;      

-- 5

alter table books rename to favbooks;
alter table authors rename to favauthors;  

-- 6.a

create table products (product_id  int PRIMARY KEY , product_name  Varchar(55) NOT NULL UNIQUE,  description Varchar (255), 
supplier_id INT, FOREIGN KEY(supplier_id)  references  Suppliers(supplier_id));

-- 6.b

create table Suppliers (supplier_id int PRIMARY KEY  ,supplier_name  varchar(55) , location varchar(50) );

-- 6.c

create table Stock(id INT primary key  auto_increment, product_id INT ,FOREIGN KEY(product_id) references products(product_id)  , balance_stock int);

-- 7

insert into suppliers values ( 24 , "Havells" ," Banglore"),
( 33 , "Milano" , "Gujarat"),
(56,  "Bata" , "China"),
(78 , "JBL" , "japan");

insert INTO products values ( 1, "fan", "High speed fan" , 24), 
( 2, "Bottle" , "Good quality plastic" , 33),
( 3 , "Shoes", "comfortable and light weight", 56), 
( 4 , "Speaker" , "Wireless & waterproof" , 78);

insert into Stock (product_id, balance_stock) values( 1 , 190),( 2, 785), ( 3 , 231) , ( 4, 91);

-- 8

Alter table suppliers modify supplier_name varchar(55) NOT NULL UNIQUE ;

-- 9.a

Alter table emp add column deptno int;

-- 9.b

update emp 
set deptno = 20 where emp_no %2= 0;
		
update emp 
set deptno = 30 where emp_no %3= 0;

update emp 
set deptno = 40 where emp_no %4= 0;

update emp 
set deptno = 50 where emp_no %5= 0;

update emp 
set deptno = 10 where deptno is Null ;

-- 10

create UNIQUE INDEX emp_hash_index
USING HASH
ON employee(empid);




