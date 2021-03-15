select price from buytbl;
select sum(price) from buytbl;
select cast(avg(price) as number(8,3)) from buytbl;
select min(price) from buytbl;
select max(price) from buytbl;
select cast(stddev(price) as number(8,2)) from buytbl;
select cast(variance(price) as number(20,3)) from buytbl;

select userid, sum(amount) from buytbl group by userid;

select userid as "����ھ��̵�",
sum(price*amount) as "�ѱ��ž�"
from buytbl group by userid;


select userid as "����ھ��̵�",
sum(price*amount) as "�ѱ��ž�"
from buytbl group by userid
having sum(price*amount)>1000;

select idnum, groupname, sum(price*amount) as ���
from buytbl group by rollup(groupname, idnum);

select groupname, sum(price*amount) as ���
from buytbl group by rollup(groupname);

select idnum, groupname, sum(price*amount) as ���
from buytbl group by rollup( groupname,idnum);

select idnum, groupname, sum(price*amount) as ���
from buytbl group by rollup(idnum, groupname);

select groupname, sum(price*amount)as ���,
grouping_id(groupname) as "�߰��� ����"
from buytbl
group by rollup(groupname);

select idnum, groupname, sum(price*amount)as ���,
grouping_id(idnum) as "�߰��� ����"
from buytbl
group by rollup(groupname, idnum);

select deptno as �μ�, count(ename) as "�μ��� �ο�", cast(avg(sal) as number(10,2)) "�μ��� ��ձ޿�", sum(sal) as "�μ��� �޿� ��"
from emp
group by deptno; 

select job as ����, count(ename) as "������ �ο�", cast(avg(sal) as number(10,2)) ��ձ޿�, max(sal) as �ְ�޿���, min(sal) as �����޿���, sum(sal) as �հ�
from emp
group by job;

select job as "���� 5000�ʰ� ����", sum(sal) as ���޿��հ�
from emp
group by job
having sum(sal)>5000;

select job_id, employee_id, sum(salary) as ���հ�,
grouping_id(employee_id) as �հ迭����
from employees
group by rollup(job_id, employee_id);


select addr, username, avg(height) 
,grouping_id(username)
from usertbl group by rollup (addr, username);

select empno, ename, sal, deptno
from emp
where deptno = 10
union all
select empno, ename, sal, deptno
from emp
where deptno = 10;

with CTE_abc(userid,total)
as (select userid, sum(price*amount) from buytbl
group by userid)
select * from CTE_abc order by total desc;

select * from CET_abc;

with HH(locate, height)
as 
(select addr, max(height)
from usertbl group by addr)
select avg(height) from HH;

with
AAA(userli,total)
as
(select userid, sum(price*amount) from buytbl group by userid),
BBB(sumtotal)
as
(select sum(total) from AAA),
CCC(sumavg)
as
(select sumtotal / (select count(*) from buytbl) from BBB)
select * from CCC;

with 
CTE(name,min_price)
as
(select groupname ,min(price) from buytbl group by groupname),
CTE_2(min_price_sum)
as
(select sum(min_price) from CTE),
CTE_3(min_price_sum_avg)
as
(select min_price_sum / (select count(distinct groupname) from buytbl) from CTE_2)
select * from CTE_3;

with
CTE(max_salary)
as
(select max(salary) from employees group by job_id),
CTE_2(max_salary_sum)
as
(select sum(max_salary) from CTE),
CTE_3(max_salary_sum_avg)
as
(select max_salary_sum / (select count(*) from employees) from CTE_2)
select * from CTE_2
union
select * from CTE_3;

with PPP(GG, MP)
as(
select groupname, min(price)from buytbl 
group by groupname)
select avg(MP) from PPP;


with EMJ(job, maxsal)
as(
select job_id, max(salary)
from employees group by job_id)
select avg(maxsal), sum(maxsal)
from EMJ;

select LPAD('�̰���', 10,'#'), RPAD('�̰���',10,'#')
from dual;


create table EMPTBL (emp nchar(3), manager nchar(3), department nchar(3));

