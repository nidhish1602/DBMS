create TABLE flights(
    flno int,
    frm VARCHAR(20),
    destination VARCHAR(20),
    distance INT,
    departs TIME,
    arrives time,
    price INT,
    primary key(flno)
);

create TABLE aircraft(
    aid int,
    aname VARCHAR(5),
    cruisingRange int,
    PRIMARY key (aid)
);

create TABLE certified(
    eid int,
    aid INT,
    FOREIGN key (eid) REFERENCES flights(eid),
    FOREIGN key (aid) REFERENCES aircraft(aid),
);

create TABLE employee(
    eid int,
    ename VARCHAR,
    salary int,
    primary key (eid)
);

insert into AIRCRAFT values
(101,'747',3000),
(102,'Boeing',900),
(103,'647',800),
(104,'Dreamliner',10000),
(105,'Boeing',3500),
(106,'707',1500),
(107,'Dream', 120000);

insert into EMPLOYEES values
(701,'A',50000),
(702,'B',100000),
(703,'C',150000),
(704,'D',90000),
(705,'E',40000),
(706,'F',60000),
(707,'G',90000);

insert into CERTIFIED values
(701,101),
(701,102),
(701,106),
(701,105),
(702,104),
(703,104),
(704,104),
(702,107),
(703,107),
(704,107),
(702,101),
(703,105),
(704,105),
(705,103);

insert into FLIGHTS values
(101,'Bangalore','Delhi',2500,TIMESTAMP '2005-05-13 07:15:31',TIMESTAMP '2005-05-13 17:15:31',5000),
(102,'Bangalore','Lucknow',3000,TIMESTAMP '2005-05-13 07:15:31',TIMESTAMP '2005-05-13 11:15:31',6000),
(103,'Lucknow','Delhi',500,TIMESTAMP '2005-05-13 12:15:31',TIMESTAMP ' 2005-05-13 17:15:31',3000),
(107,'Bangalore','Frankfurt',8000,TIMESTAMP '2005-05-13  07:15:31',TIMESTAMP '2005-05-13 22:15:31',60000),
(104,'Bangalore','Frankfurt',8500,TIMESTAMP '2005-05-13 07:15:31',TIMESTAMP '2005-05-13 23:15:31',75000),
(105,'Kolkata','Delhi',3400,TIMESTAMP '2005-05-13 07:15:31',TIMESTAMP  '2005-05-13 09:15:31',7000);
