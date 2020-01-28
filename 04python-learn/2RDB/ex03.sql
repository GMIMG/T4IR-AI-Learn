-- 137
select empno, sal from emp where empno in (7521,7654,7844);

-- 138
select empno, ename, sal from emp where ename = 'SCOTT';

-- 140
select * from emp where not empno in(7521, 7645, 7844);
select * from emp where empno ^= 7521 and empno != 7645 and empno != 7844;

-- 141
select * from emp where ename like 'J%';

-- 142
select * from emp where ename like '%A%';

-- 143
select empno, ename from emp where ename like 'K%';
select empno, ename from emp where ename like '%K%';
select empno, ename from emp where ename like '%K';

-- 144
select * from emp where mgr is NULL;

-- 145
select empno, ename, job, hiredate from emp ORDER BY hiredate;

-- 146
select empno, ename from emp order by empno desc;

-- 147
select * from emp order by deptno, hiredate;

-- 148
select studno, name, deptno from student where grade =1;

-- 149
select studno, name, grade, weight, deptno from student where weight <= 70;
-- ÃâÃ³ 148

-- 150
select studno, name, grade, weight, deptno from student where weight <= 70 and grade = 1;

-- 151
select studno, name, grade, weight, deptno from student where weight >= 70 or grade = 1;

--152
select studno, name, grade, weight, deptno from student where deptno = 102 and grade in (1, 4);

-- 153
select name, grade, deptno from student where (deptno = 102 and grade = 4) or grade = 1;

-- 157
select * from student where name like '___' and name like'±è%' and name like '%¿µ';
select * from student where name like'±è_¿µ';

-- 160
select * from professor where comm is not null;

--165
select * from student order by deptno, grade desc; 

