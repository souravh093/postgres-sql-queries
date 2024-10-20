create table departments (
    department_id SERIAL PRIMARY KEY,
    department_name VARCHAR(50)
)

create table employees (
    employee_id SERIAL PRIMARY KEY,
    employee_name VARCHAR(50),
    department_id INT REFERENCES departments (department_id),
    salary DECIMAL(10, 2),
    hire_date DATE
)

drop table departments;

drop table employees;

-- insert into departments VALUES (1, 'HR'), (2, 'IT'), (3, 'Finance');

insert into
    departments (department_name)
VALUES ('HR'),
    ('IT'),
    ('Finance'),
    ('Marketing'),
    ('Customer Service'),
    ('Research'),
    ('Sales'),
    ('Legal'),
    ('Operations'),
    ('Engineering');

insert into
    employees (
        employee_name,
        department_id,
        salary,
        hire_date
    )
VALUES (
        'John',
        1,
        50000,
        '2010-01-01'
    ),
    (
        'Jane',
        2,
        60000,
        '2011-01-01'
    ),
    ('Doe', 3, 70000, '2012-01-01'),
    (
        'Alice',
        4,
        80000,
        '2013-01-01'
    ),
    ('Bob', 5, 90000, '2014-01-01'),
    (
        'Charlie',
        6,
        100000,
        '2015-01-01'
    ),
    (
        'David',
        7,
        110000,
        '2016-01-01'
    ),
    (
        'Eve',
        8,
        120000,
        '2017-01-01'
    ),
    (
        'Frank',
        9,
        130000,
        '2018-01-01'
    ),
    (
        'Grace',
        10,
        140000,
        '2019-01-01'
    ),
    (
        'Hank',
        1,
        150000,
        '2020-01-01'
    ),
    (
        'Ivy',
        2,
        160000,
        '2021-01-01'
    ),
    (
        'Jack',
        3,
        170000,
        '2022-01-01'
    ),
    (
        'Kelly',
        4,
        180000,
        '2023-01-01'
    ),
    (
        'Larry',
        5,
        190000,
        '2024-01-01'
    ),
    (
        'Mary',
        6,
        200000,
        '2025-01-01'
    ),
    (
        'Nancy',
        7,
        210000,
        '2026-01-01'
    ),
    (
        'Oscar',
        8,
        220000,
        '2027-01-01'
    ),
    (
        'Pam',
        9,
        230000,
        '2028-01-01'
    ),
    (
        'Quinn',
        10,
        240000,
        '2029-01-01'
    ),
    (
        'Randy',
        1,
        250000,
        '2030-01-01'
    ),
    (
        'Sally',
        2,
        260000,
        '2031-01-01'
    ),
    (
        'Tom',
        3,
        270000,
        '2032-01-01'
    ),
    (
        'Ursula',
        4,
        280000,
        '2033-01-01'
    ),
    (
        'Victor',
        5,
        290000,
        '2034-01-01'
    ),
    (
        'Wendy',
        6,
        300000,
        '2035-01-01'
    ),
    (
        'Xavier',
        7,
        310000,
        '2036-01-01'
    ),
    (
        'Yvonne',
        8,
        320000,
        '2037-01-01'
    ),
    (
        'Zack',
        9,
        330000,
        '2038-01-01'
    ),
    (
        'Amy',
        10,
        340000,
        '2039-01-01'
    ),
    (
        'Ben',
        1,
        350000,
        '2040-01-01'
    ),
    (
        'Cathy',
        2,
        360000,
        '2041-01-01'
    ),
    (
        'Dan',
        3,
        370000,
        '2042-01-01'
    ),
    (
        'Ella',
        4,
        380000,
        '2043-01-01'
    ),
    (
        'Fred',
        5,
        390000,
        '2044-01-01'
    ),
    (
        'Gina',
        6,
        400000,
        '2045-01-01'
    ),
    (
        'Hugo',
        7,
        410000,
        '2046-01-01'
    ),
    (
        'Iris',
        8,
        420000,
        '2047-01-01'
    ),
    (
        'Jake',
        9,
        430000,
        '2048-01-01'
    ),
    (
        'Kathy',
        10,
        440000,
        '2049-01-01'
    ),
    (
        'Lenny',
        1,
        450000,
        '2050-01-01'
    ),
    (
        'Molly',
        2,
        460000,
        '2051-01-01'
    ),
    (
        'Ned',
        3,
        470000,
        '2052-01-01'
    ),
    (
        'Olive',
        4,
        480000,
        '2053-01-01'
    ),
    (
        'Pete',
        5,
        490000,
        '2054-01-01'
    );

select * from employees;

select *
from employees
    join departments on employees.department_id = departments.department_id;
select *
from employees
    join departments USING(department_id);

select department_name, round(avg(salary)) as avg_salary from employees 
    JOIN departments USING(department_id)
    GROUP BY department_name;