--297-1
drop table dept01;
create table dept01(
deptno number(2),
dname varchar2(14),
loc varchar2(13)
);

--298-2
drop table emp04;
create table emp04
as
select empno, ename, sal from emp;

--299-3
drop table dept02;
create table dept02
as
select * from dept where 1=0;

--300-3
alter table dept02 
add (dmgr varchar(4));

--301-4
alter table dept02
modify (dmgr number(4));

--302-4
alter table dept02
drop column dmgr;

--303
drop table adress;
create table adress(
id number(3),
name varchar2(50),
addr varchar2(100),
phone varchar2(30),
email varchar2(100)
);
--304
drop table student_second;
create table student_second
as
select studno, name, height, deptno
from student
where height >= 175
    and deptno = 101;

--305
select deptno, max(sal)
from professor
group by deptno;

--306
select p.profno, p.name, p.position, p.sal, p.comm
from professor p, (select deptno, max(sal) msal
                from professor
                group by deptno) s
where p.deptno = s.deptno
    and p.sal = s.msal;

--307
drop table professor_second;
create table professor_second
as
select p.profno, p.name, p.position, p.sal, p.comm
from professor p, (select deptno, max(sal) msal
                from professor
                group by deptno) s
where p.deptno = s.deptno
    and p.sal = s.msal;

--308
drop table dept02;
create table dept02
as
select * from dept where 1=0;