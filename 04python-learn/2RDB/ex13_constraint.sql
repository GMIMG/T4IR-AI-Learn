--primary key(주키)를 설정하면 중복된 값과 null값 사용못함
create table t_dept
as
select * from dept;

alter table t_dept
add primary key (deptno);


create table s_emp
as 
select * from emp;

insert into s_emp
(empno,ename,deptno)
values(123,'AROMA',90);

-- 사원정보 deptno컬럼에 값이
-- t_dept테이블 deptno칸에 존재한느
-- 부서번호(10,20,30,40) 만 삽입가능 설정
-- foreign key(외래키) 제약

create table t_emp
as
select * from emp;

alter table t_emp
add foreign key (deptno)
references t_dept;

/* foreign key 제약조건 위반
insert into t_emp
(empno,ename,deptno)
values(123,'AROMA',90);
*/

insert into t_emp
(empno,ename,deptno)
values(123,'KIKI',40);

--제약조건 보기
SELECT * FROM ALL_CONSTRAINTS
WHERE TABLE_NAME = 'T_EMP';

alter table t_emp
drop constraint SYS_C007022;

