use db_1;
CREATE TABLE teachers (
                          id INT AUTO_INCREMENT PRIMARY KEY,
                          name VARCHAR(100) NOT NULL,
                          age INT NOT NULL,
                          subject VARCHAR(100) NOT NULL,
                          hire_date DATE
);
CREATE TABLE students (
                          id INT AUTO_INCREMENT PRIMARY KEY,
                          name VARCHAR(100) NOT NULL,
                          age INT NOT NULL,
                          class VARCHAR(50),
                          teacher_id INT,
                          FOREIGN KEY (teacher_id) REFERENCES teachers(id) ON DELETE SET NULL
);

CREATE TABLE employees (
                           id INT AUTO_INCREMENT PRIMARY KEY,
                           work_number INT NOT NULL UNIQUE,  -- 工号字段，必须唯一
                           name VARCHAR(100) NOT NULL,
                           age INT NOT NULL,
                           department VARCHAR(100),
                           hire_date DATE
);

INSERT INTO employees (work_number, name, age, department, hire_date)
VALUES
    (3, 'John Doe', 28, 'HR', '2020-05-15'),
    (5, 'Jane Smith', 35, 'Finance', '2018-07-21'),
    (7, 'Mark Brown', 40, 'Engineering', '2015-09-10'),
    (9, 'Emma White', 30, 'Marketing', '2019-02-12');

INSERT INTO teachers (name, age, subject, hire_date)
VALUES
    ('Alice', 35, 'Mathematics', '2015-08-01'),
    ('Bob', 42, 'Physics', '2012-09-10'),
    ('Catherine', 30, 'Chemistry', '2018-03-22');
INSERT INTO students (name, age, class, teacher_id)
VALUES
    ('David', 16, '10A', 1),
    ('Eva', 17, '11B', 2),
    ('Frank', 15, '9C', 3),
    ('Grace', 16, '10A', 1),
    ('Hannah', 17, '11B', 2);
