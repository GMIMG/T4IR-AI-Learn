-- ������ ������
-- ���������� �������϶��� = ��� in, and ��� all, or ��� any ���
select *
from emp
where deptno in (select deptno
                from emp
                where sal >= 3000);

select ename, sal
from emp
where sal > all (select sal
                from emp
                where deptno=30);

select ename, sal
from emp
where sal > any (select sal
                from emp
                where deptno=30);

--�������� ����� �ϳ��� �����ϸ� ���� ������ exists
--dual�� oracle���� �����ϴ� ���� ����, ���÷��� ��� �ִ� dummy ���̺�
select '20�� �μ� ���� 3000�̻� ����'
from dual
where exists (select * from emp
                where sal >= 3000 and
                    deptno = 20);

--from ���� ���������� ��ġ ���̺��� �����ϵ��� ���
select *
from (select deptno, max(sal) msal
    from emp group by deptno) me,
    emp e
where me.deptno = e.deptno
    and me.msal = e.sal;
    
    
select *
from emp
order by sal desc;

select ename, sal
from (select * from emp
    order by sal desc);
    
select *
from (select * from emp
    order by sal desc)
where rownum <= 5;

--�� ù��° �ٺ��͸� ���� ����
--where rownum<=5 : ù��° �ٺ��� ���� 6���� �ٿ��� ��� ����
--where rownum>=6 : ù��° �ٿ��� 6��° �� ��ã�� -> ��
select *
from (select * from emp
    order by sal desc)
where rownum >= 6;

/*
--�������� -> where -> select �̹Ƿ� ������ ����
select rownum rn, ename, sal
from (select *
    from emp
    order by sal desc
    )
where rn >= 6;
*/

select *
from (select rownum rn, ename, sal
    from (select *
        from emp
        order by sal desc
        ))
where rn >= 6 and rn <= 10;


--������������ ���������� ���̺��� �������� ���������� ���� �ϳ��� �����ͼ� �Ǵ��ϱ� ������ �ӵ��� ����
--���� 14���̸� 14�� �񱳽���
select ename, sal, deptno
from emp e
where e.sal = (select max(sal) from emp
                where deptno = e.deptno);