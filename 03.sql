
'''
Készítsen adatbázist MAV néven! Készítsen adattáblát mozdony néven!
• A szöveges mezők legyenek egységesen 200 karakter hosszúságúak.
• A számnál egész értékeket adjunk meg alapértelmezett 0 értékkel.
• Minden mezőt kötelező legyen kitölteni.
• A táblában készítsen egyedi azonosítót VonatAz néven autoincrementtel! 
A tábla szerkezete a következő:
Az egyes mezők jelentése a következő:
	sorozat		a mozdony fajtájának megnevezése ( szöveg)
	psz 		pályaszám, az azonos sorozatú mozdonyok megkülönböztető száma ( szám)
	gyart_ev	a mozdony gyártási éve (szám)
	gyarto		a mozdonyt gyártó cég neve (szöveg)
	tipus		a sorozaton belüli eltérések jelzésére hanszált megnevezés (szöveg)
	allagba		állagba vétel dátuma, a mozdonyt ekkor vette át a tulajdonsos (dátum)
	tulaj		a mozdony tulajdonosa (szöveg)
	
'''
# 1

CREATE DATABASE MAV;
USE MAV;

CREATE TABLE mozdony (
  VonatAz INTEGER NOT NULL AUTO_INCREMENT,
  sorozat VARCHAR(200) NOT NULL, 
  psz INTEGER NOT NULL default 0, 
  gyart_ev INTEGER NOT NULL default 0, 
  gyarto VARCHAR(200) NOT NULL,   
  tipus VARCHAR(200) NOT NULL, 
  allagba DATE NOT NULL, 
  tulaj VARCHAR(200) NOT NULL, 
  PRIMARY KEY (VonatAz)
);

desc mozdony;

# 2. Vigyünk fel három sort az adattáblába az alábbi táblázat alapján:
'''
VonatAz, sorozat, psz, gyart_ev, gyarto, tipus, allagba, tulaj
1, '51', 4, 1911, 'Ringhoffer', '', '1911-09-18', 'MÁV'
NOT NULL, 'V50', 1, 1923, 'GANZ MÁVAG', 'VM 5', '1923-12-31', 'MÁV'
NOT NULL, 'BCmot', 363, 1927, 'GANZ MÁVAG', '','1927-06-01', 'MÁV'
'''

INSERT INTO mozdony (VonatAz, sorozat, psz, gyart_ev, gyarto, tipus, allagba, tulaj) 
VALUES (1, '51', 4, 1911, 'Ringhoffer', '', '1911-09-18', 'MÁV');
INSERT INTO mozdony (VonatAz, sorozat, psz, gyart_ev, gyarto, tipus, allagba, tulaj) 
VALUES (NOT NULL, 'V50', 1, 1923, 'GANZ MÁVAG', 'VM 5', '1923-12-31', 'MÁV');
INSERT INTO mozdony (VonatAz, sorozat, psz, gyart_ev, gyarto, tipus, allagba, tulaj) 
VALUES (NOT NULL, 'BCmot', 363, 1927, 'GANZ MÁVAG', '','1927-06-01', 'MÁV');

-- check
select * from mozdony;

delete from mozdony;
truncate mozdony; -- ID sorszámot törli 

#3. Adjunk hozzá utólag egy mukodokepes oszlopot logikai típussal, ebben az adható meg, hogy éppen javítás alatt van, vagy működik. Állítsuk be igazra V50 esetén!
alter table mozdony add mukodokepes bool;
update mozdony set mukodokepes=true where sorozat='V50';

-- ------------------------------------------------------------------------------------------------------
-- ------------------------------------------------------------------------------------------------------
'''
A biztonságos légiközlekedés tervezéséhez a repülőterek adatait nyilvánosságra hozzák. 
Ez többek között azért fontos, mert például a nehezebb teherszállító repülőgépek csak 
betonozott pályára tudnak leszállni. A magyarországi repülőterek kifutópályáinak adatai 
állnak rendelkezésre az adatbázisban. Fontos tudnia, hogy a kifutópályák téglalap alakúak.

palyak(sorszam, nev, hossz, szelesseg, anyag)
	sorszam			A kifutópálya azonosítója (számláló), ez a kulcs
	nev				A repülőtér neve (szöveg)
	hossz			A kifutópálya hossza méterben (szám)
	szelesseg  		A kifutópálya szélessége méterben (szám)
	anyag			A kifutópálya borításának anyaga (szöveg), értéke fű vagy beton.
'''

