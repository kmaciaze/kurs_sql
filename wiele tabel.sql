DROP DATABASE IF EXISTS wiele_tabel_zadanie;
CREATE DATABASE wiele_tabel_zadanie;
USE wiele_tabel_zadanie;

CREATE TABLE agents (
  AGENT_CODE varchar(6) PRIMARY KEY,
  AGENT_NAME varchar(40),
  WORKING_AREA varchar(35),
  COMMISSION decimal(10,2),
  PHONE_NO varchar(15),
  COUNTRY varchar(25)
);

INSERT INTO agents VALUES 
('A007', 'Ramasundar', 'Bangalore', 0.15, '077-25814763', ''),
('A003', 'Alex', 'London', 0.13, '075-12458969', ''),
('A008', 'Alford', 'New York', 0.12, '044-25874365', ''),
('A011', 'Ravi Kumar', 'Bangalore', 0.15, '077-45625874', ''),
('A010', 'Santakumar', 'Chennai', 0.14, '007-22388644', ''),
('A012', 'Lucida', 'San Jose', 0.12, '044-52981425', ''),
('A005', 'Anderson', 'Brisban', 0.13, '045-21447739', ''),
('A001', 'Subbarao', 'Bangalore', 0.14, '077-12346674', ''),
('A002', 'Mukesh', 'Mumbai', 0.11, '029-12358964', ''),
('A006', 'McDen', 'London', 0.15, '078-22255588', ''),
('A004', 'Ivan', 'Torento', 0.15, '008-22544166', ''),
('A009', 'Benjamin', 'Hampshair', 0.11, '008-22536178', '');

CREATE TABLE customer (
  CUST_CODE varchar(6) PRIMARY KEY,
  CUST_NAME varchar(40),
  CUST_CITY varchar(35),
  WORKING_AREA varchar(35),
  CUST_COUNTRY varchar(20),
  GRADE decimal(10,0),
  OPENING_AMT decimal(12,2),
  RECEIVE_AMT decimal(12,2),
  PAYMENT_AMT decimal(12,2),
  OUTSTANDING_AMT decimal(12,2),
  PHONE_NO varchar(17),
  AGENT_CODE varchar(6)
);

INSERT INTO customer VALUES 
('C00013','Holmes','London','London','UK',2,6000,5000,7000,4000,'BBBBBBB','A003'),
('C00001','Micheal','New York','New York','USA',2,3000,5000,2000,6000,'CCCCCCC','A008'),
('C00020','Albert','New York','New York','USA',3,5000,7000,6000,6000,'BBBBSBB','A008'),
('C00025','Ravindran','Bangalore','Bangalore','India',2,5000,7000,4000,8000,'AVAVAVA','A011'),
('C00024','Cook','London','London','UK',2,4000,9000,7000,6000,'FSDDSDF','A006'),
('C00015','Stuart','London','London','UK',1,6000,8000,3000,11000,'GFSGERS','A003'),
('C00002','Bolt','New York','New York','USA',3,5000,7000,9000,3000,'DDNRDRH','A008'),
('C00018','Fleming','Brisban','Brisban','Australia',2,7000,7000,9000,5000,'NHBGVFC','A005'),
('C00021','Jacks','Brisban','Brisban','Australia',1,7000,7000,7000,7000,'WERTGDF','A005'),
('C00019','Yearannaidu','Chennai','Chennai','India',1,8000,7000,7000,8000,'ZZZZBFV','A010'),
('C00005','Sasikant','Mumbai','Mumbai','India',1,7000,11000,7000,11000,'147-25896312','A002'),
('C00007','Ramanathan','Chennai','Chennai','India',1,7000,11000,9000,9000,'GHRDWSD','A010'),
('C00022','Avinash','Mumbai','Mumbai','India',2,7000,11000,9000,9000,'113-12345678','A002'),
('C00004','Winston','Brisban','Brisban','Australia',1,5000,8000,7000,6000,'AAAAAAA','A005'),
('C00023','Karl','London','London','UK',0,4000,6000,7000,3000,'AAAABAA','A006'),
('C00006','Shilton','Torento','Torento','Canada',1,10000,7000,6000,11000,'DDDDDDD','A004'),
('C00010','Charles','Hampshair','Hampshair','UK',3,6000,4000,5000,5000,'MMMMMMM','A009'),
('C00017','Srinivas','Bangalore','Bangalore','India',2,8000,4000,3000,9000,'AAAAAAB','A007'),
('C00012','Steven','San Jose','San Jose','USA',1,5000,7000,9000,3000,'KRFYGJK','A012'),
('C00008','Karolina','Torento','Torento','Canada',1,7000,7000,9000,5000,'HJKORED','A004'),
('C00003','Martin','Torento','Torento','Canada',2,8000,7000,7000,8000,'MJYURFD','A004'),
('C00009','Ramesh','Mumbai','Mumbai','India',3,8000,7000,3000,12000,'Phone No','A002'),
('C00014','Rangarappa','Bangalore','Bangalore','India',2,8000,11000,7000,12000,'AAAATGF','A001'),
('C00016','Venkatpati','Bangalore','Bangalore','India',2,8000,11000,7000,12000,'JRTVFDD','A007'),
('C00011','Sundariya','Chennai','Chennai','India',3,7000,11000,7000,11000,'PPHGRTS','A010');

