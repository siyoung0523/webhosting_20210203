create or replace PROCEDURE update_buytbl(
     p_empnum              buytbl.empnum%type
   , p_userid             buytbl.userid%type
   , p_prodname           buytbl.prodname%type
   , p_groupname          buytbl.groupname%type
   , p_price              buytbl.price%type
   , p_amount             buytbl.amount%type
   , p_sss                buytbl.sss%type
   )
IS
 BEGIN
      update buytbl
      set 
        empnum = p_empnum
        ,userid = p_userid
        ,prodname = p_prodname
        ,groupname = p_groupname
        ,price = p_price
        ,amount = p_amount
        ,sss = p_sss
        
      where empnum= p_empnum;
      commit;
 END update_buytbl;
 
 create or replace PROCEDURE deel_buytbl
  (  p_idnum              buytbl.idnum%type      
   )   
IS
     zeroDelete           Exception;
 BEGIN
     delete from buytbl where idnum=p_idnum;
commit;
END deel_buytbl;

create or replace PROCEDURE del_buytbl
  (  p_idnum              buytbl.idnum%type      
   )   
IS
     zeroDelete           Exception;
 BEGIN
     delete from buytbl where idnum=p_idnum;
commit;
END del_buytbl;



create or replace PROCEDURE insert_emp_1
  (  p_empno              emp_1.empno%type
   , p_ename              emp_1.ename%type
   , p_job                emp_1.job%type
   , p_mgr                emp_1.mgr%type
   , p_hiredate           emp_1.hiredate%type
   , p_sal             emp_1.sal%type
   , p_comm               emp_1.comm%type
   , p_deptno             emp_1.deptno%type
   )
IS
BEGIN
  INSERT INTO emp_1 (empno, ename, job,
                           mgr, hiredate,sal,comm,deptno)
    VALUES(p_empno, p_ename, p_job, p_mgr, p_hiredate,p_sal,p_comm,p_deptno);
    commit;
END insert_emp_1;



create or replace PROCEDURE update_emp_1
  (  p_empno              emp_1.empno%type
   , p_ename              emp_1.ename%type
   , p_job                emp_1.job%type
   , p_mgr                emp_1.mgr%type
   , p_hiredate           emp_1.hiredate%type
   , p_sal             emp_1.sal%type
   , p_comm               emp_1.comm%type
   , p_deptno             emp_1.deptno%type
   )
   
IS

 BEGIN
      update emp_1
      set 
         empno = p_empno
        ,ename = p_ename
        ,job  =   p_job
        ,mgr =   p_mgr
        ,hiredate = p_hiredate
        ,sal = p_sal
        ,comm = p_comm
        ,deptno = p_deptno
        
      where empno=p_empno;
      commit;
      exception
       when no_data_found then
        dbms_output.put_line('오류 발생');
    
END update_emp_1;



create or replace PROCEDURE delete_emp_1
  (  p_empno              emp_1.empno%type      
   )
   
IS
     zeroDelete           Exception;
 BEGIN
     delete from emp_1 where empno=p_empno;
--     if SQL%Notfound then
--        Raise zeroDelete;
--     end if;
--      exception
--       when zeroDelete then
--        dbms_output.put_line(p_idnum || '해당 데이터가 없습니다.');
    commit;
END delete_emp_1;



create or replace PROCEDURE select_emp_1 
 (
 p_cursor OUT SYS_REFCURSOR)
 IS
 BEGIN
 OPEN p_cursor FOR
 SELECT *
 FROM emp_1;
-- WHERE sal > p_sal;
END select_emp_1;















