create database bank;

use bank;

create table Accounts(
AccountID int,
AccountType varchar(20),
Balance float)

select * from Accounts;

create table Transactions(
TransactionID int,
TransactionDate date,
Amount float,
TransactionType varchar(20))

select * from Transactions;

create	table Branches(
BranchID int,
BranchName varchar(200),
BranchAddress varchar (200),
BranchPhone varchar (15))

select * from Branches;

create table AccountBranches(
AssignmentDate date)

select * from AccountBranches;

create table Loans(
LoanID int,
LoanAmount float,
InterestRate float,
StartDate date,
EndDate date)

select * from Loans;

create table customer(
CustomerID int,
FristName varchar(50),
LastName varchar(50),
Email varchar(50),
Phone varchar(50))

select * from customer;

alter table customer add column DateOfBirth date;

alter table customer modify Phone varchar(20);
alter table customer modify Email varchar(100);








