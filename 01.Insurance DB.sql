create database insurance;

CREATE TABLE PERSON (
DRIVER_ID VARCHAR(10),
NAME VARCHAR(20),
ADDRESS VARCHAR(15),
PRIMARY KEY (DRIVER_ID)
);

create table car (
regno VARCHAR(10),
model VARCHAR(10), 
year int(4), 
primary key(regno)
);

create table accident (
report_no int(5),
adate date,
location VARCHAR(15), 
primary key(report_no));


create table own (
driver_id VARCHAR(10), 
regno VARCHAR(10),
primary key(driver_id, regno),
foreign key(driver_id) references person(driver_id),
foreign key(regno) references car(regno) 
);


create table participated (
driver_id VARCHAR(10),
regno VARCHAR(10),
report_no int(5),
damage_amt int,
primary key(driver_id, regno, report_no),
foreign key(driver_id) references person(driver_id),
foreign key(regno) references car(regno),
foreign key(report_no) references accident (report_no) 
);

insert into person values ('A01', 'Richard', 'Srinivas Nagar');
insert into person values ('A02', 'Pradeep', 'Rajaji Nagar');
insert into person values ('A03', 'Smith', 'Ashok Nagar');
insert into person values ('A04', 'Venu', 'NR Colony');
insert into person values ('A05', 'Jhon', 'Hanumanth Nagar');

insert into car values ('KAO52250', 'Indica', 1990);
insert into car values ('KAO52232', 'Lancer', 1957);
insert into car values ('KAO52794', 'Toyota', 1998);
insert into car values ('KAO52468', 'Honda', 2008);
insert into car values ('KAO52542', 'Audi', 2005);

insert into accident values (11, '03-01-01', 'Mysore Road');
insert into accident values (12, '04-02-02', 'South End Circle');
insert into accident values (13, '03-01-21', 'Bull Temple Road');
insert into accident values (14, '08-02-17', 'Mysore Road');
insert into accident values (15, '05-03-04', 'Kanakpura Road');

insert into own values ('A01', 'KAO52250');
insert into own values ('A02', 'KAO52232');
insert into own values ('A03', 'KAO52794');
insert into own values ('A04', 'KAO52468');
insert into own values ('A05', 'KAO52542');

insert into participated values ('A01', 'KAO52250', 11, 10000);
insert into participated values ('A02', 'KAO52232', 12, 50000);
insert into participated values ('A03', 'KAO52794', 13, 25000);
insert into participated values ('A04', 'KAO52468', 14, 33000);
insert into participated values ('A05', 'KAO52542', 15, 12400);

# 1st query 
update participated 
set damage_amount = 25000
where report_num = 12;

#2nd query
SELECT count(year) FROM car 
where year = 2008 

#3rd
select COUNT(DISTINCT regno) 
from participated, accident 
where accident.report_no = participated.report_no 