#4. Importálja a repter.sql állományt és ellenőrizze a kapott adatokat.
use repter;
select * from palyak;
desc palyak;


#5. Listázza lekérdezés segítségével a betonozott kifutópályák minden adatát!
select * from palyak where anyag = 'beton';

#6. Készítsen lekérdezést, amellyel felsorolja az 1500 méteres és ennél hosszabb kifutópályákat!
# Csak a repülőtér neve és a pálya hossza jelenjen meg, más adat ne!
select nev, hossz from palyak where hossz >= 1500 /*order by hossz*/;

#7. Adja meg lekérdezés segítségével azoknak a repülőtereknek a nevét, ahol egynél több beton kifutópálya van!
select count(*), nev from palyak where anyag = 'beton' group by nev having count(*) >1;

#8. Mekkora az átlagos területe a kifutópályáknak? a*b
select *, hossz * szelesseg as 'Terület' from palyak;
select nev, avg(hossz * szelesseg) as 'Átlagos Terület' from palyak group by nev ;

#9.Lekérdezéssel határozza meg, hogy melyik repülőtéren található és milyen nagyságú a legnagyobb területű füves kifutópálya!
-- Melyik repülőtren van a legnagyobb füves:
select nev, max(hossz * szelesseg) as 'Terület' from palyak where anyag = 'fű';

select nev, hossz*szelesseg as 'Terület' from palyak where hossz*szelesseg = (select max(hossz * szelesseg) from palyak where anyag = 'fű');

-- check: 
select *, hossz*szelesseg as 'Terület' from palyak where anyag = 'fű' order by Terület desc;

#10.Adja meg lekérdezés segítségével azoknak a repülőtereknek a nevét, ahol csak füves kifutópálya van, nincs betonborítású! 
# Minden repülőtér neve csak egyszer jelenjen meg a listában!

select distinct(nev) from palyak where nev not in (select nev from palyak where anyag = 'beton') 
	and nev in ( select nev from palyak where anyag = 'fű');

#11. Írassuk ki a leghosszabb kifutójú betonpályá(k) adatait!
select nev, hossz from palyak where hossz = (select max(hossz) from palyak where anyag = 'beton');
-- vagy: 
select nev, hossz from palyak where hossz in (select max(hossz) from palyak where anyag = 'beton');

-- ----------------------------------------------------------------------------------------------------
-- ----------------------------------------------------------------------------------------------------
'''
Egy gimnázium végzett diákjai alkotják az öregdiák közösségét. 
A közösségbe regisztráció útján lehet belépni. 
Az alábbi adatbázis a rendelkezésre álló információk mindenki számára elérhető részét mutatják. 
Ezekből kiderülhet, ki melyik osztályba járt, mikor érettségizett, ki volt az osztályfőnöke, hol él, 
milyen végzettséget szerzett. Egy osztálynak több osztályfönőke is lehet. 
Az adatbázis szerkezete a következő:

Táblák:
	diák
		diákazonosító - A diák azonosítója (szám, kulcs)
		nev 		  - A diák neve (szöveg)
		osztálykód 	  - A diák osztályának azonosítója (szám)
		ország 		  - A diák hol él (szöveg)
		vegzettseg    - A diák végzettsége (szöveg)
		regido        - A regisztráció időpontja (dátum)
	
	osztály
		osztálykod    - Az osztály azonosítója (szám,kulcs)
		tagozat		  - Az osztály típusának megevezése (szöveg)
		betujel		  - Az osztály betűjele (szöveg)
		erettsegi	  - Az osztály ebben az évben tett érettségit (szám)
	
	kapcsolat
		osztálykod    - Az osztály azonosítója (szám)
		ofoazonosito  - Az osztályfőnök azonosítója (szám)
	
	osztályfőnök
		ofoazonosito  - Az osztályfőnök azonosítója (szám)
		nev           - Az osztályfőnök neve (szöveg)
		aktiv         - Jelenleg is tanít-e (logikai)

'''

