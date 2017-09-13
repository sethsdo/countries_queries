#1
select countries.name, languages.language, languages.percentage
from languages
JOIN countries ON languages.country_id = countries.id
where languages.language = 'Slovene'
order by languages.percentage desc


#2
SELECT countries.name, count(*)
FROM cities
LEFT JOIN countries ON cities.country_id = countries.id
group by countries.name


#3 
SELECT cities.name, cities.population
FROM cities 
JOIN  countries ON cities.country_id = countries.id
WHERE countries.name = 'Mexico'  and cities.population > 500000
ORDER BY cities.population desc

#4
SELECT countries.name, languages.language, languages.percentage
FROM languages
JOIN countries ON languages.country_id = countries.id
WHERE languages.percentage > 89
order by languages.percentage desc

#5
SELECT name, surface_area, population
FROM countries
WHERE surface_area < 501 and population > 100000

#6
SELECT government_form, capital, life_expectancy
FROM countries
WHERE government_form = 'Constitutional Monarchy' and capital > 200 and life_expectancy > 75

#7
SELECT countries.name, cities.name, cities.district, cities.population
FROM cities
JOIN  countries ON cities.country_id = countries.id
WHERE countries.name = 'Argentina' and cities.district = 'Buenos Aires' and cities.population > 500000

#8
SELECT region, count(*)
FROM countries 
group by region
ORDER BY  count(*) desc