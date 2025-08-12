/*
	날짜 : 2025/08/12
    이름 : 박효빈
    내용 : 데이터베이스 모델링
    */
    -- 사용자 추가
    create user 'university'@'%' identified by '1234';
    grant all privileges on university.* to 'university'@'%';
    flush privileges;
    
    -- 데이터 입력
    
-- department 테이블
insert into department values ('11','영어영문학과','051-1011');
insert into department values ('20','경영학과','051-1020');
insert into department values ('21','경제확과','051-1021');
insert into department values ('22','정치외교학과','051-1022');
insert into department values ('23','사회복지학과','051-1023');
insert into department values ('30','수학과','051-1030');
insert into department values ('31','통계학과','051-1031');
insert into department values ('32','생명과학과','051-1032');
insert into department values ('40','기계공학과','051-1040');
insert into department values ('41','전자공학과','051-1041');
insert into department values ('42','컴퓨터공학과','051-1042');

-- Professor 테이블
select * from professor;

insert into professor values ('P10101','10','김유신','750120-1234567','010-1101-1976','kimys@hg.ac.kr','서울');
insert into professor values ('P10102','10','계백','740610-1234567','010-1102-1975','gaeback@hg.ac.kr','서울');
insert into professor values ('P11101','11','김관장','880529-1234567','010-1103-1989','kwanch@hg.ac.kr','대전');
insert into professor values ('P11103','11','김춘추','780412-1234567','010-2101-1979','kimcc@hg.ac.kr',NULL);
insert into professor values ('P11104','11','이사부','650911-1234567','010-2104-1966','leesabu@hg.ac.kr','대전');
insert into professor values ('P22110','22','장보고','780727-1234567','010-3101-1979','jagbg@hg.ac.kr','대구');
insert into professor values ('P23102','23','선덕여왕','830614-1234567','010-4101-1984','gueen@hg.ac.kr',NULL);
insert into professor values ('P31101','31','강감찬','641020-1234567','010-5101-1965','kang@hg.ac.kr','대구');
insert into professor values ('P31104','31','신사임당','711127-1234567','010-6101-1972','sinsa@hg.ac.kr','부산');
insert into professor values ('P40101','40','이이','910906-1234567','010-7103-1992','leelee@hg.ac.kr','부산');
insert into professor values ('P40102','40','이황','881208-1234567','010-7104-1989','hwang@hg.ac.kr',NULL);
insert into professor values ('P42103','42','송상현','760313-1234567','010-8101-1977','ssh@hg.ac.kr','광주');

-- 학생테이블alter
