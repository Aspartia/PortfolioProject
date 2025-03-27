

#1. Készítsen adatbázist repulo néven! Készítsen adattáblát pilota néven!
'''
	•A szöveges mezők legyenek egységesen 60 karakter hosszúságúak.
	•Minden szöveges mezőt kötelező legyen kitölteni.
	•Az az mezőjét auto incrementtel oldd meg!
	•nem alapértéke legyen „F” legyen
	
	pilota (az, nev, nem, szuldat, nemzet)
		az A versenyző azonosítója (szám).
		nev A versenyző neve (szöveg); mindig a vezetéknév szerepel a név végén.
		nem A versenyző neme (szöveg); ha férfi, akkor F; ha nő, akkor N az értéke.
		szuldat A versenyző születési dátuma (dátum).
		nemzet A versenyző nemzetisége (szöveg).
'''

CREATE DATABASE repulo;
USE repulo;

CREATE TABLE pilota (
  az INTEGER NOT NULL AUTO_INCREMENT,
  nev VARCHAR(60) not null, 
  nem VARCHAR(60) default 'F' not null,  
  szuldat DATE not null, 
  nemzet VARCHAR(60) not null,
  PRIMARY KEY (az)
);

desc pilota;

-- drop table pilota;

#2. Vigyünk fel három sort az adattáblába az alábbi táblázat alapján:
'''
az, nev, nem, szuldat, nemzet
97, 'Alessandro Zanardi', 'F', '1966-10-23', 'olasz'
98, 'Divina Galica', 'N', '1946-08-13', 'brit'
99, 'Jean-Manuel Bordeu', 'F', '1934-01-01', 'argentin'
'''

INSERT INTO pilota (az, nev, nem, szuldat, nemzet) 
VALUES (97, 'Alessandro Zanardi', 'F', '1966-10-23', 'olasz');
INSERT INTO pilota (az, nev, nem, szuldat, nemzet) 
VALUES (98, 'Divina Galica', 'N', '1946-08-13', 'brit');
INSERT INTO pilota (az, nev, nem, szuldat, nemzet) 
VALUES (99, 'Jean-Manuel Bordeu', 'F', '1934-01-01', 'argentin');

-- ell
select * from pilota;


#3. Adjunk hozzá utólag egy vilagbajnok oszlopot logikai típussal, ebben az adható meg, hogy volt-e a pilota világbajnok.
# Állítsuk be igazra Alessandro Zanardi esetén!
alter table pilota add vilagbajnok bool;
update pilota set vilagbajnok=true where nev='Alessandro Zanardi'; 

-- ------------------------------------------------------------------------------------------------------
-- ------------------------------------------------------------------------------------------------------
'''
Egy korábbi év emelt szintű informatika érettségijén született eredmények feldolgozása lesz a feladata. 
A emeltinfo.sql állományban az érettségi eredmények adatait találja.
'''
#4. Importáljuk az emeltinfo adatbázist az emeltinfo.sql állomány segítségével és ellenőrizzük, hogy megfele-e minden az alábbiaknak!

'''
Azon				számláló		Azonosító
megye				szöveges		Megye neve
varos				szöveges		Város neve
iskolatipus			szöveges		Iskola típusa
dokumentumkeszites	egész szám		Dokumentum készítés vizsgarész pontszáma
tablazatkezeles     egész szám		Táblázatkezelés vizsgarész pontszáma
adatbaziskezeles	egész szám		Adatbáziskezelés vizsgarész pontszáma
programozas			egész szám		Programozás vizsgarész pontszáma

'''


use emelt;
desc emeltinfo;
select * from emeltinfo;

#5. Listázza ki azoknak az eredményeit, akik gimnáziumban érettségiztek Budapesten, Székesfehérváron!
-- rossz:
select * from emeltinfo where iskolatipus ='gimnázium' and varos = 'Budapest' or varos= 'Székesfehérvár';
-- jó:
select * from emeltinfo where (varos = 'Budapest' or varos= 'Székesfehérvár') and iskolatipus ='gimnázium';

