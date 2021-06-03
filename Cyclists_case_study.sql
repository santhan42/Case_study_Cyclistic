# Created new database 
# Creating new tables for the individual csv files to upload them from command line


CREATE TABLE `tripdata_may` (
  `ride_id` text,
  `rideable_type` text,
  `started_at` datetime DEFAULT NULL,
  `ended_at` datetime DEFAULT NULL,
  `start_station_name` text,
  `start_station_id` int DEFAULT NULL,
  `end_station_name` text,
  `end_station_id` int DEFAULT NULL,
  `start_lat` double DEFAULT NULL,
  `start_lng` double DEFAULT NULL,
  `end_lat` double DEFAULT NULL,
  `end_lng` double DEFAULT NULL,
  `member_casual` text,
  `ride_length` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

CREATE TABLE `tripdata_june` (
  `ride_id` text,
  `rideable_type` text,
  `started_at` datetime DEFAULT NULL,
  `ended_at` datetime DEFAULT NULL,
  `start_station_name` text,
  `start_station_id` int DEFAULT NULL,
  `end_station_name` text,
  `end_station_id` int DEFAULT NULL,
  `start_lat` double DEFAULT NULL,
  `start_lng` double DEFAULT NULL,
  `end_lat` double DEFAULT NULL,
  `end_lng` double DEFAULT NULL,
  `member_casual` text,
  `ride_length` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

CREATE TABLE `tripdata_july` (
  `ride_id` text,
  `rideable_type` text,
  `started_at` datetime DEFAULT NULL,
  `ended_at` datetime DEFAULT NULL,
  `start_station_name` text,
  `start_station_id` int DEFAULT NULL,
  `end_station_name` text,
  `end_station_id` int DEFAULT NULL,
  `start_lat` double DEFAULT NULL,
  `start_lng` double DEFAULT NULL,
  `end_lat` double DEFAULT NULL,
  `end_lng` double DEFAULT NULL,
  `member_casual` text,
  `ride_length` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

CREATE TABLE `tripdata_august` (
  `ride_id` text,
  `rideable_type` text,
  `started_at` datetime DEFAULT NULL,
  `ended_at` datetime DEFAULT NULL,
  `start_station_name` text,
  `start_station_id` int DEFAULT NULL,
  `end_station_name` text,
  `end_station_id` int DEFAULT NULL,
  `start_lat` double DEFAULT NULL,
  `start_lng` double DEFAULT NULL,
  `end_lat` double DEFAULT NULL,
  `end_lng` double DEFAULT NULL,
  `member_casual` text,
  `ride_length` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

CREATE TABLE `tripdata_september` (
  `ride_id` text,
  `rideable_type` text,
  `started_at` datetime DEFAULT NULL,
  `ended_at` datetime DEFAULT NULL,
  `start_station_name` text,
  `start_station_id` int DEFAULT NULL,
  `end_station_name` text,
  `end_station_id` int DEFAULT NULL,
  `start_lat` double DEFAULT NULL,
  `start_lng` double DEFAULT NULL,
  `end_lat` double DEFAULT NULL,
  `end_lng` double DEFAULT NULL,
  `member_casual` text,
  `ride_length` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

CREATE TABLE `tripdata_october` (
  `ride_id` text,
  `rideable_type` text,
  `started_at` datetime DEFAULT NULL,
  `ended_at` datetime DEFAULT NULL,
  `start_station_name` text,
  `start_station_id` int DEFAULT NULL,
  `end_station_name` text,
  `end_station_id` int DEFAULT NULL,
  `start_lat` double DEFAULT NULL,
  `start_lng` double DEFAULT NULL,
  `end_lat` double DEFAULT NULL,
  `end_lng` double DEFAULT NULL,
  `member_casual` text,
  `ride_length` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

CREATE TABLE `tripdata_november` (
  `ride_id` text,
  `rideable_type` text,
  `started_at` datetime DEFAULT NULL,
  `ended_at` datetime DEFAULT NULL,
  `start_station_name` text,
  `start_station_id` int DEFAULT NULL,
  `end_station_name` text,
  `end_station_id` int DEFAULT NULL,
  `start_lat` double DEFAULT NULL,
  `start_lng` double DEFAULT NULL,
  `end_lat` double DEFAULT NULL,
  `end_lng` double DEFAULT NULL,
  `member_casual` text,
  `ride_length` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

CREATE TABLE `tripdata_december` (
  `ride_id` text,
  `rideable_type` text,
  `started_at` datetime DEFAULT NULL,
  `ended_at` datetime DEFAULT NULL,
  `start_station_name` text,
  `start_station_id` int DEFAULT NULL,
  `end_station_name` text,
  `end_station_id` int DEFAULT NULL,
  `start_lat` double DEFAULT NULL,
  `start_lng` double DEFAULT NULL,
  `end_lat` double DEFAULT NULL,
  `end_lng` double DEFAULT NULL,
  `member_casual` text,
  `ride_length` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

#creating a new table to include all the tables into a single column

CREATE TABLE `all_rides` (
  `ride_id` text,
  `rideable_type` text,
  `started_at` datetime DEFAULT NULL,
  `ended_at` datetime DEFAULT NULL,
  `start_station_name` text,
  `start_station_id` int DEFAULT NULL,
  `end_station_name` text,
  `end_station_id` int DEFAULT NULL,
  `start_lat` double DEFAULT NULL,
  `start_lng` double DEFAULT NULL,
  `end_lat` double DEFAULT NULL,
  `end_lng` double DEFAULT NULL,
  `member_casual` text,
  `ride_length` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;


## Loading all the csv files to thier respective tables in the database

/* mysql> show databases;
+---------------------+
| Database            |
+---------------------+
| case_study_cyclists |
| cyclists            |
| information_schema  |
| mysql               |
| performance_schema  |
| sys                 |
+---------------------+
6 rows in set (0.03 sec)

mysql> use case_study_cyclists;
Database changed
mysql> load data local infile 'C:/Users/keven_000/Desktop/Course_materials/Capstone project/files/202005-divvy-tripdata.csv'
    -> into table tripdata_may
    -> fields terminated by ','
    -> ignore 1 rows;
Query OK, 20057 rows affected, 99 warnings (6.30 sec)
Records: 20057  Deleted: 0  Skipped: 0  Warnings: 99 */


# Repeating the process for all the CSV files

#Reviewing the columns in all the tables
select * from tripdata_april
limit 10;

select * from tripdata_december
limit 10;



#Combining all the tables values and inserting the combined values into the new table all_rides using the union() function.

insert into all_rides
select * from tripdata_april
union all
select * from tripdata_may
union all
select * from tripdata_june
union all
select * from tripdata_july
union all
select * from tripdata_august
union all
select * from tripdata_september
union all
select * from tripdata_october
union all
select * from tripdata_november
union all
select * from tripdata_december;

#combined all data into a single table as all_rides for analyzing. checking the total count, order of data of the new table all_rides

select count(*) from all_rides;

select * 
from all_rides 
order by started_at desc
limit 10;
select * 
from all_rides 
order by started_at 
limit 10;


#dropping columns which are not going to be used for analysis to make the data consistent for analysis

alter table all_rides
drop start_lat ,
drop start_lng,
drop end_lat ,
drop end_lng;

#check data for integrity by checking the length of ride_ids

select length(ride_id), length(max(ride_id)) as max , length(min(ride_id)) as min
from all_rides;

#checking the min date value, max date value and checking the null values for specific columns

select min(started_at) , min(ended_at), max(started_at), max(ended_at)
from all_rides;

select count(*)
from all_rides
where started_at is null OR ended_at is null;

select count(*)
from all_rides
where start_station_id = 0 OR end_station_id = 0;

select count(*)
from all_rides
where started_at = ended_at; 

#analyzing the data
# checking the total unique riders based on their subscripstion plan and rideable bike type 

create table total_riders as
select member_casual as subscription_type,
rideable_type as bike_type , count(distinct ride_id) as riders
from all_rides
group by member_casual,rideable_type;




#analyzing the total rides by month based on the subcription type and bike type to find trends and patterns between the data

select *
from(
select member_casual as subscription_type,
rideable_type as bike_type , count(distinct ride_id) as total_rides, monthname(started_at) as month
from all_rides
where started_at between '2020-04-01' AND '2020-04-30'
group by member_casual,rideable_type) as may_data
union all
select *
from(
select member_casual as subscription_type,
rideable_type as bike_type , count(distinct ride_id) as total_rides, monthname(started_at) as month
from all_rides
where started_at between '2020-05-01' AND '2020-05-31'
group by member_casual,rideable_type) as may_data
union all
select *
from (
select member_casual as subscription_type,
rideable_type as bike_type , count(distinct ride_id) as total_rides, monthname(started_at) as month
from all_rides
where started_at between '2020-06-01' AND '2020-06-30'
group by member_casual,rideable_type) as june_data
union all
select *
from (
select member_casual as subscription_type,
rideable_type as bike_type , count(distinct ride_id) as total_rides, monthname(started_at) as month
from all_rides
where started_at between '2020-07-01' AND '2020-07-31'
group by member_casual,rideable_type) as july_data
union all
select *
from (
select member_casual as subscription_type,
rideable_type as bike_type , count(distinct ride_id) as total_rides, monthname(started_at) as month
from all_rides
where started_at between '2020-08-01' AND '2020-08-31'
group by member_casual,rideable_type) as august_data
union all
select *
from (
select member_casual as subscription_type,
rideable_type as bike_type , count(distinct ride_id) as total_rides, monthname(started_at) as month
from all_rides
where started_at between '2020-09-01' AND '2020-09-30'
group by member_casual,rideable_type) as september_data
union all
select *
from (
select member_casual as subscription_type,
rideable_type as bike_type , count(distinct ride_id) as total_rides, monthname(started_at) as month
from all_rides
where started_at between '2020-10-01' AND '2020-10-31'
group by member_casual,rideable_type) as october_data
union all
select *
from (
select member_casual as subscription_type,
rideable_type as bike_type , count(distinct ride_id) as total_rides, monthname(started_at) as month
from all_rides
where started_at between '2020-11-01' AND '2020-11-30'
group by member_casual,rideable_type) as november_data
union all
select *
from (
select member_casual as subscription_type,
rideable_type as bike_type , count(distinct ride_id) as total_rides, monthname(started_at) as month
from all_rides
where started_at between '2020-12-01' AND '2021-01-01'
group by member_casual,rideable_type) as december_data;


#calculating the duration and seeing the difference in cycle usages between members and casual riders

create table ride_duration as
select timediff(ended_at,started_at) as ride_duration,rideable_type, member_casual
from all_rides
where timediff(ended_at,started_at) >0 and member_casual =  "member" and timediff(ended_at,started_at) is not null
union all
select timediff(ended_at,started_at) as ride_duration,rideable_type, member_casual
from all_rides
where timediff(ended_at,started_at) >0 and member_casual =  "casual" and timediff(ended_at,started_at) is not null;


#Calculating the average time spent by different bike users to identify trends between the duration between Members and casual riders


select round(avg(timestampdiff(minute, started_at,ended_at)),2) as avg_trip_duration,rideable_type as bike_type, member_casual as subcription_type
from all_rides
where member_casual =  "member" AND timestampdiff(minute, started_at,ended_at) >0 and timediff(ended_at,started_at) is not null
group by rideable_type,member_casual;

select round(avg(timestampdiff(minute, started_at,ended_at)),2) as avg_trip_duration,rideable_type as bike_type, member_casual as subcription_type
from all_rides
where member_casual =  "casual" AND timestampdiff(minute, started_at,ended_at) >0 and timediff(ended_at,started_at) is not null
group by rideable_type,member_casual;



#checking the unique start and end stations and analyzing the data to find the most popular stations
#among the riders and also the least popular stations
 

select count(total_riders_started) as ride_count,station_names, sid
from(
select distinct(start_station_name) as station_names, ride_id as total_riders_started, start_station_id as sid
from all_rides) as popular_station
where length(station_names) >0 and sid != 0
group by station_names
order by count(total_riders_started) desc;


select count(total_riders_started) as ride_count,station_names, eid
from(
select distinct(end_station_name) as station_names, ride_id as total_riders_started, end_station_id as eid
from all_rides) as popular_station
where length(station_names) >0 and eid != 0
group by station_names
order by count(total_riders_started) desc;


#checking the day of rides on all trips from the all_rides table 

select ride_id,start_day, end_day, subscription_type
from(
select dayname(started_at) as start_day , dayname(ended_at) as end_day, member_casual as subscription_type,rideable_type as bike_type, ride_id
from all_rides) as days;


#Creating a new column to display the dayname when the rides where started.
#This data will be used to identify patterns on highest frequency days based on the different types of bike users

alter table all_rides
add column weekday text
generated always as (dayname(started_at)) stored;

select weekday
from all_rides;

#Finding the total number of rides by both bike users to find the day with most bike users

select weekday,count(weekday)
from all_rides
where weekday in ('Sunday', 'Monday' , 'Tuesday', 'Wednesday' , 'Thursday' , 'Friday' , 'Saturday') 
group by weekday 
order by count(weekday) desc;

# Finding the pattern of days where member users have most used the bikes

select weekday,count(weekday) , member_casual as subscription_type
from all_rides
where weekday in ('Sunday', 'Monday' , 'Tuesday', 'Wednesday' , 'Thursday' , 'Friday' , 'Saturday') and member_casual = "member"
group by weekday 
order by count(weekday) desc, member_casual;

# Finding the pattern of days where casual users have most used the bikes 
 
select weekday,count(weekday) , member_casual as subscription_type
from all_rides
where weekday in ('Sunday', 'Monday' , 'Tuesday', 'Wednesday' , 'Thursday' , 'Friday' , 'Saturday') and member_casual = "casual"
group by weekday 
order by count(weekday) desc, member_casual;

