/*
	날짜 : 2025/08/08
    이름 : 박효빈
    내용 : 4장 MySQL고급 실습
*/

-- 실습 4-1 테이블 생성

create table Member (
uid varchar(10) primary key,
name varchar(10) not null,
hp varchar(13) unique not null,
pos varchar(10) default '사원' not null,
dep int,
rdate date not null -- 날짜시간 : datetime으로 해야함
);

create table Department (
depNo int primary key,
name varchar(10) not null,
tel varchar(12) not null
);

create table Sales (
seq int auto_increment primary key,
uid varchar(10) not null,
year year not null,
month int not null,
sale int default NULL
);

INSERT INTO Member VALUES ('a101', '박혁거세', '010-1234-1001', '부장', 101, '2020-11-19 11:39:48');
INSERT INTO Member VALUES ('a102', '김유신', '010-1234-1002', '차장', 101, '2020-11-19 11:39:48');
INSERT INTO Member VALUES ('a103', '김춘추', '010-1234-1003', '사원', 101, '2020-11-19 11:39:48');
INSERT INTO Member VALUES ('a104', '장보고', '010-1234-1004', '대리', 102, '2020-11-19 11:39:48');
INSERT INTO Member VALUES ('a105', '강감찬', '010-1234-1005', '과장', 102, '2020-11-19 11:39:48');
INSERT INTO Member VALUES ('a106', '이성계', '010-1234-1006', '차장', 103, '2020-11-19 11:39:48');
INSERT INTO Member VALUES ('a107', '정철', '010-1234-1007', '차장', 103, '2020-11-19 11:39:48');
INSERT INTO Member VALUES ('a108', '이순신', '010-1234-1008', '부장', 104, '2020-11-19 11:39:48');
INSERT INTO Member VALUES ('a109', '허균', '010-1234-1009', '부장', 104, '2020-11-19 11:39:48');
INSERT INTO Member VALUES ('a110', '정약용', '010-1234-1010', '사원', 105, '2020-11-19 11:39:48');
INSERT INTO Member VALUES ('a111', '박지원', '010-1234-1011', '사원', 105, '2020-11-19 11:39:48');

select * from member;

INSERT INTO Sales (uid, year, month, sale) VALUES ('a101', 2018, 1,  98100);
INSERT INTO Sales (uid, year, month, sale) VALUES ('a102', 2018, 1, 136000);
INSERT INTO Sales (uid, year, month, sale) VALUES ('a103', 2018, 1,  80100);
INSERT INTO Sales (uid, year, month, sale) VALUES ('a104', 2018, 1,  78000);
INSERT INTO Sales (uid, year, month, sale) VALUES ('a105', 2018, 1,  93000);

INSERT INTO Sales (uid, year, month, sale) VALUES ('a101', 2018, 2,  23500);
INSERT INTO Sales (uid, year, month, sale) VALUES ('a102', 2018, 2, 126000);
INSERT INTO Sales (uid, year, month, sale) VALUES ('a103', 2018, 2,  18500);
INSERT INTO Sales (uid, year, month, sale) VALUES ('a105', 2018, 2,  19000);
INSERT INTO Sales (uid, year, month, sale) VALUES ('a106', 2018, 2,  53000);

INSERT INTO Sales (uid, year, month, sale) VALUES ('a101', 2019, 1,  24000);
INSERT INTO Sales (uid, year, month, sale) VALUES ('a102', 2019, 1, 109000);
INSERT INTO Sales (uid, year, month, sale) VALUES ('a103', 2019, 1, 101000);
INSERT INTO Sales (uid, year, month, sale) VALUES ('a104', 2019, 1,  53500);
INSERT INTO Sales (uid, year, month, sale) VALUES ('a107', 2019, 1,  24000);

INSERT INTO Sales (uid, year, month, sale) VALUES ('a102', 2019, 2, 160000);
INSERT INTO Sales (uid, year, month, sale) VALUES ('a103', 2019, 2, 101000);
INSERT INTO Sales (uid, year, month, sale) VALUES ('a104', 2019, 2,  43000);
INSERT INTO Sales (uid, year, month, sale) VALUES ('a105', 2019, 2,  24000);
INSERT INTO Sales (uid, year, month, sale) VALUES ('a106', 2019, 2, 109000);

