SET SQL_SAFE_UPDATES = 0;

-- korzystanie z istniejacej bazy
USE Baza_Pracownicy;
DROP TABLE IF EXISTS Pracownicy;

-- tworzenie tabeli
CREATE TABLE Pracownicy (
    ID INT PRIMARY KEY NOT NULL,
    Imie TEXT,
    Nazwisko TEXT,
    Wiek INT,
    Kurs TEXT
);

-- uzupelnianie danych
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
(20, 'Ewa', 'WOŹNIAK', 31, 'Tester');

-- tylko pracownicy o imieniu Anna
SELECT * FROM Pracownicy WHERE Imie = 'Anna';

-- braki w kolumnie imie
SELECT * FROM Pracownicy WHERE Imie IS NULL;

-- kursy osob miedzy 30 a 40 lat
SELECT Kurs FROM Pracownicy WHERE Wiek BETWEEN 30 AND 40;

-- wiek osob z id 1 do 7
SELECT Wiek FROM Pracownicy WHERE ID BETWEEN 1 AND 7;

-- brak danych w kolumnie wiek
SELECT * FROM Pracownicy WHERE Wiek IS NULL;

-- zmiana nazwy kurs na szkolenie
ALTER TABLE Pracownicy RENAME COLUMN Kurs TO Szkolenie;