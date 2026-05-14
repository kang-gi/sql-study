select name,amount,avg(amount) over() as 전체평균 from orders 
inner join customers on orders.customer_id = customers.customer_id;*/ (윈도우 함수는 행이 유지된다)

select city,name,amount,avg(amount) over(partition by city) as 도시별평균금액 from orders (부분으로 나누기)
inner join customers on orders.customer_id = customers.customer_id;

select city,name,amount,rank() over(partition by city order by amount desc) as 주문금액순위 from orders (순위 매기기)
inner join customers on orders.customer_id = customers.customer_id;