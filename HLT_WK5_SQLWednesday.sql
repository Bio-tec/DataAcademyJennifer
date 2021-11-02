use HLT;
create table tbl_1(
	row_a varchar(100),
    row_b decimal (10,5),
    row_c date
    );
   insert into tbl_1 (row_a)
   values ('please find the substring in this string'); 
   
   
-- Write a query that returns the 17 through 25 characters of the string 'Please find the substring in this string’.
  
  select substring('please find the substring in this string', 17, 9);
    
-- Write a query that returns the absolute value and sign (−1, 0, or 1) of the number −25.76823. Also return the number 
-- rounded to the nearest hundredth.


insert into tbl_1 (row_b)
   values ('-25.76823'); 
    
select sign(row_b) , Abs(row_b) AS AbsNum
from tbl_1;

select round(row_b, 2)
from tbl_1;

-- Write a query to return just the month portion of the current date.
 select monthname(current_date);


