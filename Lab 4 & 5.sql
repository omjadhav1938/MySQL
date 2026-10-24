-- 1.Retrieve only the following details from the Accounts table: AccountID, AccountType, and Balance.
select AccountID,AccountType,Balance from accounts;

-- 2.Retrieve Customers with Savings Accounts
select * from accounts where AccountType="Savings";

-- 3.Retrieve Accounts with Balance Greater Than 25000
select * from accounts where Balance>25000;

-- 4.Retrieve Transactions Between Specific Amounts 5000 -20000
select * from transactions where Amount between 5000 and 20000;

-- 5.Retrieve Records for Selected Customers 101,102,103,104
select * from customer where customerID IN(101,102,103,104);

-- 6.This displays customers whose names start with the letter R.
select * from customer where FristName like "R%";

 -- 7.Retrieve all current account records
 select * from accounts where AccountType="Current";
 
-- 8.Find accounts with balance less than 15000
select * from accounts where Balance<15000;

-- 9.Display transactions between 1000 and 10000
select * from transactions where Amount between 1000 and 10000;

-- 10.Retrieve customer records for CustomerID 104 and 105
select * from customer where customerID IN(104,105);

-- 11.Display customers whose last name starts with S
select * from customer where LastName like "S%";

-- 12.Display Customers in Alphabetical Order
select * from customer order by FristName ASC;

-- 13.Display Accounts with Highest Balance First
select * from accounts order by Balance desc;

-- 14.Retrieve Unique Account Types
select distinct(AccountType) from accounts;

-- 15.Display Top 3 Highest Balance Accounts
select * from accounts order by Balance desc
limit 3;

-- 16.Skip Initial Records While Viewing Transactions
select * from transactions limit 2 offset 2;

-- 17.Display customers sorted by LastName
select * from customer order by LastName ASC;

-- 18.Retrieve top 5 transactions with highest amount
select * from transactions order by Amount desc 
limit 5;

-- 19.Display unique transaction types
select distinct(TransactionType) from transactions;

-- 20.Skip the first 3 transaction records and display the next 4 records
select * from transactions limit 4 offset 3;

-- 21.Find Customers Without Phone Numbers
select * from customer where Phone is Null;

-- 22.Find Customers Having Email Addresses
select * from customer where Email is NOT Null;

-- 23.Find customers without email addresses
select * from customer where Email is Null;

-- 24.Display all accounts where balance information is available
select * from accounts where Balance is NOT Null;

-- 25.Search Customers Whose First Name Starts with “A”
select * from customer where FristName like "A%";

-- 26.Search Customers Whose Email Contains “gmail”
select * from customer where Email like "%gmail%";

-- 27.Search Customers Whose Last Name Ends with “kar”
select * from customer where LastName like "%kar";

-- 28.Display customers whose first name starts with R
select * from customer where FristName like "R%";

-- 29.Find customers whose email contains yahoo
select * from customer where Email like "%yahoo%";

-- 30. Display customers whose last name starts with P
select * from customer where LastName like "P%";

-- 31.Search customers whose phone number ends with 99
select * from customer where Phone like "%99";

-- 32.The finance team wants to review only Savings and Current account holders.
select * from accounts where AccountType IN ("Savings","Current");

-- 33.The audit department wants to investigate only Deposit and Withdrawal transactions.
select * from transactions where TransactionType IN ("Deposit","Withdraw");

-- 34.The customer relationship team wants to review records for a specific set of customers. 101,102,105
  select * from customer where CustomerID IN (101,102,105);
  
-- 35.Display accounts belonging to Salary and Savings account types
select * from accounts where AccountType IN ("Savings","Salary");

-- 36.Retrieve transactions for Payment and Deposit categories
select * from transactions where TransactionType IN ("Deposit","Payment");

-- 37.Display customer records for CustomerID 103 and 104
 select * from customer where CustomerID IN (103,104);
 
-- 38.Retrieve selected account records using AccountID values
select * from accounts where AccountID IN (201,205);

-- 39.Display Customers in Ascending Order of Last Name
select * from customer order by LastName asc;

-- 40.Display Accounts with Highest Balance First
select * from accounts order by Balance desc;

-- 41.Display Transactions Sorted by Transaction Date
select * from transactions order by TransactionDate desc;


-- 42.Display customers sorted by FirstName
select * from customer order by LastName asc;

-- 43.Display accounts sorted by AccountType
select * from accounts order by AccountType asc;

-- 44.Display transactions sorted by Amount in descending order
select * from transactions order by Amount desc;

-- 45.Display customers sorted by DateOfBirth
select * from customer order by DateOfBirth asc;

-- 46.Display Only Top 5 Highest Balance Accounts

-- Display First 3 Customer Records
select * from customer limit 3;

-- 47.Skip Initial Transaction Records 3 While Viewing Data record 2
select * from transactions limit 2 offset 3;

-- 48.Display top 3 transactions with highest amount
select * from transactions order by Amount desc limit 3;

-- 49.Retrieve only 4 customer records
select * from customer limit 4;

-- 50.Skip first 2 account records and display next 3 records
select * from accounts limit 3 offset 2;

-- 51.Display top 5 latest transactions
select * from transactions order by TransactionDate desc limit 5;


-- 52.Display Savings Account Customers Sorted by Balance
select * from accounts where AccountType="Savings" 
order by Balance desc;

-- 53.
-- Categorize Accounts Using Balance
-- Balance >50000 then premium account
-- Balance >2500 then standar account
select AccountID,Balance,
case when Balance>50000 then "premium"
when Balance>25000 then "standar"
End  as accounttype
from accounts;

-- 54.
-- · High Transaction
-- · Medium Transaction
-- · Low Transaction
-- based on transaction amount.
select TransactionID,Amount,
case when Amount>=10000 then "High Transaction"
when Amount>=5000 then "Medium Transaction"
when Amount>=0 then "Low Transaction"
End  as transactionsType
from transactions
