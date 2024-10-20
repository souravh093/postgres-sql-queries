select p.id from post as p
    JOIN "user" on p.user_id = "user".id;