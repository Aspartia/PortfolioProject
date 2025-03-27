#
# DUMP FILE
#
# Database is ported from MS Access
#------------------------------------------------------------------
# Created using "MS Access to MySQL" form http://www.bullzip.com
# Program Version 5.5.282
#
# OPTIONS:
#   sourcefilename=D:/Egyetem/AdatbazisJegyzet/JegyzetbeliFeladatsorok/repter.mdb
#   sourceusername=
#   sourcepassword=
#   sourcesystemdatabase=
#   destinationdatabase=repter
#   storageengine=InnoDB
#   dropdatabase=0
#   createtables=1
#   unicode=1
#   autocommit=1
#   transferdefaultvalues=1
#   transferindexes=1
#   transferautonumbers=1
#   transferrecords=1
#   columnlist=1
#   tableprefix=
#   negativeboolean=0
#   ignorelargeblobs=0
#   memotype=
#   datetimetype=
#

CREATE DATABASE IF NOT EXISTS `repter`;
USE `repter`;

#
# Table structure for table 'palyak'
#

DROP TABLE IF EXISTS `palyak`;

CREATE TABLE `palyak` (
  `sorszam` INTEGER NOT NULL AUTO_INCREMENT, 
  `nev` VARCHAR(255), 
  `hossz` INTEGER, 
  `szelesseg` INTEGER, 
  `anyag` VARCHAR(255), 
  PRIMARY KEY (`sorszam`)
) ENGINE=innodb DEFAULT CHARSET=utf8;

SET autocommit=1;

#
# Dumping data for table 'palyak'
#

