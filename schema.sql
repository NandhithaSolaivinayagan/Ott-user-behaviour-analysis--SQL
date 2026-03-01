create table users(
user_id INT primary key,
name VARCHAR(50),
age INT,
gender VARCHAR (10),
country VARCHAR (50),
signup_date DATE
);

INSERT INTO users (user_id, name, age, gender, country, signup_date) VALUES
(1, 'Aarav', 22, 'M', 'India', '2024-01-10'),
(2, 'Meera', 25, 'F', 'India', '2024-01-15'),
(3, 'Rahul', 30, 'M', 'India', '2024-02-01'),
(4, 'Sneha', 28, 'F', 'India', '2024-02-05'),
(5, 'Vikram', 35, 'M', 'India', '2024-02-10'),
(6, 'Ananya', 24, 'F', 'India', '2024-02-20'),
(7, 'Karthik', 27, 'M', 'India', '2024-03-01'),
(8, 'Pooja', 32, 'F', 'India', '2024-03-05'),
(9, 'Ravi', 40, 'M', 'India', '2024-03-10'),
(10, 'Divya', 29, 'F', 'India', '2024-03-15'),
(11, 'Arjun', 21, 'M', 'USA', '2024-03-20'),
(12, 'Neha', 26, 'F', 'USA', '2024-03-22'),
(13, 'Suresh', 34, 'M', 'UAE', '2024-03-25'),
(14, 'Kavya', 23, 'F', 'UAE', '2024-03-28'),
(15, 'Manoj', 38, 'M', 'UK', '2024-04-01'),
(16, 'Aishwarya', 27, 'F', 'UK', '2024-04-05'),
(17, 'Rohan', 31, 'M', 'Canada', '2024-04-08'),
(18, 'Nisha', 28, 'F', 'Canada', '2024-04-10'),
(19, 'Prakash', 45, 'M', 'India', '2024-04-12'),
(20, 'Swathi', 33, 'F', 'India', '2024-04-15');

select * from users;

create table subscriptions(
user_id INT,
plan VARCHAR(50),
start_date DATE,
end_date DATE,
FOREIGN KEY (user_id) references users(user_id)
);

INSERT INTO subscriptions (user_id, plan, start_date, end_date) VALUES
(1, 'Free', '2024-01-10', NULL),
(2, 'Basic', '2024-01-15', '2025-01-15'),
(3, 'Premium', '2024-02-01', '2025-02-01'),
(4, 'Free', '2024-02-05', NULL),
(5, 'Basic', '2024-02-10', '2025-02-10'),
(6, 'Free', '2024-02-20', NULL),
(7, 'Premium', '2024-03-01', '2025-03-01'),
(8, 'Free', '2024-03-05', NULL),
(9, 'Basic', '2024-03-10', '2025-03-10'),
(10, 'Premium', '2024-03-15', '2025-03-15'),
(11, 'Free', '2024-03-20', NULL),
(12, 'Basic', '2024-03-22', '2025-03-22'),
(13, 'Premium', '2024-03-25', '2025-03-25'),
(14, 'Free', '2024-03-28', NULL),
(15, 'Basic', '2024-04-01', '2025-04-01'),
(16, 'Premium', '2024-04-05', '2025-04-05'),
(17, 'Free', '2024-04-08', NULL),
(18, 'Basic', '2024-04-10', '2025-04-10'),
(19, 'Free', '2024-04-12', NULL),
(20, 'Premium', '2024-04-15', '2025-04-15');

CREATE TABLE content (
    content_id INT PRIMARY KEY,
    title VARCHAR(100),
    genre VARCHAR(30),
    language VARCHAR(30),
    release_year INT
);

INSERT INTO content (content_id, title, genre, language, release_year) VALUES
(1, 'City Dreams', 'Drama', 'English', 2023),
(2, 'Love Beats', 'Romance', 'Tamil', 2022),
(3, 'Dark Truth', 'Thriller', 'English', 2023),
(4, 'Comedy Nights', 'Comedy', 'Hindi', 2021),
(5, 'Action King', 'Action', 'Telugu', 2022),
(6, 'Family Time', 'Drama', 'Tamil', 2020),
(7, 'Mystery House', 'Thriller', 'English', 2024),
(8, 'Laugh Out Loud', 'Comedy', 'English', 2021),
(9, 'Fast Track', 'Action', 'Hindi', 2023),
(10, 'Heartstrings', 'Romance', 'English', 2024);

CREATE TABLE watch_history (
    watch_id INT PRIMARY KEY,
    user_id INT,
    content_id INT,
    watch_date DATE,
    watch_time_minutes INT,
    FOREIGN KEY (user_id) REFERENCES users(user_id),
    FOREIGN KEY (content_id) REFERENCES content(content_id)
);

INSERT INTO watch_history (watch_id, user_id, content_id, watch_date, watch_time_minutes) VALUES
(1, 1, 1, '2024-04-01', 45),
(2, 2, 2, '2024-04-02', 60),
(3, 3, 3, '2024-04-03', 50),
(4, 4, 4, '2024-04-04', 40),
(5, 5, 5, '2024-04-05', 70),
(6, 6, 6, '2024-04-06', 55),
(7, 7, 7, '2024-04-07', 65),
(8, 8, 8, '2024-04-08', 35),
(9, 9, 9, '2024-04-09', 80),
(10, 10, 10, '2024-04-10', 90),
(11, 11, 1, '2024-04-11', 50),
(12, 12, 2, '2024-04-12', 60),
(13, 13, 3, '2024-04-13', 75),
(14, 14, 4, '2024-04-14', 40),
(15, 15, 5, '2024-04-15', 85),
(16, 16, 6, '2024-04-16', 55),
(17, 17, 7, '2024-04-17', 65),
(18, 18, 8, '2024-04-18', 45),
(19, 19, 9, '2024-04-19', 70),
(20, 20, 10, '2024-04-20', 95);
