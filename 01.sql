
#1. Készítsen új adatbázist hangos néven!

/*
A két világháború között hazánkban virágzott a filmipar. A hangosfilm térhódításával egyre több, évente akár több tucat film is készült. Az adatbázis ezen filmek főbb adatait dolgozza fel.
Másolja fel a kapott hangos nevű adatbázist ellenőrizze a kapott szerkezet és oldja meg a következőket!

film(id, cim, gyartas, hossz, bemutato, youtube)
	id 		- A film azonosítója(szám), ez a kulcs
	cim 	- A film címe (zöveg), minden filmcím egyedi
	gyartas - Az az évszám, amikor a film készítését elkezdték (szám)
	hossz 	- A film percelben mért hossza (szám) - a Youtube-on fellelhető filmek esetében a videó egész percre kerekített hossza, hanem volt fellehető másutt sem, akkor üres.
	bemutato - A film bemutatójának dátuma(dátum) - ha nem volt fellelhető, akkor üres
	youtube  - A film az adatrögzítés pillanatában elérhető volt-e a Youtube-on (logikai)
	
	
	•A szöveges mezők legyenek egységesen 100 karakter hosszúságúak.
	•Minden szám mezőt kötelező legyen kitölteni.
	•Az id számláló mezőjét auto incrementtel oldd meg!
	•youtube alapértéke legyen false legyen
	*/


CREATE DATABASE IF NOT EXISTS `hangos`;
USE hangos;

DROP TABLE IF EXISTS `film`;

CREATE TABLE film (
  id INTEGER NOT NULL AUTO_INCREMENT,
  cim VARCHAR(100) NOT NULL UNIQUE, 
  gyartas INTEGER NOT NULL,   
  hossz INTEGER DEFAULT NULL, 
  bemutato DATE DEFAULT NULL,
  youtube BOOL DEFAULT FALSE,
  PRIMARY KEY (id)
);


#2. Vigyünk fel három sort az adattáblába az alábbi táblázat alapján:
'''
id,  cim, 				gyartas, hossz, bemutato, youtube
40, 'Az ellopott szerda', 1933, 73, '1933-12-29', true
41, 'Elnémult harangok', 1940, 91, '1941-02-27', false
43, 'Erdélyi kastély', 1940, 71, '1940-03-07', true
'''
INSERT INTO film (id, cim, gyartas, hossz, bemutato, youtube) 
VALUES (40, 'Az ellopott szerda', 1933, 73, '1933-12-29', true);
INSERT INTO film (id, cim, gyartas, hossz, bemutato, youtube) 
VALUES (41, 'Elnémult harangok', 1940, 91, '1941-02-27', false);
INSERT INTO film (id, cim, gyartas, hossz, bemutato, youtube) 
VALUES (43, 'Erdélyi kastély', 1940, 71, '1940-03-07', true);

-- Check
select * from film;


#3. Adjunk hozzá utólag egy marlatott oszlopot logikai típussal, ebben az adható meg, hogy láttuk-e a filmet. 
# Állítsuk be igazra „Az ellopott szerda” filmre!

alter table film add marlatott bool;
update film set marlatott=true where cim='Az ellopott szerda';

-- ------------------------------------------------------------------------------------------------------
-- ------------------------------------------------------------------------------------------------------
#4. Importáljuk a si adatbázist a si.sql állomány segítségével és ellenőrizzük, hogy megfele-e minden az alábbiaknak!
'''
Azon			számláló		Azonosító
Nev				szöveges		Sípálya neve
hegyseg			szöveges		Hegység ,ahol a sípálya található
teteje			egész szám		Sípálya teteje (méter)
alja			egész szám		Sípálya alja (méter)
hossza     		egész szám		Sípálya hossza

''' 

use si;
show tables;
desc sipalya ;

select * from sipalya;

#5. Listázza ki azoknak a pályák neveit, amik a Bükkben és a Pilisben találhatók, 
-- a pályák alja 400 méter feletti legyen! 
-- Rendezzük hegység neve szerint, azon belül név szerint ábécé sorrendbe!
select hegyseg, nev, hossza from sipalya where (hegyseg ='Bükk' or hegyseg='Pilis') and alja > 400 order by hegyseg, nev;


#6. Írassa ki lekérdezés segítségével, hogy hány olyan pálya van, aminek a hossza a 500 és 700 méter közötti!
select count(nev) from sipalya where alja between 500 and 700;
select nev, hossza from sipalya where hossza >= 500 and hossza <=700;
-- check: 
select nev, alja from sipalya where alja between 500 and 700;

