select curdate();
select curtime();
select now();
select YEAR(now());
select MONTH(now());
select day(now());

select date_add(now(), INTERVAL 40 MONTH);

select datediff(date_add(now(), INTERVAL 40 MONTH), now());

select DATEDIFF(now(), hire_date) work_day, name
from employees
order by work_day desc;

select id,
       name,
       case when age > 16 then '成年人' else '未成年' end '年龄情况',
       class,
       teacher_id                                         ca
from students;