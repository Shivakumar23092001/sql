create database db;
use db;
create table Books;
CREATE TABLE Books(book_id INT primary key,title VARCHAR(255),author varchar(50),price int,published_year YEAR);
INSERT INTO Books(book_id,title,author,price,published_year)
values(1,'abc','shiva',2000,2024),
(2,'xyz','ram',1000,2023);
select * from Books;
select title from Books;
create table Employee(emp_id int primary key,emp_name varchar(100) not null,salary decimal(10,2));
insert into Employee(emp_id,emp_name,salary)
values(100,'shiva',1000);
select * from Employee;
create table ram(user_id int primary key,user_name varchar(100) not null unique,salary int unique);
insert into ram values(1220,'rahul',1000),
(1221,'rahu',2000);
select * from ram; 
select * from ram order by salary asc;
select * from ram where salary like '2%';
select * from ram where user_name in ('rahul');
select * from ram limit 2;
select user_id,salary * 2 as double_salary from ram;
select count(*) as total from ram;
select MAX(salary) as maximum from ram;
select MIN(salary) as maximum from ram;
select AVG(salary) as maximum from ram;
select SUM(salary) as maximum from ram;
select user_name,sum(salary) as total from ram group by user_name;
create table weds(book_id int primary key,bname varchar(50) not null,bprice int not null);
insert into weds(book_id,bname,bprice)
values(1,'des',2000),
(2,'aes',6000);
select * from weds;
select * from books;
select published_year,min(bprice) as minprice from books b join weds w on b.book_id=w.book_id group by published_year;
select published_year,min(bprice) as minprice
from books b join weds w on 
b.book_id=w.book_id 
group by published_year having published_year=2024;

select price,min(bprice) as minprice
from books b join weds w on 
b.book_id=w.book_id 
group by price having price>1000;

update weds set bname ='shiva' where book_id=1;
create table Dummy(name varchar(20));
insert into Dummy(name)values('maheshwar'),('faf');
select *  from Dummy;
delete from Dummy where name='faf'; 
set sql_safe_updates=1;

create database trail;
use trail;
CREATE TABLE movies (
    movie_id INT PRIMARY KEY AUTO_INCREMENT,
    title VARCHAR(255) ,
    release_year year,
    genre VARCHAR(100),
    rating DECIMAL(3, 2), -- Rating with precision up to 2 decimal points
    duration_minutes INT,
    language VARCHAR(50)
);
INSERT INTO movies (title, release_year, genre, rating, duration_minutes, language)
VALUES 
('Inception', 2010, 'Sci-Fi', 8.8, 148, 'English'),
('Parasite', 2019, 'Thriller', 8.6, 132, 'Korean'),
('The Dark Knight', 2008, 'Action', 9.0, 152, 'English'),
('Interstellar', 2014, 'Sci-Fi', 8.6, 169, 'English'),
('Spirited Away', 2001, 'Animation', 8.5, 125, 'Japanese');

CREATE TABLE box_offices (
    box_office_id INT PRIMARY KEY AUTO_INCREMENT,
    movie_id INT, -- Foreign key to link with movies table
    total_gross DECIMAL(15, 2), -- Total earnings (domestic + international)
    opening_weekend_gross DECIMAL(15, 2), -- Earnings from the opening weekend
    release_date DATE, -- Date when the movie was released
    
    FOREIGN KEY (movie_id) REFERENCES movies(movie_id) on delete cascade
);

