--INSERT INTO member_shop (customername,customerno, city,adress)
--values ('ö��',111111,'�뱸','�뱸 ������ 216');
--
--SELECT
--    *
--FROM member_shop;

--INSERT INTO member_shop VALUES 
--(111112,'yunghee',null,null,
--(TO_DATE('2021/02/26','YYYY/MM/DD')),'A','seoul',34,null);

--UPDATE member_shop
--  SET customername = 'yunghee' , joindate = TO_DATE('2021/02/26','YYYY/MM/DD');
--  
--UPDATE member_shop
--  SET customername = '����' , phone = '222-2222-222'
--  WHERE customername = 111111;
--  
--SELECT
--    *
--FROM member_shop
  
--SELECT
--    *
--FROM member_shop;

--DELETE from member_shop;
--ROLLBACK
--SELECT
--    *
--FROM member_shop

--INSERT INTO member_shop VALUES 
--(21911111,'�μ�',010-1111-1111,null,
--(TO_DATE('2021/02/26','YYYY/MM/DD')),'A','seoul',34,null);
--
--CREATE TABLE from_students
--(
--  studentNo number(8,0),
--  name varchar2(20),
--  phonenumber varchar2(30),
--  city varchar2(10),
--  department varchar2(30)
--);

--INSERT INTO from_students VALUES 
--(21911111,'�μ�',010-1111-1111,'seoul','�����а�');

INSERT INTO from_students VALUES 
(22010101,'ö��',010-2222-2222,'����','������Ű�');

SELECT
    *
FROM from_students;