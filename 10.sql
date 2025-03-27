
/*
A hatoslottó 1988 óta népszerű szerencsejáték hazánkban. A feladatban a számhúzások és az azokhoz kapcsolódó nyeremények ismert adatait kell feldolgoznia.
1. Az adatbázis neve legyen lotto6, a táblákat hozzuk létre az alábbiak alapján!
• A szöveges mezők legyenek egységesen 100 karakter hosszúságúak.
• Minden szám mezőt kötelező legyen kitölteni!
• A kulcs mezőket auto incrementtel oldd meg!
• A nyeremeny tábla talalat oszlopa legyen 3 és 7 közötti érték lehessen!
• Állítsuk be a külső kulcsokat is.

Táblák
	huzott (id, huzasid, szam)
		id  - egy számhúzáshoz tartozó egyik szám azonosítója (szám), ez a kulcs
		huzasid - a húzás azonosítója (szám)
		szam - a húzott szám (szám)
		
	huzas(id, ev, het, datum)
		id - a számhúzás azonosítója (szám), kulcs
		ev - a számhúzás éve (szám)
		het - a számhúzás hete (szám)
		
	nyeremeny(id, huzasid, talalat, darab, ertek)
		id - a nyeremény azonosítója (szám), ez a kulcs
		huzasid - a nyereményhez tartozó húzás azonosítója (szám)
		talalat - a találat azonosítója (szám), 3 és 6 között az eltalált sázmok száma, a 7 az 5+1 találatot jelenti ami nem egyenértékű a 6 találattal.
		darab - megadja hogy az adott találatszámot hány szelvény érte el (szám)
		ertek - megadja, hogy az adott találatszámhoz milyen értékű nyeremény tartozott egy-egy szelvény esetén (szám)
			
*/
# 1.
create database lotto6;
use lotto6;

create table huzott(id int primary key auto_increment, huzasid int not null, szam int not null);
create table nyeremeny(id int primary key auto_increment, huzasid int not null, 
talalat int not null check(talalat>3 and talalat<7), darab int, ertek int);


create table huzas(id int , ev int not null, het int,
primary key(id), 
FOREIGN KEY (id) REFERENCES nyeremeny(huzasid),
FOREIGN KEY (id) REFERENCES huzott(huzasid));

-- drop table huzas;
desc huzas;
desc nyeremeny;
desc huzott;

show tables;

select * from huzas;
select * from nyeremeny;
select * from huzott;


#2. Hozz létre egy admin felhasználót „12aMk34 jelszóval a localhost!
create user admin@localhost identified by "12aMk34";

#3. Legyen teljes (GRANT is) joga a teljes hangos adatbázishoz a localhost-ról!
grant all on lotto6.* to admin@localhost with grant option;

#4. Hozz létre egy ellenőr felhasználót ’98OE_76’ jelszóval! 
-- Legyen beszúrás, módosítás joga a nyeremény adattáblához a localhostról!
create user ellenor@localhost identified by "98OE_76";
grant update, insert on lotto6.nyeremeny to ellenor@localhost;

#5. Legyen az seged felhasználónak SELECT joga a huzott táblához adatbázishoz a localhost-ról,
--  illetve a szerencsejatek.hu domain-ről is!
grant select  on lotto6.huzott to seged@localhost, seged@"%.szerencsejatek.hu"; -- segéd? 

#6. Vonjuk vissza a módosítás jogot az ellenor-től localhost esetén!
REVOKE update ON lotto6.* FROM ellenor@localhost;

-- ---------------------------------------------------------------------------------------------------------------
-- ---------------------------------------------------------------------------------------------------------------
/*
Az adatbázis egy idény bajnoki és kupamérkőzéseinek nézőkre vonatkozó adatait tartalmazza.
Táblák
	meccs(id, datum, kezdes, belepo, tipus)
		id - a meccs azonosítója, (szám) ez a kulcs
		datum - a meccs megrendezésének dátuma (dátum). EGy nap csak egy mérkőzést játszanak
		kezdes - a meccs kezdési ideje (idő)
		belepo - a belépő ára az adott meccsre (szám)
		tipus - a meccs típusa (szöveg) értéke: bajnoki, kupa
		
	belepes (nezoid, meccsid, idopont)
		nezoid - a néző azonosítója (szám), ez a kulcs
		meccsid - a meccs azonosítója, (szám), ez a kulcs
		idopont - az idopont amikor a nézp az adott meccsen belépett a nézőtérre (idő)
		
	nezo (id, nev, ferfi, berletes)
		id - a néző azoosítója(szám) , kulcs
		nev - a néző neve (szöveg). nincs két azonos nevű néző
		ferfi - a nézők nemét adja meg F: igaz, N: hamis
		berletes - a nézőnek van -e bérlete (logikai) 

*/
use nezok;
desc meccs;
desc belepes;
desc nezo;


alter table meccs modify datum date;
alter table meccs modify kezdes datetime;
alter table belepes modify idopont datetime;

select * from meccs join belepes on meccs.id=belepes.meccsid join nezo on belepes.nezoid = nezo.id;

