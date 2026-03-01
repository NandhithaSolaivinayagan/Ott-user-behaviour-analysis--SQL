#Total number of users on the platform
SELECT COUNT(*) AS total_users FROM users;

#count on each subscription
SELECT plan, COUNT(*) AS user_count FROM subscriptions
GROUP BY plan;

#Most popular content genre
SELECT c.genre, COUNT(w.watch_id) AS total_views 
FROM watch_history w
JOIN content c ON w.content_id = c.content_id
GROUP BY c.genre
ORDER BY total_views DESC
LIMIT 1;

#Average watch time per user
SELECT user_id, AVG(watch_time_minutes) AS avg_watch_time
FROM watch_history
GROUP BY user_id;

#Top 5 most watched contents
SELECT c.title, COUNT(w.watch_id) AS views
FROM watch_history w
JOIN content c ON w.content_id = c.content_id
GROUP BY c.title
ORDER BY views DESC
limit 5;

#User retention: Active users in last 30 days
SELECT COUNT(DISTINCT user_id) AS active_users FROM watch_history
WHERE watch_date >= 2024-03-01;

#Age group analysis
SELECT 
CASE 
  WHEN age BETWEEN 18 AND 25 THEN '18-25'
  WHEN age BETWEEN 26 AND 35 THEN '26-35'
  WHEN age BETWEEN 36 AND 50 THEN '36-50'
  ELSE '50+'
END AS age_group,
COUNT(*) as users
FROM users
GROUP BY age_group;

#Country-wise user distribution
SELECT country, COUNT(*) AS users
FROM users 
GROUP BY country
ORDER BY users DESC;
