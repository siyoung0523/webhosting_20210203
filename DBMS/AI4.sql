
-- ddl create , alter, drop ���̺� ����, ���̺� ���� ����, ���̺� ����
create table aTable(
    idx int,
    name varchar2(30),
    gender varchar2(10),
    remark varchar2(200)
);
-- dml insert
INSERT INTO "AI"."ATABLE" --AI �ȿ� ATABLE��
(IDX, NAME, GENDER, REMARK) VALUES  -- �� �ڸ��� �ӿ�
('1', 'ȫ�浿','��', '���'); -- �� ������ �־��

select * from atable;

delete from atable; 

update atable 
set name ='', gender='', remark=''
where idx=1;
commit;

create table EMP_1(
    empnno number(4,0) primary key,
    ename varchar2(10 byte),
    job varchar2(9 byte),
    mgr number(4,0),
    hiredate varchar2(20 byte),
    sal number(7,2),
    comm number(7,2),
    deptno number(2,0)
);







