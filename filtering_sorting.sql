-- SQL Practice: Filtering and Sorting
-- Table Used: STATION

-- 1. Display all records
SELECT *
FROM STATION;

-- 2. Display only city names
SELECT CITY
FROM STATION;

-- 3. Display unique city names
SELECT DISTINCT CITY
FROM STATION;

-- 4. Display cities starting with 'A'
SELECT CITY
FROM STATION
WHERE CITY LIKE 'A%';

-- 5. Display cities ending with 'a'
SELECT CITY
FROM STATION
WHERE CITY LIKE '%a';

-- 6. Display cities containing 'a'
SELECT CITY
FROM STATION
WHERE CITY LIKE '%a%';

-- 7. Display cities that do not start with vowels
SELECT DISTINCT CITY
FROM STATION
WHERE CITY NOT LIKE 'A%'
  AND CITY NOT LIKE 'E%'
  AND CITY NOT LIKE 'I%'
  AND CITY NOT LIKE 'O%'
  AND CITY NOT LIKE 'U%';

-- 8. Display cities that start with vowels
SELECT DISTINCT CITY
FROM STATION
WHERE CITY LIKE 'A%'
   OR CITY LIKE 'E%'
   OR CITY LIKE 'I%'
   OR CITY LIKE 'O%'
   OR CITY LIKE 'U%';

-- 9. Display cities from selected states
SELECT CITY, STATE
FROM STATION
WHERE STATE IN ('California', 'Texas', 'Florida');

-- 10. Display cities not from selected states
SELECT CITY, STATE
FROM STATION
WHERE STATE NOT IN ('California', 'Texas', 'Florida');

-- 11. Display records in ascending order of latitude
SELECT CITY, LAT_N
FROM STATION
ORDER BY LAT_N ASC;

-- 12. Display records in descending order of latitude
SELECT CITY, LAT_N
FROM STATION
ORDER BY LAT_N DESC;

-- 13. Display the first 10 records
SELECT *
FROM STATION
LIMIT 10;

-- 14. Display the 10 cities with the highest latitude
SELECT CITY, LAT_N
FROM STATION
ORDER BY LAT_N DESC
LIMIT 10;

-- 15. Display cities that do not start with 'A'
-- and do not end with 'z'
SELECT DISTINCT CITY
FROM STATION
WHERE CITY NOT LIKE 'A%'
  AND CITY NOT LIKE '%z'
ORDER BY CITY ASC;
