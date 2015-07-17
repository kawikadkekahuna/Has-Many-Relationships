SELECT * FROM users;

SELECT * FROM posts
WHERE users_id = 100;

SELECT posts.id,posts.title,posts.url,posts.content,posts.created_at,posts.updated_at, users.first_name,users.last_name
FROM posts
INNER JOIN users
ON posts.users_id = users.id 
WHERE posts.users_id = 200; 

SELECT posts.id,posts.title,posts.url,posts.content,posts.created_at,posts.updated_at, users.username
FROM posts
INNER JOIN users
ON posts.users_id = users.id 
WHERE users.first_name = 'Norene' and users.last_name = 'Schmitt';

SELECT username,posts.created_at
FROM users
INNER JOIN posts
ON posts.users_id = users.id
WHERE posts.created_at > 'January 1,2015';