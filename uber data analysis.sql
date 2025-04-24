create database uber;

use uber;

# get the average ride duration from the 'ur1' table
select avg(ride_duration) from ur1;

# get all drivers whose earnings are less than or equal to the maximum earnings
select driver_name, earnings from ud1
where earnings <= (select max(earnings) from ud1);

# get the top 5 highest-earning drivers
select driver_name, earnings from ud1
order by earnings desc
limit 5;

# count the number of rides for each payment method
select count(ride_id), payment_method from ur1
group by payment_method;

#get all ride ids and fare amounts where the fare is greater than 20
select ride_id, fare_amount from ur1
where fare_amount > 20;

# count the number of rides from each pickup location, sorted by ride count
select count(*), pickup_location from ur1
group by pickup_location
order by count(*);

# get the average driver rating, ordered from highest to lowest
select driver_name, avg(rating) from ud1
group by driver_name
order by avg(rating) desc;

# display all driver names and their earnings
select driver_name, earnings from ud1;

# get all ride ids and payment methods where the payment method was cash
select ride_id, payment_method from ur1
where payment_method = 'cash';

# count rides and get average distance for rides picked up in dhanbad
select count(ride_id), avg(ride_distance), pickup_location from ur1
where pickup_location = 'dhanbad';

# get ride ids and durations for rides shorter than 10 minutes
select ride_id, ride_duration from ur1
where ride_duration < 10;


# get rides where pickup and dropoff locations are the same
select ride_id, pickup_location, dropoff_location from ur1
where pickup_location = dropoff_location;

# get passengers who have been picked up from more than 300 different locations
select passenger_id, count(distinct pickup_location) as tp from ur1
group by passenger_id
having tp > 300;

# get average fare amount for rides taken on weekdays
select avg(fare_amount) from ur1
where weekday(ride_timestamp) < 5;


#. Identify the drivers who have taken rides with distances greater than 19.
select driver_id,ride_distance from ur1
where ride_distance > 19;

#Calculate the total earnings for drivers who have completed more than 100 rides.
select earnings,driver_name,total_rides from ud1
where total_rides > 100
order by earnings desc;

#Retrieve rides where the fare amount is less than the average fare amount.
select * from ur1
where fare_amount < (select avg(fare_amount) from ur1)
order by fare_amount;

#. Calculate the average rating of drivers who have driven rides with both 'Credit Card' and 'Cash' payment
select ud1.driver_name,avg(ud1.rating) from ud1
inner join ur1
on ud1.driver_id = ur1.driver_id
where ur1.payment_method in ('Credit Card' and 'cash')
group by driver_name
having count( distinct ur1.payment_method) = 2;


#List the top 3 passengers with the highest total spending.
select passenger_id,passenger_name,total_spent from up
order by total_spent desc
limit 3;


#Identify the most common pair of pickup and dropoff locations.
select count(*) rc,dropoff_location,pickup_location from ur1
group by pickup_location,dropoff_location
order by rc desc;


#Calculate the total earnings for each driver and order them by earnings in descending order.
select driver_name,earnings from ud1
order by earnings desc;


# List the passengers who have taken rides on their signup date.
select up.passenger_id, up.passenger_name,up.signup_date,date_format(ur1.ride_timestamp) tt from up
inner join ur1
on  up.passenger_id= ur1.passenger_id
where tt = up.signup_date;




select * from up;

#Calculate the average earnings for each driver and order them by earnings in descending order.
select driver_name,avg(earnings) avge from ud1
group by driver_name
order by avge desc;

# Retrieve rides with distances less than the average ride distance.
select * from ur1
where ride_distance < (select avg(ride_distance) from ur1);

# List the drivers who have completed the least number of rides.
select driver_id,driver_name,total_rides from ud1
where total_rides = (select min(total_rides) from ud1);

# Calculate the average fare amount for rides taken by passengers who have taken at least 20 rides.
select round(avg(ur1.fare_amount),2) afa,up.passenger_name from up
inner join ur1
on up.passenger_id= ur1.passenger_id
where total_rides < 20
group by up.passenger_name 
order by afa desc;

# Identify the pickup location with the highest average fare amount.
select max(fare_amount) maxfa,pickup_location from ur1
group by pickup_location
order by maxfa desc;

# Calculate the average rating of drivers who completed at least 100 rides.
select driver_id ,driver_name,total_rides,avg(rating) from ud1
where total_rides >=100
group by driver_name,total_rides,driver_id
order by total_rides asc;


# List the passengers who have taken rides from at least 5 different pickup locations.
select passenger_id from ur1
group by passenger_id
having count(distinct pickup_location)>=5;


#Calculate the average fare amount for rides taken by passengers with ratings above 4.
select round(avg(ur1.fare_amount),2),up.rating,up.passenger_name from up
inner join ur1
on up.passenger_id = ur1.passenger_id
where rating > 4
group by up.rating,up.passenger_name;



# Retrieve rides with the shortest ride duration in each pickup location.
select pickup_location,ride_duration,ride_id from ur1
where (ride_duration) = (select min(ride_duration) from ur1);

#ADVANCED LEVEL QURRY 
# List the drivers who have driven rides in all pickup locations.
select driver_id from ur1
group by driver_id
having count( distinct pickup_location) = (select count( distinct pickup_location) from ur1);


# Calculate the average fare amount for rides taken by passengers who have spent more than 300 in total.
select avg(ur1.fare_amount),up.total_spent from ur1
inner join up
on up.passenger_id = ur1.passenger_id
where total_spent >300
group by up.total_spent;

# List the bottom 5 drivers based on their average earnings.
select driver_name,driver_id,earnings from ud1
order by earnings asc
limit 5;


# Calculate the sum fare amount for rides taken by passengers who have taken rides in different payment
select round(sum(fare_amount),2),passenger_id from ur1
group by passenger_id
having count(distinct payment_method)>1;

#Retrieve rides where the fare amount is significantly above the average fare amount.
select ride_id,fare_amount from ur1
where fare_amount > (select avg(fare_amount) from ur1);

# List the drivers who have completed rides on the same day they joined.
select ud1.driver_name, ud1.join_date,ud1.driver_id, ur1.ride_timestamp from ur1
inner join ud1
on ud1.driver_id=ur1.driver_id
where date(ud1.join_date)=date(ur1.ride_timestamp);



# Calculate the average fare amount for rides taken by passengers who have taken rides in different payment method
select round(avg(fare_amount),2),passenger_id from ur1
group by passenger_id
having count(distinct payment_method)>1;

#Identify the pickup location with the highest percentage increase in average fare amount compared to
#the overall average fare.
select avg(fare_amount) avg_fare, pickup_location from ur1
where 
group by pickup_location
;











