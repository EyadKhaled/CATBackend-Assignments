-- https://www.hackerrank.com/challenges/african-cities/problem
SELECT CITY.NAME FROM CITY
WHERE COUNTRYCODE IN (
    SELECT COUNTRY.CODE FROM COUNTRY
    WHERE CONTINENT = 'Africa'
);