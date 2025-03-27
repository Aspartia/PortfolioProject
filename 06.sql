
/*
 * Emma és baráti társasága érdekes kísérletbe fogtak: elektronikus angol-magyar szótárat készítenek. 
 * Fordítói munkájuk során a szótárprogramba bejegyzik (magyar jelentésükkel együtt) azokat az angol szavakat, amelyek a szótárprogramban még nem szerepelnek. 
 * Ugyanezt teszik akkor is, ha egy – a szótárukban már szereplő – szónak egy másik jelentésével találkoznak. 
 * A folyamatosan bővülő szótár szavait rendszeresen ellenőrzik, és minősítik is a többiek bejegyzéseit. 
 * Feljegyzik, hogy egy szó jelentését hányan tartják helyesnek, illetve helytelennek.
4. Importáljuk a szotar adatbázist a szotar.sql állomány segítségével és ellenőrizzük, hogy megfele-e minden az alábbiaknak!

Tábla
	szolista(azon, magyar, angol, felvetel, helyes, helytelen)
		azon		a szópár azonosítója (számláló, kulcs)
		angol		a szópár nagol eleme, angol jelentése (szöveg)
		magyar		a szópár magyar eleme, a magyar jelentés ( szöveg)
		felvetel	a szópár adatbázisba kerülésének dátuma (dátum)
		helyes		a szópárt helyesnek minősítők száma (szám)
		helytelen	a szópárt helytelennek minősítők száma (szám)

 * */

#4. 
use szotar;
show tables;
desc szolista;
select * from szolista order by angol;

alter table szolista modify felvetel date;

#5. Készítsen lekérdezést, amely megjeleníti azokat az angol szavakat, amelyek valamelyik magyar jelentését legalább 150 fő helyesnek ítélte, 
# vagy kevesebb, mint 5 fő találta hibásnak! Rendezzük ábécé sorrendbe!
select angol, magyar, helyes, helytelen from szolista where helyes >150 or helytelen < 5 order by angol;


#6. Írassa ki lekérdezés segítségével, hogy hány olyan az angol szó van, amelyeknek magyar megfelelőjét pontosan az angol
# írásmóddal egyezően írják!
select angol, magyar from szolista where left(angol,char_length(angol))=left(magyar,char_length(magyar));
select count(angol) from szolista where left(angol,char_length(angol))=left(magyar,char_length(magyar))  having count(angol); -- 3


#7. Adjunk hozzá egy évfolyam oszlopot egész típussal. Ebben azt szeretnénk eltárolni, hogy melyik évfolyamba tanulják
# először ezt a szót! 2 általad kiválasztott szó esetében állítsd ezt 10-re!
alter table szolista add evfolyam int;
desc szolista;
select * from szolista order by angol;

-- oszlopok adataiank emgadása:
update szolista set evfolyam=10 where azon=3203; 
update szolista set evfolyam=10 where azon=3204; 

#8. Írassuk ki, hogy átlagosan mennyi a helyesek, és a helytelenek száma!
select avg(helyes), avg(helytelen) from szolista;

#9. Készítsen lekérdezést, amely megadja, hogy összesen hányan minősítették az „a” kezdőbetűs angol szavakat!
select sum(helytelen), sum(helyes) from szolista where left(angol,1)='a' ; 

#10. Készítsen lekérdezést, amely megadja, hogy hány szó került hamarabb felvételre a szótárban mint a „warp” angol szó!
select felvetel, angol from szolista where angol = 'warp' limit 1; -- '2004-07-13'

select angol, magyar,felvetel from szolista where felvetel < (select felvetel from szolista where angol = 'warp' limit 1);
select count(*) from szolista where felvetel < (select felvetel from szolista where angol = 'warp' limit 1); -- 860

#11. Készítsen lekérdezést, amely megadja, hogy az adatbázis angol szavai közül melyeknek van legalább 3 magyar jelentése!
select angol, count(magyar) from szolista group by angol having count(magyar)>2; 

#13. Készítsen helyes nevű nézettáblát, amelybe azon angol-magyar szópárok kerüljenek, 
# amelyeket legalább 100-zal többen minősítettek helyesnek, mint helytelennek!
select angol, magyar, helyes, helytelen, helyes-helytelen  from szolista where helyes-helytelen >100;

CREATE VIEW helyes as select angol, magyar FROM szolista where helyes-helytelen >100;
select * from helyes;

#14. Írassuk ki azon angol szavakat, amik helyes értéke több minta az „attach” szóé!
select helyes from szolista where angol ='attach'; -- 145

select angol from szolista where helyes > (select helyes from szolista where angol ='attach') order by helyes;

