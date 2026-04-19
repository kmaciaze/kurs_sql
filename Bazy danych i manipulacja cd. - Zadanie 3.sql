-- tworzenie bazy
CREATE DATABASE IF NOT EXISTS Baza_Pracownicy;
USE Baza_Pracownicy;

-- tworzenie tabeli
CREATE TABLE Pracownicy (
    ID INT PRIMARY KEY NOT NULL,
    Imie TEXT,
    Nazwisko TEXT,
    Wiek INT,
    Kurs TEXT
);

-- uzupelnianie danymi
INSERT INTO Pracownicy (ID, Imie, Nazwisko, Wiek, Kurs) VALUES
(1, 'Anna', 'NOWAK', 34, 'DS.'),
(2, 'Roman', 'KOWALSKI', 42, 'DS.'),
(3, 'Tomasz', 'WIŚNIEWSKI', 33, 'DS.'),
(4, 'Agata', 'WÓJCIK', 43, 'DS.'),
(5, 'Elżbieta', 'KOWALCZYK', 28, 'Java'),
(6, 'Przemysław', 'KOWALCZYK', 34, 'Java'),
(7, 'Robert', 'kOWALCZYK', 35, 'Java'),
(8, 'Radosław', 'ZIELIŃSKI', 38, 'Java'),
(9, NULL, 'WOŹNIAK', 26, 'Java'),
(10, 'Robert', 'SZYMAŃSKI', 34, 'Java'),
(11, 'Radosław', 'DĄBROWSKI', 35, NULL),
(12, 'Robert', 'KOZŁOWSKI', NULL, 'UX'),
(13, 'Joanna', 'MAZUR', 26, 'UX'),
(14, 'Radosław', 'JANKOWSKI', 27, 'UX'),
(15, 'Patryk', 'LEWANDOWSKI', 28, 'Tester'),
(16, NULL, 'ZIELIŃSKI', 28, 'Tester'),
(17, 'Andrzej', 'WOŹNIAK', 31, 'Tester'),
(18, 'Andrzej', 'LEWANDOWSKI', 30, 'Tester'),
(19, 'Roman', 'KOWALCZYK', 39, 'Tester'),
(20, 'Ewa', 'WOŹNIAK', NULL, 'Tester');

-- pracownicy o nazwisku Kowalczyk
SELECT * FROM Pracownicy WHERE Nazwisko LIKE 'KOWALCZYK';

-- wiek miedzy 30 a 40 lat
SELECT * FROM Pracownicy WHERE Wiek BETWEEN 30 AND 40;

-- nazwisko nie zawiera "and"
SELECT * FROM Pracownicy WHERE Nazwisko NOT LIKE '%and%';

-- id od 1 do 7
SELECT * FROM Pracownicy WHERE ID BETWEEN 1 AND 7;

-- rekordy z brakami
SELECT * FROM Pracownicy 
WHERE Imie IS NULL 
   OR Nazwisko IS NULL 
   OR Wiek IS NULL 
   OR Kurs IS NULL;

-- pracownicy bez kursu
SELECT * FROM Pracownicy WHERE Kurs IS NULL;