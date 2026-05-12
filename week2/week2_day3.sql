-- 하위커리

select customers.name,orders.amount from orders inner join customers on orders.customer_id = customers.customer_id
where amount>(select avg(amount) from orders); */

--CTE 구조 가독성 때문에 사용한다

with 총량비교 as ( select avg(amount) as 평균금액 from orders)
select customers.name, orders.amount from orders
INner join customers on orders.customer_id = customers.customer_id
cross join 총량비교 where orders.amount > 총량비교.평균금액;
