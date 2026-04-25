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
select concat(first_name, ' ', last_name) as Pracownik from batman;

-- b
select concat(gift, ' - cena: ', price) as cennik from batman;

-- c
select concat(first_name, ' ', last_name, ' - ', gift, ' - cena: ', price) as cennik_osobowy from batman;

-- d
select upper(gift) from batman;

-- e
select lower(first_name) from batman;

-- f
select last_name, length(last_name) as dlugosc from batman;

-- g
select left(first_name, 2) from batman;

-- h
select first_name, last_name, 
lower(concat(left(first_name, 1), left(last_name, 3))) as login 
from batman;