INSERT INTO Sales (uid, year, month, sale) VALUES ('a102', 2020, 1, 201000);
INSERT INTO Sales (uid, year, month, sale) VALUES ('a104', 2020, 1,  63000);
INSERT INTO Sales (uid, year, month, sale) VALUES ('a105', 2020, 1,  74000);
INSERT INTO Sales (uid, year, month, sale) VALUES ('a106', 2020, 1, 122000);
INSERT INTO Sales (uid, year, month, sale) VALUES ('a107', 2020, 1, 111000);

INSERT INTO Sales (uid, year, month, sale) VALUES ('a102', 2020, 2, 120000);
INSERT INTO Sales (uid, year, month, sale) VALUES ('a103', 2020, 2,  93000);
INSERT INTO Sales (uid, year, month, sale) VALUES ('a104', 2020, 2,  84000);
INSERT INTO Sales (uid, year, month, sale) VALUES ('a105', 2020, 2, 180000);
INSERT INTO Sales (uid, year, month, sale) VALUES ('a108', 2020, 2,  76000);

select * from sales;

insert into Department values (101,'영업1부','051-512-1001');
insert into Department values (102,'영업2부','051-512-1002');
insert into Department values (103,'영업3부','051-512-1003');
insert into Department values (104,'영업4부','051-512-1004');
insert into Department values (105,'영업5부','051-512-1005');
insert into Department values (106,'영업지원부','051-512-1006');
insert into Department values (107,'인사부','051-512-1007');

-- 실습  4-3 조건 일치 투플 조회
SELECT * FROM Member WHERE name='김유신';
SELECT * FROM MEMBER WHERE POS='차장' AND DEP=101;
SELECT * FROM MEMBER WHERE POS='차장' OR DEP=101;
SELECT * FROM MEMBER WHERE NAME != '김춘추';
SELECT * FROM MEMBER WHERE NAME <> '김춘추';
SELECT * FROM MEMBER WHERE POS='사원' OR POS='대리';
SELECT * FROM MEMBER WHERE POS IN ('사원','대리');
SELECT * FROM MEMBER WHERE DEP IN (101,102,103);
SELECT * FROM MEMBER WHERE NAME LIKE '%신';
SELECT * FROM MEMBER WHERE NAME LIKE '김%';
SELECT * FROM MEMBER WHERE NAME LIKE '김__';
SELECT * FROM MEMBER WHERE NAME LIKE '_성_';
SELECT * FROM MEMBER WHERE NAME LIKE '정_';
SELECT * FROM SALES WHERE SALE>50000;
SELECT * FROM SALES WHERE SALE >= 50000 AND SALE < 100000 AND MONTH=1;
SELECT * FROM SALES WHERE SALE BETWEEN 50000 AND 100000;
SELECT * FROM SALES WHERE YEAR IN (2020);
SELECT * FROM SALES WHERE MONTH IN (1,2);

-- 실습 4-4 오름/내림 차순 정렬 

SELECT * FROM SALES ORDER BY SALE;
SELECT * FROM SALES ORDER BY SALE ASC;
SELECT * FROM SALES ORDER BY SALE DESC;
SELECT * FROM MEMBER ORDER BY NAME;
SELECT * FROM MEMBER ORDER BY NAME DESC;
SELECT * FROM MEMBER ORDER BY NAME ASC;
SELECT * FROM SALES WHERE SALE > 50000 ORDER BY SALE DESC;
SELECT * FROM SALES
WHERE SALE>50000
ORDER BY YEAR,MONTH,SALE DESC;

-- 실습 4-5 투플 개수 제한
SELECT * FROM SALES limit 3;
SELECT * FROM SALES LIMIT 0 ,3;
SELECT * FROM SALES LIMIT 1,2;
SELECT * FROM SALES LIMIT 5,3;
SELECT * FROM SALES ORDER BY SALE DESC LIMIT 3,5;
SELECT * FROM SALES WHERE SALE < 50000 order by SALE DESC LIMIT 3;
SELECT * FROM SALES WHERE SALE > 50000 ORDER BY YEAR DESC, MONTH, SALE DESC LIMIT 5;

-- 실습 4-6 sql 내장함수 

SELECT SUM(SALE) AS 합계 FROM SALES;
SELECT AVG(SALE) AS 평군 FROM SALES;
SELECT MAX(SALE) AS 최대값 FROM SALES;
SELECT MIN(SALE) AS 최소값 FROM SALES;
SELECT CEILING(1.2);
SELECT CEILING(1.8);
SELECT FLOOR(1.2);
SELECT FLOOR(1.8);
SELECT ROUND(1.2);
SELECT ROUND(1.8);
SELECT RAND();
SELECT CEILING(RAND()*10);
SELECT COUNT(SALE) AS 갯수 FROM SALES;
SELECT COUNT(*) AS 갯수 FROM SALES;

