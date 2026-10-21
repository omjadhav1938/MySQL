-- Task 1

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
Phone varchar(50));

-- Task 2

alter table customer add column DateOfBirth date;
alter table customer modify Phone varchar(20);
alter table accounts add constraint C_Mini check(Balance>=1000);


-- Task 3
drop table accountbranches;


-- Task 4
alter table  customer add primary key (CustomerID);
alter table customer modify FristName varchar(200) not null;
alter table customer add constraint un_email unique (Email);

alter table accounts add column customerid int;
alter table accounts add constraint foreign key (customerid) references customer(CustomerID);

alter table loans add column CustomerID int ;
alter table loans add constraint CustomerID foreign key (CustomerID) references customer(CustomerID);

alter table transactions add column AccountID int ;
alter table accounts add constraint primary key (AccountID); 
alter table transactions add constraint AccountID foreign key (AccountID) references accounts(AccountID);

alter table accounts add column BranchID int;
alter table branches add constraint  primary key (BranchID);
alter table accounts add constraint  BranchID foreign key (BranchID) references branches(BranchID);



