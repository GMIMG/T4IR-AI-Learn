--primary key(��Ű)�� �����ϸ� �ߺ��� ���� null�� ������
create table t_dept
as
select * from dept;

alter table t_dept
add primary key (deptno);


create table s_emp
as 
select * from emp;

insert into s_emp
(empno,ename,deptno)
values(123,'AROMA',90);

-- ������� deptno�÷��� ����
-- t_dept���̺� deptnoĭ�� �����Ѵ�
-- �μ���ȣ(10,20,30,40) �� ���԰��� ����
-- foreign key(�ܷ�Ű) ����

create table t_emp
as
select * from emp;

alter table t_emp
add foreign key (deptno)
references t_dept;

/* foreign key �������� ����
insert into t_emp
(empno,ename,deptno)
values(123,'AROMA',90);
*/

insert into t_emp
(empno,ename,deptno)
values(123,'KIKI',40);

--�������� ����
SELECT * FROM ALL_CONSTRAINTS
WHERE TABLE_NAME = 'T_EMP';

alter table t_emp
drop constraint SYS_C007022;

