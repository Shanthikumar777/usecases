use use_case;

create table Books(BookName varchar(50), Category varchar(50), Price float, Price_Range varchar(20));

insert into Books(BookName, Category, Price, Price_Range) values ('Computer Architecture','Computers',125.6,'100-150'),('Advanced Composite Materials','Science',172.56,'150-200'),('Asp.Net 4 Blue Book','Programming',56,'50-100'),('Strategies Unplugged','Science',99.99,'50-100'),('Teaching Science','Science',164.1,'150-200'),('Challenging Times','Business',150.7,'150-200'),('Circuit Bending','Science',112,'100-150'),('Popular Science','Science',210.4,'200-250'),('ADOBE Premiere','Computers',62.2,'50-100');

select * from Books;