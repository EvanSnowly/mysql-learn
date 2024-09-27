-- 拼接字符串
select concat('hello','mysql') 'result';

-- 将字符串转换为大写
select upper('evansnowly') 'result';

-- 在字符串左侧填充指定字符
select lpad('734','10','0') 'result';

-- 在字符串右侧填充指定字符
select rpad('734','10','10') 'result';

-- 去除字符串两端的空格
select trim('  hello  mysql!  ') 'result';

-- 截取字符串
select substr('还是world',1,5) 'result';

-- 在employees表中，将work_number字段左侧填充0，使其长度为5
select lpad(work_number,5,'0') work_number from employees;

-- 更新employees表，将work_number字段左侧填充0，使其长度为5
update employees set work_number = lpad(work_number,5,'0');