CREATE TABLE orders (
  ORD_NUM decimal(6,0) PRIMARY KEY,
  ORD_AMOUNT decimal(12,2),
  ADVANCE_AMOUNT decimal(12,2),
  ORD_DATE date,
  CUST_CODE varchar(6),
  AGENT_CODE varchar(6),
  ORD_DESCRIPTION varchar(60)
);

INSERT INTO orders VALUES 
(200100,1000,600,'2008-01-08','C00015','A003','SOD'),
(200110,3000,500,'2008-04-15','C00019','A010','SOD'),
(200107,4500,900,'2008-08-30','C00007','A010','SOD'),
(200112,2000,400,'2008-05-30','C00016','A007','SOD'),
(200113,4000,600,'2008-06-10','C00022','A002','SOD'),
(200102,2000,300,'2008-05-25','C00012','A012','SOD'),
(200114,3500,2000,'2008-08-15','C00002','A008','SOD'),
(200122,2500,400,'2008-09-16','C00003','A004','SOD'),
(200118,500,100,'2008-07-20','C00023','A006','SOD'),
(200119,4000,700,'2008-09-16','C00007','A010','SOD'),
(200121,1500,600,'2008-09-23','C00008','A004','SOD'),
(200130,2500,400,'2008-07-30','C00025','A011','SOD'),
(200134,4200,1800,'2008-09-25','C00004','A005','SOD'),
(200115,2000,1200,'2008-02-08','C00013','A013','SOD'),
(200108,4000,600,'2008-02-15','C00008','A004','SOD'),
(200103,1500,700,'2008-05-15','C00021','A005','SOD'),
(200105,2500,500,'2008-07-18','C00025','A011','SOD'),
(200109,3500,800,'2008-07-30','C00011','A010','SOD'),
(200101,3000,1000,'2008-07-15','C00001','A008','SOD'),
(200111,1000,300,'2008-07-10','C00020','A008','SOD'),
(200104,1500,500,'2008-03-13','C00006','A004','SOD'),
(200106,2500,700,'2008-04-20','C00005','A002','SOD'),
(200125,2000,600,'2008-10-10','C00018','A005','SOD'),
(200117,800,200,'2008-10-20','C00014','A001','SOD'),
(200123,500,100,'2008-09-16','C00022','A002','SOD'),
(200120,500,100,'2008-07-20','C00009','A002','SOD'),
(200116,500,100,'2008-07-13','C00010','A009','SOD'),
(200124,500,100,'2008-06-20','C00017','A007','SOD'),
(200126,500,100,'2008-06-24','C00022','A002','SOD'),
(200129,2500,500,'2008-07-20','C00024','A006','SOD'),
(200127,2500,400,'2008-07-20','C00015','A003','SOD'),
(200128,3500,1500,'2008-07-20','C00009','A002','SOD'),
(200135,2000,800,'2008-09-16','C00007','A010','SOD'),
(200131,900,150,'2008-08-26','C00012','A012','SOD'),
(200133,1200,400,'2008-06-29','C00009','A002','SOD'),
(200132,4000,2000,'2008-08-15','C00013','A012','SOD');


