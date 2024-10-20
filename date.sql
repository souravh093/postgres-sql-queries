show timezone;

select now();


create table timeZon (ts TIMESTAMP without time zone, tsz TIMESTAMP with time zone);

insert into timeZon (ts, tsz) VALUES('2024-01-01 10:45:00', '2024-01-01 10:45:00');

SELECT * from timeZon;

SELECT current_date;

select now()::date;

select now()::time;

select to_char(now(), 'Month');

select current_date - interval '1 year 2 months 3 days';

select age(CURRENT_DATE, '1998-11-06');

select *, age(CURRENT_DATE, dob) from student;

select extract(MONTH from '2024-03-02'::date);

