-- 1. Założenie bazy
CREATE DATABASE School_Coding;
USE School_Coding;

-- 2. Założenie tabeli z kolumnami i constraints
CREATE TABLE Mentors (
    ID INT PRIMARY KEY NOT NULL,
    Imie TEXT NOT NULL,
    Nazwisko TEXT NOT NULL,
    Specjalizacja TEXT NOT NULL,
    Data_zatrudnienia DATE NOT NULL,
    Data_zwolnienia DATE NOT NULL
);

-- 3. Wprowadzenie danych (10 pozycji)
INSERT INTO Mentors (ID, Imie, Nazwisko, Specjalizacja, Data_zatrudnienia, Data_zwolnienia) 
VALUES
(1, 'Anna', 'Nowak', 'Python', '2020-01-01', '2023-12-31'),
(2, 'Piotr', 'Kowalski', 'Java', '2019-05-10', '2024-01-15'),
(3, 'Marta', 'Zielińska', 'SQL', '2021-03-20', '2023-10-10'),
(4, 'Łukasz', 'Wiśniewski', 'Frontend', '2022-06-01', '2024-02-01'),
(5, 'Ewa', 'Dąbrowska', 'Data Science', '2018-11-15', '2023-05-20'),
(6, 'Tomasz', 'Lewandowski', 'C++', '2020-09-01', '2024-03-12'),
(7, 'Kasia', 'Wójcik', 'UX Design', '2021-01-10', '2023-11-30'),
(8, 'Michał', 'Kamiński', 'DevOps', '2017-04-05', '2022-12-20'),
(9, 'Joanna', 'Jankowska', 'Testing', '2022-08-15', '2024-01-01'),
(10, 'Paweł', 'Mazur', 'Cybersecurity', '2019-12-01', '2023-08-15');

-- 4. Sprawdzenie wyświetlania
SELECT * FROM Mentors;

-- 5. Zmiana Nazwiska Mentora w pozycji nr 5
UPDATE Mentors 
SET Nazwisko = 'Woźniak' 
WHERE ID = 5;

-- 6. Sprawdzenie pozycji 5
SELECT * FROM Mentors WHERE ID = 5;

-- 7. Zmiana specjalizacji w pozycji 9
UPDATE Mentors 
SET Specjalizacja = 'Backend' 
WHERE ID = 9;

-- 8. Sprawdzenie pozycji 9
SELECT * FROM Mentors WHERE ID = 9;

-- 9. Dodanie kolumny Wynagrodzenie (z constraint NOT NULL)
ALTER TABLE Mentors ADD COLUMN Wynagrodzenie INT NOT NULL;

-- 10. Uzupełnienie wartości 1000 dla pozycji 1, 2, 3
UPDATE Mentors 
SET Wynagrodzenie = 1000 
WHERE ID IN (1, 2, 3);

-- 11. Wyświetlenie pozycji 1, 2, 3 i sprawdzenie poprawnosci danych
SELECT * FROM Mentors WHERE ID IN (1, 2, 3);