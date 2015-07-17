--1
SELECT * FROM users;
--2
SELECT * FROM posts
WHERE users_id = 100;
--3
SELECT posts.id,posts.title,posts.url,posts.content,posts.created_at,posts.updated_at, users.first_name,users.last_name
FROM posts
INNER JOIN users
ON posts.users_id = users.id 
WHERE posts.users_id = 200; 
--4
SELECT posts.id,posts.title,posts.url,posts.content,posts.created_at,posts.updated_at, users.username
FROM posts
INNER JOIN users
ON posts.users_id = users.id 
WHERE users.first_name = 'Norene' and users.last_name = 'Schmitt';
--5
SELECT username,posts.created_at
FROM users
INNER JOIN posts
ON posts.users_id = users.id
WHERE posts.created_at > 'January 1,2015';
--6
SELECT posts.title,posts.content,users.username
FROM posts
INNER JOIN users
ON users.id = posts.users_id
WHERE users.created_at < 'January 1, 2015';
--7
SELECT comments.*, posts.title 
AS "Posts Title"
FROM comments
INNER JOIN posts
ON posts.id = comments.id;
--8
SELECT comments.*,
posts.title AS "post_title",
posts.url AS "posts_url",
comments.body AS "comment_body"
FROM posts
INNER JOIN comments 
ON (comments.posts_id = posts.id)
WHERE posts.created_at < 'January 1,2015';
--9
SELECT comments.*,
posts.title AS "post_title",
posts.url AS "posts_url",
comments.body AS "comment_body"
FROM posts
INNER JOIN comments 
ON (comments.posts_id = posts.id)
WHERE posts.created_at > 'January 1,2015';
--10
SELECT comments.*,
posts.title AS "post_title",
posts.url AS "post_url",
comments.body AS "comment_body"
FROM comments
INNER JOIN posts
ON (posts.id = comments.posts_id)
WHERE comments.body LIKE ('%USB%');
--11
SELECT
posts.title AS "post_title",
comments.body AS "comment_body",
users.first_name,users.last_name
FROM
users
INNER JOIN posts
ON(posts.id = users.id)
INNER JOIN comments
ON (comments.id = posts.id )
WHERE
comments.body LIKE('%matrix%');
