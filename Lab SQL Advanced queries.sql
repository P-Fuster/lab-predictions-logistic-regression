-- Lab | Making predictions with logistic regression
-- 1. Create a query or queries to extract the information you think may be relevant for building the prediction model. It should include some film features and some rental features.

select a.film_id, r.rental_id, r.rental_date, r.return_date, (r.return_date - r.rental_date) as 'Days Rented', a.language_id, a.rental_duration, a.rental_rate, a.replacement_cost, a.rating, d.amount
from sakila.film as a join sakila.inventory as b on a.film_id=b.film_id
join sakila.rental as r on b.inventory_id = r.inventory_id
join sakila.payment as d on r.rental_id = d.rental_id;

-- 