#12. Olvassuk be a oregdiak.sql állomány segítségével az adatbázist és ellenőrizuk a szerkezetet, ha szükséges végezzük el a változtatásokat.
use oregdiak;

select * from diak join osztaly on diak.osztalykod = osztaly.osztalykod 
					join kapcsolat on kapcsolat.osztalykod = osztaly.osztalykod
					join osztalyfonok on kapcsolat.ofoazonosito = osztalyfonok.ofoazonosito;

desc osztaly;
desc kapcsolat;
desc osztalyfonok;
desc diak;

alter table diak modify regido date;
alter table osztalyfonok modify aktiv tinyint;

-- alaplekérdezés:
select *  from diak join osztaly on diak.osztalykod = osztaly.osztalykod 
					join kapcsolat on kapcsolat.osztalykod = osztaly.osztalykod
					join osztalyfonok on kapcsolat.ofoazonosito = osztalyfonok.ofoazonosito;	
				
#13. Kik regisztráltak eddig a 2005-ben érettségizett „b” jelű osztályból?
select diak.nev, osztaly.erettsegi , osztaly.betujel  from diak join osztaly on diak.osztalykod = osztaly.osztalykod 
					join kapcsolat on kapcsolat.osztalykod = osztaly.osztalykod
					join osztalyfonok on kapcsolat.ofoazonosito = osztalyfonok.ofoazonosito
				where (erettsegi = 2005 and betujel ='b');				

				
#14. Az 1965-ben érettségizett „reál” tagozatos osztály osztályfőnökei közül ki tanít még az iskolában?
select distinct(osztalyfonok.nev) from diak join osztaly on diak.osztalykod = osztaly.osztalykod 
					join kapcsolat on kapcsolat.osztalykod = osztaly.osztalykod
					join osztalyfonok on kapcsolat.ofoazonosito = osztalyfonok.ofoazonosito
				where osztaly.tagozat ='reál' and erettsegi = 1965 and osztalyfonok.aktiv= true;				
			
-- check:
select osztalyfonok.nev, osztalyfonok.aktiv,osztaly.tagozat,osztaly.erettsegi  from diak join osztaly on diak.osztalykod = osztaly.osztalykod 
					join kapcsolat on kapcsolat.osztalykod = osztaly.osztalykod
					join osztalyfonok on kapcsolat.ofoazonosito = osztalyfonok.ofoazonosito
				where osztaly.tagozat ='reál' and erettsegi = 1965 and osztalyfonok.aktiv= true;
			
		
#15. Mely osztályoknak volt egynél több osztályfőnöke? 
# Jelenítse meg az érettségi évét növekvő időrendben, az osztály betűjelét és az osztályfőnökök számát!
# itt összegruppolom az ofőket és mellé öszsesázmolom az egyedi osztályokat
select count(distinct(osztaly.osztalykod)) as 'Ofőszám', osztaly.betujel , osztaly.erettsegi from diak join osztaly on diak.osztalykod = osztaly.osztalykod 
					join kapcsolat on kapcsolat.osztalykod = osztaly.osztalykod
					join osztalyfonok on kapcsolat.ofoazonosito = osztalyfonok.ofoazonosito
				group by osztalyfonok.nev having count(distinct(osztaly.osztalykod)) >1 order by osztaly.erettsegi asc;	
					
			
#16. Hány különböző országban élnek az öregdiákok? ok
select distinct(diak.orszag) from diak join osztaly on diak.osztalykod = osztaly.osztalykod 
					join kapcsolat on kapcsolat.osztalykod = osztaly.osztalykod
					join osztalyfonok on kapcsolat.ofoazonosito = osztalyfonok.ofoazonosito;
				
#17. Farkas Dóra 1983-ban érettségizett. Rajta kívül kik regisztráltak eddig az osztályából? 
-- kik azok akik vele egy osztályba jártak:  
			
