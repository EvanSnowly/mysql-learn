-- 创建用户表
create table `user` (
    id int primary key auto_increment comment 'id主键',
    name varchar(10) not null unique comment '用户名',
    age int check ( age>0 and age<120) comment '年龄',
    status char(1) default '1',
    gender char(1) check ( gender = '男' or gender='女' ) comment '性别'
)comment '用户表';

-- 向用户表中插入数据
insert into user value (null,'evansnowly',34,2,'男');
insert into user value (null,'user1',32,null,'女');

-- 向用户表中插入数据，不插入id和status
insert into user( name, age, gender) value ('user2',34,'男');



-- 创建部门表
CREATE TABLE departments (
                             id INT AUTO_INCREMENT PRIMARY KEY,
                             name VARCHAR(100) NOT NULL UNIQUE COMMENT '部门名称',
                             location VARCHAR(100) COMMENT '部门所在地'
);
-- 创建员工表
CREATE TABLE employees (
                           id INT AUTO_INCREMENT PRIMARY KEY,
                           name VARCHAR(100) NOT NULL COMMENT '员工姓名',
                           age INT CHECK (age > 0 AND age < 120) COMMENT '年龄',
                           hire_date DATE COMMENT '入职日期',
                           department_id INT,
                           FOREIGN KEY (department_id) REFERENCES departments(id) ON DELETE SET NULL
);
-- 向部门表中插入数据
INSERT INTO departments (name, location)
VALUES
    ('Human Resources', 'New York'),
    ('Finance', 'Chicago'),
    ('Engineering', 'San Francisco');
-- 向员工表中插入数据
INSERT INTO employees (name, age, hire_date, department_id)
VALUES
    ('Alice', 28, '2021-03-15', 1),
    ('Bob', 35, '2019-08-01', 2),
    ('Charlie', 30, '2020-11-20', 3),
    ('David', 40, '2015-07-30', 1),
    ('Eve', 29, '2022-01-10', 3);