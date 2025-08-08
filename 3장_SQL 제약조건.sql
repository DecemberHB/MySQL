/*
	날짜 : 2025/08/08
    이름 : 박효빈
    내용 : 3장 제약조건 실습
*/
-- 실습 3-1
create table user2 (
uid varchar(10) primary key,
name varchar(10),
birth char(10),
addr varchar(50)
);
insert into user2 values ('a101','김유신','1999-09-19','김해시');
select * from user2;

-- 실습 3-2 primary key 2번은 불가능하므로 중복값 허용하지않음 선언을 unique key 부여 (무결성)
-- NULL 값은 중복 가능
create table user3 (
uid varchar(10) primary key,
name varchar(10),
birth char(10),
hp char(13) unique,
addr varchar(100)
);

insert into user3 values ('a101','김유신','1999-09-19','010-1234-1001','김해시');
insert into user3 values ('a102','김춘추','1999-09-21','010-1234-1002','경주시');
insert into user3 values ('a103','장보고','1999-09-21',null,'완도시');
insert into user3 values ('a104','강감찬','1997-09-17',null,'서울시');
select * from user3;

-- 실습 3-3
create table Parent (
pid varchar(10) primary key,
name varchar(10),
birth char(10),
addr varchar(100)
);

create table Child (
pid varchar(10) primary key,
name varchar(10),
hp char(13) unique,
parent varchar(10),
foreign key (parent) references Parent (pid) -- 존재하지 않는 pid 값 입력을 차단
);
DROP TABLE CHILD;
insert into parent values ('p101','홍길동','1999-09-09','부산시');
insert into child values ('c101','홍아들','010-1234-2001', 'p101');
insert into child values ('c102','김아들','010-1234-3001', 'p110'); -- parent에 pid값 참조되는게 없어서 거절


SELECT * FROM PARENT;
SELECT * FROM child;

-- 실습 3-4
CREATE TABLE User4(
uid VARCHAR(10) PRIMARY KEY,
name VARCHAR(10) NOT NULL, -- NULL 값 차단 (반드시 입력 허용)
gender CHAR(1),
age INT DEFAULT 1, -- 기본값 (미설정시 모든 컬럼의 default는 NULL)
hp CHAR(13) UNIQUE,
addr VARCHAR(20)
);
insert into User4 values ('a101','김유신','M',23,'010-1234-0001','김해시');
insert into User4 values ('a102','신사임당','F',21,NULL,'강릉시');
select * from user4;

-- 실습 3-5
-- 실습 3-6
-- 실습 3-7
-- 실습 3-8
-- 실습 3-9
create table user5 (
seq int auto_increment primary key,
name varchar(10) not null,
gender char(1) check (gender IN ('M','F')),
age int default 1 check (age > 0 and age < 100), 
addr varchar(20)
);


-- 실습 3-10
insert into user5 (name, gender, age, addr)values('김유신','M',23,'김해시');
insert into user5 (name, gender, age, addr)values('신사임당','F',21,'강릉시');
delete from user5 where seq =2;
select * from user5;
insert into user5 (name, gender, age, addr)values('허난설헌','F',21,'광주시');
select * from user5; -- 한번 사용ㅎ나 seq 값은 사라져서 1,2가 아닌 1,3으로 나옴

