-- Consider  and  to be two points on a 2D plane.
--
--  happens to equal the minimum value in Northern Latitude (LAT_N in STATION).
--  happens to equal the minimum value in Western Longitude (LONG_W in STATION).
--  happens to equal the maximum value in Northern Latitude (LAT_N in STATION).
--  happens to equal the maximum value in Western Longitude (LONG_W in STATION).
-- Query the Manhattan Distance between points  and  and round it to a scale of  decimal places.
--
--
-- where LAT_N is the northern latitude and LONG_W is the western longitude.
/*
Enter your query here.
*/
select ROUND(ABS((min(LAT_N)-max(LAT_N)))+ABS((MIN(LONG_W)-max(long_w))),4) from station
