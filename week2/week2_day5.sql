select order_id,amount,lag(amount) over(order by order_id) as 이전주문금액 from orders
select order_id,amount,amount-lag(amount) over(order by order_id) as 증감액 from orders 
select order_id,amount,amount-lead(amount) over(order by order_id) as 증감액 from orders
--lag 이전행 값, lead = 다음행 값
select order_id, amount, amount-lag(amount) over(partition by city order by order_id) as 증감액 
from orders inner join customers on orders.customer_id = customers.customer_id order by city, order_id;