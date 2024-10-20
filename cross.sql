create table employees (
    emp_id int,
    emp_name VARCHAR(50),
    dept_id int
)

create table departments (
    dept_id int,
    dept_name VARCHAR(50)
)

insert into
    employees
VALUES (1, 'John', 1),
    (2, 'Jane', 2),
    (3, 'Doe', 3);

insert into departments VALUES (1, 'HR'), (2, 'IT'), (3, 'Finance');

select * from employees;

select * from departments;

select * from employees
    CROSS JOIN departments;

-- natural join
select * from employees
    NATURAL JOIN departments;

