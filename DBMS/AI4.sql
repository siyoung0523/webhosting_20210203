
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