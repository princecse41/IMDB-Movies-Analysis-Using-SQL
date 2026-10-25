# IMDb Movies Data Analysis using SQL

## Project Overview
This project focuses on analyzing movie and director data using **MySQL**. The objective is to answer 13 analytical questions using SQL queries to explore movie popularity, revenue, ratings, director performance, and other key insights.

## Objectives
- Retrieve and explore movie and director records.
- Calculate the total number of movies and female directors.
- Identify specific directors and directors whose names start with a particular letter.
- Find the most popular and highest-revenue movies.
- Analyze movie ratings for films released since January 1, 2000.
- Identify movies directed by Brenda Chapman.
- Find directors with the highest number of movies and the highest combined movie revenue.

## Dataset Description
The project uses two tables:

### 1. Movies
Contains movie-related information, including:
- Movie ID and original title
- Budget and revenue
- Popularity
- Release date
- Average vote and vote count
- Overview and tagline
- Director ID

### 2. Directors
Contains director-related information, including:
- Director name and ID
- Gender
- Department
- UID

**Database:** `project_movie_database`

## Tools and Technologies
- MySQL Workbench

## SQL Concepts Used
- `SELECT` and `WHERE`
- `LIKE` and `IN`
- Aggregate functions: `COUNT()`, `SUM()`, `MAX()`
- `ORDER BY` and `LIMIT`
- `GROUP BY` and `HAVING`
- `JOIN`
- Filtering and sorting

## Key Analysis Questions
The project answers the following 13 questions:

1. Retrieve all movie data.
2. Retrieve all director data.
3. Count the total number of movies.
4. Find James Cameron, Luc Besson, and John Woo.
5. Find directors whose names start with S.
6. Count female directors.
7. Find the tenth female director based on the selected ordering.
8. Identify the three most popular movies.
9. Identify the three highest-revenue movies.
10. Find the movie with the highest average vote among movies released since January 1, 2000.
11. Find movies directed by Brenda Chapman.
12. Identify the director or directors with the highest number of movies.
13. Identify the director with the highest combined movie revenue.

## Key Findings
- The available Movies table contains 47 records.
- The Directors table contains 2,349 records.
- The three most popular movies were identified using the `popularity` column.
- The three highest-revenue movies were identified using the `revenue` column.
- Director-level movie counts and combined revenue were analyzed using aggregation and joins.
- Some requested directors or movies may not appear in the available dataset.

*Note: Findings reflect the available project dataset and may not represent the complete IMDb database.*

## Project Files
- `imdb_movies_analysis.sql` — SQL queries used to answer the project questions.
- `IMDb_Movies_SQL_Project_Report.pdf` — Detailed project report.
- `screenshots/` — Screenshots of SQL queries and their outputs.

## Conclusion
This project demonstrates how SQL can be used to retrieve, filter, aggregate, and analyze movie and director data. It provided practical experience with SQL queries, joins, aggregate functions, grouping, sorting, and subqueries to answer real-world analytical questions.

## Author
Prince Rajwar
Data Analyst
Linkedin:-https://www.linkedin.com/in/prince-rajwar-cse

