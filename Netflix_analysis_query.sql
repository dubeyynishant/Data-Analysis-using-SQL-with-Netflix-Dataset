use netflix_analysis;


/*
1. What were the top 10 movies according to IMDB score?
*/
SELECT title, 
type, 
imdb_score
FROM netflix_analysis.titles
WHERE imdb_score >= 8.0
AND type = 'MOVIE'
ORDER BY imdb_score DESC
LIMIT 10;


/*
2. What were the top 10 shows according to IMDB score? 
*/
SELECT title, 
type, 
imdb_score
FROM netflix_analysis.titles
WHERE imdb_score >= 6.0
AND type = 'SHOW'
ORDER BY imdb_score DESC
LIMIT 10;


/*
3.What were the bottom 10 movies according to IMDB score? 
*/
SELECT title, 
type, 
imdb_score
FROM netflix_analysis.titles
WHERE type = 'MOVIE'
ORDER BY imdb_score ASC
LIMIT 10;


/*
4.What were the bottom 10 shows according to IMDB score? 
*/
SELECT title, 
type, 
imdb_score
FROM netflix_analysis.titles
WHERE type = 'SHOW'
ORDER BY imdb_score ASC
LIMIT 10;

/*
5.What were the average IMDB and TMDB scores for shows and movies? 
*/
SELECT DISTINCT type, 
ROUND(AVG(imdb_score),2) AS avg_imdb_score,
ROUND(AVG(tmdb_score),2) as avg_tmdb_score
FROM netflix_analysis.titles
GROUP BY type ;


/*
6.What were the average IMDB and TMDB scores for each production country?
*/
SELECT DISTINCT production_countries, 
ROUND(AVG(imdb_score),2) AS avg_imdb_score,
ROUND(AVG(tmdb_score),2) AS avg_tmdb_score
FROM netflix_analysis.titles
GROUP BY production_countries
ORDER BY avg_imdb_score DESC;

/*
7.What were the average IMDB and TMDB scores for each age certification for shows and movies?
*/
SELECT DISTINCT age_certification, 
ROUND(AVG(imdb_score),2) AS avg_imdb_score,
ROUND(AVG(tmdb_score),2) AS avg_tmdb_score
FROM netflix_analysis.titles
GROUP BY age_certification
ORDER BY avg_imdb_score DESC;


/*
8.What were the 5 most common age certifications for movies?
*/
SELECT age_certification, 
COUNT(*) AS certification_count
FROM netflix_analysis.titles
WHERE type = 'Movie' 
AND age_certification != 'N/A'
GROUP BY age_certification
ORDER BY certification_count DESC
LIMIT 5;


/*
9.Who were the top 20 actors that appeared the most in movies/shows? 
*/
SELECT DISTINCT name as actor, 
COUNT(*) AS number_of_appearences 
FROM netflix_analysis.credits
WHERE role = 'actor'
GROUP BY name
ORDER BY number_of_appearences DESC
LIMIT 20;


/*
10.Who were the top 20 directors that directed the most movies/shows? 
*/
SELECT DISTINCT name as director, 
COUNT(*) AS number_of_appearences 
FROM netflix_analysis.credits
WHERE role = 'director'
GROUP BY name
ORDER BY number_of_appearences DESC
LIMIT 20;


/*
11.Which shows on Netflix have the most seasons?
*/
SELECT title, 
SUM(seasons) AS total_seasons
FROM netflix_analysis.titles 
WHERE type = 'Show'
GROUP BY title
ORDER BY total_seasons DESC
LIMIT 10;


/*
12.Which genres had the most movies? 
*/
SELECT genres, 
COUNT(*) AS title_count
FROM netflix_analysis.titles 
WHERE type = 'Movie'
GROUP BY genres
ORDER BY title_count DESC
LIMIT 10;


/*
13.Which genres had the most shows? 
*/
SELECT genres, 
COUNT(*) AS title_count
FROM netflix_analysis.titles 
WHERE type = 'Show'
GROUP BY genres
ORDER BY title_count DESC
LIMIT 10;


/*
14.What were the total number of titles for each year? 
*/
SELECT release_year, 
COUNT(*) AS title_count
FROM netflix_analysis.titles 
GROUP BY release_year
ORDER BY release_year DESC;


/*
15.What were the top 3 most common genres?
*/
SELECT t.genres, 
COUNT(*) AS genre_count
FROM netflix_analysis.titles AS t
WHERE t.type = 'Movie'
GROUP BY t.genres
ORDER BY genre_count DESC
LIMIT 3;



