-- 获取当前日期
select curdate();
-- 获取当前时间
select curtime();
-- 获取当前日期和时间
select now();
-- 获取当前年份
select YEAR(now());
-- 获取当前月份
select MONTH(now());
-- 获取当前日期
select day(now());

-- 获取当前日期加上40个月后的日期
select date_add(now(), INTERVAL 40 MONTH);

-- 获取当前日期加上40个月后的日期与当前日期之间的天数差
select datediff(date_add(now(), INTERVAL 40 MONTH), now());

-- 获取当前日期与员工入职日期之间的天数差，并按天数差降序排列
select DATEDIFF(now(), hire_date) work_day, name
from employees
order by work_day desc;

-- 根据年龄判断学生是否为成年人，并按班级和教师ID排序
select id,
       name,
       case when age > 16 then '成年人' else '未成年' end '年龄情况',
       class,
       teacher_id                                         ca
from students;