--  WPROWADZENIE 
-- a
SELECT * FROM customer 
WHERE cust_code IN (SELECT cust_code FROM orders WHERE ord_date = '2008-01-08');

-- b
SELECT a.agent_name, c.cust_name, a.working_area
FROM agents a
JOIN customer c ON a.agent_code = c.agent_code;

-- INNER JOIN
-- a
SELECT c.cust_name, a.agent_name AS Salesman
FROM customer c
INNER JOIN agents a ON c.agent_code = a.agent_code
WHERE a.commission > 0.12;

-- b
SELECT o.ord_num, o.ord_date, o.ord_amount, 
       c.cust_name AS 'Customer Name', 
       a.agent_name AS Salesman, 
       a.commission
FROM orders o
INNER JOIN customer c ON o.cust_code = c.cust_code
INNER JOIN agents a ON o.agent_code = a.agent_code;

-- LEFT JOIN
-- a
SELECT c.cust_code, c.cust_name, a.agent_name AS Salesman, c.working_area
FROM customer c
LEFT JOIN agents a ON c.agent_code = a.agent_code
ORDER BY c.cust_code;

-- RIGHT JOIN
-- a
SELECT a.agent_code, a.agent_name AS Salesman, a.working_area
FROM customer c
RIGHT JOIN agents a ON c.agent_code = a.agent_code
ORDER BY a.agent_code;

-- CROSS JOIN
-- a
SELECT * FROM agents CROSS JOIN customer;

-- b
SELECT * FROM agents a
CROSS JOIN customer c
WHERE a.working_area = c.working_area;

-- c
SELECT * FROM agents a
CROSS JOIN customer c
WHERE a.working_area <> c.working_area AND c.grade IS NOT NULL;

-- UNION
-- a
SELECT agent_code AS ID, agent_name, 'Salesman' AS Rodzaj
FROM agents
WHERE working_area = 'London'
UNION
SELECT cust_code, cust_name, 'Customer'
FROM customer
WHERE cust_city = 'London';

-- b
SELECT a.agent_name, o.ord_date, 'Najwyższe' AS Typ, o.ord_amount
FROM agents a
JOIN orders o ON a.agent_code = o.agent_code
WHERE o.ord_amount = (
    SELECT MAX(ord_amount) 
    FROM orders 
    WHERE ord_date = o.ord_date
)

UNION

SELECT a.agent_name, o.ord_date, 'Najniższe' AS Typ, o.ord_amount
FROM agents a
JOIN orders o ON a.agent_code = o.agent_code
WHERE o.ord_amount = (
    SELECT MIN(ord_amount) 
    FROM orders 
    WHERE ord_date = o.ord_date
)
ORDER BY ord_date, Typ DESC;

-- WITH
-- a
CREATE OR REPLACE VIEW londonstaff AS
SELECT * FROM agents
WHERE working_area = 'London' AND commission > 0.14;

--  b
CREATE OR REPLACE VIEW gradecount AS
SELECT grade, COUNT(*) AS liczba_klientow
FROM customer
GROUP BY grade;

-- c
CREATE OR REPLACE VIEW total_per_dzien AS
SELECT ord_date, 
       COUNT(DISTINCT cust_code) AS liczba_klientow, 
       AVG(ord_amount) AS srednia_kwota, 
       SUM(ord_amount) AS suma_zamowien
FROM orders
GROUP BY ord_date;

SELECT * FROM londonstaff;
SELECT * FROM gradecount;
SELECT * FROM total_per_dzien;