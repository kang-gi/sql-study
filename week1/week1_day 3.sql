week1 day 3
/*05-09 1번 행정동별 유동인구수가 가장 많았던 기록은? 
select max(col_7),col_6 As 최대유동인구 FROM SDoT group by col_6 order by 최대유동인구 desc;/* 

/*05-09 2번 자치구별 평균 유동인구수 — 가장 높은 곳은?
select g,avg(col_7) as 평균유동인구수 from SDoT group by g order by 평균유동인구수 desc limit 1;*/
/*만약 having이 필요하다면 select g,avg(col_7) as 평균유동인구수 from SDoT group by g having avg(col_7) > 50 order by 평균유동인구수 desc; 으로 만들어야 한다

05-09 3번 등록일별 데이터 건수 — 어느 날짜에 가장 많은가?
/*select strftime('%Y-%m-%d', col_8) as 날짜, count(*) as 등록일별행수 from SDoT group by strftime('%Y-%m-%d', col_8) order by 등록일별행수 desc limit 1;
(여기는 날짜로 묶은 버전) 

select col_8, count(col_8) as 등록일별행수 from SDoT GROUP by col_8 ORDER by 등록일별행수 desc limit 5 ; (여기는 내가 짜본 버전)
**날짜에 시간이 포함되면 서로 다른 그룹으로 인식되어 집계가 의미가 없어짐 때문에 날짜를 명확히 나눠줘야함/

/*05-09 문제 4번 자치구별 유동인구수 최솟값 — 가장 한산한 기록은?
select g, min(col_7) as 한산한기록 from SDoT GROUP by g having min(col_7) <=1 ORDER by 한산한기록 desc limit 2;*/

/*05-09 문제 5번 자치구별 평균 유동인구수 — 가장 낮은 곳은?
select g, avg(col_7) as 평균낮음 from SDoT group by g ORDER by 평균낮음 asc limit 1;*/ 
