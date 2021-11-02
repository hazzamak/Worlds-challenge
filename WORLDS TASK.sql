USE world;
SHOW TABLES;

SELECT COUNT(Name) FROM city where CountryCode = 'USA';
#274

SELECT Population FROM country where Name = 'Argentina';
#37032000
SELECT LifeExpectancy FROM country where Name = 'Argentina';
#75.1

SELECT Name FROM country WHERE LifeExpectancy IS NOT NULL ORDER BY LifeExpectancy DESC; 
#Andorra

SELECT * FROM city INNER JOIN country ON city.ID = country.capital WHERE country.Name = 'Spain';
#Madrid

SELECT * FROM countrylanguage INNER JOIN country ON country.Code = countrylanguage.CountryCode WHERE Region = 'Southeast Asia';
#Task 5 done

SELECT Name FROM city WHERE Name LIKE 'F%' LIMIT 25;
#Task 6 done

SELECT COUNT(*) FROM city INNER JOIN country ON city.CountryCode = country.Code WHERE country.Name = 'China';
#363

SELECT Name FROM country WHERE Population IS NOT NULL AND not(Population = 0) ORDER BY Population ASC;
#Pitcairn 

SELECT COUNT(*) FROM country;
#239

SELECT * FROM country ORDER BY SurfaceArea DESC LIMIT 10;
#Russian Federation, Antarctica, Canada, China, United States, United States, Brazil, Australia, India, Argentina, Kazakstan

SELECT * FROM city INNER JOIN country ON city.CountryCode = country.Code WHERE country.Name = 'Japan' ORDER BY city.Population DESC LIMIT 5;
#Tokyo, Jokohama, Osaka, Nagoya, Sapporo

SELECT Name, Code, HeadOfState FROM country WHERE HeadOfState = 'Elisabeth II';
#Task 12 done

SELECT * FROM country WHERE not (Population = 0) ORDER BY (SurfaceArea / Population) ASC LIMIT 10;
#