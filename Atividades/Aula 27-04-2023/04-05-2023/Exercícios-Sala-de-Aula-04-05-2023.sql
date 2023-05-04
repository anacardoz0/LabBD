use sakila;

select a.first_name as NomeAtor,
a.last_name as SobrenomeAtor,
c.title as TituloFilme,
e.name as Categoria
from sakila.actor a inner join
sakila.film_actor b on a.actor_id = b.actor_id
inner join sakila.film c on c.film_id = b.film_id
inner join sakila.film_category d on d.film_id = c.film_id
inner join sakila.category e on e.category_id = d.category_id
order by 1, 2, 3;

select title as TítuloFilmes, count(distinct b.inventory_id) as QtdFilme,
count(distinct c.rental_id) as QtdAlugueis
from sakila.film a inner join
sakila.inventory b on b.film_id = a.film_id
inner join sakila.rental c on c.inventory_id = b.inventory_id
group by a.film_id;

select country, count(distinct customer_id) as QtdClientes
from sakila.country a inner join
sakila.city b on b.country_id= a.country_id
inner join sakila.address c on c.city_id = b.city_id
inner join sakila.customer d on d.address_id = c.address_id
group by a.country
order by 2 desc;