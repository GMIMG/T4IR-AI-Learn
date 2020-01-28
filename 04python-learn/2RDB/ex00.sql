DROP TABLE EMP;
DROP TABLE DEPT;
DROP TABLE BONUS;
DROP TABLE SALGRADE;
DROP TABLE DUMMY;
CREATE TABLE EMP
       (EMPNO NUMBER(4) NOT NULL,
        ENAME VARCHAR2(10),
        JOB VARCHAR2(9),
        MGR NUMBER(4),
        HIREDATE DATE,
        SAL NUMBER(7, 2),
        COMM NUMBER(7, 2),
        DEPTNO NUMBER(2));

--���̺� ����
--NUMBER(precision(��ü) ,scale(�Ҽ����Ʒ�))
create table num_test(
n1 number(5,2),
n2 number(5),
n3 number
);

-- ���̺� ����
desc num_test

-- �� �ֱ�
insert into num_test values ('123.45','123.45','123.45');

-- �� ��ȸ
select * from num_test;

-- �ڸ��� ���Ŀ� ���� �ʴ� ���� �־��༭ ����
--insert into num_test values (1234.5, 1234.5, 1234.5);


select * from num_test;

create table char_test(
c1 char(20),
c2 varchar2(20)
);

insert into char_test values ('seoul','seoul');
select * from char_test;

-- �ѱ��� �ѱ��ڰ� 3byte(utf-8), �ڹٴ� 2byte(utf-16)
insert into char_test values ('�����ٶ󸶹�','�����ٶ󸶹�');
select * from char_test;

insert into char_test values ('�����ٶ󸶹ٻ�','�����ٶ󸶹ٻ�');





select empno, ename from emp;
select sal, comm from emp;
select sal,comm,sal+comm from emp;

select sal, sal-100, sal*12, sal/2 from emp;

select ename, sal, job, comm, sal*12, sal*12+comm from emp;

-- ������ null���� ���ڷ� �ٲ���
select ename, comm, nvl(comm, -100) from emp;

-- ��ҹ��ڸ� �����ϴ� ���� ��Ī�� �����ϱ� ���ؼ��� ""
select ename, sal, comm, nvl(comm, 0), sal*12 + nvl(comm, 0) as "Annsal" from emp;

-- ���ڿ� �����ִ� ||
select ename || ' is a ' || job from emp;

-- ��ġ�� �� �ȳ����� distinct
select distinct deptno from emp;