INSERT INTO Box_office (movie_id, total_gross, opening_weekend_gross, release_date)
VALUES
(1, 829895144.00, 62613703.00, '2010-07-16'),
(2, 258815815.00, 165131.00, '2019-05-30'),
(3, 1004558444.00, 158411483.00, '2008-07-18'),
(4, 701729206.00, 47412804.00, '2014-11-07'),
(5, 383397782.00, 12909876.00, '2001-07-20');
select *from movies;
alter table movies add day int; -- adding column  to the table 
alter table movies drop column day; -- deleting column of a table
alter table movies modify rating decimal(10,3); -- modifying the data in the tabel 
select * from Box_office;
delete from movies where movie_id=2;
rename table movies to Dummy2;
rename table Dummy2 to movies; -- renaming to new table name
create table Dummy(name  varchar(10));
insert into Dummy(name) values('name');
select * from Dummy;
truncate Dummy; -- removes data in the table but table remains empty only data erases
drop table Dummy; -- delete total table
show tables;
create database tummy;
use tummy;
create table Movies(movie_id int primary key,name varchar(255),director_id int not null);
insert into Movies(movie_id,name,director_id) values (1,'RRR',101),
(2,'Pushpa',102),(3,'KGF',103);
create table Director(director_id int primary key,d_name varchar(255));
insert into Director(director_id,d_name) values (101,'Rajamouli'),(102,'Sukumar'),(104,'Neel');
select * from Movies;
select * from Director;
select * from Movies m inner join Director d on m.director_id=d.director_id ; -- inner join
select * from Movies m left join Director d on m.director_id=d.director_id ; -- left join
select * from Movies m right join Director d on m.director_id=d.director_id ; -- right join
select * from Movies m cross join Director d ; -- cross join
select name,director_id from Movies
union
select d_name,director_id from  Director; -- union
select name,director_id from Movies
union all
select d_name,director_id from  Director; -- union  all
show tables;
update Director set d_name ='prashanth neel' where director_id=104; -- updating values in the table 
select concat('prashanth','neel') as concating from Director ; -- concating the two names

CREATE TABLE Departments (
    DepartmentID INT PRIMARY KEY,
    DepartmentName VARCHAR(50)
);
INSERT INTO Departments (DepartmentID, DepartmentName)
VALUES 
(1, 'Human Resources'),
(2, 'Finance'),
(3, 'IT'),
(4, 'Marketing');

CREATE TABLE Employees (
    EmployeeID INT PRIMARY KEY,
    EmployeeName VARCHAR(100),
    DepartmentID INT,
    Salary DECIMAL(10, 2),
    HireDate DATE,
    FOREIGN KEY (DepartmentID) REFERENCES Departments(DepartmentID)
);
INSERT INTO Employees (EmployeeID, EmployeeName, DepartmentID, Salary, HireDate)
VALUES
(101, 'John Doe', 3, 75000, '2020-05-20'),
(102, 'Jane Smith', 1, 50000, '2019-03-14'),
(103, 'Robert Brown', 2, 60000, '2018-07-10'),
(104, 'Emily Davis', 3, 80000, '2021-01-22'),
(105, 'Michael Wilson', 4, 55000, '2020-11-30');
select * from Employees;
select * from Departments;
select EmployeeName,salary from Employees
where salary <(select max(salary) from Employees) limit 1;
SELECT EmployeeName, Salary 
FROM Employees
WHERE Salary > (SELECT AVG(Salary) FROM Employees WHERE DepartmentID = 3);
SELECT Salary 
FROM Employees
ORDER BY Salary DESC
LIMIT 1 OFFSET 2;  -- Skip the first highest and take the second highest if offset is 2 then skips top two highest salaries and 3 largest salary will be given
SELECT CURRENT_DATE;
CREATE TABLE Movies (
MovieID INT,
Title VARCHAR(100),
DirectorID INT,
ReleaseYear INT
);
create database TeluguMovies;
use TeluguMovies;
CREATE TABLE Directors (
DirectorID INT,
DirectorName VARCHAR(100)
);
CREATE TABLE Movies (
MovieID INT,
Title VARCHAR(100),
DirectorID INT,
ReleaseYear INT
);
INSERT INTO Movies (MovieID, Title, DirectorID, ReleaseYear) VALUES
(1, 'Baahubali: The Beginning', 101, 2015),
(2, 'Eega', 101, 2012),
(3, 'Ala Vaikunthapurramuloo', 102, 2020);
INSERT INTO Directors (DirectorID, DirectorName) VALUES
(101, 'S. S. Rajamouli'),
(102, 'Trivikram Srinivas');
select * from Movies;
select *  from Directors;
select * from Movies m left join Directors d on m.DirectorID=d.DirectorID; -- left join

SELECT Movies.Title, Directors.DirectorName
FROM Movies
right JOIN  Directors
ON Movies.DirectorID = Directors.DirectorID;

