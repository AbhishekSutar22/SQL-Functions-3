use abhishek 
go 

select getdate() -- 2023-10-05 15:27:33.770
print isdate(getdate()) -- 1
print isdate('2002-03-22') -- 1
print isdate('1') -- 0
print isdate('2023-02-31') -- 0

go

print getdate() -- Oct  5 2023  3:32PM
print day(getdate()) -- 5
print month(getdate()) -- 10
print year(getdate()) -- 2023

go

--datename(datepart,inputdate)
print datename(day,getdate()) -- 5
print datename(month,getdate()) -- October
print datename(year,getdate()) -- 2023
print datename(dayofyear,getdate()) -- 278
print datename(weekday,getdate()) -- Thursday
print datename(tzoffset,sysdatetimeoffset()) -- +05:30
print datename(hour,sysdatetimeoffset()) -- 15
print datename(minute,sysdatetimeoffset()) -- 44
print datename(second,sysdatetimeoffset())
print datename(quarter,sysdatetimeoffset()) -- 4
print datename(quarter,'2002-03-22') -- 1
print datename(quarter,'1996-11-06') -- 4

go

print datepart(day,getdate()) -- 5
print datepart(month,getdate()) -- 10
print datepart(year,getdate()) -- 2023


print datename(month,getdate()) -- October
print datepart(month,getdate()) -- 10

print datename(year,getdate()) -- 2023
print datepart(year,getdate()) -- 2023

print datename(year,getdate()) + datename(year,getdate()) -- 20232023
print datepart(year,getdate()) + datepart(year,getdate()) -- 4046

print datename(weekday,getdate()) -- Thursday
print datepart(weekday,getdate()) -- 5

go

--To add parts in date we use dateadd()
print getdate() -- Oct  5 2023  4:41PM
print dateadd(day,3, getdate()) -- Oct  8 2023  4:41PM
print dateadd(month,6, getdate()) -- Apr  5 2024  4:42PM
print dateadd(year,8, getdate()) -- Oct  5 2031  4:42PM
print dateadd(year,-48, getdate()) -- Oct  5 1975  4:46PM
print dateadd(hour,1, getdate()) -- Oct  5 2023  5:46PM

go

declare @DOB date = '2002-03-22', @Today date = getdate()
print datediff(year,@DOB, @Today) -- 21 years
print datediff(month,@DOB, @Today) -- 259 months
print datediff(day,@DOB, @Today) -- 7867 days

go

select id,name from Employee
-- emp id = CGT101, CGT202, etc...
select id,'Member' + id from Employee
-- convert id from int to varchar

select id,'Member' + cast(id as varchar(10)) from Employee
select id,'Member' + convert(varchar(10),id) from Employee

select getdate() -- 2023-10-05 18:00:28.490
select convert(date,getdate()) -- 2023-10-05
select convert(varchar(20),getdate(),100) -- Oct  5 2023  6:04PM
select convert(varchar(20),getdate(),101) -- 10/05/2023
select convert(varchar(20),getdate(),102) -- 2023.10.05
select convert(varchar(20),getdate(),103) -- 05/10/2023
select convert(varchar(20),getdate(),104) -- 05.10.2023

select cast('10' as int) -- 10
select cast('Abhishek' as int) -- error
select cast('Abhishek' as varchar) -- Abhishek

go

print abs(-10)
print abs(10.456) -- 10.456

--ceiling - returns upper closest whole number
print ceiling(22.5) -- 23
print ceiling(-22.5) -- -22

--floor - returns lower closest whole number
print floor(22.5) -- 22
print floor(-22.5) -- -23

print square(22) -- 484
print square(22.5) -- 506.25

print sqrt(16) -- 4
print sqrt(144) -- 12

print power(2,5) -- 32
print power(22,5) -- 5153632

print round(456.768,2) -- 456.770
print round(456.768,2,1) -- 456.760
print round(456.768,1) -- 456.800
print round(456.768,1,1) -- 456.700

print round(456.768,-1) -- 460.000
print round(456.768,-1) -- 500.000

select rand()
--0.265188903325343, --0.926222583844479

declare @start int = 1
while @start <= 10
begin 
print floor(rand() * 100)
set @start = @start + 1
end

go

--To make rand() function as a deterministic function. If we provide a seed value
print rand(10) -- 0.71376, 0.71376, 0.71376, 0.71376, 0.71376




























