select * from emp;

select ename, sal, hiredate from emp;

select deptno as "부서번호", dname as "부서명" from dept;

--4
SELECT DISTINCT job from emp;

select studno, name, grade from student;

select * from student;

select studno, name, grade from student;

select dname as "dept_name", deptno as "DN" from dept;

select dname as "Department Name", deptno as "부서 번호#" from dept;

select studno || name as "Student" from student;

select name || ' 의 직급은 ' || position as "Title of Professor" from professor;

select name ||'의 키는 ' || height ||', 몸무게는 '|| weight 
as "학생의키와몸무게정보" 
from student;

select weight*2.2 as "weight_pound" from student;

select name, sal*12+100 from professor;

select sal + nvl(comm,0) as sal_com from professor;