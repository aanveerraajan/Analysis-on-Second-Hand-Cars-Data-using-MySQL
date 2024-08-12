#--------------------------------------------------SQL PROJECT ON SECOND HAND CARS DATA---------------------------------------------------------------------------
CREATE DATABASE cars;
USE cars;

#-----------------------------------------------------------------Query 1----------------------------------------------------------------------------------
#Read Cars Data.
SELECT * FROM cars_data;

#-----------------------------------------------------------------Query 2----------------------------------------------------------------------------------
#Total Cars - To get a count of total records.
SELECT count(*) FROM cars_data;

#-----------------------------------------------------------------Query 3----------------------------------------------------------------------------------
#The manager asked the data analyst to find out how many cars will be available in 2023.
SELECT count(*) FROM cars_data WHERE (year=2023);

#-----------------------------------------------------------------Query 4----------------------------------------------------------------------------------
#The manager asked the data analyst to find out how many cars will be available from 2020 to 2022 combined and individually.
#Individually
SELECT count(*) FROM cars_data WHERE (year=2020); #74
SELECT count(*) FROM cars_data WHERE (year=2021); #7
SELECT count(*) FROM cars_data WHERE (year=2022); #7
#OR 
SELECT count(*) FROM cars_data WHERE year IN (2020, 2021, 2022) GROUP BY year ORDER BY year;

#Combined
SELECT count(*) FROM cars_data WHERE (year=2020 OR year=2021 OR year=2022);

#-----------------------------------------------------------------Query 5----------------------------------------------------------------------------------
#Client has asked to print just the total of all the cars by year.
SELECT year, count(*) FROM cars_data GROUP BY year ORDER BY year;

#-----------------------------------------------------------------Query 6----------------------------------------------------------------------------------
#Total number of diesal cars in 2020.
SELECT count(*) FROM cars_data WHERE year=2020 AND fuel="Diesel";

#-----------------------------------------------------------------Query 7----------------------------------------------------------------------------------
#Total number of petrol cars in 2020.
SELECT count(*) FROM cars_data WHERE year=2020 AND fuel="Petrol";

#-----------------------------------------------------------------Query 8----------------------------------------------------------------------------------
#Cars of all fuel types by all the years
SELECT year, fuel, count(*) FROM cars_data GROUP BY year, fuel ORDER BY year;

#-----------------------------------------------------------------Query 9----------------------------------------------------------------------------------
#Year with more than 100 cars
SELECT year,count(*) FROM cars_data GROUP BY year HAVING count(*)>100;

#-----------------------------------------------------------------Query 10----------------------------------------------------------------------------------
#Total count of cars between the years 2015 and 2023.
SELECT count(*) FROM cars_data WHERE (year=2015 OR year=2016 OR year=2017 OR year=2018 OR year=2019 OR year=2020 OR year=2021 OR year=2022 OR year=2023);
SELECT count(*) FROM cars_data WHERE year BETWEEN 2015 AND 2023;

#-----------------------------------------------------------------Query 11----------------------------------------------------------------------------------
#Details of all the cars between 2015 and 2023.
CREATE VIEW details AS
SELECT * FROM cars_data;
SELECT * FROM details WHERE year BETWEEN 2015 AND 2023 ORDER BY year;

#OR
SELECT * FROM cars_data WHERE year BETWEEN 2015 AND 2023 ORDER BY year;




#-----------------------------------------------------------------------END-------------------------------------------------------------------------------



