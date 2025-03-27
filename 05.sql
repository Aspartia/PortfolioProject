
/*Az adatbázis a Naprendszer égitesteinek (bolygóinak és holdjainak) néhány adatát 
 * (nevét, átlagos átmérőjét, felfedezőjét, felfedezésének évét valamint azt, hogy melyik égitest körül, milyen távolságban, milyen irányban kering) tartalmazza. 
 * A bolygók a Nap körül keringenek, a holdak más égitestek (a bolygók) körül. A direkt keringési irány a Földével azonos keringési irányt jelent. 
 * 1. Készítsen adatbázist naprendszer néven és ebbe az adattáblát bolygohold néven! 
 * A tábla szerkezete a következő: 
 * HOLKERING melyik égitest körül kering (szöveg) 
 * ELNEVEZES az égitest (bolygó/hold) neve (szöveg), 
 * azonosító TAVOLSAG milyen távolságban kering az adott égitest körül, ezer km egységben (szám) 
 * DIREKTIRANY a Földdel egyező-e a keringésének az iránya (logikai) 
 * ATMERO az égitest (bolygó/hold) átlagos átmérője (km egységben) (szám) 
 * FELFEDEZO ki fedezte fel az égitestet (bolygót/holdat) (szöveg) 
 * FELFEDEZESEVE melyik évben fedezték fel az égitestet (bolygót/holdat) (szám)
• A szöveges mezők legyenek egységesen 100 karakter hosszúságúak.
• Az átmérőt és a távolságadatot kötelező legyen kitölteni.
• A DIREKTIRANY alapértéke legyen true
*/

#1. Készítsen adatbázist naprendszer néven és ebbe az adattáblát bolygohold néven! 
DROP DATABASE IF EXISTS `naprendszer`;
CREATE DATABASE IF NOT EXISTS `naprendszer`;
USE `naprendszer`;


