/* author : Ana Cardozo (UC22100854)*/

SELECT release_year,
count(*) as Qtd_Filmes,
count(distinct rental_duration) as Qtd_Duração
FROM sakila.film
group by release_year;


Select count(distinct customer_id) 
from sakila.payment;


Select customer_id as Cliente,
    sum(amount) as Total_Pago,
	count(distinct rental_id) as Qtd_Alugueis
from sakila.payment
where payment_date between '2005-05-25' and '2005-05-27'
group by customer_id
having count(distinct rental_id) > 1  /*AGREGAÇÃO*/
order by 2 desc limit 10;


select distinct payment_date
from sakila.payment
order by 1;


select  store_id,
   count(distinct customer_id) as Qtd_Clientes
from sakila.customer
group by store_id
having count(distinct customer_id) > 10
order by 2 desc;

select count(*)
from sakila.actor , sakila.film
;


select a.title as Título, b.name as Linguagem
from sakila.film a join sakila.language b
  on a.language_id = b.language_id;
  
  
select a.first_name as Nome_Ator,
       a.last_name  as Sobrenome_Ator, count(*) as Qtd_Filmes
from sakila.film_actor a join sakila.actor b
   on a.actor_id = b.actor_id
group by a.first_name
order by 2 desc;