#7. Készítsen lekérdezést, amely megadja, hogy a jegyvásárlásokból mennyi bevétel származott 2018 szeptemberében! A bérleteseket ne vegye figyelembe!
select sum(belepo) from meccs join belepes on meccs.id=belepes.meccsid join nezo on belepes.nezoid = nezo.id 
	where datum between '2018-09-01' and '2018-09-30' and berletes = 0;

#8. Kiss Dorina és Varga Zsolt egy párt alkotnak. Készítsen lekérdezést, amely megadja, hogy mely napokon voltak együtt meccsen!
select datum from meccs join belepes on meccs.id=belepes.meccsid join nezo on belepes.nezoid = nezo.id where nev= "Varga Zsolt" or nev = "Kiss Dorina"
	group by datum having count(datum) >1;

#9. Készítsen lekérdezést, amely megadja, hogy melyik mérkőzésen hány néző jelent meg! A mérkőzés dátumát és a nézőszámot jelenítse meg!
select datum, count(nev) from meccs join belepes on meccs.id=belepes.meccsid join nezo on belepes.nezoid = nezo.id group by meccs.datum;
select datum, count(nezo.id) from meccs join belepes on meccs.id=belepes.meccsid join nezo on belepes.nezoid = nezo.id group by meccs.datum;
select datum, count(1) from meccs join belepes on meccs.id=belepes.meccsid join nezo on belepes.nezoid = nezo.id group by meccs.datum;

#10. Írassuk ki azokat a bérletes nézőket, akik nem voltak meccsen! Outer join..
-- righttal:
select nev from belepes right join nezo on belepes.nezoid = nezo.id where berletes=1 and meccsid is null;
-- lefttel:
select nev from nezo left join belepes on belepes.nezoid = nezo.id where berletes=1 and meccsid is null;

#11. Rögzítsünk egy bajnoki mérkőzést 2021.12.01-re 18 órás kezdéssel, amire a jegy 500 Ft. 
-- A meccsre Kiss Dorina 17:45kor érkezett, Tóth Luca pedig 17:55-kor.
insert into meccs values( null, '2021-12-01', '2021-12-01 18:00:00', 500, "bajnoki");
insert into belepes values( null,  null, '2021-12-01 17:45:00');
insert into belepes values( null,  null, '2021-12-01 17:55:00');
insert into nezo values(not null, "Kiss Dorina", 0, 0);
insert into nezo values(not null, "Tóth Luca", 0, 0);


-- Triggerek, tárolt eljárások
#12. Készíts egy olyan tárolt eljárást bajnoki néven, ami kiírja a bajnoki mérkőzéseket időrendben!

delimiter $$ 
drop procedure if exists bajnoki $$  
create procedure bajnoki() 
begin 
		select * from meccs where tipus = 'bajnoki' order by datum;
end $$
delimiter ;
-- --------------------------
call bajnoki();

#13. Készíts egy olyan tárolt eljárást nezo_belepes néven, ahol a paraméterként adott néző neve alapján kiírja, 
# hogy milyen mérkőzéseken(típus) mikor érkezett (dátum) a meccsre!


delimiter $$
drop procedure if exists nezo_belepes $$
create procedure nezo_belepes(in nezoNeve varchar(255))
begin 
		select meccs.datum ,meccs.tipus  from meccs join belepes on meccs.id=belepes.meccsid join nezo on belepes.nezoid = nezo.id where nezo.nev = nezoNeve;
end $$
delimiter ;

call nezo_belepes('Elek Miklós');


#14. Készíts egy olyan tárolt függvényt nezo_db néven, ami a paraméterként megadott néző neve alapján visszaadja hogy hány mérkőzést nézett meg!

delimiter $$
drop function if exists nezo_db $$
create function nezo_db(nezoNeve varchar(255))
returns int
begin 
	declare db int;
	set db = select count(*) from meccs join nezo on meccs.id = nezo.id where nezo.nev = nezoNeve;
	return db;
end $$
delimiter ;

select nezo_db('Kertész Bence');


#15. Készítsünk egy triggert, ami módosítások előtt fut le a belepes tábla esetén. 
# A trigger végezzen naplózást az új adatbevitelről. 
# A napló adattáblába mentsd el az időpontot, a felhasználót, a néző nevét.
# A naplózás adatait egy naploNezo adattáblába ments el (ezt létre kell hoznod előtte)!
# A trigger neve legyen logInsertNezo.

drop table if exists naplo ;
create table naplo(idopont time, felhasznalo varchar(100), nev varchar(100));
select * from naplo;

delimiter $$
drop trigger if exists logInsertNezo $$
create trigger logInsertNezo 
before update on belepes 
for each row 
begin 
	insert into naplo values(current_time(),user(),old.uj);
end $$
delimiter ; 

--
drop table if exists naploNezo;
CREATE TABLE IF NOT EXISTS naploNezo(idopont time, felhasznalo varchar(100), nev varchar(100));
INSERT INTO naploNezo VALUES ("10:01:10", 'hybrid01@root', 'Kiss Pál');
select * from naploNezo;

