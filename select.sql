create table student (
    student_id SERIAL PRIMARY KEY,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    age INT,
    grade CHAR(2),
    course VARCHAR(50),
    email VARCHAR(100),
    dob DATE,
    blood_group VARCHAR(5),
    country VARCHAR(50)
)

INSERT INTO student (first_name, last_name, age, grade, course, email, dob, blood_group, country)
VALUES 
('John', 'Doe', 20, 'A', 'Mathematics', 'john.doe@example.com', '2003-02-15', 'O+', 'USA'),
('Jane', 'Smith', 22, 'B', 'Physics', 'jane.smith@example.com', '2001-06-20', 'A-', 'Canada'),
('Alex', 'Johnson', 19, 'A', 'Computer Science', 'alex.johnson@example.com', '2004-11-11', 'B+', 'UK'),
('Emma', 'Williams', 21, 'C', 'Biology', 'emma.williams@example.com', '2002-05-30', 'O-', 'Australia'),
('Lucas', 'Brown', 23, 'B', 'Chemistry', 'lucas.brown@example.com', '2000-03-14', 'A+', 'Germany'),
('Sophia', 'Jones', 18, 'A', 'History', 'sophia.jones@example.com', '2005-09-05', 'AB+', 'France'),
('Liam', 'Garcia', 20, 'C', 'Engineering', 'liam.garcia@example.com', '2003-12-25', 'B-', 'Spain'),
('Olivia', 'Martinez', 19, 'B', 'Art', 'olivia.martinez@example.com', '2004-04-17', 'O+', 'Mexico'),
('Mason', 'Davis', 22, 'A', 'Economics', 'mason.davis@example.com', '2001-10-02', 'AB-', 'Italy'),
('Ava', 'Lopez', 21, 'A', 'Psychology', 'ava.lopez@example.com', '2002-08-08', 'A+', 'Brazil'),
('Isabella', 'Wilson', 19, 'B', 'Sociology', 'isabella.wilson@example.com', '2004-03-10', 'O-', 'USA'),
('Ethan', 'Miller', 20, 'A', 'Philosophy', 'ethan.miller@example.com', '2003-07-25', 'A+', 'Canada'),
('Mia', 'Moore', 22, 'C', 'Political Science', 'mia.moore@example.com', '2001-11-13', 'B+', 'UK'),
('Noah', 'Taylor', 21, 'B', 'Literature', 'noah.taylor@example.com', '2002-09-29', 'A-', 'Australia'),
('Charlotte', 'Anderson', 19, 'A', 'Business Administration', 'charlotte.anderson@example.com', '2004-05-07', 'O+', 'Germany'),
('James', 'Thomas', 23, 'C', 'Marketing', 'james.thomas@example.com', '2000-12-18', 'B-', 'France'),
('Amelia', 'Jackson', 20, 'B', 'Journalism', 'amelia.jackson@example.com', '2003-04-22', 'O+', 'Spain'),
('William', 'White', 21, 'A', 'Law', 'william.white@example.com', '2002-06-30', 'AB+', 'Italy'),
('Emily', 'Harris', 18, 'C', 'Graphic Design', 'emily.harris@example.com', '2005-10-15', 'A-', 'Mexico'),
('Benjamin', 'Martin', 20, 'A', 'Environmental Science', 'benjamin.martin@example.com', '2003-02-08', 'B+', 'Brazil'),
('Ella', 'Clark', 22, 'B', 'Physics', 'ella.clark@example.com', '2001-07-17', 'O+', 'USA'),
('Henry', 'Lewis', 19, 'C', 'Architecture', 'henry.lewis@example.com', '2004-09-01', 'A+', 'Canada'),
('Avery', 'Young', 21, 'A', 'History', 'avery.young@example.com', '2002-03-21', 'AB-', 'UK'),
('Michael', 'Walker', 23, 'B', 'Mathematics', 'michael.walker@example.com', '2000-05-29', 'O-', 'Australia'),
('Harper', 'Hall', 18, 'A', 'Music', 'harper.hall@example.com', '2005-08-11', 'B-', 'Germany'),
('Daniel', 'King', 20, 'B', 'Economics', 'daniel.king@example.com', '2003-12-04', 'A+', 'France'),
('Lily', 'Wright', 22, 'C', 'Psychology', 'lily.wright@example.com', '2001-01-19', 'O+', 'Spain'),
('Sebastian', 'Scott', 21, 'A', 'Political Science', 'sebastian.scott@example.com', '2002-11-22', 'B+', 'Italy'),
('Zoe', 'Green', 19, 'B', 'Computer Science', 'zoe.green@example.com', '2004-04-12', 'A-', 'Mexico'),
('Jack', 'Adams', 23, 'C', 'Law', 'jack.adams@example.com', '2000-07-28', 'O+', 'Brazil');



select * from student ORDER BY dob ASC;


select country from student ORDER BY country ASC;

-- unique values
select DISTINCT blood_group from student;

-- where
select * from student
    where grade = 'A' AND course = 'History';

SELECT * from student 
    WHERE (country = 'USA' OR country = 'Australia') AND age = 22;

SELECT * FROM student 
    WHERE country != 'USA';

SELECT upper(first_name) as first_name, * from student;

SELECT concat(first_name, ' ', last_name) from student;

select avg(age) from student;
select max(age) from student;
select min(age) from student;
select sum(age) from student;
select count(age) from student;


select max(length(first_name)) from student;

SELECT * from student;

SELECT * from student 
    where email IS  NULL;