#6. Írassa ki lekérdezés segítségével, hogy hány fő van, aki 90 és 100 pont között teljesített!
select count(azon) from emeltinfo where (dokumentumkeszites +tablazatkezeles +adatbaziskezeles +programozas ) between 90 and 100;

-- check:
select *, (dokumentumkeszites +tablazatkezeles +adatbaziskezeles +programozas )as 'Össz' from emeltinfo 
where (dokumentumkeszites +tablazatkezeles +adatbaziskezeles +programozas ) between 90 and 100;

#7. Írassuk ki, hogy hány iskolatípus van!
select count(distinct(iskolatipus)) from emeltinfo where iskolatipus <> '-';

#8. Írassuk ki melyik város(ok)ban érték el a legtöbb pontot programozásból!
select varos, programozas from emeltinfo where programozas = (select max(programozas) from emeltinfo);

#9. Írassuk ki táblázatkezelésből, hogy az egyes pontszámokat hányan érték el!
select count(*), (dokumentumkeszites +tablazatkezeles +adatbaziskezeles +programozas) as 'Ossz' from emeltinfo 
group by (dokumentumkeszites +tablazatkezeles +adatbaziskezeles +programozas);

#10. Írassuk ki azon megye összes adatát, amik ugyanabba a megyében vannak, mint Újszász!
select * from emeltinfo where varos = 'Újszász'; -- subquery
select * from emeltinfo where megye = (select megye from emeltinfo where varos = 'Újszász') and varos <>'Újszász';

#11. A 22-es azonosítójú érettségiző adatbáziskezelésből 5 pont plusz kapott fellebbezés után. Készítsünk lekérdezést, ami megvalósítja ezt!
select * from emeltinfo where azon=22;
update emeltinfo set adatbaziskezeles=adatbaziskezeles+5 where azon=22;

#12. Írassuk ki, hogy hányan kapják meg a plusz pontot az érettségi miatt (45% feletti teljesítmény kell) => tehát 54 pont!!
select * from emeltinfo;

select *, (dokumentumkeszites +tablazatkezeles +adatbaziskezeles +programozas) as 'Ossz' from emeltinfo 
where (dokumentumkeszites +tablazatkezeles +adatbaziskezeles +programozas) > 54
order by (dokumentumkeszites +tablazatkezeles +adatbaziskezeles +programozas);

-- 120 pont		100% 
-- x=54 pont    45%

#13. Írassuk ki az egyes teljesítményeket azonosítónként öszzpontszám és százalékosan is. (maxpont 120)!
select *, (dokumentumkeszites +tablazatkezeles +adatbaziskezeles +programozas) as 'Ossz', 
(dokumentumkeszites +tablazatkezeles +adatbaziskezeles +programozas)*100/120 as '%'
from emeltinfo group by azon;

#14. Írassuk ki az egyes modulok átlagos teljesítményét!
select avg(dokumentumkeszites), avg(tablazatkezeles), avg(adatbaziskezeles), avg(programozas) from emeltinfo;

#15. Töröljük ki azon adatokat, ahol nincs megadva az iskolatípus!
-- check: 
select * from emeltinfo  where iskolatipus = '-';

delete from emeltinfo where iskolatipus = '-';
-- ---------------------------------------------------------------------------------------------------------------------------------------------------------
-- ---------------------------------------------------------------------------------------------------------------------------------------------------------
'''
Másold fel a megfelelő helyre a feltalalok nevű adatbázist, aminek a szerkezetét tanulmányozd!
Táblák
	talalmany(tkod, talnev)
		tkod  - A találmány azonosítója (szám), ez a kulcs
		talnev - A találmány neve (szöveg)
	
	kutato(fkod,nev,szul,meghal)
		fkod  - A kutató vagy feltaláló azonosítója (szám), ez a kulcs
		nev   - A kutató neve, vezeték-és utónév sorrendben (szöveg)
		szul  - A kutató születési éve (szám)
		meghal - Halálozási éve - ma is élők esetén üres (szám)
	
	kapcsol(tkod,fkod)
		tkod  - A találmány azonosítója (szám)
		fkod  - A kutató azonosítója (szám)
	
'''
#16. Rögzítsünk egy új adatsort, ahol Szorgalmas Elek(1998) és Amk Anna(1999) feltalálták az „alvás közben tanuló gépet”. (Táblánkénti felvitel.)
use feltalalo;

