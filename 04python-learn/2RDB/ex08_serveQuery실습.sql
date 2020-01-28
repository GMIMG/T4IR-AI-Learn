--257-1
select ename, deptno
from emp
where emp.deptno = (select deptno
                    from emp e
                    where e.ename = 'SCOTT')
    and ename != 'SCOTT';

--257-2
select *
from emp
where job = (select job
                from emp e
                where e.ename = 'SCOTT');

--258-3
select ename, sal
from emp
where sal >= (select sal
                from emp e
                where e.ename = 'SCOTT');
                
--258-4
select ename, deptno
from emp
where deptno = (select deptno
                from dept
                where loc = 'DALLAS');

--259-5
select ename, sal
from emp
where deptno = (select deptno
                from dept
                where dname = 'SALES');

--259-6
select ename, sal
from emp
where mgr = (select empno
            from emp
            where ename = 'KING');
            
--260-7
select empno, ename, sal, deptno
from emp
where (deptno, sal) in (select deptno, max(sal)
                        from emp
                        group by deptno);

--260-8
select deptno, dname, loc
from dept
where deptno in (select deptno
                from emp
                where job = 'MANAGER');
                
--261-9
select ename, sal, job
from emp
where sal >= (select max(sal)
            from emp
            where job = 'SALESMAN')
    and job != 'SALESMAN';

--262-10
select ename, sal, job
from emp
where sal >= (select MIN(sal)
            from emp
            where job = 'SALESMAN')
    and job != 'SALESMAN';
    
--263
select studno, name, grade
from student
where grade = (select grade
                from student
                where userid = 'jun123');
                
--264
select name, studno, weight
from student
where weight < (select avg(weight)
                from student
                where deptno = 101);

--265
select studno, name, birthdate
from student
where birthdate = (select min(birthdate)
                    from student);

--266
select *
from student
where deptno in (select deptno
                from department
                where college = (select deptno
                                from department
                                where dname = '정보미디어학부'));

--267
select ename
from emp
where sal > (select max(sal)
            from emp
            where deptno = 30);

select ename
from emp
where sal > all (select sal
            from emp
            where deptno = 30);

--268
select profno, name, comm
from professor
where sal+comm > all (select sal + nvl(comm, 0)
                    from professor
                    where deptno = 102);

--269
select studno, name, deptno
from student
where weight < all (select weight
                    from student
                    where deptno = 102);

--270
select studno, name, height
from student
where height > all (select height
                    from student
                    where grade = 4);

--271
select studno, name, height
from student
where height > any (select height
                    from student
                    where grade = 4);

--272
select s.studno, s.name, s.weight, s.deptno
from student s, (select deptno, max(weight) weight
                from student
                group by deptno) d
where s.deptno = d.deptno
    and s.weight = d.weight;

--273
select p.profno, p.name, m.sum
from professor p, (select deptno, max(sal + nvl(comm,0)) sum
                    from professor
                    group by deptno) m
where p.deptno = m.deptno
    and p.sal + nvl(p.comm, 0) = m.sum;

--274
select empno, ename, sal
from (select *
    from emp
    order by sal desc)
where rownum <= 5;

--275
select studno,name, height, deptno
from (select *
    from student
    order by height desc)
where rownum <= 10;

--276
select studno, name, weight
from (select *
    from student
    order by weight)
where rownum <= 3;

--277
select p.profno, p.name, p.sal, p.deptno
from professor p
where p.sal in (select max(sal)
                    from professor
                    where deptno = p.deptno);