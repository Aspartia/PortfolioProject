
#1. Rendelkezésére állnak a Fekete István által kitalált állatnevek, amelyeknek egy része a regényeiben is előfordul. 
# Készítsen új adatbázist nevek néven!
/*
-- A szöveges mezők legyenek egységesen 50 karakter hosszúságúak. - kész
-- Minden mezőt kötelező legyen kitölteni!
-- A regeny táblában a ev esetén csak az 1900 és 1970 közötti értéket lehessen megadni!
-- Az allat es a regeny tablában a kulcs mezőket auto incrementtel oldd meg!
-- A regeny tábla cím és az allat tábla nev mezője egyedi érték legyen
-- Állítsuk be a külső kulcsokat is.

Táblák:
	allat(id, nev, faj)
		ID - az állat azonosítója (szám, kulcs)
		nev - állat neve, amit Fekete IStván ADott (szöveg)
		faj - az állat fajneve (szöveg)
	kapcsolo (allatid, regenyid)
		allatid - az állat azonosítója (szám, kulcs)
		regenyid - a regény azonosítója (szám, kulcs)
		
	regeny(id, ev, cim, kiado)
		ID -  a regény azonosítója (szám), kulcs
		ev - az első kiadás éve (szám)
		cim - a regény címe (szöveg)
		kiado - a regény első kiadójának neve (szöveg)
*/

create database nevek;
use nevek;

create table allat(id int primary key auto_increment, nev varchar(50) unique, faj varchar(50) not null);

create table regeny(id int primary key auto_increment, ev int not null check(ev>1900 and ev<1970), 
cim varchar(50) unique, kiado varchar(50) not null);

create table kapcsolo(allatid int, regenyid int, 
primary key(allatid,regenyid), 
FOREIGN KEY (allatid) REFERENCES allat(id),
FOREIGN KEY (regenyid) REFERENCES regeny(id));
-- foreign key = primary key ; a references = foreign key


desc allat;
show tables;
select * from allat;
select * from regeny;


#2. Bu nevű tehén a Kele című regényben jelenik meg, amit a Kossuth Kiadó adott ki 1955-ben. 
# Szintén ebben a regényben szerepel Csí, a fecske. Vigyük fel az új adat(ok)ot!
insert into allat values(null, "Bu", "tehén");
insert into allat values(null, "Csí", "fecske");
insert into regeny values(null, "1955", "Kele", "Kossuth Kiado");
-- az új adatokat minden táblába be kell vinni: 
insert into kapcsolo values(1,1); -- Bú azonosítója, Könyv
insert into kapcsolo values(2,1); -- Csí azonosítója, Könyv

-- ált lekérdezés: 
select * from kapcsolo join allat on allat.id = kapcsolo.allatid join regeny on regeny.id= kapcsolo.regenyid;


#3. Hozz létre egy regenyfelelos felhasználót ’OE_AMK_2021’ jelszóval!
create user regenyfelelos@localhost identified by "OE_AMK_2021";
create user regenyfelelos@"192.168.11.%" identified by "OE_AMK_2021"; 

#4. Legyen teljes (GRANT is) joga a teljes adatbázishoz a localhost-ról és a 192.168.11.xxx (aldomain) címekról!!
grant all on nevek.* to regenyfelelos@localhost with grant option;
grant all on nevek.* to regenyfelelos@"192.168.11.%" with grant option;


#5. Hozz létre egy olvaso felhasználót „12Vuk12” jelszóval!
create user olvaso@localhost identified by "12Vuk12"; 
create user olvaso@"192.168.11.%" identified by "12Vuk12"; 

#6. Legyen az "olvaso" felhasználónak lekérdezés-, beszúrás-, törlésjoga a teljes adatbázishoz a localhost!
grant select, insert, delete on nevek.* to olvaso@localhost;


#7. Legyen módosítás joga a regeny adattáblához a 192.168.11.xxx!
grant update on nevek.regeny to olvaso@"192.168.11.%";

#8. Vonjuk vissza a törlés jogát az olvasónak a localhost esetén (az egész adatbázisra)!
REVOKE delete ON nevek.* FROM olvaso@localhost;


#9. Változtassuk meg a jelszavát az olvaso-nak 43KuV43-ra!
set password for olvaso@localhost=Password('43KuV43'); 
set password for olvaso@"192.168.11.%"=Password('43KuV43');

-- --------------------------------------------------------------------------------------------------------------------------------
-- --------------------------------------------------------------------------------------------------------------------------------

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
	
feladat (id, filmid, szemelyid, megnevezes)
	ID - a feladat azonosítója
	filmid - a film azonosoítója, amelyhez a feladat kapcsolódik (szám), idegen kulcs szerepű
	szemelyid - a szemyél azonosítója, amelyhez a feladat kapcsolódik (szám), idegen kulcs szerepű
	megnevezes - a feladat megnevezése (szöveg), pl: színész, rendező
	
szemely (id, nev, nem)
	id - a személy azonosítója , kulcs
	nev - a személy neve (szöveg),egyedi
	nem - a személy neme (szöveg), értéke: Nő, férfi
	
	•A szöveges mezők legyenek egységesen 100 karakter hosszúságúak.
	•Minden szám mezőt kötelező legyen kitölteni.
	•Az id számláló mezőjét auto incrementtel oldd meg!
	•youtube alapértéke legyen false legyen
	*/

use hangos;
show tables;
desc feladat;
desc film; 
desc szemely; 
select * from film;
select * from szemely;
select * from feladat;

ALTER TABLE film MODIFY bemutato date;