insert into EMPTBL values('������','����','����');
insert into EMPTBL values('���繫','������','�繫��');
insert into EMPTBL values('�����','���繫','�繫��');
insert into EMPTBL values('�̺���','���繫','�繫��');
insert into EMPTBL values('��븮','�̺���','�繫��');
insert into EMPTBL values('�����','�̺���','�繫��');
insert into EMPTBL values('�̿���','������','������');
insert into EMPTBL values('�Ѱ���','�̿���','������');
insert into EMPTBL values('������','������','������');
insert into EMPTBL values('������','������','������');
insert into EMPTBL values('������','������','������');



with empCTE(empname, agrname, dept, emplevel)
as(
(select emp, manager, department,0
from emptbl
where manager ='����')
union all
(select emptbl.emp, emptbl.manager, emptbl.department, empcte.emplevel+1
from emptbl, empcte
where emptbl.manager = empcte.empname))
select*from empcte order by dept, emplevel;


select length('�ѱ�'), length('AB'),
lengthb('�ѱ�'), lengthb('AB') from dual;


select concat('�̰���','Oracle�̴�'), '�̰���'||''||'Oracle�̴�' 
from dual;

select instr('�̰��� Oracle�̴�. �̰͵� ����Ŭ�̴�','�̰�')from dual;
select instr('�̰��� Oracle�̴�. �̰͵� ����Ŭ�̴�','�̰�',2)from dual;
select instrb('�̰��� Oracle�̴�. �̰͵� ����Ŭ�̴�','�̰�',2)from dual;

select lower('abcdEFGH'), upper('abcdEFGH'), initcap('this is oracle') 
from dual;

select e.ename,e.sal from emp e
where lower(e.ename) = lower('ward');

select replace ('�̰��� Oracle�̴�','�̰���','This is') from dual;
select translate ('�̰��� Oracle�̴�','�̰�','AB') from dual;

select translate('�̰��� OracleOradddleclt�̴�','Oracl','123') from dual;

select substr('���ѹα�����',3,2)from dual;

select reverse('Oracle') from dual;

select (substr('�Ｚ���ڿ� ������ ���ڴ��.',1,4)||'vs'||substr('�Ｚ���ڿ� ������ ���ڴ��.',7,2))from dual;

select ltrim(' �̰���'),rtrim('�̰��̤�����','��') from dual;

select trim(' �̰��� '),
trim('��'from '������������վ��.��������') from dual;

select rtrim('������������վ��.��������','��') from dual;

select abs(-100) from dual;
select ceil(4.7), floor(4.7), round(4.7) from dual;
select trunc(12345.12345,2), trunc(12345.12345,-2) from dual;

select floor(4.546344,2) from dual;

select mod(157,10) from dual;

select power(2,3), sqrt(9) from dual;

select sysdate from dual;
select add_months('2020-01-01',5), 
add_months(sysdate,-5) from dual;

select last_day('2020-02-01') from dual;
select next_day('2020-02-01','������'), next_day(sysdate,'�Ͽ���') from dual;
select months_between(sysdate,'1988-09-17') from dual;

select to_char(355500,'$999,999') from dual;
select to_char(355500,'999,999') from dual;
select to_date('20210305')from dual;
select to_number('123456') from dual;

select b.userid, u.username, b.prodname, u.addr,
u.mobile1 || u.mobile2 as "����ó"
from buytbl b inner join usertbl u
on  u.userid = b.userid  ;

select b.userid, u.username, b.prodname, u.addr,
u.mobile1 || u.mobile2 as "����ó"
from buytbl b,usertbl u;

select distinct u.userid, u.username, u.addr
from usertbl u, buytbl b
 where u.userid = b.userid;
 