#7. Írassuk ki, hogy hány hegységben van sípálya!
select distinct(hegyseg) from sipalya;
select count(distinct(hegyseg)) from sipalya;
-- check:
select hegyseg from sipalya order by hegyseg; -- 13

#8. Írassuk ki a leghosszabb sípálya(k) neveit!
select nev, hossza from sipalya order by hossza desc;
select max(hossza) from sipalya; -- subquery

select nev, hossza from sipalya where hossza = (select max(hossza) from sipalya);
-- check:
select nev, Hossza  from sipalya order by hossza desc;

#9. Írassuk ki azon pályák neveit, amik hosszabbak mint a magasságkülönbségük!
select * from sipalya;
select nev, hossza, (teteje-alja) as 'Magassagkulonbseg' from sipalya where hossza > (teteje-alja) ;
select nev  from sipalya where hossza > (teteje-alja);

-- check:
select nev, Teteje ,Alja ,Hossza, teteje-alja as magasságkül  from sipalya where hossza > (teteje-alja) ;

#10. Írassuk ki azon sípályákat, amik ugyanabba a hegységben vannak, mint Kemence!
select hegyseg from sipalya where nev ='Kemence'; -- subquery
select nev, Hegyseg from sipalya where hegyseg = (select hegyseg from sipalya where nev ='Kemence' ) and nev <>'Kemence';

#11. Az „Eplény 2” nevű pályát 100 méterrel meghosszabbították. Készítsünk lekérdezést, ami megvalósítja ezt!
select * from sipalya where nev = 'Eplény 2';
update sipalya set hossza=hossza+100 where nev='Eplény 2'; -- 1050

-- check:
select nev, hossza from sipalya where nev='Eplény 2';

#12. Írassuk ki hegységenként pályák számát, átlagos hosszát és az átlagos magasságkülönbségét!
select distinct(nev), hegyseg from sipalya order by hegyseg; -- kiadja hogy hegységenként hány sipálya van
select hegyseg, count(nev) as 'Pályaszám', avg(hossza) as 'HosszÁtlag', avg(teteje-alja) as 'Magasságkülönb' from sipalya group by Hegyseg;


#13. Írassuk ki az egyes pályák neveit és hajlásszögüket!
-- magasságkülönbség (teteje-alja)/hossza
select nev, degrees(atan((teteje-alja)/ hossza)) as 'Hajlasszog' from sipalya;

#14. Töröljük ki a 400 méter hosszúság alatti pályák adatait!
select * from sipalya where hossza < 400;
delete from sipalya where hossza < 400;

-- check:
select * from sipalya where hossza < 400;

-- ---------------------------------------------------------------------------------------------------------------------------------------------------------
-- ---------------------------------------------------------------------------------------------------------------------------------------------------------
'''
Másold fel a banyaszat nevű adatbázist, tekintsd át a szerkezetét!

Táblák: 
telek(id, telepulés, muvmod,allapot,fedoszint,fekuszint)
	id 		  - a bányatelek azonosítója (szám), ez a kulcs
	telepules - A település neve, amelyhez a bánya tartozik (szöveg)
	muvmod    - A bánya művelési módja (szöveg), értéke külfejtés, mélyművelés, mélyfúrás 
	allapot   - a bányászati tevékenység jellege (szöveg), értéke M (működő), S(szünetelő),T (tájrendező), B (bezárt)
	fedoszint - fedőszint, ami a nyersanyagréteg felső szintje két tizedes pontossággal méterben megadva a tengerszinthez képest (szám)
	fekuszint - feküszint, ami a nyersanyagréteg alsó szintje két tizedes pontossággal méterben megada a tengerszinthez képest (szám)


kapcsolo (telekid,nyersanyagid)
	telekid   - a bányatelek azonosítója (szám), kulcs
	nyersanyagid - az ásványi nyersanyag azonosítója (szám), kulcs

nyersanyag(id,nev)
	id  - az ásványi nyersanyag azonosítója (szám), kulcs
	nev - az ásványi nyersanyag neve (szöveg)

'''

#15. Sorolja fel lekérdezés segítségével azoknak a településeknek a nevét, ahol van szünetelő állapotú bányászati telek! 
-- A listát a művelési mód, azon belül a településnevek szerinti sorrendben jelenítse meg!
use banyaszat;
desc kapcsolo;
desc nyersanyag ;
desc telek;

-- táblák összekapcsolása: 
select * from telek join kapcsolo on telek.id = kapcsolo.telekid join nyersanyag on kapcsolo.nyersanyagid =nyersanyag.id;

