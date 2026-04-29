-- 1. Tworzenie bazy
DROP DATABASE IF EXISTS Sklep_odziezowy;
CREATE DATABASE Sklep_odziezowy;
USE Sklep_odziezowy;

-- 2. Tabela producenci
CREATE TABLE Producenci (
    id_producenta INT PRIMARY KEY AUTO_INCREMENT,
    nazwa_producenta VARCHAR(50) NOT NULL,
    adres_producenta VARCHAR(100),
    nip_producenta CHAR(10) UNIQUE NOT NULL,
    data_podpisania_umowy DATE NOT NULL
);

-- 5. Tabela klienci 
CREATE TABLE Klienci (
    id_klienta INT PRIMARY KEY AUTO_INCREMENT,
    imie VARCHAR(30) NOT NULL,
    nazwisko VARCHAR(30) NOT NULL,
    adres VARCHAR(100)
);

-- 3. Tabela produkty
CREATE TABLE Produkty (
    id_produktu INT PRIMARY KEY AUTO_INCREMENT,
    id_producenta INT NOT NULL,
    nazwa_produktu VARCHAR(50) NOT NULL,
    opis_produktu TEXT,
    cena_netto_zakupu DECIMAL(10,2) NOT NULL CHECK (cena_netto_zakupu > 0),
    cena_brutto_zakupu DECIMAL(10,2) NOT NULL,
    cena_netto_sprzedazy DECIMAL(10,2) NOT NULL,
    cena_brutto_sprzedazy DECIMAL(10,2) NOT NULL,
    procent_vat_sprzedazy INT NOT NULL DEFAULT 23
);

-- 4. Tabela zamówienia
CREATE TABLE Zamowienia (
    id_zamowienia INT PRIMARY KEY AUTO_INCREMENT,
    id_klienta INT NOT NULL,
    id_produktu INT NOT NULL,
    data_zamowienia DATE NOT NULL
);

-- 6. Połączenie tabel kluczami obcymi
ALTER TABLE Produkty ADD FOREIGN KEY (id_producenta) REFERENCES Producenci(id_producenta);
ALTER TABLE Zamowienia ADD FOREIGN KEY (id_produktu) REFERENCES Produkty(id_produktu);
ALTER TABLE Zamowienia ADD FOREIGN KEY (id_klienta) REFERENCES Klienci(id_klienta);

-- 7. Uzupełnianie danych

-- producenci
INSERT INTO Producenci (nazwa_producenta, adres_producenta, nip_producenta, data_podpisania_umowy) VALUES
('Moda Polska sp. z o.o.', 'Warszawa, ul. Wilcza 10', '1234567890', '2020-05-10'),
('Textil Group', 'Łódź, ul. Piotrkowska 50', '9876543210', '2021-02-15'),
('TrendSetter', 'Wrocław, ul. Rynek 3', '1122334455', '2019-11-20'),
('Elegant Wear', 'Kraków, ul. Floriańska 2', '5544332211', '2022-08-01');

-- produkty
INSERT INTO Produkty 
(id_producenta, nazwa_produktu, opis_produktu, cena_netto_zakupu, cena_brutto_zakupu, cena_netto_sprzedazy, cena_brutto_sprzedazy, procent_vat_sprzedazy)
VALUES 
(1, 'sukienka maxi w kwiaty', 'długa sukienka w kwiatowe wzory, idealna na lato', 80.00, 98.40, 160.00, 196.80, 23),
(1, 'sukienka wieczorowa ', 'elegancka suknia z aksamitu w kolorze butelkowej zieleni', 120.00, 147.60, 250.00, 307.50, 23),
(2, 'jeansy slim', 'klasyczne dopasowane spodnie jeansowe z wysokim stanem', 60.00, 73.80, 120.00, 147.60, 23),
(2, 'spodnie materiałowe chino', 'wygodne spodnie typu chino, kolor beżowy', 55.00, 67.65, 110.00, 135.30, 23),
(3, 'koszula biała casual', 'bawełniana koszula o kroju regular', 45.00, 55.35, 89.99, 110.69, 23),
(3, 'koszula w kratę flanelowa', 'ciepła koszula idealna na jesienne dni', 50.00, 61.50, 99.00, 121.77, 23),
(1, 'spódnica plisowana midi', 'lekka spódnica za kolano w kolorze pudrowego różu', 40.00, 49.20, 79.00, 97.17, 23),
(4, 'marynarka oversize', 'modna marynarka o luźnym kroju, kolor szary', 90.00, 110.70, 189.00, 232.47, 23),
(4, 'płaszcz wełniany zimowy', 'ciepły płaszcz z domieszką wełny, krój dwurzędowy', 200.00, 246.00, 399.00, 490.77, 23),
(2, 'szorty denimowe', 'krótkie spodenki jeansowe z przetarciami', 35.00, 43.05, 69.00, 84.87, 23),
(4, 't-shirt basic biały', 'koszulka z czystej bawełny', 15.00, 18.45, 34.99, 43.04, 23),
(3, 't-shirt z nadrukiem rock', 'czarny t-shirt z nadrukiem', 18.00, 22.14, 45.00, 55.35, 23),
(3, 'bluza z kapturem hoodie', 'klasyczna bluza dresowa z kieszenią typu kangurka', 65.00, 79.95, 129.00, 158.67, 23),
(1, 'sweter oversize wełniany', 'miękki sweter o grubym splocie, kolor kremowy', 70.00, 86.10, 149.00, 183.27, 23),
(4, 'kurtka ramoneska eko-skóra', 'klasyczna czarna kurtka z eko-skóry', 85.00, 104.55, 179.00, 220.17, 23),
(2, 'pasek skórzany czarny', 'elegancki pasek ze srebrną klamrą', 25.00, 30.75, 59.00, 72.57, 23),
(4, 'torebka klasyczna shopper', 'duża torebka typu shopper', 75.00, 92.25, 155.00, 190.65, 23),
(2, 'legginsy sportowe', 'elastyczne legginsy do jogi i fitnessu', 30.00, 36.90, 65.00, 79.95, 23),
(1, 'kardigan długi szary', 'niezapinany sweter z kieszeniami', 55.00, 67.65, 109.00, 134.07, 23),
(3, 'top na ramiączkach jedwabny', 'elegancki top pod marynarkę', 40.00, 49.20, 89.00, 109.47, 23);