select distinct u.userid, u.username, u.addr
from usertbl u
where exists(select b.userid from buytbl b where u.userid = b.userid);
 --������� ������ ����, ������ �������� ����)
 
 select u.userid, u.username, b.prodname, u.addr,
 u.mobile1||'-'||u.mobile2 as "����ó"
 from usertbl u left outer join buytbl b
    on b.userid = u.userid;
    
 select u.userid, u.username, b.prodname, u.addr,
 u.mobile1||'-'||u.mobile2 as "����ó"
 from buytbl b left outer join usertbl u
    on b.userid = u.userid;
    
    select a.emp as ��������, b.emp as ���ӻ��, b.department as ���ӻ���μ�
    from emptbl a inner join emptbl b
    on a.manager = b.emp
    where a.emp='��븮';
    
    select e.ename as �̸�, d.deptno as �μ���ȣ, d.dname as �μ���
    from dept d, emp e
    where e.deptno = d.deptno;
    
    
    
    select e.ename as �����, e.job as ����, e.sal as �޿�, d.dname as �μ���
    from dept d inner join emp e
    on d.deptno = e.deptno
    where d.loc='NEW YORK';
    
    select e.ename as �����, e.job as ����, e.sal as �޿�, d.dname as �μ���
    from dept d, emp e
    where d.deptno = e.deptno and upper(d.loc)=upper('new york');
    
    select e.ename as �����, d.dname as �μ���, d.loc as ��ġ
    from dept d, emp e
    where d.deptno = e.deptno and e.comm is not null;
    
    select e.ename as �����, d.dname as �μ���, d.loc as ��ġ
    from dept d inner join emp e
    on d.deptno = e.deptno
    where e.comm is not null;
    
    select e.empno as ���, e.ename as �����, e.sal as �޿�, d.dname as �μ���
    from dept d, emp e
    where d.deptno = e.deptno and e.sal >= 2000 order by e.sal desc ;
    
    select e.empno as ���, e.ename as �����, e.sal as �޿�, d.dname as �μ���
    from dept d inner join emp e
    on d.deptno = e.deptno 
    where e.sal >= 2000 order by e.sal desc;
    
--    select e.empno as ���, e.ename as �����, e.sal as �޿�, d.dname �μ���
    
    select e.empno as ���, e.ename as ������, e.sal as �޿�, s.grade as ���
    from emp e, salgrade s
    where s.hisal > e.sal and e.sal > s.losal order e.sal by desc;
    
    select e.empno, e.ename, e.sal, s.grade
    from emp e, salgrade s
    where e.sal between s.losal and s.hisal and s.grade=4
    order by e.sal desc;
    
    select e.empno as ���, e.ename as �����, e.sal as �޿�, d.dname as �μ���
    from dept d, emp e
    where d.deptno = e.deptno 
    and upper(e.job)= upper('manager') 
    and e.sal>=2500 
    order by empno asc;
    
    select a.empno, a.ename,a.job,a.sal,b.dname
    from emp a, dept b 
    where a.deptno=b.deptno
    and upper(a.job)=upper('manager') and a.sal > 2500
    order by a.empno asc;
    
    select e.ename, e.job,d.dname, d.loc from emp e, dept d 
    where e.deptno=d.deptno
    and e.ename like '%L%';
    
    select a.ename, a.hiredate, b.ename, b.hiredate
    from emp a
    inner join emp b
    on a.mgr=b.empno
    where a.hiredate<b.hiredate;
    
    select e.ename, e.sal, e.hiredate, e.comm
    from emp e, dept d
    where e.deptno=d.deptno
    and upper(d.loc)=upper('dallas')
    and e.sal >= 1500;
    
    select a.ename, a.sal, a.hiredate, d.dname
    from emp a, dept d
    where a.deptno=d.deptno
    and months_between(sysdate,hiredate)>(12*30);

select e.empno, e.ename,e.sal, s.grade
from emp e, salgrade s
where s.grade=4
and e.sal between s.losal and s.hisal
order by e.sal desc;

select e.ename, d.deptno,d.dname from emp e 
left outer join dept d on e.deptno= d.deptno;

CREATE TABLE FKTABLE (FKColumn varchar(20));
alter table fktable
add constraint ff primary key(fkcolumn);

create table ptable(column1 varchar(20) Primary key, 
column2 constraint fktest References fktable(fkcolumn));

alter table ptable
add column3 varchar(20);

alter table ptable
add constraint fkfk foreign key (Column3)
references fktable (fkcolumn);

Create Table UniqueEx(
column1 varchar2(20) constraint column1Unique Unique ,
column2 number(3) constraint column2Unique Unique, 
column3 char(3)
);