select telek.muvmod, telek.telepules,telek.allapot from telek join kapcsolo on telek.id = kapcsolo.telekid join nyersanyag on nyersanyag.id= kapcsolo.nyersanyagid 
where telek.allapot ='S' group by telek.muvmod ,telek.telepules;


#16. Írasd ki, hány különböző nyersanyagot bányásznak/ bányásztak az adatbázis szerint Magyarországon!
-- különböző nyersanyagok
select distinct(nyersanyag.nev) from telek join kapcsolo on telek.id = kapcsolo.telekid join nyersanyag on kapcsolo.nyersanyagid =nyersanyag.id;
-- 86 db:
select count(distinct(nyersanyag.id)) from telek join kapcsolo on telek.id = kapcsolo.telekid join nyersanyag on kapcsolo.nyersanyagid =nyersanyag.id;


#17. Lekérdezés segítségével határozza meg, hogy a tengerszint alatti bányákból mit bányásznak! 
# Csak azokat a bányákat vegye figyelembe, amelyek teljes egészében a tengerszint alatt vannak(tehát értékük minusz) ! A listában minden név egyszer jelenjen meg!
select distinct(nyersanyag.nev) from telek join kapcsolo on telek.id = kapcsolo.telekid join nyersanyag on kapcsolo.nyersanyagid =nyersanyag.id 
		where telek.fedoszint <0 and telek.fekuszint<0;


#18. A dolomit az építőipar széles körben alkalmazott nyersanyaga. Számoljuk meg hány bányában bányásznak ilyet, 
# ha a „dolomit” a nyersanyag nevében tetszőlegesen szerepelhet.
select telek.id,nyersanyag.nev from telek join kapcsolo on telek.id = kapcsolo.telekid join nyersanyag on kapcsolo.nyersanyagid =nyersanyag.id 
		where nyersanyag.nev LIKE '%dolomit%';

select nyersanyag.nev,count(telek.id) from telek join kapcsolo on telek.id = kapcsolo.telekid join nyersanyag on kapcsolo.nyersanyagid =nyersanyag.id 
		where nyersanyag.nev LIKE '%dolomit%';


#19. Lekérdezés segítségével írassa ki az első három legvastagabb rétegű, a nevében kavicsot tartalmazó nyersanyagot termelő bányatelek települését!
# Adja meg a település nevét, az ásványi nyersanyagréteg vastagságát és a nyersanyag nevét
-- LIMIT-tel:
select telek.telepules, (telek.fedoszint-telek.fekuszint) as 'Vastagsag', nyersanyag.nev from telek join kapcsolo on telek.id = kapcsolo.telekid join nyersanyag on kapcsolo.nyersanyagid =nyersanyag.id 
		where nyersanyag.nev LIKE '%kavics%' order by telek.fedoszint-telek.fekuszint desc limit 3;


#20. Adja meg a bányák közül azokat, ahol 400 és 500 méter közötti (a határok nélkül) tengerszint feletti magasságból nyersanyag termelhető ki!
#  A listában a bánya települése és a bányászott nyersanyag jelenjen meg!

select telek.telepules,nyersanyag.nev, telek.fedoszint from telek join kapcsolo on telek.id = kapcsolo.telekid join nyersanyag on kapcsolo.nyersanyagid =nyersanyag.id 
where telek.fedoszint >400 and telek.fedoszint <500;


#21.* Lekérdezés segítségével határozza meg, hogy melyik ásványi nyersanyagot bányásszák a legtöbb bányatelken!
# Írassa ki a nyersanyag nevét és a bányatelkek számát! (Több ilyen is lehet!)

-- melyik ásványi anyagot bányásszák mindenhol: 
select nyersanyag.nev, count(telek.id) as 'Bányatelkek száma' from telek join kapcsolo on telek.id = kapcsolo.telekid join nyersanyag on kapcsolo.nyersanyagid =nyersanyag.id 
		group by nyersanyag.nev order by count(*) desc limit 1 ;

-- holtverseny esetén kiadja mindkettőt:
select nyersanyag.nev , count(telek.id) from telek join kapcsolo on telek.id = kapcsolo.telekid join nyersanyag on kapcsolo.nyersanyagid = nyersanyag.id 
group by nyersanyag.nev having count(telek.id) = (select max(BanyaszottDb) from 
	(select count(telek.id) as BanyaszottDb from telek join kapcsolo on telek.id = kapcsolo.telekid join nyersanyag on kapcsolo.nyersanyagid = nyersanyag.id group by nyersanyag.nev) as Allekérdezés);

	