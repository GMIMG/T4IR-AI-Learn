--테이블 만들기
create table emp01(
empno number(20),
ename varchar2(20),
sal number(7,2));


--서브쿼리로 테이블 복사하기
create table emp02
as
select * from emp;

create table emp03
as
select empno, ename from emp;

create table emp05
as
select * from emp where deptno = 10;


--테이블 구조만 복사하기
create table emp04
as
select * from emp where 1=0;

--테이블 이름은 변경할수 있지만, 열의 이름은 바꿀수 없음