-- users schema
CREATE TABLE users(
user_id INT primary key,
name VARCHAR(50),
age INT,
gender VARCHAR (10),
country VARCHAR (50),
signup_date DATE
);
-- subscriptions schema
CREATE TABLE subscriptions(
user_id INT,
plan VARCHAR(50),
start_date DATE,
end_date DATE,
FOREIGN KEY (user_id) references users(user_id)
);
-- content schema
CREATE TABLE content (
    content_id INT PRIMARY KEY,
    title VARCHAR(100),
    genre VARCHAR(30),
    language VARCHAR(30),
    release_year INT
);
-- watch_history schema
CREATE TABLE watch_history (
    watch_id INT PRIMARY KEY,
    user_id INT,
    content_id INT,
    watch_date DATE,
    watch_time_minutes INT,
    FOREIGN KEY (user_id) REFERENCES users(user_id),
    FOREIGN KEY (content_id) REFERENCES content(content_id)
);

