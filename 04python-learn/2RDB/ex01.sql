select * from emp;

select ename, sal, hiredate from emp;

select deptno as "�μ���ȣ", dname as "�μ���" from dept;

--4
SELECT DISTINCT job from emp;

select studno, name, grade from student;

select * from student;

select studno, name, grade from student;

select dname as "dept_name", deptno as "DN" from dept;

select dname as "Department Name", deptno as "�μ� ��ȣ#" from dept;

select studno || name as "Student" from student;

select name || ' �� ������ ' || position as "Title of Professor" from professor;

select name ||'�� Ű�� ' || height ||', �����Դ� '|| weight 
as "�л���Ű�͸���������" 
from student;

select weight*2.2 as "weight_pound" from student;

select name, sal*12+100 from professor;

select sal + nvl(comm,0) as sal_com from professor;