INSERT INTO schroniska(nazwa, adres, telefon, email)
VALUES ('Schronisko Poznań', 'Poznań, ul. Zwierzęca 12', '123456789', 'kontakt@poznan.pl');

INSERT INTO pomieszczenia(typ, budynek, ilosc_kojcy, id_schroniska)
VALUES ('Kociarnia', 'A', 30, 1);
INSERT INTO pomieszczenia(typ, budynek, ilosc_kojcy, id_schroniska)
VALUES ('Psiarnia', 'A', 20, 1);
INSERT INTO pomieszczenia(typ, budynek, ilosc_kojcy, id_schroniska)
VALUES ('Magazyn', 'B', 0, 1);

INSERT INTO opinie(pseudonim, tresc, data, id_schroniska)
VALUES ('Michał', 'Adopcja przebiegła sprawnie.', SYSDATE-10, 1);
INSERT INTO opinie(pseudonim, tresc, data, id_schroniska)
VALUES ('Julia', 'Bardzo miła obsługa i zadbane zwierzęta.', SYSDATE-3, 1);
INSERT INTO opinie(pseudonim, tresc, data, id_schroniska)
VALUES ('Szymon', 'Świetna opieka nad zwierzętami.', SYSDATE-60, 1);

INSERT INTO pracownicy(pesel, imie, nazwisko, etat, wynagrodzenie, data_ur, data_zatr, telefon, id_schroniska)
VALUES ('90010112345', 'Anna', 'Kowalska', 'opiekun', 5000, DATE '1990-01-01', SYSDATE-200, '555111222', 1);
INSERT INTO pracownicy(pesel, imie, nazwisko, etat, wynagrodzenie, data_ur, data_zatr, telefon, id_schroniska)
VALUES ('85050567890', 'Marta', 'Nowak', 'dyrektor', 7200, DATE '1985-05-12', SYSDATE-500, '333444555', 1);

INSERT INTO wolontariusze(pesel, imie, nazwisko, data_ur, telefon, id_schroniska)
VALUES ('02020212345', 'Marta', 'Lis', DATE '2002-02-02', '666777888', 1);
INSERT INTO wolontariusze(pesel, imie, nazwisko, data_ur, telefon, id_schroniska)
VALUES ('03030354321', 'Piotr', 'Wilk', DATE '2003-03-03', '666111222', 1);

INSERT INTO zasoby(typ, nazwa, ilosc, id_schroniska)
VALUES ('Karma', 'Karma dla psów', 120, 1);
INSERT INTO zasoby(typ, nazwa, ilosc, id_schroniska)
VALUES ('Środki czystości', 'Płyn dezynfekujący', 40, 1);
INSERT INTO zasoby(typ, nazwa, ilosc, id_schroniska)
VALUES ('Karma', 'Karma dla kotów', 80, 1);

INSERT INTO zwierzeta(imie, gatunek, data_ur, id_pomieszczenia)
VALUES ('Klops', 'Pies', DATE '2019-08-15', 20);
INSERT INTO zwierzeta(imie, gatunek, data_ur, id_pomieszczenia)
VALUES ('Simba', 'Pies', DATE '2023-07-11', 20);
INSERT INTO zwierzeta(imie, gatunek, data_ur, id_pomieszczenia)
VALUES ('Stefan', 'Kot', DATE '2022-09-13', 10);
INSERT INTO zwierzeta(imie, gatunek, data_ur, id_pomieszczenia)
VALUES ('Puszek', 'Kot', DATE '2018-01-30', 10);

INSERT INTO zdjecia(sciezka, id_zwierz)
VALUES ('/img/klops1.jpg', 1);
INSERT INTO zdjecia(sciezka, id_zwierz)
VALUES ('/img/simba1.jpg', 2);
INSERT INTO zdjecia(sciezka, id_zwierz)
VALUES ('/img/stefan1.jpg', 3);
INSERT INTO zdjecia(sciezka, id_zwierz)
VALUES ('/img/puszek1.jpg', 4);

INSERT INTO szczepienia(choroba, status, id_zwierz)
VALUES ('Wścieklizna', 'N', 1);
INSERT INTO szczepienia(choroba, status, id_zwierz)
VALUES ('Wścieklizna', 'T', 2);
INSERT INTO szczepienia(choroba, status, id_zwierz)
VALUES ('Wścieklizna', 'N', 3);
INSERT INTO szczepienia(choroba, status, id_zwierz)
VALUES ('Wścieklizna', 'T', 4);

INSERT INTO weterynarze(imie, nazwisko, adres, telefon, klinika)
VALUES ('Karol', 'Ziąb', 'Poznań, ul. Leśna 5', '345234123', 'BestVet');
INSERT INTO weterynarze(imie, nazwisko, adres, telefon, klinika)
VALUES ('Karolina', 'Zięba', 'Poznań, ul. Polna 8', '112233445', 'MyPet');

INSERT INTO specjalizacje(id_wet, gatunek)
VALUES (1, 'Pies');
INSERT INTO specjalizacje(id_wet, gatunek)
VALUES (1, 'Kot');
INSERT INTO specjalizacje(id_wet, gatunek)
VALUES (2, 'Kot');

INSERT INTO zabiegi(data, status, opis, id_zwierz, id_wet)
VALUES (SYSDATE - 12, 'Z', 'Kontrola', 3, 1);
INSERT INTO zabiegi(data, status, opis, id_zwierz, id_wet)
VALUES (SYSDATE - 23, 'N', 'Zabieg stomatologiczny', 1, 1);
INSERT INTO zabiegi(data, status, opis, id_zwierz, id_wet)
VALUES (SYSDATE - 32, 'Z', 'Sterylizacja', 3, 1);

INSERT INTO adoptujacy(pesel, imie, nazwisko, data_ur, telefon)
VALUES ('99010112345', 'Ewa', 'Nowak', DATE '1999-01-01', '133133133');
INSERT INTO adoptujacy(pesel, imie, nazwisko, data_ur, telefon)
VALUES ('88010154321', 'Jan', 'Kowalski', DATE '1990-01-01', '233244255');

INSERT INTO adopcje(status, pesel, id_zwierz)
VALUES ('N', NULL, 1);
INSERT INTO adopcje(status, pesel, id_zwierz)
VALUES ('N', NULL, 2);
INSERT INTO adopcje(status, pesel, id_zwierz)
VALUES ('N', NULL, 3);
INSERT INTO adopcje(data, status, pesel, id_zwierz)
VALUES (SYSDATE - 5, 'Z', '99010112345', 4);