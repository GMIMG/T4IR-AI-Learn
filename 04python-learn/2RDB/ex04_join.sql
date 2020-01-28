-- Join
-- column 이 많으면 탐색시간이 길어져서 테이블명을 붙여주는게 좋음
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
-- (+)는 정보가 부족한 칼럼이름 뒤에 붙여서 결과에 포함
-- 여기서는 null인값도 표기
select employee.ename || '의 매니저는'
    || manager.ename || '입니다.'
from emp employee, emp manager
where employee.mgr= manager.empno(+);

-- inner join
-- 공통열을 on 연산자로 조건을 써줘서 join
select *
from emp inner join dept
on emp.deptno = dept.deptno;

-- using을 사용하여 공통열을 쉽게 정해줌
select deptno, emp.ename, dept.dname
from emp inner join dept
using (deptno);

-- natural join
-- 자동으로 공통열을 합쳐줌
select emp.ename, deptno, dept.dname
from emp natural join dept;