select diak.nev, diak.regido from diak join osztaly on diak.osztalykod = osztaly.osztalykod 
					join kapcsolat on kapcsolat.osztalykod = osztaly.osztalykod
					join osztalyfonok on kapcsolat.ofoazonosito = osztalyfonok.ofoazonosito
				where osztaly.osztalykod = (select osztaly.osztalykod from diak join osztaly on diak.osztalykod = osztaly.osztalykod 
					join kapcsolat on kapcsolat.osztalykod = osztaly.osztalykod
					join osztalyfonok on kapcsolat.ofoazonosito = osztalyfonok.ofoazonosito
				where diak.nev ='Farkas Dóra') and diak.nev <> 'Farkas Dóra';				
				
#18. A regisztráció során mindenki megjelölte, milyen végzettséget szerzett, vagy hogy még csak érettségivel rendelkezik. 
# Állapítsa meg a lekérdezés segítségével a foglalkozással rendelkezők alapján, hogy melyik három szakma volt a legnépszerűbb! 
# A foglalkozások nevét és a végzettek számát jelenítse meg!

-- subquery:
select count(diak.nev) from diak join osztaly on diak.osztalykod = osztaly.osztalykod 
					join kapcsolat on kapcsolat.osztalykod = osztaly.osztalykod
					join osztalyfonok on kapcsolat.ofoazonosito = osztalyfonok.ofoazonosito
				group by diak.vegzettseg;
				
select diak.vegzettseg, count(diak.nev) as 'Végzettek száma' from diak join osztaly on diak.osztalykod = osztaly.osztalykod 
					join kapcsolat on kapcsolat.osztalykod = osztaly.osztalykod
					join osztalyfonok on kapcsolat.ofoazonosito = osztalyfonok.ofoazonosito 
			where diak.vegzettseg <> 'érettségi' group by diak.vegzettseg order by count(diak.nev) desc limit 3;


#19. Ki(k) regisztrált(ak) legkorábban a 2005-ben érettségizett „a” jelű osztályból?
-- subquery:
select diak.regido, diak.nev from diak join osztaly on diak.osztalykod = osztaly.osztalykod 
					join kapcsolat on kapcsolat.osztalykod = osztaly.osztalykod
					join osztalyfonok on kapcsolat.ofoazonosito = osztalyfonok.ofoazonosito
				where osztaly.erettsegi =2005 and osztaly.betujel ='a';

 
select diak.nev  from diak join osztaly on diak.osztalykod = osztaly.osztalykod 
					join kapcsolat on kapcsolat.osztalykod = osztaly.osztalykod
					join osztalyfonok on kapcsolat.ofoazonosito = osztalyfonok.ofoazonosito
				where diak.regido = (select min(diak.regido) from diak join osztaly on diak.osztalykod = osztaly.osztalykod 
					join kapcsolat on kapcsolat.osztalykod = osztaly.osztalykod
					join osztalyfonok on kapcsolat.ofoazonosito = osztalyfonok.ofoazonosito
				where osztaly.erettsegi =2005 and osztaly.betujel ='a');

#20. Sorolja fel lekérdezések segítségével, milyen külföldi országokba kerültek az évek során az iskola egykori diákjai!
# Egy ország neve csak egyszer jelenjen meg!
select distinct(diak.orszag) from diak join osztaly on diak.osztalykod = osztaly.osztalykod 
					join kapcsolat on kapcsolat.osztalykod = osztaly.osztalykod
					join osztalyfonok on kapcsolat.ofoazonosito = osztalyfonok.ofoazonosito where diak.orszag <> 'Magyarország';
				
#21. Kik regisztráltak szenteste napján, december 24-én? Adja meg nevüket, az érettségi évét és az osztály betűjelét!
select diak.nev, diak.regido, osztaly.erettsegi ,osztaly.betujel  from diak join osztaly on diak.osztalykod = osztaly.osztalykod 
					join kapcsolat on kapcsolat.osztalykod = osztaly.osztalykod
					join osztalyfonok on kapcsolat.ofoazonosito = osztalyfonok.ofoazonosito
				where diak.regido LIKE '2___-12-24';




