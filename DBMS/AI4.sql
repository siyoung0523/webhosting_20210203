
-- ddl create , alter, drop 테이블 생성, 테이블 구조 수정, 테이블 삭제
create table aTable(
    idx int,
    name varchar2(30),
    gender varchar2(10),
    remark varchar2(200)
);
-- dml insert
INSERT INTO "AI"."ATABLE" --AI 안에 ATABLE에
(IDX, NAME, GENDER, REMARK) VALUES  -- 이 자리들 속에
('1', '홍길동','남', '비고'); -- 이 값들을 넣어라

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