select * from talalmany;
INSERT INTO talalmany (tkod, talnev) VALUES (150, 'alvás közben tanuló gép');

select * from kapcsol;
INSERT INTO kapcsol (tkod, fkod) VALUES (150, 82);
INSERT INTO kapcsol (tkod, fkod) VALUES (150, 83);

select * from kutato;
INSERT INTO kutato (fkod, nev, szul, meghal) VALUES (82, 'Szorgalmas Elek', 1998, null);
INSERT INTO kutato (fkod, nev, szul, meghal) VALUES (83, 'Amk Anna', 1999, null);

#17. Listázza ki ábécérendben lekérdezés segítségével azoknak a találmányoknak a nevét, amelyek nevében szerepel a „motor” szó!
select distinct(talalmany.talnev) from talalmany join kapcsol on talalmany.tkod = kapcsol.tkod join kutato on kutato.fkod = kapcsol.fkod
where talalmany.talnev like "%motor%";

#18. Adja meg lekérdezés segítségével, hogy ki volt a golyóstoll feltalálója és hány évig élt!
select kutato.nev, (kutato.meghal -kutato.szul ) as 'életkor' from talalmany join kapcsol on talalmany.tkod = kapcsol.tkod join kutato on kutato.fkod = kapcsol.fkod
where talalmany.talnev = "golyóstoll";

#19. Sorolja fel lekérdezés alkalmazásával azoknak a találmányoknak a nevét, amelyeknek a feltalálója nincs megadva az adatbázisban!
select talalmany.talnev, kutato.nev  from talalmany left join kapcsol on talalmany.tkod = kapcsol.tkod left join kutato on kutato.fkod = kapcsol.fkod
where kutato.nev is null ;

#20. Milyen találmányaik voltak azoknak a kutatóknak, akik a XIX. század első felében (1801 és 1850 között, a határokat is beleszámolva) is éltek?
# A kutatók és a találmányok nevét adja meg lekérdezés használatával!
select talalmany.talnev, kutato.nev, kutato.szul, kutato.meghal  from talalmany join kapcsol on talalmany.tkod = kapcsol.tkod join kutato on kutato.fkod = kapcsol.fkod
where (kutato.szul between 1801 and 1850) or (kutato.meghal between 1801 and 1850);

#21. Sorolja fel lekérdezés alkalmazásával azoknak a kutatóknak a nevét és a találmányaik számát, akik legalább 3 kutatási eredménnyel szerepelnek az adatbázisban!
select count(talalmany.talnev), kutato.nev from talalmany join kapcsol on talalmany.tkod = kapcsol.tkod join kutato on kutato.fkod = kapcsol.fkod 
group by kutato.nev having count(talalmany.talnev)> 2 order by count(*) desc;

#22. Adja meg lekérdezés segítségével, hogy a „transzformátor” feltalálóinak – a „transzformátor”-on kívül – milyen más találmányaik vannak az adatbázisban! 
# Minden találmány neve egyszer szerepeljen a listában!
-- kik akik a transzformátort feltalálták:
select  talalmany.talnev, kutato.nev from talalmany join kapcsol on talalmany.tkod = kapcsol.tkod join kutato on kutato.fkod = kapcsol.fkod
where talalmany.talnev = 'transzformátor';

-- IN nem =
select  distinct(talalmany.talnev) from talalmany join kapcsol on talalmany.tkod = kapcsol.tkod join kutato on kutato.fkod = kapcsol.fkod
where kutato.nev IN (select kutato.nev from talalmany join kapcsol on talalmany.tkod = kapcsol.tkod join kutato on kutato.fkod = kapcsol.fkod 
where talalmany.talnev = 'transzformátor') and talalmany.talnev <> 'transzformátor';


