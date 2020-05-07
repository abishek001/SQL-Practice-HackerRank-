-- A median is defined as a number separating the higher half of a data set from the lower half. Query the median of the Northern Latitudes (LAT_N) from STATION and round your answer to  decimal places.
/*
Enter your query here.
*/
set @rowindex = -1;
select round(avg(lat_n),4)
from (select @rowindex:= @rowindex +1 rowindex , lat_n
            from station
            order by lat_n)
            n
    where
    n.rowindex in (floor(@rowindex/2),ceil(@rowindex/2));
