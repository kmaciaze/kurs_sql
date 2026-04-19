SET SQL_SAFE_UPDATES = 0;

-- 1. Tworzenie bazy
CREATE DATABASE Baza_Pracownicy;
USE Baza_Pracownicy;

-- 2. Tworzenie tabeli
CREATE TABLE Pracownicy (
    ID INT PRIMARY KEY NOT NULL,
    Imie TEXT,
    Nazwisko TEXT,
    Wiek INT,
    Kurs TEXT
);

-- 3. Uzupelnienie danymi z zalacznika
INSERT INTO Pracownicy (ID, Imie, Nazwisko, Wiek, Kurs) VALUES
(1, 'Anna', 'NOWAK', 34, 'DS.'),
(2, 'Roman', 'KOWALSKI', 42, 'DS.'),
(3, 'Tomasz', 'WIŚNIEWSKI', 33, 'DS.'),
(4, 'Agata', 'WÓJCIK', 43, 'DS.'),
(5, 'Elżbieta', 'KOWALCZYK', 28, 'Java'),
(6, 'Przemysław', 'KAMIŃSKI', 34, 'Java'),
(7, 'Robert', 'LEWANDOWSKI', 35, 'Java'),
(8, 'Radosław', 'ZIELIŃSKI', 38, 'Java'),
(9, 'Anna', 'WOŹNIAK', 26, 'Java'),
(10, 'Robert', 'SZYMAŃSKI', 34, 'Java'),
(11, 'Radosław', 'DĄBROWSKI', 35, 'UX'),
(12, 'Robert', 'KOZŁOWSKI', 38, 'UX'),
(13, 'Joanna', 'MAZUR', 26, 'UX'),
(14, 'Radosław', 'JANKOWSKI', 27, 'UX'),
(15, 'Patryk', 'LEWANDOWSKI', 28, 'Tester'),
(16, 'Patryk', 'ZIELIŃSKI', 28, 'Tester'),
(17, 'Andrzej', 'WOŹNIAK', 31, 'Tester'),
(18, 'Andrzej', 'LEWANDOWSKI', 30, 'Tester'),
(19, 'Roman', 'ZIELIŃSKI', 39, 'Tester'),
(20, 'Ewa', 'WOŹNIAK', 31, 'Tester');

-- 4. Wyświetlenie listy pracowników starszych niż 30 lat
SELECT * FROM Pracownicy WHERE Wiek > 30;

-- 5. Wyświetlenie listy pracowników młodszych niż 30 lat
SELECT * FROM Pracownicy WHERE Wiek < 30;

-- 6. Wyświetlenie listy pracowników, których nazwisko zaczyna się na „K” i kończy na „ki”
SELECT * FROM Pracownicy WHERE Nazwisko LIKE 'K%SKI';

-- 7. Zmiana nazwy kolumny „ID” na „NR”
ALTER TABLE Pracownicy RENAME COLUMN ID TO NR;

-- 8. Wyświetlenie pozycji, w których są puste pola
SELECT * FROM Pracownicy 
WHERE NR IS NULL 
   OR Imie IS NULL 
   OR Nazwisko IS NULL 
   OR Wiek IS NULL 
   OR Kurs IS NULL;

-- 9. Wyświetlenie wszystkich pracowników z kursu „Java”
SELECT * FROM Pracownicy WHERE Kurs = 'Java';
