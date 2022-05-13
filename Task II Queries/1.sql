--1    Construct SQL statements to create the tables needed for the applications. 

create table Country (
c_name varchar2 (20) NOT NULL, 
govt varchar2 (5), 
leader varchar2 (20), 
primary key (c_name), 
check (govt = 'dem' or govt = 'mona') 
); 


create table resourc (
c_name varchar2 (20) NOT NULL, 
reso varchar2 (20) NOT NULL, 
primary key (c_name, reso), 
foreign key (c_name) references Country on delete cascade 
); 


create table Territory ( 
terr_id number NOT NULL, 
desc_name varchar2 (10), 
clim_desc varchar2 (10), 
c_name varchar2 (20), 
primary key (terr_id), 
check (terr_id between 1000 and 9999), 
foreign key (c_name) references Country on delete cascade 
); 


create table Settlement ( 
sett_name varchar2 (20) NOT NULL, 
date_found DATE, 
xpos number, 
ypos number, 
elevation number, 
terr_id number NOT NULL,  
primary key (sett_name),
foreign key (terr_id) references Territory  
); 


create table City (
city_name varchar2 (20) NOT NULL, 
mayor varchar2 (10), 
population number NOT NULL, 
primary key (city_name), 
check (population > 0), 
foreign key (city_name) references Settlement(sett_name)
);


create table Village (
riv_name varchar2 (10), 
sett_name varchar2 (20) NOT NULL, 
primary key (sett_name), 
foreign key (sett_name) references Settlement 
); 


create table Capital_of (
city_name varchar2 (20), 
c_name varchar2 (20) NOT NULL , 
primary key (city_name), 
foreign key (city_name) references settlement,
foreign key (c_name) references country
); 


create table Lends_to (
lender varchar2 (20), 
borrower varchar2 (20), 
primary key (borrower),
foreign key (lender) references country(c_name), 
foreign key (borrower) references country(c_name) 
); 


create table Usr ( 
email varchar2 (20) NOT NULL, 
username varchar2 (20) NOT NULL, 
logo varchar2 (10), 
motto varchar2 (20), 
primary key (email), 
check (email like '%.com')
); 


create table Char_name ( 
name_of_char varchar2 (20) NOT NULL, 
email varchar2 (20) NOT NULL, 
primary key (name_of_char, email),
foreign key (email) references usr
); 


create table Character (
name_of_char varchar2 (20) NOT NULL, 
email varchar2 (20) NOT NULL, 
species varchar2 (10),  
tot_point number,
primary key (email, name_of_char), 
foreign key (name_of_char, email) references char_name, 
check (tot_point >= 0)
); 


create table skill_set (
skill varchar2 (10) NOT NULL,  
name_of_char varchar2 (20) NOT NULL,
email varchar2 (20) NOT NULL, 
primary key (skill, email, name_of_char),
foreign key (name_of_char, email) references char_name
); 


create table Lives_at (
sett_name varchar2 (20) NOT NULL,
email varchar2 (20) NOT NULL,
name_of_char varchar2 (20) NOT NULL,
street varchar2 (20),
street_no number,
date_of_res date,
primary key (sett_name, email, name_of_char),
foreign key (sett_name) references settlement,
foreign key (email, name_of_char) references character,
check (street_no > 0)
);