-- Klienci
INSERT INTO Klienci (imie, nazwisko, adres) VALUES
('Anna', 'Nowak', 'Gdańsk, ul. Morska 1'), ('Piotr', 'Kowalski', 'Warszawa, ul. Polna 5'),
('Marta', 'Wiśniewska', 'Kraków, ul. Leśna 2'), ('Jan', 'Zieliński', 'Łódź, ul. Główna 10'),
('Kasia', 'Wójcik', 'Wrocław, ul. Mała 3'), ('Tomasz', 'Mazur', 'Poznań, ul. Widokowa 8'),
('Ola', 'Kaczmarek', 'Szczecin, ul. Szeroka 1'), ('Michał', 'Król', 'Gdynia, ul. Nowa 22'),
('Ewa', 'Szymańska', 'Lublin, ul. Cicha 4'), ('Adam', 'Duda', 'Białystok, ul. Polna 7');

-- Zamówienia
INSERT INTO Zamowienia (id_klienta, id_produktu, data_zamowienia) VALUES
(1, 1, '2024-04-01'), (2, 3, '2024-04-01'), (3, 8, '2024-04-02'),
(4, 9, '2024-04-02'), (5, 5, '2024-04-03'), (1, 14, '2024-04-03'),
(7, 15, '2024-04-04'), (8, 2, '2024-04-04'), (9, 3, '2024-04-05'),
(10, 8, '2024-04-05');


-- 8. Wszystkie produkty od producenta nr 1
SELECT p.*, pr.nazwa_producenta, pr.adres_producenta, pr.nip_producenta
FROM Produkty p
JOIN Producenci pr ON p.id_producenta = pr.id_producenta
WHERE pr.id_producenta = 1;

-- 9. Sortowanie alfabetyczne po nazwie
SELECT * FROM Produkty WHERE id_producenta = 1 ORDER BY nazwa_produktu ASC;

-- 10. Średnia cena produktu od producenta nr 1
SELECT AVG(cena_brutto_sprzedazy) AS srednia_cena FROM Produkty WHERE id_producenta = 1;

-- 11. Grupy produktów:: tanie i drogie
SELECT nazwa_produktu, cena_brutto_sprzedazy,
CASE 
    WHEN cena_brutto_sprzedazy <= (SELECT AVG(cena_brutto_sprzedazy) FROM Produkty WHERE id_producenta = 1) THEN 'Tanie'
    ELSE 'Drogie'
END AS grupa
FROM Produkty 
WHERE id_producenta = 1;

-- 12. Produkty zamówione - tylko nazwa
SELECT DISTINCT p.nazwa_produktu 
FROM Produkty p
JOIN Zamowienia z ON p.id_produktu = z.id_produktu;

-- 13. Wszystkie produkty zamowione (limit 5)
SELECT p.* FROM Produkty p
JOIN Zamowienia z ON p.id_produktu = z.id_produktu
LIMIT 5;

-- 14. laczna wartosc wszystkich zamowien
SELECT SUM(p.cena_brutto_sprzedazy) AS laczna_wartosc_zamowien
FROM Zamowienia z
JOIN Produkty p ON z.id_produktu = p.id_produktu;

-- 15. zamowienie z nazwą produktu (od najstarszego do najnowszego)
SELECT z.id_zamowienia, p.nazwa_produktu, z.data_zamowienia
FROM Zamowienia z
JOIN Produkty p ON z.id_produktu = p.id_produktu
ORDER BY z.data_zamowienia ASC;

-- 16. Sprawdzenie brakujących danych
SELECT * FROM Produkty 
WHERE id_produktu IS NULL OR nazwa_produktu IS NULL OR id_producenta IS NULL;

-- 17. Produkt najczęściej sprzedawany
SELECT p.nazwa_produktu, p.cena_brutto_sprzedazy, COUNT(z.id_produktu) AS ilosc_sprzedanych
FROM Zamowienia z
JOIN Produkty p ON z.id_produktu = p.id_produktu
GROUP BY p.id_produktu
ORDER BY ilosc_sprzedanych DESC
LIMIT 1;

-- 18. Dzien z najwieksza liczba zamowien
SELECT data_zamowienia, COUNT(*) AS liczba_zamowien
FROM Zamowienia
GROUP BY data_zamowienia
ORDER BY liczba_zamowien DESC
LIMIT 1;