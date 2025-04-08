create database accountmanagementsystem
use accountmanagementsystem
create Schema ams1;
create table ams.[user](
userid bigint identity(1,1) not null,
username nvarchar(250) not null,
dob datetime not null,
doj datetime not null,
accountno int not null,
mobileNo int not null,
createdby varchar(250) not null,
created datetime not null,
)
create table useraccountingmapping(
useraccountmapping bigint not null identity(1,1) primary key,
userid bigint not null,accountid bigint not null,createdby varchar(250) not null,createddate datetime not null default getdate());
 
create table address( addressid bigint not null identity(1,1) primary  key,userid bigint not null,
address nvarchar(max) not null,createdby varchar(250) not null,createddate datetime not null default getdate());

create table accounttransaction(
acccounttransaction bigint not null identity(1,1) primary key,amount decimal(10,2) not null, isdebit bit not null,
created varchar(250) not null,createddate datetime not null default getdate()) ;

