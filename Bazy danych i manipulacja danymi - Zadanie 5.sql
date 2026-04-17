-- 1. Założenie bazy
CREATE DATABASE Moje_zainteresowania;
USE Moje_zainteresowania;

-- 2. Założenie tabeli z kolumnami
CREATE TABLE Zainteresowania (
    ID INT PRIMARY KEY,
    Nazwa TEXT NOT NULL,
    Opis TEXT NOT NULL,
    Data_realizacji DATE
);

-- 3. Wprowadzenie danych tylko dla nazwa i opis
INSERT INTO Zainteresowania (ID, Nazwa, Opis) VALUES
(1, 'Nauka języka koreańskiego', '15 minut dziennie'),
(2, 'Basen', 'Basen 2 razy w tygodniu'),
(3, 'Czytanie', 'Przeczytanie 2 książek miesięcznie'),
(4, 'Podróże', 'Wyjazd do Włoch'),
(5, 'Układanie puzzli', 'Ułożenie 3 zestawów w miesiącu');

-- 4. Sprawdzenie wyświetlania
SELECT * FROM Zainteresowania;

-- 5. Dodanie nowej pozycji z kompletem danych
INSERT INTO Zainteresowania (ID, Nazwa, Opis, Data_realizacji)
VALUES (6, 'Kino','Film The drama', '2026-04-10');

-- 6. Dodanie brakujących danych dla wiersza 4
UPDATE Zainteresowania 
SET Data_realizacji = '2026-03-24' 
WHERE ID = 4;

-- 7. Sprawdzenie wszystkich pozycji
SELECT * FROM Zainteresowania;

-- 8. Usuniecie wierszy, w których jakaś pozycja jest pusta
DELETE FROM Zainteresowania 
WHERE Data_realizacji IS NULL;

-- 9. Sprawdzenie końcowe
SELECT * FROM Zainteresowania;
