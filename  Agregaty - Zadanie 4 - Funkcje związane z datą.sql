set sql_safe_updates = 0;

create database if not exists aggregates;
use aggregates;

drop table if exists batman;

create table batman(
  id integer primary key,
  first_name text,
  last_name text,
  sex char(1),
  age integer,
  price double,
  start_date date,
  gift text
);

insert into batman values (1, 'Alicja', 'Rogal', 'F', 16, 100.25,'2020-01-02', 'rower' );
insert into batman values (2, 'Iwona', 'Kowalska', 'F', 33, 56.58, '2020-01-03', 'komputer');
insert into batman values (3, 'Igor', 'Kowalski', 'M', 50, 68.00, '2020-01-04', 'karty');
insert into batman values (4, 'Kamil', 'Juszczak', 'M', 50, 40.87, '2020-01-05', 'piłka'); 
insert into batman values (5, 'Konrad', 'Kowal', 'M', 18, 32.63, '2020-01-06', 'herbata' );
insert into batman values (6, 'Iwona', 'Feniks', 'F', 35, 78.98, '2020-01-07', 'okno' );
insert into batman values (7, 'Robert', 'Lew', 'M', 40, 120.32, '2020-01-08', 'drzwi');
insert into batman values (8, 'Tomasz', 'Nowak', 'M', 60, 150.00, '2020-01-09', 'korona');
insert into batman values (9, 'Aldona', 'Buk', NULL, NULL, 121.25, '2020-01-10', 'wycieczka');

-- a
select year(start_date) as rok, month(start_date) as miesiac, day(start_date) as dzien from batman;

-- b
select start_date, adddate(start_date, interval 3 day) as final_date from batman;

-- c
select curdate();

-- d
select monthname(curdate());

-- e
select start_date, 
weekofyear(start_date) as numer_tygodnia, 
monthname(start_date) as nazwa_miesiaca, 
quarter(start_date) as kwartal, 
dayofyear(start_date) as dzien_w_roku 
from batman;