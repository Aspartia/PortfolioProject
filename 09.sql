
1. 
#drop table hangos;

create database hangos;
use hangos;

create table film(id int primary key auto_increment not null, cim varchar(100),
gyartas int not null check(gyartas>1900 and gyartas<1970), hossz int not null, bemutato date not null, youtube bool default 0);

create table szemely(id int primary key auto_increment not null, nev varchar(100) unique, nem varchar(100));

create table feladat(id int not null, filmid int not null, szemelyid int not null, megnevezes varchar(100),
primary key(id), 
FOREIGN KEY (filmid) REFERENCES film(id),
FOREIGN KEY (szemelyid) REFERENCES szemely(id));
-- foreign key = primary key ; a references = foreign key

-- -- -- -- -- 
desc film;
desc feladat;
desc szemely;
show tables;
select * from feladat;
select * from szemely;
select * from film;

delete from szemely where id = 2;
-- -- -- -- -- -- 

#2. Rögzítsük a következőket: a Vasember 2008-as film, hossza 121 perc, 
# 2008. április 30 mutatták be. Robert Downey Jr., Gwyneth Paltrow a két főszereplő színész.

insert into film values(not null, "Vasember", 2008, 121, '2008-04-30', 0); 
insert into szemely values( not null, "Robert Downey Jr.", "férfi");
insert into szemely values(not null, "Gwyneth Paltrow", "no");

#3. Hozz létre egy tulaj felhasználót ’adminisztrator’ jelszóval!
create user tulaj@localhost identified by "adminisztrator";

#4. Legyen teljes (GRANT is) joga a teljes hangos adatbázishoz a localhost-ról!
grant all on hangos2.* to tulaj@localhost with grant option;

#5. Hozz létre egy ’seged’ felhasználót ’12titok12’ jelszóval!
create user seged@localhost identified by "12titok12";

#6. Legyen az seged felhasználónak SELECT joga a feladat táblához  a localhost-ról, illetve a film.hu domain-ről is! 
#Legyen törlés, beszúrás, módosítás joga a film adattáblához a localhostról!

grant select on hangos2.feladat to seged@localhost, seged@"%.film.hu";
grant select on hangos2.feladat to seged@"%.film.hu";

grant update, insert, delete on film.* to seged@localhost;

#7. Vonjuk vissza a SELECT jogot a ’seged’-től localhost esetén!
REVOKE select ON hangos2.* FROM seged@localhost;

-- ------------------------------------------------------------------------------------------------------------------------------
-- ------------------------------------------------------------------------------------------------------------------------------

/*A nyári olimpiai játékokon sok versenyszám nem test a test elleni küzdelemben dől el, hanem a méterben mért teljesítmény rangsorol. Ilyenek az atlétika ugró- és dobószámai.
 Az adatbázisban ezek dobogós versenyzőit és az általuk elért eredményeket rögzítettük.

versenyzo(az, nev, szulev, halev)
	az - a versenyző azonosítója (szám), kulcs
	nev - a versenyzo neve (szöveg), formailag 
	szulev - a versenyző születési éve (szám), üres ha az adat nem állt rendelkezésre
	halev - a versenyző halálozási éve, (szám), üres ha a versenyző az adatrögzítés idején még élt, ill ha az adat nem állt rendelkezésre
	
eredmeny (az, ev, versenyzoaz, orszag, versenyszamaz, meter, helyezes)
	az  - az eredmény azonosítója (számláló), ez a kulcs
	ev - annak az olimpiának az éve, amikor az eredmény született (szám)
	versenyzoaz - az eredményt elérő versenyző azonosítója (szám)
	orszag - az ország, amelynek színeiben az eredményt elérték (szöveg) az olimpiai bizottság hivatalos rövidítésének formájában
	versenyszamaz - a versenyszám azonosítója (szám)
	meter  - a versenyen elért, méterben mért eredmény (valós szám)
	helyezés - a versenyen elért helyezés (szám); holtverseny esetén több azonos érték lehetséges, vagy hiányzó helyezési adat esetén üres
	
versenyszám
	az - a versenyszám azonosítója (szám), ez a kulcs
	nev - a versenyszám neve (szöveg)
	típus - a versenyszám típusa (szöveg), értéke: dobó, ugró
	nem - a versenyszámot melyik nem számára írták ki (szöveg), értéke: férfi, nő

*/

use olimpiameterben;
desc versenyzo;

select * from versenyzo, eredmeny, versenyszam where versenyzo.az = eredmeny.versenyzoaz and versenyszam.az = versenyszamaz;
select * from versenyzo join eredmeny on versenyzo.az = eredmeny.versenyzoaz join versenyszam on versenyszam.az = versenyszamaz;


#8. Készítsen lekérdezést, amely megadja, hogy az egyes versenyszámokban a nők mióta versenyeznek az olimpián!
select versenyszam.nev, eredmeny.ev from eredmeny join versenyszam on versenyszam.az = versenyszamaz where nem = "női" group by versenyszam.nev order by ev;
 

#9. Irasd ki hány olyan versenyző van az adatbázisban, akiknek nem szerepelnek az eredményei rögzítési hiba miatt!
select nev from versenyzo left join eredmeny on versenyzo.az = eredmeny.versenyzoaz where eredmeny.helyezes is null;