SELECT LEFT('HELLOWORDL',5);
SELECT RIGHT('HelloWorld', 5);
SELECT SUBSTRING('HelloWorld', 6, 5);
SELECT CONCAT('Hello', 'World');
SELECT CURDATE();
SELECT CURTIME();
SELECT NOW();
INSERT INTO Member VALUES ('a112', '유관순', '010-1234-1012', '대리', 107, NOW());
SELECT CONCAT(uid, name, hp) FROM member WHERE uid='a108';

-- 실습 4-7 2018년 1월 매출 총합
SELECT SUM(SALE) AS 1월매출총합 FROM SALES WHERE year = 2018 AND MONTH = 1;
-- 실습 4-8 2019SUS 2월에 5만원 이상 매출에 대한 총합과 평균
SELECT SUM(SALE), AVG(SALE) FROM SALES WHERE YEAR = 2019 AND MONTH = 2 AND SALE > 50000;
-- 실습 4-9 2020년 전체 매출 가운데 최저, 최고, 매출을 구하시오
SELECT MIN(SALE) AS 2020년최저, MAX(SALE) AS 2020년최고 from SALES WHERE YEAR = 2020;

-- 실습 4-10 그릅별 조회
SELECT UID FROM SALES GROUP BY UID;
SELECT YEAR FROM SALES GROUP BY YEAR;
SELECT UID,YEAR FROM Sales GROUP BY uid, year;

SELECT UID,COUNT(*) AS 건수 FROM SALES GROUP BY UID;
SELECT UID,SUM(SALE) AS 합계 FROM SALES GROUP BY UID;
SELECT uid, AVG(sale) AS 평균 FROM Sales GROUP BY uid;
SELECT uid, year, SUM(sale) AS 합계 FROM SALES GROUP BY UID,YEAR;

SELECT uid, year, SUM(sale) AS 합계 FROM SALES GROUP BY UID,YEAR ORDER BY YEAR ASC, 합계 DESC;
SELECT UID,YEAR, SUM(SALE) AS 합계 FROM SALES WHERE SALE >= 50000 GROUP BY UID,YEAR ORDER BY 합계 DESC;

-- 4-11 그룹화에 검색조건 설정
SELECT UID,SUM(SALE) AS 합계 FROM SALES GROUP BY UID HAVING 합계 >= 200000;

SELECT UID, YEAR, SUM(SALE) AS 합계 FROM SALES WHERE SALE>=100000 GROUP BY UID, YEAR HAVING 합계 >= 200000 ORDER BY 합계 DESC;

-- 4-12 테이블 합치기 2개 이상의 테이블에서 투플 조회(중복제외)

CREATE TABLE SALES2 LIKE SALES;
INSERT INTO Sales2 SELECT * FROM Sales;
UPDATE Sales2 SET year = year + 3;
SELECT * FROM Sales2;

SELECT * FROM SALES UNION SELECT * FROM SALES2;
SELECT * FROM sales WHERE SALE >= 100000 UNION SELECT * FROM SALES2 WHERE SALE>= 100000;

SELECT UID, YEAR, SALE FROM SALES UNION SELECT UID,YEAR,SALE FROM SALES2;

SELECT UID,YEAR,SUM(SALE) AS 합계 
FROM SALES 
GROUP BY UID,YEAR UNION
SELECT UID,YEAR,SUM (SALE) AS 합계
FROM SALES2
GROUP BY UID,YEAR 
ORDER BY YEAR ASC, 합계 DESC;

-- 실습 4-13 내부조인 

SELECT * FROM SALES JOIN MEMBER ON SALES.UID = MEMBER.UID;
SELECT * FROM MEMBER JOIN department ON MEMBER.DEP = department.DEPNO;

SELECT * FROM SALES AS A JOIN MEMBER AS B ON A.UID = B.UID;
SELECT * FROM MEMBER AS A JOIN DEPARTMENT AS B ON A.DEP = B.DEPNO;

SELECT A.SEQ, A.UID, SALE, NAME, POS FROM SALES AS A JOIN MEMBER AS B ON A.UID = B.UID;

SELECT A.SEQ, A.UID, SALE, NAME, POS FROM SALES AS A JOIN MEMBER AS B USING (UID);

