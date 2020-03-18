-- i created an empty table "sequels" with just two columns - title + description
create table sequels (title varchar (100), description varchar (999));

-- i created an empty table "sequels3" with just two columns - title + description
create table sequels3 (title varchar (100), description varchar (999));

-- I filled 'sequels' table with titles from film table + concat the number 2 and I added the string 'A sequel to' to the description
insert into sequels (title, description)
select (concat(film.title,' ','2')),(concat('A sequel to ', description))
from film;

--i created a view fetching only the columns title + description from film table called 'dup_movies2' - this view takes data from film table and from sequels table by using union all

CREATE VIEW dup_movies2 AS
SELECT title, description
FROM film f2 
UNION ALL
SELECT title, description
FROM sequels;