INSERT INTO `palyak` (`sorszam`, `nev`, `hossz`, `szelesseg`, `anyag`) VALUES (1, 'Budapest-Ferihegy', 3010, 45, 'beton');
INSERT INTO `palyak` (`sorszam`, `nev`, `hossz`, `szelesseg`, `anyag`) VALUES (2, 'Budapest-Ferihegy', 3707, 45, 'beton');
INSERT INTO `palyak` (`sorszam`, `nev`, `hossz`, `szelesseg`, `anyag`) VALUES (3, 'Budapest-Ferihegy', 900, 23, 'beton');
INSERT INTO `palyak` (`sorszam`, `nev`, `hossz`, `szelesseg`, `anyag`) VALUES (4, 'Budapest-Ferihegy', 900, 23, 'beton');
INSERT INTO `palyak` (`sorszam`, `nev`, `hossz`, `szelesseg`, `anyag`) VALUES (5, 'Debreceni nemzetközi repülőtér', 2500, 40, 'beton');
INSERT INTO `palyak` (`sorszam`, `nev`, `hossz`, `szelesseg`, `anyag`) VALUES (6, 'Debreceni nemzetközi repülőtér', 2500, 40, 'beton');
INSERT INTO `palyak` (`sorszam`, `nev`, `hossz`, `szelesseg`, `anyag`) VALUES (7, 'Debreceni nemzetközi repülőtér', 2500, 90, 'beton');
INSERT INTO `palyak` (`sorszam`, `nev`, `hossz`, `szelesseg`, `anyag`) VALUES (8, 'Debreceni nemzetközi repülőtér', 1000, 100, 'fű');
INSERT INTO `palyak` (`sorszam`, `nev`, `hossz`, `szelesseg`, `anyag`) VALUES (9, 'Győr-Pér', 1450, 30, 'beton');
INSERT INTO `palyak` (`sorszam`, `nev`, `hossz`, `szelesseg`, `anyag`) VALUES (10, 'Győr-Pér', 1450, 30, 'beton');
INSERT INTO `palyak` (`sorszam`, `nev`, `hossz`, `szelesseg`, `anyag`) VALUES (11, 'Győr-Pér', 1340, 150, 'fű');
INSERT INTO `palyak` (`sorszam`, `nev`, `hossz`, `szelesseg`, `anyag`) VALUES (12, 'Győr-Pér', 900, 150, 'fű');
INSERT INTO `palyak` (`sorszam`, `nev`, `hossz`, `szelesseg`, `anyag`) VALUES (13, 'Pécs-Pogány Repülőtér', 1500, 30, 'beton');
INSERT INTO `palyak` (`sorszam`, `nev`, `hossz`, `szelesseg`, `anyag`) VALUES (14, 'Sármellék nemzetközi repülőtér', 2500, 60, 'beton');
INSERT INTO `palyak` (`sorszam`, `nev`, `hossz`, `szelesseg`, `anyag`) VALUES (15, 'Sármellék nemzetközi repülőtér', 1000, 45, 'fű');
INSERT INTO `palyak` (`sorszam`, `nev`, `hossz`, `szelesseg`, `anyag`) VALUES (16, 'Sármellék nemzetközi repülőtér', 30, 45, 'beton');
INSERT INTO `palyak` (`sorszam`, `nev`, `hossz`, `szelesseg`, `anyag`) VALUES (17, 'Fertőszentmiklós', 985, 23, 'beton');
INSERT INTO `palyak` (`sorszam`, `nev`, `hossz`, `szelesseg`, `anyag`) VALUES (18, 'Nyíregyháza', 1000, 20, 'beton');
INSERT INTO `palyak` (`sorszam`, `nev`, `hossz`, `szelesseg`, `anyag`) VALUES (19, 'Nyíregyháza', 1000, 60, 'fű');
INSERT INTO `palyak` (`sorszam`, `nev`, `hossz`, `szelesseg`, `anyag`) VALUES (20, 'Siófok-Kiliti', 2000, 50, 'fű');
INSERT INTO `palyak` (`sorszam`, `nev`, `hossz`, `szelesseg`, `anyag`) VALUES (21, 'Siófok-Kiliti', 2000, 50, 'fű');
INSERT INTO `palyak` (`sorszam`, `nev`, `hossz`, `szelesseg`, `anyag`) VALUES (22, 'Siófok-Kiliti', 2000, 140, 'fű');
INSERT INTO `palyak` (`sorszam`, `nev`, `hossz`, `szelesseg`, `anyag`) VALUES (23, 'Kecskeméti katonai repülőtér', 2499, 60, 'beton');
INSERT INTO `palyak` (`sorszam`, `nev`, `hossz`, `szelesseg`, `anyag`) VALUES (24, 'Kecskeméti katonai repülőtér', 2499, 60, 'beton');
INSERT INTO `palyak` (`sorszam`, `nev`, `hossz`, `szelesseg`, `anyag`) VALUES (25, 'Pápa', 2400, 60, 'beton');
INSERT INTO `palyak` (`sorszam`, `nev`, `hossz`, `szelesseg`, `anyag`) VALUES (26, 'Pápa', 2400, 60, 'beton');
INSERT INTO `palyak` (`sorszam`, `nev`, `hossz`, `szelesseg`, `anyag`) VALUES (27, 'Szolnok', 2000, 70, 'beton');
INSERT INTO `palyak` (`sorszam`, `nev`, `hossz`, `szelesseg`, `anyag`) VALUES (28, 'Szolnok', 2000, 50, 'fű');
INSERT INTO `palyak` (`sorszam`, `nev`, `hossz`, `szelesseg`, `anyag`) VALUES (29, 'Taszár', 2500, 60, 'beton');
INSERT INTO `palyak` (`sorszam`, `nev`, `hossz`, `szelesseg`, `anyag`) VALUES (30, 'Békéscsabai repülőtér', 1500, 30, 'beton');
INSERT INTO `palyak` (`sorszam`, `nev`, `hossz`, `szelesseg`, `anyag`) VALUES (31, 'Békéscsabai repülőtér', 1500, 30, 'fű');
INSERT INTO `palyak` (`sorszam`, `nev`, `hossz`, `szelesseg`, `anyag`) VALUES (32, 'Békéscsabai repülőtér', 800, 200, 'fű');
INSERT INTO `palyak` (`sorszam`, `nev`, `hossz`, `szelesseg`, `anyag`) VALUES (33, 'Székesfehérvár-Börgöndi repülőtér', 1200, 200, 'fű');
INSERT INTO `palyak` (`sorszam`, `nev`, `hossz`, `szelesseg`, `anyag`) VALUES (34, 'Budaörs', 980, 60, 'fű');
INSERT INTO `palyak` (`sorszam`, `nev`, `hossz`, `szelesseg`, `anyag`) VALUES (35, 'Budaörs', 750, 40, 'fű');
INSERT INTO `palyak` (`sorszam`, `nev`, `hossz`, `szelesseg`, `anyag`) VALUES (36, 'Budapest-Hármashatárhegy', 1000, 100, 'fű');
INSERT INTO `palyak` (`sorszam`, `nev`, `hossz`, `szelesseg`, `anyag`) VALUES (37, 'Dunakeszi', 800, 500, 'fű');
INSERT INTO `palyak` (`sorszam`, `nev`, `hossz`, `szelesseg`, `anyag`) VALUES (38, 'Dunaújváros', 950, 60, 'fű');
INSERT INTO `palyak` (`sorszam`, `nev`, `hossz`, `szelesseg`, `anyag`) VALUES (39, 'Esztergomi repülőtér', 1000, 80, 'fű');
INSERT INTO `palyak` (`sorszam`, `nev`, `hossz`, `szelesseg`, `anyag`) VALUES (40, 'Farkashegy', 1000, 200, 'fű');
INSERT INTO `palyak` (`sorszam`, `nev`, `hossz`, `szelesseg`, `anyag`) VALUES (41, 'Gödöllői repülőtér', 1000, 100, 'fű');
INSERT INTO `palyak` (`sorszam`, `nev`, `hossz`, `szelesseg`, `anyag`) VALUES (42, 'Gyöngyös-Pipishegy', 760, 20, 'fű');
INSERT INTO `palyak` (`sorszam`, `nev`, `hossz`, `szelesseg`, `anyag`) VALUES (43, 'Hajdúszoboszló', 1000, 50, 'fű');
INSERT INTO `palyak` (`sorszam`, `nev`, `hossz`, `szelesseg`, `anyag`) VALUES (44, 'Hajdúszoboszló', 800, 50, 'fű');
INSERT INTO `palyak` (`sorszam`, `nev`, `hossz`, `szelesseg`, `anyag`) VALUES (45, 'Jakabszállás', 600, 18, 'fű');
INSERT INTO `palyak` (`sorszam`, `nev`, `hossz`, `szelesseg`, `anyag`) VALUES (46, 'Jakabszállás', 1000, 30, 'fű');
INSERT INTO `palyak` (`sorszam`, `nev`, `hossz`, `szelesseg`, `anyag`) VALUES (47, 'Kaposújlak', 610, 18, 'fű');
INSERT INTO `palyak` (`sorszam`, `nev`, `hossz`, `szelesseg`, `anyag`) VALUES (48, 'Kaposújlak', 1200, 200, 'fű');
INSERT INTO `palyak` (`sorszam`, `nev`, `hossz`, `szelesseg`, `anyag`) VALUES (49, 'Kecskéd', 1000, 50, 'fű');
INSERT INTO `palyak` (`sorszam`, `nev`, `hossz`, `szelesseg`, `anyag`) VALUES (50, 'Kecskéd', 1200, 50, 'fű');
INSERT INTO `palyak` (`sorszam`, `nev`, `hossz`, `szelesseg`, `anyag`) VALUES (51, 'Kiskunfélegyháza', 758, 160, 'fű');
INSERT INTO `palyak` (`sorszam`, `nev`, `hossz`, `szelesseg`, `anyag`) VALUES (52, 'Kiskunfélegyháza', 536, 100, 'fű');
INSERT INTO `palyak` (`sorszam`, `nev`, `hossz`, `szelesseg`, `anyag`) VALUES (53, 'Mezőkövesd', 800, 100, 'fű');
INSERT INTO `palyak` (`sorszam`, `nev`, `hossz`, `szelesseg`, `anyag`) VALUES (54, 'Miskolc', 850, 100, 'fű');
INSERT INTO `palyak` (`sorszam`, `nev`, `hossz`, `szelesseg`, `anyag`) VALUES (55, 'Miskolc', 800, 100, 'fű');
INSERT INTO `palyak` (`sorszam`, `nev`, `hossz`, `szelesseg`, `anyag`) VALUES (56, 'Szeged', 1185, 30, 'beton');
INSERT INTO `palyak` (`sorszam`, `nev`, `hossz`, `szelesseg`, `anyag`) VALUES (57, 'Szeged', 1177, 50, 'fű');
INSERT INTO `palyak` (`sorszam`, `nev`, `hossz`, `szelesseg`, `anyag`) VALUES (58, 'Szeged', 610, 50, 'fű');
INSERT INTO `palyak` (`sorszam`, `nev`, `hossz`, `szelesseg`, `anyag`) VALUES (59, 'Szentes', 750, 150, 'fű');
INSERT INTO `palyak` (`sorszam`, `nev`, `hossz`, `szelesseg`, `anyag`) VALUES (60, 'Szolnok-Szandaszőlős', 1050, 200, 'fű');
INSERT INTO `palyak` (`sorszam`, `nev`, `hossz`, `szelesseg`, `anyag`) VALUES (61, 'Szombathely', 1600, 500, 'fű');
INSERT INTO `palyak` (`sorszam`, `nev`, `hossz`, `szelesseg`, `anyag`) VALUES (62, 'Tököl', 2500, 80, 'beton');
INSERT INTO `palyak` (`sorszam`, `nev`, `hossz`, `szelesseg`, `anyag`) VALUES (63, 'Tököl', 1100, 50, 'fű');
# 63 records

