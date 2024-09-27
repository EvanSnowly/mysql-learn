# 查询用户表
use mysql;
select * from user;

# 创建用户
create user 'snow'@'localhost' identified by '123456';

## 修改密码
alter user 'snow'@'localhost' identified with mysql_native_password by '111111';

# 删除用户

drop user 'snow'@'localhost';