-- -------------------------------------------------------------------------------------------------------------------------------------------
-- -------------------------------------------------------------------------------------------------------------------------------------------
/*Minden településen fontos közszolgáltatás a hulladékszállítás. A lakosság egy évre előre megkapja a hulladékszállítás naptárát, 
 * benne az elszállítandó szelektív hulladék típusával, időpontjával (naponta egyszer szállítanak, akár többféle hulladékot egyszerre).
 *  A naptár mellett rendelkezésünkre állnak egy lakó saját, a teljes 2018. évre vonatkozó hulladékszállítási adatai. 
 * Az adatbázis ezeket az adatokat tartalmazza.
 * 
 * Táblák
 * 
 * naptár (azon, datum, szolgid)
 * 	azon      - a szállítás azonosítója (számláló) ez a kulcs
 * 	datum     - a hulladékszállítás napj (dátum)
 * 	szolgid   - a szállításra kerülő hulladék típusának azonosítüja (szám)
 * 
 * lakig
 * 	azon      - A hulladékszállítás igénybevételének azonosítója ( számláló) ez a kulcs
 * 	igeny     - az a nap ,amikor a lakó a hulladékot a kapu elé kitette (dátum)
 * 	szolid    - a szállításra kitett hulladék típusának azonosítója (szám)
 * 	mennyiseg -  A hulladék mennyisége szállítási egységben - doboz, zsák, kuka 
 * 
 * szolgaltatas ( id, tipus, jelentes)
 * 	id		 -  szelektiv hulladék típusának azonosítója (szám), ez a kulcs
 * 	tipus    - hulladéktípus szolgáltató által megadott rövidítése (szöveg)
 * 	jelentes - hulladéktipus részletes leírása (szöveg)
 * */

#15. Importálja az adatbázis az szallitas.sql állomány segítségével, majd értelmezze és ellenőrizze a szerkezetet az alábbiak alapján!
use szallitas;
show tables;
desc lakig;
select * from lakig; -- 110
desc naptar;
select * from naptar; -- 157
desc szolgaltatas;
select * from szolgaltatas; -- 5 

alter table naptar modify datum date;
alter table lakig modify igeny date;
alter table szolgaltatas modify 

-- join:
select * from lakig join naptar on naptar.szolgid=lakig.szolgid join szolgaltatas on lakig.szolgid = szolgaltatas.id; -- 5534

#16. Készítsen lekérdezést, amely megjeleníti a naptárból az utolsó, műanyag („mua” típusú) hulladék szállításának dátumát a március hónapban!
select distinct((naptar.datum)) from lakig join naptar on naptar.szolgid=lakig.szolgid join szolgaltatas on lakig.szolgid = szolgaltatas.id
where szolgaltatas.tipus = "mua" and month(naptar.datum) = '03' order by day(naptar.datum) desc limit 1;

-- check:
select * from lakig join naptar on naptar.szolgid=lakig.szolgid join szolgaltatas on lakig.szolgid = szolgaltatas.id
where szolgaltatas.tipus = "mua" having month(naptar.datum) = '03' order by naptar.datum desc;


#17. Írassuk ki, hogy hónaponként hány szállítás volt az évben!
select naptar.datum, count(lakig.mennyiseg) from lakig join naptar on naptar.szolgid=lakig.szolgid join szolgaltatas 
on lakig.szolgid = szolgaltatas.id group by month(naptar.datum);


#18. Készítsen lekérdezést, amely megadja, hogy a lakó egész évben hányszor szállíttatott el papírhulladékot („pa” típusú)!
select count(szolgaltatas.tipus) from lakig join naptar on naptar.szolgid=lakig.szolgid join szolgaltatas on lakig.szolgid = szolgaltatas.id 
where szolgaltatas.tipus='pa'; 

#19. Adja meg lekérdezés segítségével azt a hónapot, amikor a lakó a legkevesebb egység hulladékot tette ki elszállításra!
select naptar.datum, count(lakig.mennyiseg) from lakig join naptar on naptar.szolgid=lakig.szolgid join szolgaltatas on lakig.szolgid = szolgaltatas.id 
where lakig.mennyiseg =( select min(lakig.mennyiseg) from lakig join naptar on naptar.szolgid=lakig.szolgid join szolgaltatas on lakig.szolgid = szolgaltatas.id)
group by month(naptar.datum) order by count(lakig.mennyiseg) limit 1;


#20.* Készítsen lekérdezést, amely megadja hogy hány olyan nap volt, amikor papír és műanyag („pa” és „mua” típusú) hulladékot is elszállítottak!
select count(naptar.datum) AS Napok_szama from lakig join naptar on naptar.szolgid=lakig.szolgid join szolgaltatas on lakig.szolgid = szolgaltatas.id
where szolgaltatas.tipus='pa' and szolgaltatas.tipus='mua';


#21. Készítsen lekérdezést a naptár alapján, egyes hulladéktípusok elszállítási számáról(szolgaltatas.id) havonta az alábbi minta adattartalmának megfelelően! 
# A hulladéktípusokat havonta a szállítási számok szerint csökkenően rendezve jelenítse meg!
select month(naptar.datum) as Honap ,szolgaltatas.tipus, COUNT(*) AS Szallitasok_szama  from lakig join naptar on naptar.szolgid=lakig.szolgid join szolgaltatas on lakig.szolgid = szolgaltatas.id
group by month(naptar.datum),szolgaltatas.tipus order by Honap asc, Szallitasok_szama desc;












