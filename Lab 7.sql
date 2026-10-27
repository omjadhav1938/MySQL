select * from loans;

-- Task 1
select LoanID,CustomerID,LoanAmount,
rank() over (order by LoanAmount desc) as LoanRank
from loans;

-- Task 2
select LoanID,CustomerID,LoanAmount,
dense_rank() over (order by LoanAmount desc) as DenseRank
from loans;

-- Task 3
select LoanID,CustomerID,LoanAmount,
row_number() over (order by LoanAmount desc) as RowNumber
from loans;

-- Task 4
select LoanID,CustomerID,LoanAmount,
row_number() over (partition by CustomerID order by LoanAmount desc) as RowNum
from loans;

-- Task 5
select LoanID,CustomerID,LoanAmount,
sum(LoanAmount) over (order by LoanAmount desc) as RuningTotal
from loans;

-- Task 6 
select LoanID,CustomerID,LoanAmount,
lag(LoanAmount) over (order by LoanAmount desc) as PreviousLoanAmount
from loans;

-- Task 7
select LoanID,CustomerID,LoanAmount,
lead(LoanAmount) over (order by LoanAmount desc) as NextLoanAmount
from loans;
