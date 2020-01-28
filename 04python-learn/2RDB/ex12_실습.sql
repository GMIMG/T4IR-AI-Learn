--342-1
drop table sam01;
create table SAM01
as
select empno,ename,job,sal
from emp
where 1=0;

--342-2
insert into sam01 values (1000,'APPLE','POLICE',10000);
insert into sam01 values (1010,'BANANA','NULSE',15000);
insert into sam01 values (1020,'ORANGE','DOCTOR',25000);

--343-3
insert into sam01 values (1030, 'VERY', '', 25000);
insert into sam01 values (1040, 'CAT', '', 2000);

--344-4
insert into sam01
select empno, ename, job, sal
from emp
where deptno = 10;

--345-5
update sam01
set sal = sal - 5000
where sal >=10000;

commit;

--346-6
drop table sam02;
create table sam02
as
select ename, sal, hiredate, deptno
from emp;

--347-7
update sam02
set sal = sal + 1000
where deptno = (select deptno
                from dept
                where loc = 'DALLAS');

---348-8
update sam02
set (sal, hiredate) = (select sal, hiredate
                        from sam02
                        where ename = 'KING');

--349-9
delete from sam01
where job is NULL;

--350-10
delete from sam02
where deptno = (select deptno
                from dept
                where dname = 'RESEARCH');

--351
insert into student
values (10110,'È«±æµ¿','hong',1,
        8501011143098,'85/01/01','055)777-7777',170,70,
        202,9903);

--352
insert into professor
(profno, name, position, hiredate, deptno)
values (9920,'ÃÖÀ±½Ä','Á¶±³¼ö','05/01/01',101);