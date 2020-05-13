create TABLE suppliers(
  	sid int,
    sname varchar(20),
    address varchar(40),
    PRIMARY key (sid)
)

create TABLE parts(
  	pid int,
    pname varchar(20),
    color varchar(40),
    PRIMARY key (pid)
)

create TABLE catalog(
  	sid int,
  	pid int,
    cost REAL,
    FOREIGN key (sid) references suppliers(sid),
    FOREIGN key (pid) references parts(pid)
)

insert into suppliers values
(10001,'Acme Widget','Bangalore'),
(10002,'Johns','Kolkata'), 
(10003,'Vimal','Mumbai'), 
(10004,'Reliance','Delhi')

insert into parts values
(20001,'Book','Red'), 
(20002,'Pen','Red'), 
(20003,'pencil','Green'), 
(20004,'Mobile','Green'), 
(20005,'Charger','Black')

insert into catalog values 
(10001,20001,10), 
(10001,20002,10), 
(10001,20003,30), 
(10001,20004,10),
(10001,20005,10), 
(10002,20001,10), 
(10002,20002,20),
(10003,20003,30), 
(10004,20003,40) 
