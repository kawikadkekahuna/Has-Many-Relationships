CREATE TABLE users (
	id serial NOT NULL,
	username character varying(90) NOT NULL,
	first_name character varying(90) DEFAULT NULL,
	last_name character varying(90) DEFAULT NULL,
	created_at timestamp with time zone NOT NULL DEFAULT now(),
	updated_at timestamp with time zone NOT NULL DEFAULT now(),
	PRIMARY KEY(id)
);

CREATE TABLE posts(
	id serial NOT NULL,
	title character varying(180) DEFAULT NULL, 
	url character varying(510) DEFAULT NULL,
	content text DEFAULT NULL,
	created_at timestamp with time zone NOT NULL DEFAULT now(),
	updated_at timestamp with time zone NOT NULL DEFAULT now(),
	users_id integer NOT NULL,
	CONSTRAINT users_fk_id FOREIGN KEY (users_id) REFERENCES users (id),
	PRIMARY KEY(id)
);

CREATE TABLE comments(
	id serial NOT NULL,
	body character varying(510),
	created_at timestamp with time zone NOT NULL DEFAULT now(),
	updated_at timestamp with time zone NOT NULL DEFAULT now(),
	posts_id integer NOT NULL,
	users_id integer NOT NULL,
	CONSTRAINT posts_fk_id FOREIGN KEY (posts_id) REFERENCES posts (id),
	CONSTRAINT users_fk_id FOREIGN KEY (users_id) REFERENCES users (id)
);	


