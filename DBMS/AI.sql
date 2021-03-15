--INSERT INTO member_shop (customername,customerno, city,adress)
--values ('철수',111111,'대구','대구 동구로 216');
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
--  SET customername = '진혁' , phone = '222-2222-222'
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
--(21911111,'민수',010-1111-1111,null,
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
--(21911111,'민수',010-1111-1111,'seoul','역사학과');

INSERT INTO from_students VALUES 
(22010101,'철수',010-2222-2222,'서울','정보통신과');

SELECT
    *
FROM from_students;