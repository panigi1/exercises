select*
from customer c;

select *
from film;

alter table customer
add column favourite_movie int4;

alter table customer 
add constraint fk_fm foreign key (favourite_movie) references film(film_id) ON UPDATE CASCADE ON DELETE RESTRICT
;

--from here is the second part of the exercise
select * from customer;
