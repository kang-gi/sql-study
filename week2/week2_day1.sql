select orders.order_id,name,city,amount,category from orders inner join customers on orders.customer_id = customers.customer_id
INNER join products on orders.order_id = products.order_id where city = '서울' /*서울 고객의 주문만 보기*/

select products.category,sum(amount) from orders 
inner join products on orders.order_id = products.order_id GROUP by category





-- 테이블 생성
CREATE TABLE customers (
  customer_id INTEGER PRIMARY KEY,
  name TEXT,
  city TEXT
);

CREATE TABLE orders (
  order_id INTEGER PRIMARY KEY,
  customer_id INTEGER,
  amount REAL,
  status TEXT
);

CREATE TABLE products (
  product_id INTEGER PRIMARY KEY,
  order_id INTEGER,
  category TEXT,
  price REAL
);

-- 데이터 삽입
INSERT INTO customers VALUES
(1, '김민준', '서울'),
(2, '이서연', '부산'),
(3, '박지호', '서울'),
(4, '최수아', '대전'),
(5, '정우진', '서울'),
(6, '한예은', '인천'),
(7, '오민서', '부산'),
(8, '임도현', '서울');

INSERT INTO orders VALUES
(101, 1, 35000, 'delivered'),
(102, 2, 12000, 'delivered'),
(103, 1, 89000, 'delivered'),
(104, 3, 45000, 'cancelled'),
(105, 4, 67000, 'delivered'),
(106, 2, 23000, 'delivered'),
(107, 5, 91000, 'delivered'),
(108, 6, 15000, 'shipped'),
(109, 3, 38000, 'delivered'),
(110, 8, 52000, 'delivered');

INSERT INTO products VALUES
(1, 101, '전자기기', 35000),
(2, 102, '의류', 12000),
(3, 103, '가구', 89000),
(4, 104, '전자기기', 45000),
(5, 105, '식품', 67000),
(6, 106, '의류', 23000),
(7, 107, '가구', 91000),
(8, 108, '식품', 15000),
(9, 109, '전자기기', 38000),
(10, 110, '의류', 52000);
