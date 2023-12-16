create database customers;
 use customers ;
 drop database customers;
 
 drop table customers_info;
 # create table in database 
create table customers_info (id integer auto_increment, first_name varchar(10), last_name varchar(10),salary integer,primary key(id));
show tables;

select * from customers_info;

insert into customers_info (first_name,last_name,salary)
values
("John","Danial" ,50000),
("Krish","Naik",60000),
("Darius","Bengali",70000),
("Chandan","Kumar",40000),
("Ankit","Sharma",NULL);

select * from customers_info where salary is not null ;

#sql update statement to replace null values 

update customers_info set salary = 50000 where id = 5;

select * from customers_info;


## SQL delete statement 

delete from customers_info where id=5;


##sql alter table
##ADD column in existing table 

alter table customers_info add email varchar (25);

select * from customers_info;
alter table customers_info add dob date ;

##alter table modify column 
Alter table customers_info modify dob year;

desc customers_info ;
use customers;

create table students (
id int not null ,
first_name varchar (25)not null,
last_name varchar (25)not null,
age int
);
select * from students;
desc students;

alter table students modify age int not null;

create table person(
id int not null,
first_name varchar(25) not null,
last_name varchar (25) not null,
age int not null,
unique(id)
);
drop table person;

insert into person 
values
(4,"krish4","naik6",89),
(1,"komal","jain",24),
(2,"kashish","jain",20),
(3,"jainam","jain",12);


select * from person;

alter table person 
add unique (first_name);

alter table person
add constraint uc_person unique (age,first_name);


desc person;

alter table person
drop index uc_person;









