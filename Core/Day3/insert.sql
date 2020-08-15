--Applicant table data:

INSERT INTO applicant VALUES('A001','Raj','raj@abc.com','2nd Street,Hebbal','Mysore');
INSERT INTO applicant VALUES('A002','Vadi'',vadi@abc.com','4th Street,Vijayangar','Bangalore');
INSERT INTO applicant VALUES('A003','Sam','sam_sundar@abc.com','5th Street,Edappalli','Cochin');
INSERT INTO applicant VALUES('A004','Suraj','suraj@abc.com','1st Main,Rabindra Nagar','Kolkata)');
INSERT INTO applicant VALUES('A005','Lakshmi','lakshmi@abc.com','2nd Main,Allipuram','Vizag');
INSERT INTO applicant VALUES('A006','Sandra','sandra@abc.com','3rd Corss,RS Puram','Coimbatore');
INSERT INTO applicant VALUES('A007','Vivek','vivek_kumar@abc.com','5th Main,Coimbed','Chennai');
INSERT INTO applicant VALUES('A008','Vikas','vikas@abc.com','2nd Main,Jayalakhmipuram','Bangalore');
INSERT INTO applicant VALUES('A009','Bipin',null,'2nd Cross,Siddarth Nagar','Mysore');
INSERT INTO applicant VALUES('A010','Gopi','gopi@abc.com','2nd Street,Green Market','Delhi');
INSERT INTO applicant VALUES('A011','Sandy','sandy@abc.com','9th Cross,Seshadripuram','Bangalore');
INSERT INTO applicant VALUES('A012','Lilly','lilly@abc.com','9th Main,Banjara Hills','Hyderabad');
INSERT INTO applicant VALUES('A013','Rose','rose@abc.com','11th Cross,Kadavanthara','Cochin');
INSERT INTO applicant VALUES('A014','Megha','megha@abc.com','10th Lane,Vashi','Mumbai');
INSERT INTO applicant VALUES('A015','Henry','henry@abc.com','2nd street,Silk Board','Bangalore');
INSERT INTO applicant VALUES('A016','Joel','jeol@abc.com','4th street,Vijayanagar','Mysore');

--Batch table data:

INSERT INTO branch VALUES('B1','Information Science');
INSERT INTO branch VALUES('B2','Computer Science');
INSERT INTO branch VALUES('B3','Electronics');
INSERT INTO branch VALUES('B4','Electrical');
INSERT INTO branch VALUES('B5','Mechanical');
INSERT INTO branch VALUES('B6','Civil');

--Course table data:

INSERT INTO course VALUES('C001','Programming Fundamentals',1,'B1','N',20,10,10,60);
INSERT INTO course VALUES('C002','Data Structures',2,'B1','N',20,10,10,60);
INSERT INTO course VALUES('C003','Basics of RDBMS',2,'B1','N',20,10,10,60);
INSERT INTO course VALUES('C004','System Software',3,'B1','N',20,10,10,60);
INSERT INTO course VALUES('C005','Computer Hardware',3,'B2','N',20,10,10,60);
INSERT INTO course VALUES('C006','File Structures',4,'B1','N',60,10,10,20);
INSERT INTO course VALUES('C007','Network Computing',4,'B3','N',20,10,10,60);
INSERT INTO course VALUES('C008','Data Warehousing',5,'B1','Y',20,10,10,60);
INSERT INTO course VALUES('C010','Analysis of Algorithms',5,'B1','N',20,10,10,60);
INSERT INTO course VALUES('C009','Neural Networks',6,'B2','Y',null,10,10,80);

--Student table data:

INSERT INTO student VALUES('S001','A001',2,'raj','tiger');
INSERT INTO student VALUES('S002','A003',3,'sam','tiger');
INSERT INTO student VALUES('S003','A004',5,'suraj','tiger');
INSERT INTO student VALUES('S004','A006',3,'sandra','tiger');
INSERT INTO student VALUES('S005','A007',4,'vivek','tiger');
INSERT INTO student VALUES('S006','A008',7,'vikas','tiger');
INSERT INTO student VALUES('S007','A009',8,'bipin','tiger');
INSERT INTO student VALUES('S008','A010',3,'gopi','tiger');
INSERT INTO student VALUES('S009','A012',1,'lilly','tiger');
INSERT INTO student VALUES('S010','A013',4,'rose','tiger');
INSERT INTO student VALUES('S011','A014',7,'megha','tiger');
INSERT INTO student VALUES('S012','A015',6,'henry','tiger');
INSERT INTO student VALUES('S013','A016',2,'jeol','tiger');

--Registration table data:

