-- 1. Założenie bazy
CREATE DATABASE Lista_Pracowników;
USE Lista_Pracowników;

-- 2. Założenie tabeli z kolumnami i constraints
CREATE TABLE Pracownicy (
    ID INT PRIMARY KEY NOT NULL,
    Imie TEXT NOT NULL,
    Nazwisko TEXT NOT NULL,
    Stanowisko TEXT NOT NULL,
    Dzial TEXT NOT NULL
);

-- 3. Wprowadzenie danych kilku osób 
INSERT INTO Pracownicy (ID, Imie, Nazwisko, Stanowisko, Dzial)
VALUES
(1, 'Jan', 'Kowalski', 'Programista', 'IT'),
(2, 'Magda', 'Nowak', 'Księgowa', 'Finanse'),
(3, 'Mateusz', 'Lewandowski', 'Analityk', 'Marketing'),
(4, 'Anna', 'Zielińska', 'Rekruter', 'HR');

-- 4. Sprawdzenie wyświetlania
SELECT * FROM Pracownicy;

-- 5. Dodanie kolumny: Data zatrudnienia (ALTER TABLE)
ALTER TABLE Pracownicy ADD COLUMN Data_zatrudnienia DATE;

-- 6. Dodanie nowego pracownika z kompletem danych
INSERT INTO Pracownicy (ID, Imie, Nazwisko, Stanowisko, Dzial, Data_zatrudnienia)
VALUES (5, 'Krzysztof', 'Jankowski', 'Manager', 'Sprzedaż', '2026-04-01');

-- 7. Sprawdzenie, czy nowy pracownik jest na liście
SELECT * FROM Pracownicy;

-- 8. Uzupełnienie brakujących dat dla pracowników 
UPDATE Pracownicy SET Data_zatrudnienia = '2020-01-01' WHERE ID = 1;
UPDATE Pracownicy SET Data_zatrudnienia = '2021-05-15' WHERE ID = 2;
UPDATE Pracownicy SET Data_zatrudnienia = '2022-03-10' WHERE ID = 3;
UPDATE Pracownicy SET Data_zatrudnienia = '2023-11-20' WHERE ID = 4;

-- 9. Sprawdzenie, czy dane zostały zmienione
SELECT * FROM Pracownicy;