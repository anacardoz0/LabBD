SELECT * FROM sakila.language;

insert into sakila.language (name)
values ('Brazilian Portuguese');

INSERT INTO actor (first_name,last_name)
VALUES ('Tarcisio','Meira');

insert into sakila.film (title, language_id)
values ('O Beijo no Asfalto', 7); 

update sakila.film
set description = "Baseado na obra de Nelson Rodrigues, o filme retrata a saga enfrentada por Arandir, homem recém-casado, após cometer um ato “vergonhoso”: beijar na boca outro homem, encontrado na rua à beira da morte após um atropelamento. A imagem é capturada por um jornalista sensacionalista, que cria uma história por de trás da fotografia, transformando a vida de Arandir em um verdadeiro inferno.";

delete from sakila.rental
where customer_id = 48;

SELECT payment_date,
DATEDIFF(current_date(),payment_date) as total_dias,
amount,
amount*DATEDIFF(current_date(),payment_date) as total_multa
FROM sakila.payment;

select customer_id, inventory_id, rental_date, return_date
datediff(return_date, rental_date) as numero_dias
from sakila.rental;

select distinct staff_id
from sakila.payment;

select count(*) as contagem,sum(amount) as total, avg(amount) as media,
max(amount) as maximo, min(amount) as minimo
from sakila.payment
where staff_id = 1;


select distinct customer_id
from sakila.rental;

select count(*) as Qtd_alugeis, count(distinct customer_id) as Qtd_clientes
from sakila.rental;

select count(distinct customer_id) as Qtd_clientes
from sakila.rental;


select *
from sakila.rental
where inventory_id = 3995 and customer_id != 269;

select *
from sakila.actor
where first_name like 'B%A';

select *
from sakila.film
where length < 60 and length > 50;

select *
from sakila.film
where length between 50 and 60;

select distinct rating
from sakila.film;

select title
from sakila.film
where rating = 'PG-13' or 'NC-17' or rating = 'PG';

select title
from sakila.film
where rating in ('PG-13', 'NC-17', 'PG');

select *
from sakila.rental
where return_date between '2005-6-4' and '2005-6-5'
and inventory_id in (4154, 2291, 511);

SELECT customer_id, inventory_id,
datediff(return_date, rental_date) as Dias
FROM sakila.rental
where customer_id between 400 and 500
order by 1, 3 desc
limit 5, 20;

select *
from sakila.payment
order by amount desc
limit 10;

select*
from sakila.film
order by release_year, title;