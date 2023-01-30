--- Question 3 ---

select count(*)
from green_taxi_data
where cast(lpep_pickup_datetime as date)='2019-01-15' and cast(lpep_dropoff_datetime as date)='2019-01-15';



--- Question 4 ---


select cast(lpep_pickup_datetime as date),max(trip_distance) as dist
from green_taxi_data
group by cast(lpep_pickup_datetime as date)
order by dist desc;


--- Question 5 ---
select count(*)
from green_taxi_data
where cast(lpep_pickup_datetime as date)='2019-01-01' and  passenger_count=2;


select count(*)
from green_taxi_data
where cast(lpep_pickup_datetime as date)='2019-01-01' and  passenger_count=3;


--- Question 6 ---
 
select plx."LocationID" as pick_uploc , dox."Zone" as drop_offloc ,gr.*
from green_taxi_data as gr
join taxi_zones as plx on gr."PULocationID"= plx."LocationID"
join taxi_zones as dox on gr."DOLocationID"= dox."LocationID"
where plx."Zone"='Astoria'
order by tip_amount desc
limit 1;


