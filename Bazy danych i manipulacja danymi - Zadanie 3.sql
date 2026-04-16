-- 1. Założenie bazy
CREATE DATABASE Lista_Prezentów;
USE Lista_Prezentów;

-- 2. Założenie tabeli z constraints
CREATE TABLE Prezenty_2020 (
    ID INT PRIMARY KEY NOT NULL,
    Imie_obdarowanego TEXT NOT NULL,
    Pomysl_na_prezent TEXT NOT NULL,
    Cena INT NOT NULL,
    Miejsce_zakupu TEXT NOT NULL
);

-- 3. Wprowadzenie danych
INSERT INTO Prezenty_2020 (ID, Imie_obdarowanego, Pomysl_na_prezent, Cena, Miejsce_zakupu)
VALUES
(1, 'Marek', 'Książka', 50, 'Empik'),
(2, 'Kasia', 'Perfumy', 200, 'Sephora'),
(3, 'Tomek', 'Słuchawki', 150, 'Media Expert'),
(4, 'Ania', 'Zegarek', 300, 'Apart'),
(5, 'Paweł', 'Gra planszowa', 100, 'Allegro');

-- 4. Sprawdzenie wyświetlania
SELECT * FROM Prezenty_2020;

-- 5. Zmiana pomysłu na prezent dla pozycji 3 na "Rower"
UPDATE Prezenty_2020 
SET Pomysl_na_prezent = 'Rower' 
WHERE ID = 3;

-- 6. Sprawdzenie tylko pozycji 3
SELECT * FROM Prezenty_2020 WHERE ID = 3;

-- 7. Usuwanie pozycji 1 (DELETE)
DELETE FROM Prezenty_2020 WHERE ID = 1;

-- 8. Sprawdzenie wszystkich pozycji po usunięciu
SELECT * FROM Prezenty_2020;

-- 9. Usuwanie kolumny Miejsce zakupu (ALTER TABLE ... DROP COLUMN)
ALTER TABLE Prezenty_2020 DROP COLUMN Miejsce_zakupu;

-- 10. Wyświetlenie imienia dla pozycji 3, 4, 5
SELECT Imie_obdarowanego FROM Prezenty_2020 WHERE ID IN (3, 4, 5);