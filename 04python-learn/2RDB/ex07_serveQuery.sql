-- 다중행 연산자
-- 서브쿼리가 다중행일때는 = 대신 in, and 대신 all, or 대신 any 사용
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

--서브쿼리 결과중 하나라도 존재하면 참인 연산자 exists
--dual은 oracle에서 제공하는 오직 한행, 한컬럼을 담고 있는 dummy 테이블
select '20번 부서 연봉 3000이상 있음'
from dual
where exists (select * from emp
                where sal >= 3000 and
                    deptno = 20);

--from 절에 서브쿼리로 마치 테이블을 조인하듯이 사용
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

--맨 첫번째 줄부터만 셀수 있음
--where rownum<=5 : 첫번째 줄부터 세서 6번쨰 줄에서 출력 안함
--where rownum>=6 : 첫번째 줄에서 6번째 줄 못찾음 -> 끝
select *
from (select * from emp
    order by sal desc)
where rownum >= 6;

/*
--서브쿼리 -> where -> select 이므로 다음은 오류
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


--서브쿼리에서 메인쿼리의 테이블을 가져오면 메인쿼리의 행을 하나씩 가져와서 판단하기 때문에 속도가 느림
--행이 14개이면 14번 비교실행
select ename, sal, deptno
from emp e
where e.sal = (select max(sal) from emp
                where deptno = e.deptno);