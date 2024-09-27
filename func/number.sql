select ceil(1.5);

select floor(1.5);

select mod(5,3);

select ROUND(4.64,1);

select ROUND(4.4);

select rand();

# 生成六位随机码
select lpad(ROUND(rand()*1000000,0),6,'0');
