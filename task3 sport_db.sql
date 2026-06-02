create database sports_db;
use sports_db;
show tables;
select * from olympics_data;
SELECT COUNT(*) AS total_rows FROM olympics_data;

#. Total Medals by Country
SELECT country_name,
COUNT(medal) AS total_medals
FROM olympics_data
WHERE medal != 'None'
GROUP BY country_name
ORDER BY total_medals DESC limit 5;
-- Total Gold Medals by Sport
SELECT sport,
COUNT(*) AS gold_medals
FROM olympics_data
WHERE medal = 'Gold'
GROUP BY sport
ORDER BY gold_medals DESC limit 3;
-- Average Age of Athletes by Sport
SELECT sport,
AVG(age) AS average_age
FROM olympics_data
GROUP BY sport
ORDER BY average_age DESC limit 10;
-- Total Medals Won by Each Athlete
SELECT athlete_name,
COUNT(medal) AS medals_won
FROM olympics_data
WHERE medal != 'None'
GROUP BY athlete_name
ORDER BY medals_won DESC
LIMIT 10;
-- Medal Count by Year
SELECT year,
COUNT(medal) AS total_medals
FROM olympics_data
WHERE medal != 'None'
GROUP BY year
ORDER BY year limit 20;
-- Number of Athletes by Country
SELECT country_name,
COUNT(DISTINCT athlete_id) AS total_athletes
FROM olympics_data
GROUP BY country_name
ORDER BY total_athletes DESC limit 7;
-- Medal Distribution (Gold, Silver, Bronze)
SELECT medal,
COUNT(*) AS medal_count
FROM olympics_data
WHERE medal != 'None'
GROUP BY medal;
-- Countries with Highest Gold Medals
SELECT country_name,
COUNT(*) AS gold_medals
FROM olympics_data
WHERE medal = 'Gold'
GROUP BY country_name
ORDER BY gold_medals DESC
LIMIT 10;







describe olympics_data;