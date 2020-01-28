select empno,ename,sal
from emp
where sal != 3000;

select empno, ename, sal
from emp
where sal <= 1500;

select *
from emp
where ename = 'FORD';

select *
from emp
where deptno = 10 and job = 'MANAGER';

select *
from emp
where sal>=2000 and  sal<=3000;

select *
from emp
where sal not between 2000 and 3000;

select empno, ename, to_char(hiredate, 'yyyy-mm-dd') as "ÀÔ»çÀÏ"
from emp
where hiredate between '1982/01/01' and '1999/01/01';


select *
from emp
where comm not in(300,500,1400);

select *
from emp
where comm is not null;

select *
from emp
where ename like '__A%';

select *
from emp
where deptno=10
order by sal desc;