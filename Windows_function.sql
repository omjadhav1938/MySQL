select * from transactions;
  
select TransactionType,Amount,row_number() over() from transactions;

select TransactionType,Amount,row_number() over(order by Amount) from transactions;

select TransactionType,Amount,row_number() over(order by Amount desc) from transactions;

select TransactionType,Amount,row_number() over(partition by TransactionType order by Amount) from transactions;

select TransactionDate,Amount,TransactionType,
lag(amount) over(order by TransactionDate),
lag(amount) over(partition by TransactionType order by TransactionDate) 
from transactions;

select TransactionDate,Amount,TransactionType,
lead(amount) over(order by TransactionDate)
from transactions;

select TransactionDate,Amount,TransactionType,
lead(amount) over(partition by TransactionType order by TransactionDate) 
from transactions;



create table demo (
name varchar(200),
marks int);

select * from demo;

insert into demo values("A",78),("B",79),("C",60),("D",79),("E",69),("F",79);

select name,marks,rank() over(order by marks desc) from demo;
select name,marks,dense_rank() over(order by marks desc) from demo;

select name,marks,row_number() over(order by marks),
rank() over(order by marks),
dense_rank() over(order by marks),
sum(marks) over()
from demo;

select name,marks,sum(marks) over(order by marks) from demo;