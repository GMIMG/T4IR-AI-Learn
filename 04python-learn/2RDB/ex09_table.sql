--���̺� �����
create table emp01(
empno number(20),
ename varchar2(20),
sal number(7,2));


--���������� ���̺� �����ϱ�
create table emp02
as
select * from emp;

create table emp03
as
select empno, ename from emp;

create table emp05
as
select * from emp where deptno = 10;


--���̺� ������ �����ϱ�
create table emp04
as
select * from emp where 1=0;

--���̺� �̸��� �����Ҽ� ������, ���� �̸��� �ٲܼ� ����