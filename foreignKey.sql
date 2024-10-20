create table "user"(
    id SERIAL PRIMARY KEY,
    user_name VARCHAR(50) NOT NULL
)

SELECT * FROM "user";

create table post(
    id SERIAL PRIMARY KEY,
    title TEXT NOT NULL,
    user_id INT REFERENCES "user"(id) ON DELETE CASCADE NOT NULL
)

drop Table post;
drop table "user";

ALTER TABLE post 
    alter COLUMN user_id SET ON DELETE CASCADE;

INSERT INTO "user" (user_name) VALUES ('Alice');
INSERT INTO "user" (user_name) VALUES ('Bob');
INSERT INTO "user" (user_name) VALUES ('Charlie');
INSERT INTO "user" (user_name) VALUES ('Diana');
INSERT INTO "user" (user_name) VALUES ('Eve');

INSERT INTO post (title, user_id) VALUES
('Post 1', 1),
('Post 2', 2),
('Post 3', 3),
('Post 4', 4),
('Post 5', 5),
('Post 6', 1),
('Post 7', 2),
('Post 8', 3),
('Post 9', 4),
('Post 10', 5),
('Post 11', 1),
('Post 12', 2),
('Post 13', 3),
('Post 14', 4),
('Post 15', 5),
('Post 16', 1),
('Post 17', 2),
('Post 18', 3),
('Post 19', 4),
('Post 20', 5),
('Post 21', 1),
('Post 22', 2),
('Post 23', 3),
('Post 24', 4),
('Post 25', 5),
('Post 26', 1),
('Post 27', 2),
('Post 28', 3),
('Post 29', 4),
('Post 30', 5);


insert INTO post (title, user_id) VALUES ('Post 31', 3);

SELECT * from post;


delete from "user" 
    where id = 4;


    