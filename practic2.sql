select department_name, count(*) as total_members from employees 
    JOIN departments USING(department_id)
    GROUP BY department_name;

select department_name, count(*) as total_members from employees 
    JOIN departments USING(department_id)
    GROUP BY department_name;

