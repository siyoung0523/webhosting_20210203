--SELECT ename, sal
--    *
--FROM emp WHERE sal>=2850;

--SELECT ename,deptno FROM emp WHERE empno='7566' 
--
--SELECT ename,empno FROM
--emp WHERE 1500<sal or sal>2850;

--SELECT * FROM employees WHERE job_id LIKE '%LE%';

--SELECT * FROM employees WHERE job_id LIKE 'I%';

--SELECT * FROM employees WHERE job_id LIKE '_T%';

--SELECT * FROM employees WHERE job_id not LIKE '%LE%';

--SELECT job_id FROM employees WHERE job_id not LIKE '%N%';
--
--SELECT * FROM employees ep WHERE ep.commission_pct is null;
--
--SELECT * FROM employees ep WHERE ep.commission_pct is not null;
--
--SELECT * FROM employees ep WHERE ep.commission_pct = null;
--
--SELECT * FROM employees ep WHERE ep.commission_pct <> null;

--SELECT * FROM employees WHERE salary 
-->= (SELECT salary FROM employees WHERE employee_id=158);
--
--SELECT * FROM employees WHERE salary 
-->= any(SELECT salary FROM employees WHERE manager_id=147);
--
--SELECT * FROM employees WHERE salary 
-->= all(SELECT salary FROM employees WHERE manager_id=147);
--
--SELECT * FROM employees WHERE salary 
-->= some(SELECT salary FROM employees WHERE manager_id=147);

--SELECT DISTINCT job_id FROM job_history;
--
--SELECT job_id FROM job_history; 

--SELECT DISTINCT job as 잡 FROM emp;

--SELECT hire_date as 고용일,first_name as 이름,last_name as 성,salary as 급여 FROM (SELECT * FROM employees ORDER by hire_date desc)
--WHERE ROWNUM <=5;
--
--SELECT hire_date as 고용일,first_name as 이름,last_name as 성,salary as 급여 FROM (SELECT * FROM employees ORDER by first_name asc)
--WHERE ROWNUM <=10;
--
--SELECT hire_date as 고용일,first_name as 이름,last_name as 성,salary as 급여 FROM 
--(SELECT * FROM employees ORDER by salary desc)
--WHERE ROWNUM <=10;

--5번

--5-1
SELECT ename as 이름,job as 직업,hiredate as 입사일 FROM
(SELECT * FROM emp order by hiredate asc)
WHERE hiredate >= '81/02/20' and hiredate <= '81/05/01' ;
--5-2
SELECT ename as 이름,job as 직업,hiredate as 입사일 FROM
(SELECT * FROM emp order by hiredate asc)
WHERE hiredate BETWEEN '81/02/20' and '81/05/01' ;

--6번

SELECT ename as 이름, deptno as 부서번호 FROM 
(SELECT * FROM emp order by ename asc)
WHERE deptno=10 or deptno=30;

--7번

--7-1
SELECT ename as 이름, sal as 급여 FROM 
(SELECT * FROM emp WHERE deptno=10 or deptno=30)
WHERE sal>1500  ;

--7-2
SELECT ename as 이름, sal as 급여 FROM 
emp WHERE sal>1500 and deptno in(10,30)  ;

--8번

SELECT ename as 이름, job as 직위 FROM emp
--(SELECT * FROM emp order by sal asc)
WHERE mgr is null;

--9번

SELECT ename as 이름, sal as 급여, comm as 커미션 FROM 
(SELECT * FROM emp order by sal desc)
WHERE comm is not null and comm != 0;

--10번

SELECT ename as 이름, sal as 급여, job as 직업 FROM 
(SELECT * FROM emp WHERE job = 'CLERK' or job = 'ANALYST')
WHERE sal != 1000 and sal != 3000 and sal != 5000;
