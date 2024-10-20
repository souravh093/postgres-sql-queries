-- Active: 1729224608991@@127.0.0.1@5432@ph
select * from person2;

alter table person2 
add column email VARCHAR(255) DEFAULT 'example@gmail.com' not null;

alter table person2 drop column email;

insert into person2 values(7, 'Shuvro dev', 22, 'shuvro@gmail.com');

alter table person2 rename column age to user_age;

alter table person2
    alter column user_name type VARCHAR(255);

alter table person2
    alter column user_age set not null;

alter table person2
    alter column user_age DROP not null;

ALTER TABLE person2
    DROP constraint unique_person2_user_age;

TRUNCATE table person2;