-->Exercise 1 — Tasks:

1.SELECT Title FROM movies;
2.SELECT Director FROM movies;
3.SELECT Title,Director FROM movies;
4.SELECT Title,Year FROM movies;
5.SELECT * FROM movies;

-->Exercise 2 — Tasks:

1.SELECT * FROM movies
where id=6;
2.SELECT * FROM movies
where year between 2000 and 2010;
3.SELECT * FROM movies
where year not between 2000 and 2010;
4.SELECT * FROM movies
limit 5;

-->Exercise 3 — Tasks:

1.SELECT * FROM movies 
WHERE title LIKE "Toy Story%";
2.SELECT * FROM movies
where director like "John Lasseter";
3.SELECT * FROM movies
where director not like "John Lasseter";
4.SELECT * FROM movies 
WHERE title LIKE "WALL-_";

-->Exercise 4 — Tasks:

1.SELECT distinct director FROM movies
order by  director asc;
2.SELECT * FROM movies
ORDER BY year DESC
LIMIT 4;
3.SELECT * FROM movies
ORDER BY title asc
LIMIT 5;
4.SELECT * FROM movies
ORDER BY title asc
LIMIT 5 offset 5;

-->Exercise 5 — Tasks:
--Review 1 — Tasks:

1.SELECT * FROM north_american_cities
where country = "Canada";
2.SELECT * FROM north_american_cities
where country = "United States"
ORDER By Latitude desc;
3.SELECT * FROM north_american_cities
WHERE longitude < -87.629798
ORDER BY longitude ASC;
4.SELECT * FROM north_american_cities
where Country = "Mexico"
order by population desc
limit 2;
5.SELECT * FROM north_american_cities
WHERE country LIKE "United States"
ORDER BY population DESC
LIMIT 2 offset 2;


-->Exercise 6 — Tasks:

1.SELECT * FROM movies
inner join boxoffice
 ON movies.id = boxoffice.movie_id;
2.SELECT * FROM movies
inner join boxoffice
ON movies.id = boxoffice.movie_id
where International_sales > Domestic_sales;
3.SELECT * FROM movies
inner join boxoffice
ON movies.id = boxoffice.movie_id
order by rating desc;


-->Exercise 7 — Tasks

1.SELECT distinct building FROM employees;
2.SELECT * FROM buildings;
3.SELECT distinct building_name,role FROM buildings
left join employees
on building_name = building;


-->Exercise 8 — Tasks

1.SELECT * FROM employees
where building is null;
2.SELECT * FROM buildings
left join employees
on building_name = building
where role is null;


-->Exercise 9 — Tasks:

1.SELECT title, (domestic_sales + international_sales) / 1000000 AS Total_sales
FROM movies
inner join boxoffice
ON id = movie_id;
2.SELECT title,rating*10 as movies
inner join boxoffice
on id = movie_id
3.SELECT * FROM movies
WHERE year % 2 = 0;


-->Exercise 10 — Tasks:

1.SELECT * Max (years.employed) from employees
2.SELECT role,Avg (years.employed) from employees
group by role
3.SELECT building,sum (year,employed) from employees
group by building


-->Exercise 11 — Tasks:

1.SELECT role,count (role) from employees 
where role = "Artist"
2.SELECT role,count (role) from employee
group by role
3.SELECT role,sum (year_employed) from employee
where role = "Engineer"


-->Exercise 12 — Tasks:

1.SELECT Director count (title) from movies
group by director
2.SELECT Director,sum (domestic_sales + international_sales) / 1000000 AS Total_sales from movies
inner join boxoffice
on id = movie_id
group by director


-->Exercise 13 — Tasks:

1.Insert into movies
Values (4,"toy story 4","gokul,2022.120")
2.Insert into boxoffice
Values (4,"8.7",340000000,270000000)


-->Exercise 14 — Tasks:

1.Update movies 
set director = "John Lesseter"
where id = 2
2.Update movies
set year = 1999
WHERE id = 3
3.Update movies 
set title = "Toy Story 3"
Director = "Lee Unkrich"
WHERE id = 11

-->Exercise 15 — Tasks:

1.Delete from movies
where year < 2005
2.Delete from movies
where Director = "Andrew Stanton"


-->Exercise 16 — Tasks:
1.Create table Database (
    Name test,
    version float
    download_count integer
)


-->Exercise 17 — Tasks:

1.Alter table movies
Add Aspect ratio float
2.Alter table movies 
Add Language test
Default English

-->Exercise 18 — Tasks:

1. Drop table If exists movies
2.Drop table If exists boxoffice;