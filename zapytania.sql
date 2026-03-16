INSERT INTO mieszkancy (imie,nazwisko,adres,telefon)
VALUES ("Sebastian","Walczewski","Witkowo",123456789)

INSERT INTO mieszkancy (imie,nazwisko)
VALUES ("Zbigniew","Nowak")

INSERT INTO pojazdy (marka,model,rejestracja)
VALUES ("Ferrari","F40","PGN540PO")

INSERT INTO pracownicy (imie,nazwisko,stanowisko,telefon)
VALUES ("Jan","Kowalski","kierownik",987654321)

INSERT INTO zlecenia (adres,data,id_pracownika,id_pojazdu)
VALUES ("Witkowo",2026-03-16,1,1)

INSERT INTO odpady (nazwa,typ,opis,id_zlecenia)
VALUES ("jabłko","bio","owoc",1)



UPDATE zlecenia
SET data = "2026-03-18"
WHERE id_zlecenia = 1



DELETE FROM mieszkancy
WHERE id_mieszkanca = 2



SELECT imie FROM mieszkancy
SELECT nazwa,typ FROM odpady
SELECT * FROM pracownicy



SELECT p.imie,p.nazwisko,z.adres,z.data FROM pracownicy p
JOIN zlecenia z on p.id_pracownika = z.id_pracownika

SELECT z.adres,z.data,o.nazwa,o.typ FROM zlecenia z
JOIN odpady o ON z.id_zlecenia = o.id_zlecenia