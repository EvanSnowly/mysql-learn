# select ceil(1.5);
# This statement selects the ceiling of 1.5, which is 2.

select ceil(1.5);

# select floor(1.5);
# This statement selects the floor of 1.5, which is 1.

select floor(1.5);

# select mod(5,3);
# This statement selects the remainder of 5 divided by 3, which is 2.

select mod(5,3);

# select ROUND(4.64,1);
# This statement selects the rounded value of 4.64 to 1 decimal place, which is 4.7.

select ROUND(4.64,1);

# select ROUND(4.4);
# This statement selects the rounded value of 4.4, which is 4.

select ROUND(4.4);

# select rand();
# This statement selects a random floating-point value between 0 and 1.

select rand();

# 生成六位随机码
# This statement generates a six-digit random code.
select lpad(ROUND(rand()*1000000,0),6,'0');