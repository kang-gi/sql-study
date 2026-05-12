select customers.city,count(customers.customer_id) as 미구매고객수 from customers 
left join orders on customers.customer_id = orders.customer_id where orders.order_id is null group by customers.city;

select customers.name, orders.order_id, orders.amount from customers 
inner join orders on customers.customer_id = orders.customer_id;

left join은 A테이블에 있는데 B에는 없는 것 찾기
