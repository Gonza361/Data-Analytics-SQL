-- Ver "SQLLevelPractice.docx" 'SQL1'

SELECT
    *
FROM City
WHERE CountryCode = "USA" AND Population >100000


-- Ver "SQLLevelPractice.docx" 'SQL2'

SELECT
    Name
FROM City
WHERE CountryCode = "USA" AND Population > 120000


-- Ver "SQLLevelPractice.docx" 'SQL3'

SELECT
    *
FROM City


-- Ver "SQLLevelPractice.docx" 'SQL4'

SELECT
    *
FROM City
WHERE ID = 1661


-- Ver "SQLLevelPractice.docx" 'SQL5'

SELECT
    *
FROM City
WHERE CountryCode = "JPN"


-- Ver "SQLLevelPractice.docx" 'SQL6'

SELECT
    Name
FROM City
WHERE CountryCode = "JPN"


-- Ver "SQLLevelPractice.docx" 'SQL7'

SELECT
    City,
    State
FROM Station


-- Ver "SQLLevelPractice.docx" 'SQL8'

SELECT
    DISTINCT(City)
FROM Station
WHERE ID%2 = 0

SELECT 
	DISTINCT(CITY)
FROM STATION
WHERE MOD(ID, 2) = 0


-- Ver "SQLLevelPractice.docx" 'SQL9'

SELECT
    COUNT(City) - COUNT(DISTINCT(City))
FROM Station


-- Ver "SQLLevelPractice.docx" 'SQL10'

SELECT 
    CITY, 
    LENGTH(CITY) AS CITY_LENGTH
FROM STATION
WHERE LENGTH(City) = (SELECT MAX(LENGTH(City)) FROM Station)
LIMIT 1;

SELECT 
    CITY, 
    LENGTH(CITY) AS CITY_LENGTH
FROM STATION
WHERE LENGTH(City) = (SELECT MIN(LENGTH(City)) FROM Station)
ORDER BY City
LIMIT 1;


SELECT City, CHAR_LENGTH(City) AS City_Length
FROM STATION
WHERE City = (
    SELECT City
    FROM STATION
    ORDER BY CHAR_LENGTH(City), City
    LIMIT 1
)
OR City = (
    SELECT City
    FROM STATION
    ORDER BY CHAR_LENGTH(City) DESC, City
    LIMIT 1
);


-- Ver "SQLLevelPractice.docx" 'SQL11'

SELECT
    DISTINCT(City)
FROM Station
WHERE (City LIKE "a%") OR (City LIKE "e%") OR (City LIKE "i%") OR (City LIKE "o%") OR (City LIKE "u%")


-- Ver "SQLLevelPractice.docx" 'SQL12'

SELECT
    DISTINCT(City)
FROM Station
WHERE (City LIKE "%a") OR (City LIKE "%e") OR (City LIKE "%i") OR (City LIKE "%o") OR (City LIKE "%u")


-- Ver "SQLLevelPractice.docx" 'SQL13'

SELECT
    DISTINCT(City)
FROM Station
WHERE ((City LIKE "a%") OR (City LIKE "e%") OR (City LIKE "i%") OR (City LIKE "o%") OR (City LIKE "u%")) AND ((City LIKE "%a") OR (City LIKE "%e") OR (City LIKE "%i") OR (City LIKE "%o") OR (City LIKE "%u"))


-- Ver "SQLLevelPractice.docx" 'SQL14'

SELECT
    DISTINCT(City)
FROM Station
WHERE (City NOT LIKE "a%") AND (City NOT LIKE "e%") AND (City NOT LIKE "i%") AND (City NOT LIKE "o%") AND (City NOT LIKE "u%")


-- Ver "SQLLevelPractice.docx" 'SQL15'

SELECT
    DISTINCT(City)
FROM Station
WHERE (City NOT LIKE "%a") AND (City NOT LIKE "%e") AND (City NOT LIKE "%i") AND (City NOT LIKE "%o") AND (City NOT LIKE "%u")


-- Ver "SQLLevelPractice.docx" 'SQL16'

SELECT
    DISTINCT(City)
FROM Station
WHERE ((City NOT LIKE "a%") AND (City NOT LIKE "e%") AND (City NOT LIKE "i%") AND (City NOT LIKE "o%") AND (City NOT LIKE "u%")) 
OR    ((City NOT LIKE "%a") AND (City NOT LIKE "%e") AND (City NOT LIKE "%i") AND (City NOT LIKE "%o") AND (City NOT LIKE "%u"))


-- Ver "SQLLevelPractice.docx" 'SQL17'

SELECT
    DISTINCT(City)
FROM Station
WHERE ((City NOT LIKE "a%") AND (City NOT LIKE "e%") AND (City NOT LIKE "i%") AND (City NOT LIKE "o%") AND (City NOT LIKE "u%")) 
AND   ((City NOT LIKE "%a") AND (City NOT LIKE "%e") AND (City NOT LIKE "%i") AND (City NOT LIKE "%o") AND (City NOT LIKE "%u"))


-- Ver "SQLLevelPractice.docx" 'SQL18'

SELECT
    Name
FROM Students
WHERE Marks > 75
ORDER BY RIGHT(Name,3), ID

SELECT
    Name
FROM Students
WHERE Marks > 75
ORDER BY SUBSTRING(Name, LENGTH(Name) - 2, 3), ID ASC


-- Ver "SQLLevelPractice.docx" 'SQL19'

SELECT
    Name
FROM Employee
ORDER BY Name


-- Ver "SQLLevelPractice.docx" 'SQL20'

SELECT
    Name
FROM Employee
WHERE Salary > 2000 AND Months < 10
ORDER BY Employee_id


-- Ver "SQLLevelPractice.docx" 'SQL21'

SELECT
    COUNT(ID)
FROM City
WHERE Population > 100000


-- Ver "SQLLevelPractice.docx" 'SQL22'

SELECT
    SUM(Population)
FROM City
WHERE District = "California"


-- Ver "SQLLevelPractice.docx" 'SQL23'

SELECT
    AVG(Population)
FROM City
WHERE District = "California"


-- Ver "SQLLevelPractice.docx" 'SQL24'

SELECT
    ROUND(AVG(Population))
FROM City


-- Ver "SQLLevelPractice.docx" 'SQL25'

SELECT
    SUM(Population)
FROM City
WHERE CountryCode = "JPN"


-- Ver "SQLLevelPractice.docx" 'SQL26'

SELECT
    MAX(Population) - MIN(Population)
FROM City


-- Ver "SQLLevelPractice.docx" 'SQL27'

SELECT
    CEIL(AVG(Salary) - AVG(REPLACE(Salary,"0","")))
FROM Employees


-- Ver "SQLLevelPractice.docx" 'SQL28'

SELECT
    CASE 
        WHEN (A+B) <= C OR (A+C) <= B OR (B+C) <= A THEN "Not A Triangle"
        WHEN (A = B) AND (A = C) AND (B = C) THEN "Equilateral"
        WHEN (A = B) OR (A = C) OR (B = C) THEN "Isosceles"
        WHEN (A <> B) AND (A <> C) AND (B <> C) THEN "Scalene"
    END AS TypeofTriangle
FROM Triangles


-- Ver "SQLLevelPractice.docx" 'SQL29'