DROP TABLE IF EXISTS `bolygohold`;
CREATE TABLE IF NOT EXISTS `bolygohold` (
  `HOLKERING` varchar(100) default null,
	`ELNEVEZES` varchar(100) default null,
	`TAVOLSAG` int(11) NOT NULL, -- 1000 KM
	`DIREKTIRANY`BOOL default null,
	`ATMERO` int(11) NOT NULL,  -- km 
	`FELFEDEZO` varchar(100) default null,
	`FELFEDEZESEVE`int(11) default null,
  PRIMARY KEY  (`ELNEVEZES`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

#2. Egészítse ki az adattáblát a Hold adataival!
/*`HOLKERING`, `ELNEVEZES`, `TAVOLSAG`, `DIREKTIRANY`, `ATMERO`, `FELFEDEZO`,`FELFEDEZESEVE`
 * 'Föld', 'Hold', 384, true, 3476, null, null*/

INSERT INTO `bolygohold` (`HOLKERING`, `ELNEVEZES`, `TAVOLSAG`, `DIREKTIRANY`, `ATMERO`, `FELFEDEZO`,`FELFEDEZESEVE`) VALUES
	('Föld', 'Hold', 384, true, 3476, null, null);
	
use naprendszer;
show tables;
desc bolygohold;
select * from bolygohold;

-- ----------------------------------------------------------------------------------------
-- ----------------------------------------------------------------------------------------
#3 Az adatbázis egy csomagküldő szolgálat szállítási tervét tartalmazza.
# Feltételezzük, hogy a csomagok csak álló helyzetben szállíthatók.
# Oldjuk meg a következőket.
# A teszteléshez használd a csomagkuldo.sql állományból importált adatbázist!
/*
 * Ellenőrizd, amit kaptál, hogy helyes-e, ha szükséges módosítsd a szerkezetet!
Azon
	A csomag azonosítója (számláló, elsődleges kulcs)
Rogzites
	A szállítmány rögzítésének időpontja (dátum idővel)
Szallitas
	Az a dátum amikorra a szállítást előjegyezték (dátum)
Hosszusag
	A csomag hosszúsága centiméterben (szám)
Szelesseg
	A csomag szélessége centiméterben (szám)
Magassag
	A csomag magassága centiméterben (szám)
Tomeg
	A csomag tömege kilogrammban (valós szám)
 * */

use csomagkuldo;
show tables;
desc csomagok;
select * from csomagok;
alter table csomagok modify szallitas date;

-- https://www.w3schools.com/sql/sql_ref_mysql.asp

#4: Lekérdezés segítségével listázzuk ki a márciusban szállítandó csomagok azonosítóját, 
# tömegét és rögzítése időpontját, a rögzítés sorrendjében!
select azon,tomeg,rogzites from csomagok where month(szallitas)= 03 order by rogzites asc;

#5. Lekérdezés segítségével listázzuk ki a május 1-je előtt rögzített csomagok azonosítóját és 
# térfogatát köbméterben, térfogat szerint csökkenő sorrendben!
select azon, (hosszusag/100) *(szelesseg/100)*(magassag/100) as 'terfogat(m3)',rogzites from csomagok where (month(rogzites) and day(rogzites))<'05-01' order by 'terfogat(m3)' desc;

select azon, (hosszusag/100) *(szelesseg/100)*(magassag/100) as 'terfogat(m3)',rogzites from csomagok where rogzites< '2007-05-01' order by 'terfogat(m3)' desc;

select azon, (hosszusag/100) *(szelesseg/100)*(magassag/100) as 'terfogat(m3)',rogzites from csomagok where rogzites between '2007-03-11' and '2007-04-30' order by 'terfogat(m3)' desc;


#6. Naponta legfeljebb 250 kg csomag kiszállításra van kapacitás. Ennek ellenére előfordulhat, hogy egy napra mégis túl sok 
# küldemény van előjegyezve. Lekérdezés segítségével listázzuk ki a túljegyzett napokat. A lista jelenítse meg a szállítási napot és az összsúlyt!
select * from csomagok order by szallitas;
select szallitas, sum(tomeg) from csomagok group by szallitas order by szallitas;
select szallitas, sum(tomeg) from csomagok group by szallitas having sum(tomeg)<250 order by szallitas ;

#7. Egészítsük ki a táblázatot egy felulet oszloppal, mely valós számot tárolhat. Töltsük fel adattal, amely a csomag alapterületét tartalmazza!
alter table csomagok add column felulet double;
desc csomagok;						
update csomagok set Felulet = 2*((`Hosszusag`*`Szelesseg`)+(`Hosszusag`*`Magassag`)+(`Szelesseg`*`Magassag`));

-- check:
select * from csomagok;	

#8. A gépkocsi platója 2 négyzetméteres- Ha a csomagok alapterülete túllépi a másfél négyzetmétert, akkor külön eljárással kell azokat elhelyezni. 
# Gyújtsuk ki egy tulmeret nevű nézettáblába azokat a szállítási napokat, amikor a csomagok alapterülete meghaladja a másfél négyzetmétert.

CREATE VIEW tulmeret AS
SELECT szallitas /*, oszlop2, oszlop3...*/
FROM csomagok
WHERE felulet > 1.5; 

#9. Lekérdezéssel írassuk ki azt a legkésőbbi szállítási időpontot, amit júliusban rögzítettek.
select szallitas, rogzites from csomagok where month(rogzites) ='07' order by szallitas desc;

select max(szallitas), rogzites from csomagok where month(rogzites) ='07';

#10. Készíts el egy legnehezebb táblát, amibe a 10 legnehezebb csomag kerüljön!

CREATE VIEW legnehezebb as select tomeg FROM csomagok order by tomeg desc limit 10;

select * from legnehezebb;

#11. Írassuk ki, hogy havonként hány szállítás lesz!
select  month(szallitas), count(szallitas) from csomagok group by month(szallitas) having count(szallitas);
-- check: 
select szallitas from csomagok  order by szallitas; 

-- -------------------------------------------------------------------------------------------------------------------------------------------------------
-- -------------------------------------------------------------------------------------------------------------------------------------------------------
/*A múlt század második felében az ember meghódította a világűrt is. 
 * Az adatbázis küldetések és az űrhajósok adatait tartalmazza. Másold fel a kapott adatbázist a gépedre.*/

/*URHAJOS (i,d nev, orszag, nem, szulev, urido)
 * id  -  Az űrhajós azonosítója (szám), ez a kulcs
 * nev	- Az űrhajós neve ( szöveg)
 * orszag - Az űrhajós által képvislet ország az első kilövésekor (szöveg).
 * nem    - Az űrhajós neme ( szöveg)  F , N
 * szulev - Az űrhajós születési éve ( szám)
 * urido  - Az űrhajós által az űrben töltött öszses idő (szöveg)
 * 
 * 
 * repules (urhajosid, kuldetesid)
 * urhajosid   - Az űrhajós azonosítója (szám), ez a kulcs
 * kuldetesid  - A küldetés azonosítója (szám), ez a kulcs
 * 
 * 
 * kuldetes (id, megnevezes, kezdet ,veg)
 * id         - A küldetés azonosítója (szám), ez a kulcs
 * megnevezes - A küldetés hivatalos neve (szöveg)
 * kezdet	  - A küldetés kezedetének dátuma (dátum)
 * veg   	  - A küldetés befejezésének dátuma ( dátum)
 * 
 * */


use asztronauta;
show tables;
desc kuldetes;
desc repules;
desc urhajos; -- ellenőrizzük hogy jó-e adattípus (int, double, etc) 
select * from repules;
select * from urhajos;

# 12. Ellenőrizzük az adatbázis, hogy megfelel-e a fentieknek, ha nem akkor végezzük el a szükséges módosításokat!
# A továbbiakban ha szükséges, akkor join-t használjunk!
select * from kuldetes;
alter table kuldetes modify kezdet date; 
alter table kuldetes modify veg date;

-- alaplekérdezés
select * from kuldetes  join repules on kuldetes.id = repules.kuldetesid  join urhajos on repules.urhajosid =urhajos.id ;
select * from repules join urhajos on urhajos.id = repules.urhajosid join kuldetes on kuldetes.id = repules.kuldetesid;


# 13. Egy Fehér Anett hölgy az állítja, hogy sikeres űrutazást hajtott végre. 
# A magyar hölgy 1973-ban született és 10 percet volt a világűrben! rögzítsük adatait az űrhajós táblába!
select * from urhajos;
insert into urhajos values(570, "Fehér Anett", "HUN", "N", 1973,"T000:00:10");
-- vagy: 
INSERT INTO `urhajos` (`id`, `nev`, `orszag`, `nem`, `szulev`, `urido`) values (570, 'Fehér Anett', 'HUN', 'N', 1973, 'T000:00:10');
   
update urhajos set id=562 where nev ='Fehér Anett';

# 14. Írassuk ki, hogy hány ország küldött űrhajóst!
select count(distinct orszag) from urhajos;

# 15.* Előfordult, hogy egy küldetés résztvevői a karácsonyt az űrben ünnepelték.
# Készítsen lekérdezést, amely megadja ezen küldetések megnevezését és azt, hogy milyen hosszúak voltak, azaz hány napig tartottak!
select megnevezes, datediff(kuldetes.veg, kuldetes.kezdet) as 'idotartam', kezdet,veg from kuldetes join repules on kuldetes.id = repules.kuldetesid  join urhajos on repules.urhajosid =urhajos.id
		where ( month(kezdet) and day(kezdet) <= '12-24') and (month(veg) and day(veg) >= '12-26') and year(veg) = year(kezdet);


# 16. Írassuk ki a leghosszabb küldetés űrhajósainak adatait! Azoknak kell a neve, akik a legtöbb időt töltötték az űrben.
select urhajos.nev, urhajos.id, urhajos.orszag , urhajos.nem, datediff(kuldetes.veg,kuldetes.kezdet) as 'idotartam' from kuldetes join repules on kuldetes.id = repules.kuldetesid  join urhajos on repules.urhajosid =urhajos.id 
 WHERE DATEDIFF(kuldetes.veg, kuldetes.kezdet) = (SELECT MAX(DATEDIFF(veg, kezdet)) FROM kuldetes);

-- limittel
select urhajos.nev, urhajos.id, urhajos.orszag , urhajos.nem, datediff(kuldetes.veg,kuldetes.kezdet) from kuldetes join repules on kuldetes.id = repules.kuldetesid  join urhajos on repules.urhajosid =urhajos.id 
 order by datediff(kuldetes.veg,kuldetes.kezdet) desc limit 2;

-- allekérdezés:
select urhajos.nev, urhajos.id, urhajos.orszag , urhajos.nem, datediff(kuldetes.veg,kuldetes.kezdet) from kuldetes join repules on kuldetes.id = repules.kuldetesid  join urhajos on repules.urhajosid =urhajos.id 
where datediff(kuldetes.veg,kuldetes.kezdet) = ( select max(datediff(kuldetes.veg,kuldetes.kezdet)) from kuldetes join repules on kuldetes.id = repules.kuldetesid  join urhajos on repules.urhajosid =urhajos.id )
order by datediff(kuldetes.veg,kuldetes.kezdet) desc;


# 17. Írassuk ki az összes(!) űrhajóst a küldetéseikkel együtt. A név akkor is jelenjen meg, ha a küldetés még nem lett rögzítve csak az űrhajós neve!
select urhajos.nev, kuldetes.megnevezes from urhajos left join repules on repules.urhajosid = urhajos.id left join kuldetes on kuldetes.id = repules.kuldetesid;


# 18. Írassuk ki hogy hány olyan hölgy volt, akik az űrben pezsgőztek szilveszterkor?
-- a kezdet évének < mint az vég évének.
select count(1) from kuldetes join repules on kuldetes.id = repules.kuldetesid  join urhajos on repules.urhajosid =urhajos.id 
where urhajos.nem ='N'  and year(kuldetes.kezdet)<year(kuldetes.veg) having count(1);


# 19. Írassuk ki azon űrhajósokat, akik 1-nél többször voltak a világűrben!
select urhajos.nev, count(kuldetes.megnevezes) from kuldetes join repules on kuldetes.id = repules.kuldetesid  join urhajos on repules.urhajosid =urhajos.id 
group by urhajos.nev having count(kuldetes.megnevezes)>1 order by count(kuldetes.megnevezes);


#Hány űrhajós vett részt az egyes küldetéseken:
select kuldetes.megnevezes, count(urhajos.nev) from kuldetes join repules on kuldetes.id = repules.kuldetesid  join urhajos on repules.urhajosid =urhajos.id 
group by urhajos.nev ; 

# 20. Kik voltak még ugyanabban az évben a világűrben mint az orosz Valeri Kubasov?
-- Kubasov ekkor votl az űrben: 1969, 1975, 1980
select kuldetes.kezdet, kuldetes.veg, urhajos.nev from kuldetes join repules on kuldetes.id = repules.kuldetesid  join urhajos on repules.urhajosid =urhajos.id 
where urhajos.nev ='Valeri Kubasov';

select urhajos.nev, kuldetes.kezdet from kuldetes join repules on kuldetes.id = repules.kuldetesid  join urhajos on repules.urhajosid =urhajos.id
where kuldetes.kezdet in (select kuldetes.kezdet from kuldetes join repules on kuldetes.id = repules.kuldetesid  join urhajos on repules.urhajosid =urhajos.id 
where urhajos.nev ='Valeri Kubasov') and urhajos.nev <> 'Valeri Kubasov' order by kuldetes.kezdet ;


# 21. Készítsen lekérdezést, amelyben felsorolja azoknak a küldetéseknek a nevét, amelyben legénység tagjai között férfi és nő is volt!
SELECT DISTINCT k.megnevezes, u1.nem
FROM kuldetes k
JOIN repules r1 ON k.id = r1.kuldetesid
JOIN urhajos u1 ON r1.urhajosid = u1.id
WHERE 
    EXISTS (
        SELECT 1 
        FROM repules r2 
        JOIN urhajos u2 ON r2.urhajosid = u2.id
        WHERE r2.kuldetesid = k.id AND u2.nem = 'f'
    )
    AND EXISTS (
        SELECT 1 
        FROM repules r3 
        JOIN urhajos u3 ON r3.urhajosid = u3.id
        WHERE r3.kuldetesid = k.id AND u3.nem = 'n'
    );











