use abc;
create table Crime_index (
code int primary key,
Crime varchar(50)
);
insert into Crime_index values(112,'Murder'),(121,'Attempted Murder'),(124,'Grevios Assault'),(137,'Robbery'),(139,'Assault on Women'),(141,'Scam'),(144,'Theft'),(148,'Kidnapping');
select* from Crime_index;
create table Crime_by_city (
city varchar(20),
code int,
frequency int,
primary key(city,code),
foreign key(code) references Crime_index(code)
);
insert into Crime_by_city values('Delhi',124,5),('Delhi',139,1),('Patna',144,5),('Patna',141,7),('Patna',124,3),('Mumbai',148,0),('Mumbai',112,4),('Mumbai',137,8),('Kolkata',121,2),('Kolkata',112,6),('Kolkata',139,5);
select* from Crime_by_city;
create table Criminal(
ID int primary key,
Name Varchar(100),
Age int,
code int,
city varchar(20),
time int,
crime_tool varchar(100),
foreign key(code) references Crime_index(code),
foreign key(city) references Crime_by_city(city)
);
insert into Criminal values(001,'Akshat',35,141,'Patna',1100,'None'),
(002,'Deepak',26,139,'Kolkata',1900,'Lead Pipe'),
(003,'Ashish',57,144,'Kolkata',0302,'Lock Pick'),
(004,'Tuglaq',34,112,'Delhi',1300,'Revolveer.32'),
(005,'Shashvat',21,137,'Mumbai',2100,'Katta/Pipegun'),
(006,'Naman',41,124,'Patna',0900,'Brick'),
(007,'Kirmender',50,121,'Delhi',1910,'Rifle'),
(008,'Tanya',27,141,'Mumbai',1400,'None'),
(009,'Kushan',29,148,'Patna',1800,'Ak-47'),
(010,'Asif',19,139,'Kolkata',1600,'None'),
(011,'Karthik',39,148,'Delhi',1500,'Katta/Pipegun'),
(012,'Jaspreet',55,139,'Mumbai',2200,'Revolver.32'),
(013,'Sarvagya',42,141,'Patna',1200,'None'),
(014,'Shubhanshu',30,124,'Kolkata',1700,'Lead Pipe'),
(015,'Prashant',22,137,'Delhi',2300,'Rifle'),
(016,'Shubham',58,112,'Mumbai',0000,'Knife'),
(017,'Iyer',40,144,'Patna',0500,'Hammer'),
(018,'Aman',36,144,'Delhi',0100,'Lock Pick'),
(019,'Sumit',26,112,'Mumbai',0800,'Katta/Pipegun'),
(020,'Shawn',49,137,'Kolkata',1900,'Knife');
select* from Criminal;
create table Timings (
code int primary key,
MPT_lower int,
MPT_upper int
);
insert into Timings values(112,0000,1200),(121,1900,2200),(124,0800,1300),(137,2000,2300),(139,1700,2200),(141,0900,1200),(144,0000,0400),(148,1200,2000);
select* from Timings;
create table Crime_by_age (
code int,
min_age int,
max_age int,
frequency int,
primary key(code,min_age,max_age),
foreign key(code) references Crime_index(code)
);
insert into Crime_by_age values(112,18,32,2),(112,33,50,4),(124,18,32,1),(124,33,50,2),(124,51,60,0),(137,18,32,5),(137,33,50,1),(137,51,60,1),(139,18,32,2),(139,33,50,4),(139,51,60,4),(141,18,32,1),(141,33,50,4),(141,51,60,2),(144,18,32,0),(144,33,50,7),(144,51,60,4),(148,18,32,2),(148,33,50,2),(148,51,60,1),(121,18,32,1),(121,33,50,4),(121,51,60,3);
select * from Crime_by_age;
create table Punishment (
code int,
min_age int,
max_age int,
Sentence varchar(200),
primary key(code,min_age,max_age),
foreign key(code) references Crime_index(code)
);
insert into Punishment values(112,18,32,'12 years and/or 15 Lakh fine'),(112,33,50,'16 years and/or 20 Lakh fine'),(112,52,60,'10 years and/or 12 Lakh fine'),(121,18,32,'12 years and/or 15 Lakh fine'),(121,33,50,'16 years and/or 20 Lakh fine'),(121,51,60,'10 years and/or 12 Lakh fine'),(124,18,32,'6 months and/or 50K fine'),(124,33,50,'9 months and/or 60K fine'),(124,51,60,'9 months anad/or 60k fine'),(137,18,32,'5 years and/or 6 Lakh fine'),(137,33,50,'10 years and/or 12 Lakh fine'),(137,51,60,'8 years and/or 9 Lakh fine'),(139,18,32,'7 years and NFA'),(139,33,50,'12 years and NFA'),(139,51,60,'10 years and NFA'),(141,18,32,'1 year and/or 75K fine'),(141,33,50,'3 years and/or 2.25 Lakh fine'),(141,51,60,'6 months and/or 75K fine'),(144,18,32,'5 years and/or 6 Lakh fine'),(144,33,50,'7 years and/or 8 Lakh fine'),(144,51,60,'5 years and/or 6 Lakh fine'),(148,18,32,'10 years and NFA'),(148,33,50,'15 years and NFA'),(148,51,60,'12 years and NFA');
select * from Punishment;