insert into uniqueex values ('1',2, '');
insert into uniqueex values ('1',2, '');
insert into uniqueex values ('3',4, '');

Create Table CheckEx(
column1 number(3) constraint column1Check Check(column1 Between 1 And 10),
column2 varchar2(20) constraint column2Check Check(column2 In('Y', 'N') ),
column3 varchar2(10));

insert into checkex values (2,'Y','');
insert into checkex values (20,'ppp','');

alter table CheckEx
add constraint chk3 check(conlum3 in ('a', 'b', 'c', 'd', 'f'));

insert into checkex values(1, 'N', 'a');
insert into checkex values(1, 'N', 'k');
insert into checkex values(1, 'M', 'a');

Create Table DefaultEx(   
   column1 varchar(30) ,
   column2 varchar2(20) Default '�⺻��' ,   
    column3 number(8) Default 1234          
   );

insert into defaultex (column1) values ('����');
insert into defaultex values ('����', default, default);

insert into defaultex values ('���', NULL, DEFAULT);

ALTER TABLE DEFAULTEX MODIFY COLUMN3 DEFAULT 123;

CREATE TABLE NOTNULLEX
(
    COLUMN1 VARCHAR(20) NOT NULL UNIQUE,
    COLUMN2 VARCHAR(20)
    );
    
ALTER TABLE NOTNULLEX MODIFY COLUMN2 CONSTRAINT COLUMN2NOTNULL NOT NULL;

INSERT INTO NOTNULLEX VALUES ('101', '222');
INSERT INTO NOTNULLEX VALUES ('101', NULL);
INSERT INTO NOTNULLEX VALUES ('101', '333');

ALTER TABLE NOTNULLEX
DROP CONSTRAINT COLUMN2NOTNULL;

INSERT INTO NOTNULLEX VALUES('104', DEFAULT);

SET SERVEROUTPUT ON;
DECLARE
    var1 NUMBER(5); 
--    ��������
BEGIN
    var1 := 100; 
--    ����������
    IF var1 = 100 then
    DBMS_OUTPUT.PUT_LINE('100�Դϴ�');
    ELSE
    DBMS_OUTPUT.PUT_LINE('100�� �ƴմϴ�');
    END IF;
END;


DECLARE
hireDate DATE;
curDate DATE;
wDays NUMBER(5);
BEGIN
SELECT hire_date INTO hiredate
FROM AI.employees
WHERE employee_id =200;
curDate := CURRENT_DATE();
wDays := curDate - hireDate;
IF(wDays/365) >= 15 THEN
DBMS_OUTPUT.PUT_LINE('�Ի����� ' ||wdays|| '���̳� �������ϴ�. �����մϴ�');
ELSE
DBMS_OUTPUT.PUT_LINE('�Ի����� ' ||wdays|| '�Ϲۿ� �ȵǾ��׿�. ������ ���ϼ���.');
END IF;
END;



DECLARE
pNumber NUMBER(3);
credit CHAR(1);

BEGIN
pNumber := 77;
CASE
    WHEN pNumber >= 90 then
    credit := 'A';
    WHEN pNumber >= 80 then
    credit := 'B';
    WHEN pNumber >= 70 then
    credit := 'C';
    WHEN pNumber >= 60 then
    credit := 'D';
    ELSE 
    pNumber := 'F';
    END CASE;
    DBMS_OUTPUT.PUT_LINE('�������==>' ||pNumber || ', ����==>' || credit);
    END;
    

select U.userid, U.USERNAME, sum(b.price*b.amount) as "�ѱ��ž�",
    CASE
    when sum(price*amount) >=1500 then '�ֿ����'
    when sum(price*amount) >=1000 then '�����'
    when sum(price*amount) >=1 then '�Ϲݰ�'
    ELSE '���ɰ�' END AS "�����"
from buytbl B, USERTBL U 
WHERE B.USERID = U.USERID 
group by U.userid, u.username order by sum(price*amount) DESC nulls last;

