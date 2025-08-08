/*
	날짜 : 2025/08/08
    이름 : 박효빈
    내용 : 연습문제 실습(MYSQL)
*/

-- 실습 2-8
use StudyDB;
create table TblUser(
user_id varchar(10),
user_name varchar(10),
user_hp varchar(13),
user_age int,
user_addr varchar(100)
);
create table TblProduct(
prod_no varchar(10),
prod_name varchar(10),
prod_price char(50),
prod_stock int,
prod_company varchar(100),
prod_date date
);

INSERT INTO tbluser VALUES ('p101', '김유신', '010-1234-1001', 25, '경남 김해시');

INSERT INTO tbluser VALUES ('p102', '김유신', '010-1234-1002', 23, '경남 경주시');
INSERT INTO tbluser SET user_id='p103', user_name='장보고', user_age=31, user_addr='전남 완도군';
INSERT INTO tbluser SET USER_ID='P104', USER_NAME='강감찬', USER_ADDR='서울시 중구';
INSERT INTO tbluser SET USER_ID='P105', USER_NAME='이순신', USER_HP ='010-1234-1005', USER_AGE=50;

SELECT * FROM TBLUSER;

INSERT INTO tblproduct values ('1001','냉장고','800000',25,'LG전자','2022-01-06');
INSERT INTO tblproduct values ('1002','노트북','1200000',120,'삼성전자','2022-01-07');
INSERT INTO tblproduct values ('1003','모니터','350000',35,'LG전자','2023-01-13');
INSERT INTO tblproduct values ('1004','세탁기','1000000',80,'삼성전자','2022-01-01');
INSERT INTO tblproduct values ('1005','컴퓨터','1500000',20,'삼성전자','2023-10-01');
INSERT INTO tblproduct SET PROD_NO='1006',PROD_NAME='휴대폰',PROD_PRICE='950000',PROD_STOCK=102;

SELECT * FROM tblproduct;

select USER_NAME FROM TBLUSER;
SELECT USER_NAME, USER_HP FROM TBLUSER;
SELECT * FROM TBLUSER WHERE USER_ID='P102';
SELECT * FROM tbluser WHERE USER_ID='P104' OR USER_ID='P105';
SELECT * FROM TblUser WHERE user_addr='부산시 금정구';
SELECT * FROM TblUser WHERE user_age > 30;
SELECT * FROM TblUser WHERE user_hp IS NULL;
UPDATE TblUser SET user_age=42 WHERE user_id='p104';
UPDATE TblUser SET user_addr='부산시 진구' WHERE user_id='p105';
DELETE FROM tbluser WHERE USER_ID='P103';

SELECT * FROM TblProduct;
SELECT prod_name, prod_company, prod_price FROM TblProduct;
SELECT * FROM TblProduct WHERE prod_company='LG전자';
SELECT * FROM TblProduct WHERE prod_company='삼성전자';
UPDATE TblProduct SET
prod_company='삼성전자',
prod_date='2024-01-01'
WHERE
prod_no='1006';



