-- 228-1
select e.ename, e.sal
from emp e, dept d
where e.deptno = d.deptno
    and d.loc = 'NEW YORK';
    
-- 228-2
select e.ename, e.hiredate
from emp e, dept d
where e.deptno = d.deptno
    and d.dname = 'ACCOUNTING';

-- 229-3
select e.ename, d.dname
from emp e, dept d
where e.deptno = d.deptno
    and e.job = 'MANAGER';
    
-- 230-4
select e.ename, e.job
from emp e, emp m
where e.mgr = m.empno
    and m.ename = 'KING';
    
-- 230-5
/*
select emp.ename
from emp, dept d, (select e.ename, d.loc
from emp e, dept d
where e.deptno = d.deptno
    and e.ename = 'SCOTT') o
where emp.deptno = d.deptno
    and d.loc = o.loc;
*/
select e.ename, e2.ename
from emp e, emp e2
where e.ename = 'SCOTT'
    and e.deptno = e2.deptno
    and e2.ename != 'SCOTT';

-- 231-6
select e.ename, deptno, d.dname
from emp e right outer join dept d
using (deptno)
order by deptno;

-- 232
select p.profno, p.name, d.loc
from professor p, department d
where p.deptno = d.deptno;

-- 233
select s.studno, s.name, d.loc
from student s inner join department d
on s.deptno = d.deptno
where s.name = 'ÀüÀÎÇÏ';

-- 234
select s.studno, s.name, s.weight, d.dname, d.loc
from student s inner join department d
on s.deptno = d.deptno
where s.weight >= 80;

-- 236
select f.name, ps.grade
from professor p, psalgrade ps
where p.sal between ps.losal and ps.hisal;

--237
select p.name, ps.grade
from professor p, psalgrade ps
where p.deptno = 101
    and p.sal between ps.losal and ps.hisal;

--238
select s.name, p.name, d.dname
from student s, professor p, department d
where s.profno = p.profno
    and p.deptno = d.deptno;

--239
select d.dname, ddd.dname
from department d, department dd, department ddd
where d.college = dd.deptno
    and dd.college = ddd.deptno;
    
select *
from department d 
    inner join department p on d.college = p.deptno
    inner join department c on p.college = c.deptno;

--240
select d.deptno, d.dname, c.dname
from department d 
    inner join department p on d.college = p.deptno
    inner join department c on p.college = c.deptno
where d.deptno = 201;

--241
select dd.dname, ddd.dname
from department d
    inner join department dd on d.deptno = dd.college
    inner join department ddd on dd.deptno = ddd.college;
    
--242
select s.name, s.grade, p.name, p.position
from student s left outer join professor p
on s.profno = p.profno;

select s.name, s.grade, p.name, p.position
from student s, professor p
where s.profno = p.profno(+);