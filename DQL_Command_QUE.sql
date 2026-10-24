-- 1. Show all Deposit transactions.
select * from t1 where TransactionType="Deposit";

-- 2. Show TransactionID, CustomerName and Amount for transactions above 10000.
select TransactionID,CustomerName,Amount from t1 
where Amount>10000;

-- 3. Show all transactions made in Pune.
select * from t1 where city="Pune";

-- 4.  Show Deposits with an amount above 10000.
select * from t1 where TransactionType="Deposit" and Amount>10000;

-- 5.  Show Withdrawals made in Cash.
select * from t1 where TransactionType="Withdrawal" and mode="Cash";

-- 6. Show transactions from Mumbai or Delhi
select * from t1 where city In("Mumbai","Delhi");

-- 7. Write the same query as Q6
select * from t1 where city In("Mumbai","Delhi");

-- 8. Show transactions that were not made through UPI.
select * from t1 where mode not In("UPI");

-- 9. Show transactions with an amount between 5000 and 10000.
select * from t1 where Amount between 5000 and 10000;

-- 10. Show transactions from cities other than Pune, Mumbai and Delhi
select * from t1 where city NOT In("Mumbai","Delhi","Pune");

-- 11.  Show transactions made in March 2026.
select * from t1 where TransactionDate="2026-01-18";

-- 12. Show customers whose name starts with A.
select * from t1 where CustomerName like "A%";

--  13.  Show customers whose name ends with a.
select * from t1 where CustomerName like "%a";

-- 14. Show customers whose second letter is a.
select * from t1 where CustomerName like "_a%";

-- 15. Show customers whose name contains sh.
select * from t1 where CustomerName like "%sh%";

-- 16.  Show customers whose name does not start with A.
select * from t1 where CustomerName NOT like "A%";

-- 17.  Show transactions where Remarks is empty (NULL).
select * from t1 where Remarks is null;

-- 18. Use REGEXP to show customers whose name starts with A or P.
select * from t1 where CustomerName regexp "^A|^P";

-- 19. Use REGEXP to show customers whose name ends with a or i.
select * from t1 where CustomerName regexp "a$|i$";

-- 20. Show Deposits or Transfers above 5000 that were made through UPI or NEFT.
select * from t1 
where (TransactionType IN("Deposit","Transfer")) and (mode IN("UPI","NEFT")) and (Amount>5000);

