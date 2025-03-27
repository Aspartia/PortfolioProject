/*
 * Az adatbázis a Naprendszer égitesteinek (bolygóinak és holdjainak) néhány adatát 
 * (nevét, átlagos átmérőjét, felfedezőjét, felfedezésének évét valamint azt, hogy melyik égitest körül, milyen távolságban, milyen irányban kering)
 *  tartalmazza. A bolygók a Nap körül keringenek, a holdak más égitestek (a bolygók) körül. 
 * A direkt keringési irány a Földével azonos keringési irányt jelent. 
 * 4. Importálja adatbázist naprendszer néven a naprendszer.sql állomány segítségével és ellenőrizze a szerkezetét! 
 * A bolygohold tábla szerkezete a következő: 
	 * HOLKERING melyik égitest körül kering (szöveg) 
	 * ELNEVEZES az égitest (bolygó/hold) neve (szöveg), azonosító 
	 * TAVOLSAG milyen távolságban kering az adott égitest körül, ezer km egységben (szám) 
	 * DIREKTIRANY a Földdel egyező-e a keringésének az iránya (logikai) 
	 * ATMERO az égitest (bolygó/hold) átlagos átmérője (km egységben) (szám) 
	 * FELFEDEZO ki fedezte fel az égitestet (bolygót/holdat) (szöveg) 
	 * FELFEDEZESEVE melyik évben fedezték fel az égitestet (bolygót/holdat) (szám)
 * */
#4. Importálja adatbázist naprendszer néven a naprendszer.sql állomány segítségével és ellenőrizze a szerkezetét!

use naprendszer;
show tables;
desc bolygohold;
select * from bolygohold;

alter table bolygohold modify direktirany bool;
alter table bolygohold modify FelfedezesEve year default NULL; 
alter table bolygohold modify FelfedezesEve int default NULL; 
alter table bolygohold modify FelfedezesEve date; 

delete from bolygohold where holkering='Föld';

#5. Egészítse ki az adattáblát a Hold adataival!
INSERT INTO `bolygohold` (`HolKering`, `Elnevezes`, `Tavolsag`, `DirektIrany`, `Atmero`, `Felfedezo`, `FelfedezesEve`) 
values ('Föld', 'Hold', 384, 1, 3476, '---', '');

#6. Lekérdezés segítségével adja meg a Neptunusz és a Szaturnusz körül keringő holdak közül azoknak az összes adatát, amelyeket 1945 után fedeztek fel! 
# A lista név szerint legyen rendezett! 
select * from bolygohold where holkering = 'Szaturnusz' or holkering = 'Neptunusz' and year(felfedezeseve) > '1945' order by elnevezes;

#7. Írassuk ki, hogy hány „felfedező” szerepel az adatbázisban! 
select count(distinct felfedezo) from bolygohold;
-- check:
select distinct felfedezo from bolygohold;

#8. Lekérdezés készítésével határozza meg, hogy a Szaturnusz melyik két holdja kering a legközelebb a bolygóhoz! 
select holkering, elnevezes, tavolsag  from bolygohold where HolKering ='Szaturnusz' order by tavolsag limit 2; -- Pan, Atlas

#9. Lekérdezés készítésével adja meg, hány holdja van az egyes bolygóknak! Az eredmény megjelenítését a legtöbb holddal rendelkező bolygóval kezdje. 
# Ügyeljen arra, hogy a bolygók száma ne jelenjen meg a lekérdezésben! 
select holkering, count(elnevezes) from bolygohold group by holkering /* having count(Elnevezes)*/ order by count(Elnevezes) desc;

#10. Írassuk ki a Jupiter holdjainak az átlagos átmérőjét! 
select  avg(Atmero) from bolygohold where HolKering ='Jupiter';

#11. Irassuk ki, hogy hány olyan égitest van, aminek a neve „us” vagy „usz” ra végződik! 
select  count(elnevezes)  from bolygohold where right(elnevezes,3) = 'usz' or right(elnevezes,2) = 'us';
-- ell: 
select  elnevezes  from bolygohold where right(elnevezes,3) = 'usz' or right(elnevezes,2) = 'us';

#12. Lekérdezés segítségével bővítse az adatbázist egy új nézettáblával, amely csak a bolygók nevét, átmérőjét, Naptól való távolságát és felfedezésének évét tartalmazza. 
-- Az új nézettáblát bolygo néven hozza létre! 
CREATE VIEW bolygo as select elnevezes, atmero, tavolsag, felfedezeseve FROM bolygohold where holkering = 'Nap';
select * from bolygo;
-- ell:
select elnevezes, atmero, tavolsag, felfedezeseve from bolygohold where holkering = 'Nap';

#13. Mely holdak keringenek ugyanazon bolygó körül, amiknek nagyobb az átmérője mind a Belinda nevűnek!
-- a belinda nevű holdnál kellenek a nagyobb átmérőjűek, amik ugyanúgy az uranusz körül keringenek
select HolKering from bolygohold where elnevezes='Belinda';  -- Uranusz

-- összes amelyik az Uranusz körül kering
select holkering, elnevezes, Atmero from bolygohold where HolKering  = (select HolKering from bolygohold where elnevezes='Belinda');

-- nagyobbak a Belindánál:
select holkering, elnevezes, Atmero from bolygohold where HolKering  = (select HolKering from bolygohold where elnevezes='Belinda') 
having atmero > (select atmero from bolygohold where elnevezes='Belinda');






