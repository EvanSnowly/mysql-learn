select concat('hello','mysql') 'result';

select upper('evansnowly') 'result';

select lpad('734','10','0') 'result';

select rpad('734','10','0') 'result';

select trim('  hello  mysql!  ') 'result';

select substr('还是world',1,5) 'result';

select lpad(work_number,5,'0') work_number from employees;

update employees set work_number = lpad(work_number,5,'0');