insert into registration values('S001','C001','05-JUN-08',20,5,5,50,'A');
insert into registration values('S002','C001','24-AUG-08',15,10,8, 32,'B');
insert into registration values('S003','C002','15-MAR-08',20,9,9,55,'A');
insert into registration values('S004','C003','13-AUG-08',20,10,10,60,'A');
insert into registration values('S005','C004','08-SEP-08',15,10,10,50,'A');
insert into registration values('S006','C005','22-NOV-08',10,5,5,30,'D');
insert into registration values('S007','C006','06-FEB-08',15,5,5,45,'B');
insert into registration values('S010','C004','08-SEP-08',20,10,10,50,'A');
insert into registration values('S009','C003','29-DEC-08',18,8,10,46,'A');
insert into registration values('S011','C007','13-SEP-08',20,7,8,55,'A');
insert into registration values('S012','C008','16-JAN-08',35,5,5,20,'B');
insert into registration values('S013','C006','06-FEB-08', 47,8,7,18,'A');

--Department table data: 

INSERT INTO department VALUES(10,'Information Science','I105');
INSERT INTO department VALUES(20,'Computer Science','I102');
INSERT INTO department VALUES(30,'Electronics','I104');
INSERT INTO department VALUES(40,'Electrical','I107');
INSERT INTO department VALUES(50,'Mechanical','I109');
INSERT INTO department VALUES(60,'Civil','I106');

--Instructor table data:

INSERT INTO instructor VALUES('I101','Bob Hockins','12-Jan-2000',10);
INSERT INTO instructor VALUES('I102','Suguru Zikovich','21-Feb-2001',20);
INSERT INTO instructor VALUES('I103','Ritivoi','13-Jan-2003',10);
INSERT INTO instructor VALUES('I104','David Field','30-Mar-1999',30);
INSERT INTO instructor VALUES('I105','Emillie Norton','04-Jun-1998',30);
INSERT INTO instructor VALUES('I106','Ron Hardman','01-Jan-2005',60);
INSERT INTO instructor VALUES('I107','Scott Urman','08-Apr-2008',40);
INSERT INTO instructor VALUES('I108','Daisy Samson','09-Dec-2004',50);
INSERT INTO instructor VALUES('I109','Ford Bravo','10-May-1998',50);
INSERT INTO instructor VALUES('I110','Rebecca Brown','02-Jan-2009',10);
INSERT INTO instructor VALUES('I111','Antario','23-Jun-2004',10);
INSERT INTO instructor VALUES('I112','Samuel','25-Jan-2002',60);
INSERT INTO instructor VALUES('I113','Justin','14-Apr-2003',40);
INSERT INTO instructor VALUES('I114','Nissar','16-Mar-2009',10);
INSERT INTO instructor VALUES('I115','Avinash Naren','27-May-2007',20);
INSERT INTO instructor VALUES('I116','Micheal Rose','05-Jan-2008',40);

--Courseallocation table data:

insert into courseallocation values(1001,'C001','I101','01-JUN-08','04-JUN-08');
insert into courseallocation values(1002,'C002','I102','07-MAR-08','14-MAR-08');
insert into courseallocation values(1003,'C001','I103','20-AUG-08','23-AUG-08');
insert into courseallocation values(1004,'C001','I101','01-SEP-08','04-SEP-08');
insert into courseallocation values(1005,'C003','I104','10-AUG-08','12-AUG-08');
insert into courseallocation values(1006,'C004','I103','04-SEP-08','07-SEP-08');
insert into courseallocation values(1007,'C003','I104','26-AUG-08','28-AUG-08');
insert into courseallocation values(1008,'C002','I107','21-JUL-08','27-JUL-08');
insert into courseallocation values(1009,'C005','I105','12-NOV-08','21-NOV-08');
insert into courseallocation values(1010,'C006','I106','01-FEB-08','05-FEB-08');
insert into courseallocation values(1011,'C007','I108','07-SEP-08','12-SEP-08');
insert into courseallocation values(1012,'C005','I109','12-NOV-08','21-NOV-08');
insert into courseallocation values(1013,'C008','I110','15-JAN-08','15-JAN-08');

--Attendace table data:

insert into attendance values('S001','C001',4,3);
insert into attendance values('S002','C001',4,4);
insert into attendance values('S003','C002',8,5);
insert into attendance values('S004','C003',3,3);
insert into attendance values('S005','C004',4,2);
insert into attendance values('S006','C005',10,9);
insert into attendance values('S007','C006',5,5);
insert into attendance values('S010','C004',4,4);
insert into attendance values('S009','C003',3,1);
insert into attendance values('S011','C007',6,5);
insert into attendance values('S012','C008',1,1);

--Hostel table data:

INSERT INTO hostel VALUES('Violet',101,'S001',3000);
INSERT INTO hostel VALUES('Violet',201,'S003',4000);
INSERT INTO hostel VALUES('Violet',300,'S004',5000);
INSERT INTO hostel VALUES('Indigo',100,'S002',3000);
INSERT INTO hostel VALUES('Indigo',201,'S005',4000);
INSERT INTO hostel VALUES('Indigo',300,'S006',5000);
INSERT INTO hostel VALUES('Blue',100,'S007',3000);
INSERT INTO hostel VALUES('Blue',201,'S008',4000);
INSERT INTO hostel VALUES('Blue',300,'S009',5000);


SELECT schemaname,relname,n_live_tup FROM pg_stat_user_tables ORDER BY n_live_tup DESC;