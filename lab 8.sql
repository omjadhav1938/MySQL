-- Task 1
select a.AccountID, a.AccountType, a.Balance,t.TransactionID,t.TransactionDate,t.TransactionType,t.Amount from Accounts a
inner join Transactions t
on a.AccountID = t.AccountID;

-- Task 2
select a.AccountID, a.AccountType, a.Balance,t.TransactionID,t.TransactionDate,t.TransactionType,t.Amount from Accounts a
left join Transactions t
on a.AccountID = t.AccountID;

-- Task 3
select a.AccountID, a.AccountType, a.Balance,t.TransactionID,t.TransactionDate,t.TransactionType,t.Amount from Accounts a
left join Transactions t
on a.AccountID = t.AccountID
where t.TransactionType ="Deposit";

-- Task 4
select a.AccountID, a.AccountType, a.Balance,t.TransactionID,t.TransactionDate,t.TransactionType,t.Amount from Accounts a
left join Transactions t
on a.AccountID = t.AccountID
where a.Balance >30000
order by a.Balance desc;