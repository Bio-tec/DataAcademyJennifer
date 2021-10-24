create database JenniferDB;
use JenniferDB;
create table patient_records (
	NHS_number smallint unsigned,
	First_Name varchar (20),
	Last_Name varchar(20),
	Birt_Date date,
	Door_number smallint unsigned,
	Street varchar (30),
	City varchar (20),
	Country varchar (20),
	Postcode varchar(20),
	constraint pk_NHS primary key (NHS_number)
);
SHOW tables; 
desc patient_records;
insert into patient_records
	(NHS_number, First_Name, Last_Name, Birt_date, Door_number, Street, City, Country, Postcode)
    values ('1234', 'Joe', 'Bloggs', '1965-06-14', '23', 'Sesame Street', 'London', 'England', 'SW14 2RX');
desc patient_records;
select* 
from patient_records;
insert into patient_records
	(NHS_number, First_Name, Last_Name, Birt_date, Door_number, Street, City, Country, Postcode)
    values ('2345', 'John', 'Smith', '1987-02-24', '67', 'Alphabet Street', 'London', 'England', 'W8 3BY');
insert into patient_records
	(NHS_number, First_Name, Last_Name, Birt_date, Door_number, Street, City, Country, Postcode)
    values ('3456', 'Mary', 'Parker', '1943-06-03', '126', 'Seymore Avenue', 'London', 'England', 'N9 1PS');
insert into patient_records
	(NHS_number, First_Name, Last_Name, Birt_date, Door_number, Street, City, Country, Postcode)
    values ('4567', 'Susan', 'Carter', '1996-11-19', '2', 'Oxford Street', 'London', 'England', 'W1 7XL');
insert into patient_records
	(NHS_number, First_Name, Last_Name, Birt_date, Door_number, Street, City, Country, Postcode)
    values ('5678', 'Gary', 'Lloyd', '1957-01-12', '17', 'Brick Lane', 'London', 'England', 'E9 9TW');
insert into patient_records
	(NHS_number, First_Name, Last_Name, Birt_date, Door_number, Street, City, Country, Postcode)
    values ('6789', 'Patricia', 'Fleming', '1972-10-26', '114', 'Newbury Square', 'London', 'England', 'E11 4PN');
insert into patient_records
	(NHS_number, First_Name, Last_Name, Birt_date, Door_number, Street, City, Country, Postcode)
    values ('7891', 'Vijay', 'Singh', '1983-04-15', '91', 'High Street', 'London', 'England', 'N7 9JR');
insert into patient_records
	(NHS_number, First_Name, Last_Name, Birt_date, Door_number, Street, City, Country, Postcode)
    values ('7891', 'Roberto', 'Quarto', '1949-12-27', '84', 'Hartley Street', 'London', 'England', 'NW19 3BX');
insert into patient_records
	(NHS_number, First_Name, Last_Name, Birt_date, Door_number, Street, City, Country, Postcode)
    values ('9101', 'Michael', 'Parker', '1975-07-09', '8', 'Clover Avenue', 'London', 'England', 'N6 9HW');
select* 
from patient_records;   
SHOW tables; 
desc patient_records;
select* 
from patient_records;  
insert into patient_records
	(NHS_number, First_Name, Last_Name, Birt_date, Door_number, Street, City, Country, Postcode)
    values ('1011', 'Rosie', 'Lea', '1961-04-18', '46', 'Rainbow Drive', 'London', 'England', 'E11 8CK');
select* 
from patient_records;  
update patient_records
	set Door_number = '59',
    Street = 'Clay Street',
	postcode = 'W9 8UD'
	where NHS_number = 1234;
select *
from patient_records;
delete from patient_records
where NHS_number = 7891; 
create table Xray_info (
	XRay_ID smallint unsigned,
	NHS_number smallint unsigned,
    Sex enum('M', 'F'),
    Height int, 
    Weight int,
    BloodGroup enum('O', 'A', 'B', 'AB'),
    Rh enum('-', '+'),
    constraint Xray_info primary key (XRay_ID, NHS_number),
    constraint fk_Xray_info_NHS_number foreign key (NHS_number)
    references patient_records (NHS_number)
);
show tables






