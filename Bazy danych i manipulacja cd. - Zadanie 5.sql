SET SQL_SAFE_UPDATES = 0;

-- korzystanie z istniejacej bazy danych
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
(4, 'Anna', NULL, 43, 'DS.'),
(5, 'Elżbieta', 'KOWALCZYK', NULL, 'Tester'),
(6, 'Anna', 'KOWALCZYK', NULL, 'Java'),
(7, 'Robert', 'KOWALCZYK', NULL, 'Java'),
(8, 'Radosław', 'ZIELIŃSKI', NULL, 'Java'),
(9, 'Robert', 'WOŹNIAK', NULL, 'Java'),
(10, 'Robert', 'SZYMAŃSKI', 34, 'Tester'),
(11, 'Radosław', 'DĄBROWSKI', 35, NULL),
(12, 'Robert', 'KOZŁOWSKI', NULL, 'UX'),
(13, 'Joanna', 'MAZUR', 26, 'UX'),
(14, 'Radosław', 'JANKOWSKI', 27, 'UX'),
(15, 'Patryk', 'LEWANDOWSKI', 28, NULL),
(16, NULL, 'ZIELIŃSKI', 28, NULL),
(17, 'Andrzej', 'WOŹNIAK', 31, NULL),
(18, 'Andrzej', 'LEWANDOWSKI', 30, NULL),
(19, 'Roman', 'KOWALCZYK', 39, NULL),
(20, 'Ewa', 'WOŹNIAK', 31, NULL);

-- wyswietlenie listy pracownikow wg kolumny imie
SELECT DISTINCT Imie FROM Pracownicy;

-- wyswietlenie listy pracowniow wg kolumny Naziwisko
SELECT DISTINCT Nazwisko FROM Pracownicy;

-- kursy osob o nazwisku Kowalczyk
SELECT Kurs FROM Pracownicy WHERE Nazwisko = 'KOWALCZYK';

-- brak danych o wieku
SELECT * FROM Pracownicy WHERE Wiek IS NULL;

-- wiek Patryka
SELECT Wiek FROM Pracownicy WHERE Imie = 'Patryk';

-- zmiana nazwy tabeli
ALTER TABLE Pracownicy RENAME TO Mentorzy;