-- ált lekérdezés:
select * from szemely, feladat, film where feladat.szemelyid= szemely.id and film.id= feladat.filmid;
select * from feladat join szemely on feladat.szemelyid= szemely.id join film on film.id= feladat.filmid;


#10.Írassuk ki azok nevét, akik ugyanabban a filmben működtek közre mint Heltai Jenő!

-- subquery:
select filmid from feladat join szemely on feladat.szemelyid= szemely.id join film on film.id= feladat.filmid 
where szemely.nev = "Heltai Jenő";

-- egybe: filmid helyett cim is lehetett volna. 
select szemely.nev from feladat join szemely on feladat.szemelyid= szemely.id join film on film.id= feladat.filmid 
where cim = (select cim from feladat join szemely on feladat.szemelyid= szemely.id join film on film.id= feladat.filmid 
where szemely.nev = "Heltai Jenő") and nev != "Heltai Jenő"; 
-- ha Heltai több filmet is rendezett akkor az = helyett in-t adunk meg. 

#11. Írassuk ki, hogy hány olyan személy van, akiknek még nem rögzítették a filmekhez kapcsolódó adatait!
select count(1) from szemely left join feladat on feladat.szemelyid= szemely.id where feladat.filmid is null; 
select count(nev) from feladat right join szemely on feladat.szemelyid= szemely.id where feladat.filmid is null; 

#12. Lekérdezés segítségével listázza ki azokat filmeket, akiknek még nem rögzítették az egyéb adatait!
select cim from film left join feladat on film.id= feladat.filmid where /*feladat.*/filmid is null; 

#13. Készíts egy olyan tárolt eljárást Karady néven, ami kiírja az összes Karády Katalin-hoz köthető filmet és adatait év
-- query:
select film.* from feladat join film on film.id = feladat.filmid join szemely on feladat.szemelyid= szemely.id
where nev= "Karády Katalin" order by bemutato;

-- procedure:
delimiter $$ 
drop procedure if exists Karady $$
create procedure Karady() 
begin 
		select * from feladat join film on film.id = feladat.filmid join szemely 
		on feladat.szemelyid= szemely.id
		where szemely.nev= "Karády Katalin" order by bemutato;
end $$
delimiter ;
-- --------------------------
call Karady();


#14. Készíts egy olyan tárolt eljárást filmAdatai néven , ahol a paraméterként adott filmcím alapján 
-- kiírja az összes adatot a kulcsokon kívül a személynevek szerint ábécé sorrendbe!
-- subquery:
select film.*, nev from feladat join film on film.id = feladat.filmid join szemely on feladat.szemelyid= szemely.id
where cim = "Katyi" order by nev;

-- procedure:
delimiter $$
drop procedure if exists filmAdatai $$
create procedure filmAdatai(in filmcim varchar(255))
begin 
	select film.*, nev from feladat join film on film.id = feladat.filmid 
	join szemely on feladat.szemelyid= szemely.id
	where cim = filmcim order by nev;
end $$
delimiter ;

call filmAdatai("Katyi");

#15. Készíts egy olyan tárolt függvényt szemely_db néven, ami a paraméterként megadott személy neve alapján visszaadja
# hány filmben töltött be szerepet!
select count(filmid) from feladat join film on film.id = feladat.filmid join szemely on feladat.szemelyid= szemely.id where nev= "Karády Katalin";

-- function:
delimiter $$
drop function if exists szemely_db $$
create function szemely_db(beNev varchar(255))
returns int -- mysql5-nél nem kell deterministic
begin 
	declare vissza int; 
	set vissza = (select count(filmid) from feladat join film on film.id = feladat.filmid join szemely on feladat.szemelyid= szemely.id where nev= beNev);
	return vissza;
end $$
delimiter ;

select szemely_db("Kabos Gyula");


#16. Készítsünk egy triggert, ami az új adat bevitele után fut le a film tábla esetén. 
# A trigger végezzen naplózást a módosításokról. 
# A napló adattáblába mentsd el a dátumot, időt, a felhasználót, az új film azonosítóját és címét. 
# A naplózás adatait egy naploFilm adattáblába ments el (ezt létre kell hoznod előtte). 
# A trigger neve legyen logUjFilm.

-- előbb létrehozzuk a táblát: 
drop table if exists naploFilm;
create table naploFilm(datum date, ido time, felhasznalo varchar(100), filmid int primary key, cim varchar(100));
select* from naploFilm;

-- trigger:
delimiter $$
drop trigger if exists logUjFilm $$
create trigger logUjFilm 
after insert on film 
for each row 
begin 
	insert into naploFilm values(current_date(),current_time(),user(),new.filmid,new.cim);
end $$
delimiter ; 

insert into naploFilm values("2009-12-20",  "14:30:15",  "root@localhost", 222, "Avatar");
select * from naploFilm;


-- XML 
16. Írassuk ki azon barlangok nevét és a településüknek a nevét, ahol a magasság 1 m feletti és a hossza legalább 100 m. Az
adatok a település neve szerint növekvő sorrendbe jelenjenek meg, azon belül a barlang neve szerint!

for $x in /adatok/barlang
where $x/magassag>1 and $x/hossz>=100
order by $x/telepules, $x/nev
return ($x/nev, $x/telepules)

17. Írassuk ki Tésen található barlangok átlagos hosszát!

avg(
  for $x in /adatok/barlang
where $x/telepules="Tés"
return ($x/hossz)
)

18. Írassuk ki, hogy hány településen van barlang!
count(
distinct-values(
  for $x in /adatok/barlang
return ($x/telepules)
))






