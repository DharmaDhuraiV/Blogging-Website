CREATE TABLE users(
    email_id character varying(40) NOT NULL,
    username character varying(40),
    name character varying(40),
    dob date,
    gender character varying(3),
    country character varying(30),
    interests character varying(30),
    password character varying(30),
    CONSTRAINT users_pkey PRIMARY KEY (email_id),
    CONSTRAINT users_username_key UNIQUE (username)
)

CREATE TABLE tracking(
    email_id character varying(40) NOT NULL,
    date date NOT NULL,
    hours_used real,
    last_time timestamp without time zone,
    CONSTRAINT tracking_pkey PRIMARY KEY (email_id, date),
    CONSTRAINT tracking_email_id_fkey FOREIGN KEY (email_id) REFERENCES users (email_id)
)

CREATE TABLE followers(
    follower_email character varying(40) NOT NULL,
    following_email character varying(40) NOT NULL,
    CONSTRAINT followers_pkey PRIMARY KEY (follower_email, following_email),
    CONSTRAINT followers_follower_email_fkey FOREIGN KEY (follower_email) REFERENCES users (email_id),
    CONSTRAINT followers_following_email_fkey FOREIGN KEY (following_email) REFERENCES users (email_id)
)

CREATE TABLE blogs(
    blog_id integer NOT NULL DEFAULT nextval('blogs_blog_id_seq'::regclass),
    title text NOT NULL,
    date date NOT NULL,
    visibility integer DEFAULT 0,
    context text NOT NULL,
    categories character varying(30),
    email_id character varying(40),
    subject text NOT NULL,
    CONSTRAINT blogs_pkey PRIMARY KEY (blog_id),
    CONSTRAINT blogs_email_id_fkey FOREIGN KEY (email_id) REFERENCES users (email_id)
)

CREATE TABLE comments(
    comment_id integer NOT NULL DEFAULT nextval('comments_comment_id_seq'::regclass),
    email_id character varying(40),
    blog_id integer,
    comment text NOT NULL,
    date date NOT NULL,
    CONSTRAINT comments_pkey PRIMARY KEY (comment_id),
    CONSTRAINT comments_blog_id_fkey FOREIGN KEY (blog_id) REFERENCES blogs (blog_id),
    CONSTRAINT comments_email_id_fkey FOREIGN KEY (email_id) REFERENCES users (email_id)
)

CREATE TABLE blogviews(
    viewer_mail character varying(40) NOT NULL,
    blog_id integer NOT NULL,
    last_viewed_date date NOT NULL,
    CONSTRAINT blogviews_pkey PRIMARY KEY (viewer_mail, blog_id),
    CONSTRAINT blogviews_blog_id_fkey FOREIGN KEY (blog_id) REFERENCES blogs (blog_id),
    CONSTRAINT blogviews_viewer_mail_fkey FOREIGN KEY (viewer_mail) REFERENCES users (email_id)
)

CREATE TABLE bloglikes(
    email_id character varying(40) NOT NULL,
    blog_id integer NOT NULL,
    CONSTRAINT bloglikes_pkey PRIMARY KEY (email_id, blog_id),
    CONSTRAINT bloglikes_blog_id_fkey FOREIGN KEY (blog_id) REFERENCES blogs (blog_id),
    CONSTRAINT bloglikes_email_id_fkey FOREIGN KEY (email_id) REFERENCES users (email_id)
)