drop table dept01;

create table dept01(
deptno number(2),
dname varchar2(14));

insert into dept01
values(10, 'ACCOUNTING');

insert into dept01
values(20, 'RESEARCH');


drop table dept02;

create table dept02(
deptno number(2),
dname varchar2(14));

insert into dept02
values(10, 'ACCOUNTING');

insert into dept02
values(30, 'SALES');

select *
from dept01 left outer join dept02
using(deptno);

select *
from dept01 right outer join dept02
using(deptno);

select *
from dept01 full outer join dept02
using(deptno);

select e.ename, d.deptno, d.dname
from emp e right outer join dept d
on e.deptno = d.deptno;

select employee.ename 사원,
    manager.ename 상사
from emp employee
    left outer join emp manager
on employee.mgr = manager.empno;

select employee.ename 사원,
    manager.ename 상사
from emp employee
    right outer join emp manager
on employee.mgr = manager.empno;