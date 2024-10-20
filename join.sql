select p.id from post as p JOIN "user" on p.user_id = "user".id;

select * from "user" JOIN post on post.user_id = "user".id;

select * from "user" LEFT JOIN post on post.user_id = "user".id;

select * from post RIGHT JOIN "user" on post.user_id = "user".id;


select * from post FULL JOIN "user" on post.user_id = "user".id;

