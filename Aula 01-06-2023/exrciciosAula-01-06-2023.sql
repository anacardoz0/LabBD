/*Ana Carolina Cardozo - uc22100854*/
use sakila;

/*UNION*/
select first_name as Nome, last_name as Sobrenome, 1 as Condicao
from sakila.customer
where first_name like 'M%'
union
select first_name, last_name, 2
from sakila.customer
where last_name like 'M%'
order by 1,2;


select film_id, length as Duracao, null as Qtd_Atores
from sakila.film
where length > 180 
union
select film_id, null, count(*) as Qtd_Atores
from sakila.film_actor
group by film_id
having count(*) > 10;

/*INTERSECT*/
select first_name as Nome, last_name as Sobrenome
from sakila.customer
where first_name like 'M%'
intersect
select first_name, last_name
from sakila.customer
where last_name like 'M%'
order by 1,2;


select film_id
from sakila.inventory
group by film_id
having count(*) > 5
intersect
select film_id
from sakila.film_actor
group by film_id
having count(*) > 10;

/*EXCEPT*/
select first_name as Nome, last_name as Sobrenome
from sakila.customer
where first_name like 'M%'
except
select first_name, last_name
from sakila.customer
where last_name like 'M%'
order by 1,2;


select film_id
from sakila.inventory
group by film_id
having count(*) > 5
except
select film_id
from sakila.film
where rating in ('G', 'PG');