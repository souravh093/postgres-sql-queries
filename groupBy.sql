select * from student;

select country, count(*), avg(age) from student
GROUP BY country;


select country, avg(age) from student
    GROUP BY country
        HAVING avg(age) > 20;

SELECT extract(year from dob) as birth_year, count(*) from student
    GROUP BY birth_year;