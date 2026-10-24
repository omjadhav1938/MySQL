CREATE TABLE t1 (
  TransactionID   INT PRIMARY KEY,
  CustomerName    VARCHAR(50),
  City            VARCHAR(30),
  TransactionType VARCHAR(20),
  Amount          INT,
  Mode            VARCHAR(10),
  TransactionDate DATE,
  Remarks         VARCHAR(20)
);

INSERT INTO t1 VALUES
(1,  'Amit Sharma',    'Pune',      'Deposit',    15000, 'UPI',  '2026-01-05', 'Salary'),
(2,  'Priya Patil',    'Mumbai',    'Withdrawal',  3000, 'Cash', '2026-01-12', NULL),
(3,  'Rahul Verma',    'Delhi',     'Transfer',    8500, 'NEFT', '2026-01-18', 'Rent'),
(4,  'Sneha Kulkarni', 'Pune',      'Deposit',     4500, 'Card', '2026-02-02', NULL),
(5,  'Arjun Singh',    'Nagpur',    'Withdrawal', 12000, 'Cash', '2026-02-09', 'ATM'),
(6,  'Neha Joshi',     'Mumbai',    'Deposit',    25000, 'NEFT', '2026-02-15', 'Bonus'),
(7,  'Vikram Rao',     'Hyderabad', 'Transfer',    6000, 'UPI',  '2026-03-01', NULL),
(8,  'Anjali Desai',   'Pune',      'Withdrawal',  1500, 'Card', '2026-03-07', 'Shopping'),
(9,  'Rohan Mehta',    'Delhi',     'Deposit',     9800, 'UPI',  '2026-03-14', NULL),
(10, 'Kavita Nair',    'Kochi',     'Transfer',    2200, 'NEFT', '2026-03-21', 'Gift'),
(11, 'Sanjay Kapoor',  'Mumbai',    'Withdrawal',  7500, 'Cash', '2026-04-03', 'Rent'),
(12, 'Pooja Sharma',   'Nagpur',    'Deposit',    18000, 'Card', '2026-04-10', 'Salary'),
(13, 'Aakash Gupta',   'Pune',      'Transfer',    5000, 'UPI',  '2026-04-18', NULL),
(14, 'Meera Iyer',     'Chennai',   'Deposit',     3500, 'NEFT', '2026-05-02', 'Refund'),
(15, 'Aditya Bhosale', 'Pune',      'Deposit',    30000, 'UPI',  '2026-05-09', 'Bonus');

select * from t1;

-- Que 1
select CustomerName as c_name,City from t1 where city="Pune";

-- Que 2
select * from t1
where TransactionType = "Withdrawal" and mode="Cash";

-- Que 3
select * from t1
where mode="upi" and Amount>=1000
order by Amount desc
limit 1;

select * from t1
where mode="upi" and Amount>=1000
order by Amount
limit 1 offset 4;

-- Que 4
select TransactionType, max(Amount) from t1
group by TransactionType
order by max(Amount) desc
limit 1; 

-- Que 5
select * from t1 where CustomerName like "A%";

select * from t1 where CustomerName like "%e";

select * from t1 where CustomerName like "%a%";

select * from t1 where mode like "U_i";

select * from t1 where mode like "___";

select * from t1 where CustomerName regexp "^A";

select * from t1 where CustomerName regexp "a$";

select * from t1 where mode regexp "UPI";

select * from t1 where mode regexp "UPI|Cash";

