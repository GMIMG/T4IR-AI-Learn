-- Join
-- column �� ������ Ž���ð��� ������� ���̺���� �ٿ��ִ°� ����
select e.ename, e.deptno, d.dname
from emp e, dept d
where e.deptno = d.deptno
    and ename = 'SCOTT';


select e.ename, e.sal, s.grade
from emp e, salgrade s
where e.sal between s.losal and s.hisal;


-- self join
select e.empno, e.ename, m.empno mgrno, m.ename mgr
from emp e, emp m
where e.mgr = m.empno;

-- outer join
-- (+)�� ������ ������ Į���̸� �ڿ� �ٿ��� ����� ����
-- ���⼭�� null�ΰ��� ǥ��
select employee.ename || '�� �Ŵ�����'
    || manager.ename || '�Դϴ�.'
from emp employee, emp manager
where employee.mgr= manager.empno(+);

-- inner join
-- ���뿭�� on �����ڷ� ������ ���༭ join
select *
from emp inner join dept
on emp.deptno = dept.deptno;

-- using�� ����Ͽ� ���뿭�� ���� ������
select deptno, emp.ename, dept.dname
from emp inner join dept
using (deptno);

-- natural join
-- �ڵ����� ���뿭�� ������
select emp.ename, deptno, dept.dname
from emp natural join dept;