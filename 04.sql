
'''
Önkéntesek középiskolások szótárt készítenek, ehhez egy szotar nevű adatbázist használnak, amibe hozd létre a következő adattábát.
	• A szöveges mezők legyenek egységesen 50 karakter hosszúságúak.
	• Minden szöveges mezőt kötelező legyen kitölteni.
	• Az azon számláló mezőjét auto incrementtel oldd meg!
	• Helyes és helytelen alapértéke legyen 0
	
Tábla
	szolista(azon, magyar, angol, felvetel, helyes, helytelen)
		azon		a szópár azonosítója (számláló, kulcs)
		angol		a szópár nagol eleme, angol jelentése (szöveg)
		magyar		a szópár magyar eleme, a magyar jelentés ( szöveg)
		felvetel	a szópár adatbázisba kerülésének dátuma (dátum)
		helyes		a szópárt helyesnek minősítők száma (szám)
		helytelen	a szópárt helytelennek minősítők száma (szám)
	
'''


#1. 
DROP DATABASE IF EXISTS `szotar`;
CREATE DATABASE IF NOT EXISTS `szotar`;
USE `szotar`;

DROP TABLE IF EXISTS `szolista`;

CREATE TABLE `szolista` (
  `azon` INTEGER NOT NULL AUTO_INCREMENT, 
  `angol` VARCHAR(50), 
  `magyar` VARCHAR(50), 
  `felvetel` DATETIME, 
  `helyes` INTEGER, 
  `helytelen` INTEGER, 
  PRIMARY KEY (`azon`)
) ENGINE=innodb DEFAULT CHARSET=utf8;

SET autocommit=1;


#2. Vigyünk fel három sort az adattáblába az alábbi táblázat alapján:
'''
`azon`, `angol`, `magyar`, `felvetel`, `helyes`, `helytelen`
3203, 'mounting', 'nyél', '2004-04-24 00:00:00', 99, 20
3204, 'shiner', 'ezüstpénz', '2005-09-01 00:00:00', 49, 20
3205, 'recess', 'barlang', '2003-03-06 00:00:00', 68, 6
'''

INSERT INTO `szolista` (`azon`, `angol`, `magyar`, `felvetel`, `helyes`, `helytelen`) 
VALUES (3203, 'mounting', 'nyél', '2004-04-24 00:00:00', 99, 20);
INSERT INTO `szolista` (`azon`, `angol`, `magyar`, `felvetel`, `helyes`, `helytelen`) 
VALUES (3204, 'shiner', 'ezüstpénz', '2005-09-01 00:00:00', 49, 20);
INSERT INTO `szolista` (`azon`, `angol`, `magyar`, `felvetel`, `helyes`, `helytelen`) 
VALUES (3205, 'recess', 'barlang', '2003-03-06 00:00:00', 68, 6);

#3. Adjunk hozzá utólag egy evfolyam oszlopon szam típussal, ebben az adható meg, hogy melyik évfolyamon tanulták először ez a szó. 
# Állítsuk be 9-re ezt az értéket a „barlang” esetén!

alter table szolista add evfolyam int;
update szolista set evfolyam=9 where magyar='barlang';

select * from szolista;
-- -------------------------------------------------------------------------------------------------
-- -------------------------------------------------------------------------------------------------
#4. Importáljuk a kultura adatbázist a kultura.sql állomány segítségével és ellenőrizzük, hogy megfele-e minden az alábbiaknak!
'''
Az			számláló	Azonosító
Nev			szöveges	Tanuló neve
Osztaly		szöveges	Tanuló osztályjele
Színház     szám		Színházi látogatások száma
Mozi		szám		Mozi látogatások száma
Napilap     szöveges	Olvas-e napilapot
Konyvoldal	szám		Olvasott köynvek oldalszáma

'''

use kultura;
show tables;
desc kultforr;
select * from kultforr;


#5. Listázza ki azoknak a nevét és osztályát, akik voltak színházban vagy moziban és olvasnak napilapot! 
# Rendezzük osztály, azon belül név szerint ábécé sorrendbe!
select osztaly, nev , szinhaz, mozi, napilap  from kultforr where napilap='igen' and( Szinhaz<>0 or mozi<>0) order by osztaly, nev;
 
#6.Írassa ki lekérdezés segítségével, hogy hány olyan tanuló van, akinek a keresztneve „M” betűvel kezdődik!
select count(nev) from kultforr where nev like '% M%'; 

-- check:
select nev from kultforr where nev like '% M%';

#7. Adjunk hozzá egy napi oszlopot logikai típussal. Állítsuk be true-ra, ha a Napilap oszlopban 
# „Igen” szerepel és állítsuk be false-ra, ha „Nem” szerepel. Töröljük ki a Napilap oszlopot!

alter table kultforr add Napi bool;
update kultforr set Napi=true where Napilap='igen';
update kultforr set Napi=false where Napilap='nem';
desc kultforr;

# Töröljük az oszlopot: 
alter table kultforr drop Napilap;
select *from kultforr;

#8. Írassuk ki, hogy átlagosan hány könyv oldalt olvastak azok, akik napilapot is olvasnak.
select konyvoldal from kultforr where napi=true ;
select avg(konyvoldal) from kultforr where napi=true ;
select konyvoldal from kultforr where napilap='igen';
select avg(konyvoldal) from kultforr where napilap='igen';

#9. Írassuk ki azokat, akik legtöbbször voltak színházban!
select nev, Szinhaz  from kultforr where Szinhaz order by szinhaz desc limit 2;
- vagy:
select nev, Szinhaz from kultforr where Szinhaz =( select max(Szinhaz) from kultforr) ;

#10. Melyik osztályban vannak olyan tanulók, akik ugyanannyiszor voltak színházban, mint moziban!
select nev /*, mozi , Szinhaz */, Osztaly from kultforr where mozi=szinhaz order by osztaly;

select Osztaly from kultforr where mozi=szinhaz group by osztaly order by osztaly;

#11. Máté Margit rosszul diktálta be az olvasott könyvoldalainak a számát. Növeljük meg 200-zal ezt neki!
select * from kultforr where nev ='Máté Margit';
update kultforr set Konyvoldal=konyvoldal+200 where Nev ='Máté Margit';

#12. Írassuk ki, hogy hányan voltak színházban 1x, 2x, 3x…!
select count(Nev) as Hányan, szinhaz  from kultforr where Szinhaz <>0 group by szinhaz;

#13. Készítsen osztalyKonyv1000A nevű nézettáblát, amelyben az A-s tanulók kerüljenek, akik 1000 oldalnál többet olvastak!
select nev from kultforr where osztaly ='A' and KonyvOldal > 1000;
-- nézettábla:
CREATE VIEW osztalyKonyv1000A as select Nev FROM kultforr  where osztaly ='A' and KonyvOldal > 1000;
-- check: 
select * from osztalyKonyv1000A;

#14. Írassuk ki azon osztálytársakat, akik legalább annyiszor voltak színházban mint Albert Gyula!
select szinhaz from kultforr where nev ='Albert Gyula' ;
select nev, Szinhaz  from kultforr where Szinhaz >= (select szinhaz from kultforr where nev ='Albert Gyula');

