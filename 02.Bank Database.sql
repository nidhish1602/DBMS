create table branch(
bname varchar(20),
bcity varchar(20),
assents int,
primary key (bname)
);

create table accounts(
bname varchar(20),
accno int(10),
balance int,
primary key(accno),
foreign key (bname) references branch(bname)    
);
    
create table depositor(
cname varchar(20),
accno int(10),
primary key(cname,accno),
foreign key (accno) references accounts(accno),
foreign key (cname) references customer(cname)
);

create table customer(
cname varchar(20),
cstreet varchar(20),
city varchar(20),
primary key (cname)
);
    
create table loan(
loanNo int(10),
amount int,
bname varchar(20),
primary key (loanNo),
foreign key (bname) references branch(bname)    
);

insert into branch values(
'SBI_Chamrajpet','Bangalore',50000),
("SBI_ResidencyRoad","Bangalore",10000),
("SBI_ShivajiRoad","Bonbay",20000),
("SBI_ParliamentRoad","Delhi",10000),
("SBI_Jantarmantar","Delhi",20000);

insert into accounts values(
"SBI_Chamrajpet", 1, 2000),
("SBI_ResidencyRoad", 2, 5000),
("SBI_ShivajiRoad", 3, 6000),
("SBI_ParliamentRoad", 4, 9000),
("SBI_Jantarmantar", 5,8000),
("SBI_ShivajiRoad", 6, 4000),
("SBI_ResidencyRoad", 8, 4000),
("SBI_ParliamentRoad", 9, 3000),
("SBI_ResidencyRoad", 10, 5000),
("SBI_Jantarmantar", 11, 2000);

insert into customer values(
"Avinash","Bull Temple Road","Bangalore"),
("Dinesh","Bannergatta Road","Bangalore"),
("Mohan","National College Road","Bangalore"),
("Nikil","Akbar Road","Delhi"),
("Ravi","Prithviraj Road","Delhi");

insert into depositor values(
"Avinash",1),("Dinesh",2),
("Nikil",4),
("Ravi",5),
("Avinash",8),
("Nikil",9),
("Dinesh",10),
("Nikil",11);

insert into loan values(
1,"SBI_Chamrajpet",1000),
(2,"SBI_ResidencyRoad",2000),
(3,"SBI_ShivajiRoad",3000),
(4,"SBI_ParliamentRoad",4000),
(5,"SBI_Jantarmantar",5000);

select * from branch;
select * from loan;
select * from borrower;
select * from customer;
select * from accounts;
