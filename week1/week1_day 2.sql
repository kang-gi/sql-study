week1 day 2
select col_7, g,col_3 from SDoT where g = 'Yongsan-gu' order by col_7 desc;/*용산구의 판매량 순위*/
select col_7,avg(col_7) from SDoT where g = 'Yongsan-gu' group by g;/*용산구의 방문객수 평균*/
오류수정 select g,col_7,col_8 from SDoT where g='Nowon-gu' group by col_8 HAVING max(col_8)> '2026-05-03' ;/*등록일이 2026년 5월 3일 이후인 경우*/
group by 는 컬럼명이 들어가야함 having은 집계 후 필터로 사용
select g,count(*) from SDoT group by g HAVING g = 'Gwangjin-gu'/*광진구의 총 유동인구수*/
