SELECT actors.first_name, movies.title 
FROM actors 
INNER JOIN movie_cast ON actors.actor_id = movie_cast.actor_id 
INNER JOIN movies ON movie_cast.movie_id = movies.movie_id;

select * from actors;
select * from movies;
select * from directors;
select * from movie_cast;

insert into actors values (4, 'Dwayne','Johnson','1968-08-06');
SELECT actors.first_name, movies.title 
FROM actors
 LEFT JOIN movie_cast ON actors.actor_id = movie_cast.actor_id
 LEFT JOIN movies ON movie_cast.movie_id = movies.movie_id;
 
 select a.first_name as actor_name, m.title as movie_name, mc.role
 from actors a
 right join movie_cast mc on a.actor_id = mc.actor_id
 right join movies m on mc.movie_id = m.movie_id;
 
 select a.first_name as actor_name, m.title as movie_name, mc.role 
 from actors a 
 full outer join movie_cast mc on a.actor_id = mc.actor_id
 full outer join movies m on mc.movie_id = m.movie_id;

 

 select first_name, last_name from actors
 where actor_id = (select actor_id from movie_cast where movie_id=3);
 
 select role from  movie_cast
 where actor_id = (select actor_id from actors where first_name='Christian');
 
 create table customers
( id int primary key auto_increment,
 name varchar(50),
 email varchar (50)
 );
 
 create table order_details (
 id int references customers(id),
 order_date date,
 order_item varchar(50),
 price float);

insert into order_details (id, order_date, order_item, price) values 
(1, '2024-10-10', 'Pizza', 12.99),
(2, '2024-10-10', 'Burger', 9.50),
(1, '2024-10-11', 'Salad', 7.50),
(3, '2024-10-11', 'Pasta', 11.99),
(4, '2024-10-12', 'Sandwich', 6.99),
(2, '2024-10-12', 'Fries', 4.00);
 
 
 
 
