-- 1. Display customer Table
select * from customer;

-- 2. Display all customer FirstName in uppercase.
select FristName , upper(FristName) as New_name from customer;

-- 3. Display all customer FirstName in lowercase.
select FristName , lower(FristName) as New_name from customer;

-- 4. Find the total number of characters in each customer FirstName
select FristName , length(FristName) as Lengthofname from customer;

-- 5. Display only the first three characters of customer FirstName.
select FristName , left(FristName,3) as New_name from customer;

-- 6. Combine customer's FirstName with LastName.
select concat(FristName," ",LastName) as Full_Name from customer;

select trim(FristName) as Name from customer;

select FristName , right(FristName,3) as New_name from customer;

select mid(FristName,2,3) from customer;

select upper(FristName),lower(FristName), trim(FristName),length(FristName) from customer;

select round(25.65),ceil(25.65),floor(25.65),abs(-500),mod(25,4);

select round(25.3),ceil(25.2),floor(25.4),abs(-500),mod(25,4);

-- 1. Display customer Table
select * from customer;

-- 2. Display the current system date
select current_date();

-- 3. Display the current system date and time.
select current_time();
select now();

-- 4. Display the Birth of year
select DateOfBirth, year(DateOfBirth) from customer;

-- 5. Display the Birth month
select DateOfBirth, month(DateOfBirth) from customer;

-- 6. Calculate the number of days since BirthDate
select DateOfBirth, datediff(current_date(),DateOfBirth) from customer;

-- 7. Find the latest birth date.
select * from customer order by DateOfBirth desc limit 1;

-- 8. Find the earliest birth date
select * from customer order by DateOfBirth asc limit 1;

-- 4. Calculate the total balance maintained across all customer accounts.
select sum(balance) from accounts;

-- 6. Identify the highest balance maintained in any customer account.
select max(balance) from accounts;

-- 7. Identify the lowest balance maintained in any customer account
select min(balance) from accounts;

-- 8. Determine the total number of customer accounts available in the system.
select count(customerid) from accounts;

-- 9. The bank wants to calculate the total account balance for each AccountType by grouping the records based on AccountType and identify 
--     which account type is attracting the highest total deposits from customers.
select AccountType,sum(Balance) as "Total balance" from accounts 
group by AccountType
order by sum(Balance) desc; 

-- 5. Calculate the average balance maintained across all customer accounts to understand the typical amount held by customers.
select avg(Balance) from accounts;

-- 1. Categorize customers as Adult or Young based on their birth year
select year(DateOfBirth),
case 
when year(DateOfBirth)>1998 then "young" 
when year(DateOfBirth)<=1998 then "adult"
end as type
from customer;

-- 2. Display 'Not Available' if a phone number is NULL
select ifnull(phone,"Not Available") from customer;

-- 10. The bank management wants to identify only those account types whose total customer deposits exceed ₹25,000.
select AccountType,sum(Balance) from accounts
group by AccountType 
having sum(Balance)>25000;

-- 3. Compare two customer names
select FristName,nullif(FristName,"Priya") from customer;

