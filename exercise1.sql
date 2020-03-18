-- first I check 'customer' table and I try to understand what data i will need to insert becasue 
-- does not exist (like my name/surname) and then what already exists (example the store ID)
select *
from customer c;

-- first thing I choose which store has the movie for me - I select a movie from the 'film' table and take a note of the film_id (217)
select *
from film
where title = 'DAZED PUNK'
;

-- second thing I check the inventory table to see which shop has my movie
select * 
from inventory i
where film_id = 217;

--as I get no results - i choose another movie called 'MATRIX SNOWMAN' that has film id = 565 - they have two copies in store #1 so this will be my store ID
select * 
from inventory i
where film_id = 565;

-- my name and surname and email are manual inputs in the table customer but i still need to create my address_id in the address table
--so I chcek the address table and i notice first one available is 606 address_id
select *
from address a;

-- now i want to create a record for address_id 606 but i need to know which city_id is assigned to Prague in Czech Republic
-- so I check the city table to find it (spoiler - there is no Prague :( )
select *
from city c;

-- I will need to create it but I need to know which country_id is assigned to Czech Republic
select *
from country c;

--so Czech republic is 26 - now I can create Prague
insert into city 
(city_id,
city,
country_id)
values
(601,'Prague',26); 

--now i can go back to adding my address to the address table
select * from address a;

-- first available address_id is 606
insert into address 
(address_id,address,district,city_id,postal_code,phone)
values (606,'K Beranovu 1173/1','Dolni Chabry',601,18400,605201458);

-- now i finally amend customer table as all necessary info are available in other tables - i do not amend last 3 columns as they were added by mistake in my previous exercise where i amended original table and not the backup
select * from customer c;

insert into customer(
store_id,first_name,last_name,email,address_id)
values (1,'IGOR','PANIGADA','ipanigada@gmail.com',606);