#10. Adja meg lekérdezés segítésével, hogy ki(k) volt a legfiatalabb győzelme évében! Adja meg a versenyző(k) nevét és korát!
-- mindegyik évben aki győzött, ott ki volt a legfiatalabb
-- ki volt a legfitalabb
select versenyzo.nev, eredmeny.helyezes, eredmeny.ev, min(versenyzo.halev-versenyzo.szulev) as VersenyzoKora from versenyzo join eredmeny on versenyzo.az = eredmeny.versenyzoaz 
	where helyezes = 1 group by ev order by ev, VersenyzoKora;


#11. Írassuk ki azokat a versenyzőket, akik ugyanabban a versenyszámban szerepeltek mint Krisztian PARS !
-- allekérdezés
select versenyszam.nev from versenyzo join eredmeny on versenyzo.az = eredmeny.versenyzoaz join versenyszam on versenyszam.az = versenyszamaz 
where versenyzo.nev= "Krisztian PARS";

-- allekérdezés 
select versenyzo.nev, versenyszam.nev from versenyzo join eredmeny on versenyzo.az = eredmeny.versenyzoaz join versenyszam on versenyszam.az = versenyszamaz 
where versenyszam.nev =(select versenyszam.nev from versenyzo join eredmeny on versenyzo.az = eredmeny.versenyzoaz join versenyszam on versenyszam.az = versenyszamaz 
where versenyzo.nev= "Krisztian PARS");


#12. Készíts egy olyan tárolt eljárást magasugras néven, ami kiírja azon magasugráshoz tartozó összes adatot!
select * from versenyzo join eredmeny on versenyzo.az = eredmeny.versenyzoaz join versenyszam on versenyszam.az = versenyszamaz where versenyszam.nev = "magasugrás";

delimiter $$ 
drop procedure if exists magasugras $$  
create procedure magasugras() 
begin 
		
select * from versenyzo join eredmeny on versenyzo.az = eredmeny.versenyzoaz join versenyszam on versenyszam.az = versenyszamaz where versenyszam.nev = "magasugrás";

end $$
delimiter ;
-- --------------------------
 call magasugras();


#13. Készíts egy olyan tárolt eljárást versenyszam_versenyzo néven, 
# ahol a paraméterként adott versenyző neve alapján kiírja, hogy milyen számokban ért el eredményt!
select versenyszam.nev, eredmeny.helyezes from versenyzo join eredmeny on versenyzo.az = eredmeny.versenyzoaz join versenyszam on versenyszam.az = versenyszamaz 
where versenyzo.nev = "Krisztian PARS";

delimiter $$
drop procedure if exists versenyszam_versenyzo $$
create procedure versenyszam_versenyzo(in versenyzoNeve varchar(255)) 
begin 

select versenyszam.nev, eredmeny.helyezes from versenyzo join eredmeny on versenyzo.az = eredmeny.versenyzoaz join versenyszam on versenyszam.az = versenyszamaz 
where versenyzo.nev = versenyzoNeve;
end $$
delimiter ;

call versenyszam_versenyzo("Sandra PERKOVIC");


#14. Készíts egy olyan tárolt függvényt versenyzo_db néven, ami a paraméterként megadott versenyző neve alapján visszaadja az
#aranyérmeinek a számát!
select count(eredmeny.helyezes) from versenyzo join eredmeny on versenyzo.az = eredmeny.versenyzoaz join versenyszam on versenyszam.az = versenyszamaz 
	where eredmeny.helyezes =1 and versenyzo.nev = "Ellery CLARK"; -- elsoHelyezett


delimiter $$
drop function if exists versenyzo_db $$
create function versenyzo_db(elsoHelyezett varchar(255))
returns int
begin 
	declare vissza int; 
	set vissza = (select count(eredmeny.helyezes) from versenyzo join eredmeny on versenyzo.az = eredmeny.versenyzoaz join versenyszam on versenyszam.az = versenyszamaz 
where eredmeny.helyezes =1 and versenyzo.nev = elsoHelyezett);
	return vissza;
end $$
delimiter ;

select versenyzo_db('Ellery CLARK');

#15. Készítsünk egy triggert, ami módosítások előtt fut le a versenyzo tábla esetén. 
# A trigger végezzen naplózást a módosításokról. 
# A napló adattáblába mentsd el az időpontot, a felhasználót, a módosítandó azonosítóját, a versenyző régi és az új nevét. 
# A naplózás adatait egy naploVersenyzo adattáblába ments el (ezt létre kell hoznod előtte)! A trigger neve legyen logUpdate.

drop table if exists naplo ;
create table naplo(idopont datetime, felhasznalo varchar(100), modid int primary key, regi varchar(100), uj varchar(100));
select * from naplo;

delimiter $$
drop trigger if exists logUpdate $$
create trigger logUpdate 
before update on versenyzo 
for each row 
begin 
	insert into naplo values(current_time(),user(),new.modid,old.regi,new.uj);
end $$
delimiter ; 

--
drop table if exists naploVersenyzo;
CREATE TABLE IF NOT EXISTS naploVersenyzo(idopont datetime, felhasznalo varchar(100), modid int primary key, regi varchar(100), uj varchar(100));
INSERT INTO naploVersenyzo VALUES ("2020-11-11 10:01:10", "pali", 1, 'Kiss Péter', 'Kiss Pál');
select * from naploVersenyzo;

 update naploVersenyzo set modid = 2 where uj = 'Kiss Pál';
 select * from naploVersenyzo;