select U.userid, U.USERNAME, sum(b.price*b.amount) as "�ѱ��ž�",
    CASE
    when sum(price*amount) >=1500 then '�ֿ����'
    when sum(price*amount) >=1000 then '�����'
    when sum(price*amount) >=1 then '�Ϲݰ�'
    ELSE '���ɰ�' END case
from buytbl b right outer join USERTBL U on b.userid = u.userid 
group by U.userid, u.username order by sum(price*amount) DESC nulls last;

select
    u.userid, u.username, sum(b.price*b.amount),
    CASE 
        WHEN SUM(b.price*b.AMOUNT)>=1500 THEN '�ֿ����'
        when sum(b.PRICE*b.AMOUNT)>=1000 THEN '�����'
        WHEN SUM(B.PRICE*B.AMOUNT)>=15 THEN '�Ϲݰ�'
        else '���ɰ�'
        end �����
from buytbl b
    right outer join usertbl u
    on b.userid = u.userid
group by (u.userid, u.username)
order by sum(b.price*b.amount) desc nulls last;
    
    
set serveroutput on;
declare
    num1 number(4);
    num2 number(4);
begin
    num1 := 0;
    num2 := 0;
    while num1<=1000
    loop
        num1 := num1+3;
    end loop;
    while num2<=1000
    loop
        num1 := num1+8;
    end loop;
    dbms_output.put_line(sum(num1,num2));
end;

set serverout on;

 declare
    l_year number(5);
    s_year number(5);
BEGIN  
    l_year:=2002;
    select max(year)into s_year from lotto;
  while s_year >= (l_year)
  Loop  
  update lotto set year = l_year
  where
    (l_year =2002 and seq <= 
    (select max(seq) from lotto where year=l_year))    
    or(    seq <= 
    (select max(seq) from lotto where year=l_year)  
    and seq > (
    select max(seq) from lotto where year=(l_year-1)));
    
  l_year:=l_year+1;  
  end loop;
END;

declare
    l_year number(5);
    s_year number(5);
begin
    l_tear:=2002;
    select max(year)into s_year from lotto;
while s_year >=(1_year)
loop
update lotto set year = l_year
where
(l_year = 2002 and seq<=(select max(seq) from lotto where year=l_year))
or
(seq <= select max(seq) from lotto where yoear=l_year)
and
seq > )select max(seq) from lotto where year=(1_year-1)));

DECLARE
    inum   NUMBER(4);
    idx  NUMBER(4);
BEGIN
    idx := 1;
    select sum(COUNT(seq)) into inum FROM
            lotto
        GROUP BY
            seq; 
--    inum := (
--        SELECT
--            sum(COUNT(seq))
--            FROM
--            lotto
--        GROUP BY
--            seq
--    ) ;
    WHILE idx <= inum
    LOOP
        UPDATE lotto
        SET year = (
                SELECT
                    cast(substr(resultdate, 1, 4) as number(4))
                FROM
                    lotto
                where
                 seq=idx
            )
        WHERE
            seq = idx;

        idx := idx + 1;
    END LOOP;

END;
    


create or replace PROCEDURE del_buytbl
  (  p_idnum              buytbl.idnum%type      
   )
   
IS
 BEGIN
     delete from buytbl where idnum=p_idnum;
    commit;
END del_buytbl;
    

create or replace PROCEDURE add_buytbl
  (  p_idnum              buytbl.idnum%type
   , p_userid             buytbl.userid%type
   , p_prodname           buytbl.prodname%type
   , p_groupname          buytbl.groupname%type
   , p_price              buytbl.price%type
   , p_amount             buytbl.amount%type
   , p_sss                buytbl.sss%type
   )
IS
BEGIN
  INSERT INTO buytbl (idnum, userid, prodname,
                           groupname, price,amount,sss)
    VALUES(p_idnum, p_userid, p_prodname, p_groupname, p_price,p_amount,p_sss);
    commit;
END add_buytbl;

    
create or replace PROCEDURE SELECTALLCOLUMN_BUYTBL 
 (
 p_cursor OUT SYS_REFCURSOR)
 IS
 BEGIN
 OPEN p_cursor FOR
 SELECT *
 FROM BUYTBL;
END SELECTALLCOLUMN_BUYTBL;
    
    
    