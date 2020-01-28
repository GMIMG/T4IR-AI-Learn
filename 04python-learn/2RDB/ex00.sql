DROP TABLE EMP;
DROP TABLE DEPT;
DROP TABLE BONUS;
DROP TABLE SALGRADE;
DROP TABLE DUMMY;
CREATE TABLE EMP
       (EMPNO NUMBER(4) NOT NULL,
        ENAME VARCHAR2(10),
        JOB VARCHAR2(9),
        MGR NUMBER(4),
        HIREDATE DATE,
        SAL NUMBER(7, 2),
        COMM NUMBER(7, 2),
        DEPTNO NUMBER(2));

--테이블 생성
--NUMBER(precision(전체) ,scale(소수점아래))
create table num_test(
n1 number(5,2),
n2 number(5),
n3 number
);

-- 테이블 구조
desc num_test

-- 값 넣기
insert into num_test values ('123.45','123.45','123.45');

-- 값 조회
select * from num_test;

-- 자리수 형식에 맞지 않는 값을 넣어줘서 오류
--insert into num_test values (1234.5, 1234.5, 1234.5);


select * from num_test;

create table char_test(
c1 char(20),
c2 varchar2(20)
);

insert into char_test values ('seoul','seoul');
select * from char_test;

-- 한글은 한글자가 3byte(utf-8), 자바는 2byte(utf-16)
insert into char_test values ('가나다라마바','가나다라마바');
select * from char_test;

insert into char_test values ('가나다라마바사','가나다라마바사');





select empno, ename from emp;
select sal, comm from emp;
select sal,comm,sal+comm from emp;

select sal, sal-100, sal*12, sal/2 from emp;

select ename, sal, job, comm, sal*12, sal*12+comm from emp;

-- 열에서 null값을 숫자로 바꿔줌
select ename, comm, nvl(comm, -100) from emp;

-- 대소문자를 구분하는 열의 별칭을 지정하기 위해서는 ""
select ename, sal, comm, nvl(comm, 0), sal*12 + nvl(comm, 0) as "Annsal" from emp;

-- 문자열 합쳐주는 ||
select ename || ' is a ' || job from emp;

-- 겹치는 값 안나오게 distinct
select distinct deptno from emp;