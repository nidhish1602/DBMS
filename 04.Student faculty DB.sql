create TABLE student(
    snum int,
    sname VARCHAR(30),
    major VARCHAR(10),
    level VARCHAR(10),
    age INT,
    PRIMARY key (snum)
);

create TABLE class(
    name VARCHAR(10),
    meet TIME,
    room VARCHAR(5),
    fid INT,
    FOREIGN key (fid) REFERENCES faculty(fid)
);

create TABLE enrolled(
    snum int,
    cname VARCHAR(20),
    FOREIGN key (snum) REFERENCES student(snum)
);

create TABLE faculty(
    fid int,
    fname VARCHAR(30),
    deptid INT,
    PRIMARY key (fid)
)

insert into student values 
(1,'john','cs','sr',19),
(2,'smith','cs','jr',20), 
(3,'jacob','cv','sr',20), 
(4,'tom','cs','jr',20), 
(5,'rahul','cs','jr',20),
(6,'rita','cs','sr',21)

insert into faculty values 
(11,'harish',1000), 
(12,'mv',1000), 
(13,'mira',1001), 
(14,'shiva',1002), 
(15,'nupur',1000)

insert into class values
('class1','12/11/15 10:15:16','R1',14), 
('class10','12/11/15 10:15:16','R128',14),
('class2','12/11/15 10:15:20','R2',12), 
('class3','12/11/15 10:15:25','R3',11), 
('class4','12/11/15 20:15:20','R4',14), 
('class5','12/11/15 20:15:20','R3',15), 
('class6','12/11/15 13:20:20','R2',14), 
('class7','12/11/15 10:10:10','R3',14) 

insert into enrolled values 
(1,'class1'), 
(2,'class1'), 
(3,'class3'), 
(4,'class3'), 
(5,'class4'), 
(1,'class5'), 
(2,'class5'), 
(3,'class5'), 
(4,'class5'), 
(5,'class5') 
