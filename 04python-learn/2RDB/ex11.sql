drop table emp01;

create table emp01
as
select empno,ename,hiredate, deptno from emp;

UPDATE EMP01
SET HIREDATE = SYSDATE
WHERE SUBSTR(HIREDATE, 1, 2)='87';


delete from emp01
where deptno = (select deptno
                from dept
                where dname='SALES');

rollback;

insert into emp01
(empno,ename,hiredate)
values (30, 'AROMA','2019/11/28');

rollback;
