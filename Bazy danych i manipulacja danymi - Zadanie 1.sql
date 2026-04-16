CREATE DATABASE ProjektBiblioteka;
USE ProjektBiblioteka;

CREATE TABLE Biblioteczka (
    ID INT PRIMARY KEY,
    Tytul TEXT,
    Data_zakupu DATE
);

INSERT INTO Biblioteczka (ID, Tytul, Data_zakupu) 
VALUES (1, 'Harry Potter i Kamień Filozoficzny', '2024-01-15');

SELECT * FROM Biblioteczka;

INSERT INTO Biblioteczka (ID, Tytul, Data_zakupu) VALUES 
(2, 'Diuna', '2024-02-10'),
(3, 'Kamienie na szaniec', '2024-03-05');

UPDATE Biblioteczka 
SET Tytul = 'Krzyżacy' 
WHERE ID = 1;

ALTER TABLE Biblioteczka ADD COLUMN Autor TEXT;

UPDATE Biblioteczka SET Autor = 'Henryk Sienkiewicz' WHERE ID = 1;
UPDATE Biblioteczka SET Autor = 'Frank Herbert' WHERE ID = 2;
UPDATE Biblioteczka SET Autor = 'Aleksander Kamiński' WHERE ID = 3;

DELETE FROM Biblioteczka WHERE ID IN (2, 3);

SELECT Autor FROM Biblioteczka;