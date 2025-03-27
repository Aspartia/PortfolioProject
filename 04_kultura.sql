#
# DUMP FILE
#
# Database is ported from MS Access
#------------------------------------------------------------------
# Created using "MS Access to MySQL" form http://www.bullzip.com
# Program Version 5.5.282
#
# OPTIONS:
#   sourcefilename=C:/Users/gugol/Documents/kultura.accdb
#   sourceusername=
#   sourcepassword=
#   sourcesystemdatabase=
#   destinationdatabase=kultura
#   storageengine=InnoDB
#   dropdatabase=1
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
#   memotype=LONGTEXT
#   datetimetype=DATETIME
#

DROP DATABASE IF EXISTS `kultura`;
CREATE DATABASE IF NOT EXISTS `kultura`;
USE `kultura`;

#
# Table structure for table 'Kultforr'
#

DROP TABLE IF EXISTS `Kultforr`;

CREATE TABLE `Kultforr` (
  `Azonosító` INTEGER NOT NULL AUTO_INCREMENT, 
  `Nev` VARCHAR(255), 
  `Osztaly` VARCHAR(255), 
  `Szinhaz` INTEGER, 
  `Mozi` INTEGER, 
  `Napilap` VARCHAR(255), 
  `KonyvOldal` INTEGER, 
  PRIMARY KEY (`Azonosító`), 
  INDEX (`KonyvOldal`)
) ENGINE=innodb DEFAULT CHARSET=utf8;

SET autocommit=1;

#
# Dumping data for table 'Kultforr'
#

INSERT INTO `Kultforr` (`Azonosító`, `Nev`, `Osztaly`, `Szinhaz`, `Mozi`, `Napilap`, `KonyvOldal`) VALUES (1, 'Albert Gyula', 'B', 3, 2, 'Nem', 102);
INSERT INTO `Kultforr` (`Azonosító`, `Nev`, `Osztaly`, `Szinhaz`, `Mozi`, `Napilap`, `KonyvOldal`) VALUES (2, 'Bacsó Gabriella', 'A', 2, 2, 'Nem', 140);
INSERT INTO `Kultforr` (`Azonosító`, `Nev`, `Osztaly`, `Szinhaz`, `Mozi`, `Napilap`, `KonyvOldal`) VALUES (3, 'Bán Béla', 'B', 4, 1, 'Igen', 1489);
INSERT INTO `Kultforr` (`Azonosító`, `Nev`, `Osztaly`, `Szinhaz`, `Mozi`, `Napilap`, `KonyvOldal`) VALUES (4, 'Birkás Lajos', 'A', 2, 0, 'Nem', 725);
INSERT INTO `Kultforr` (`Azonosító`, `Nev`, `Osztaly`, `Szinhaz`, `Mozi`, `Napilap`, `KonyvOldal`) VALUES (5, 'Csángó Pál', 'A', 1, 0, 'Igen', 2023);
INSERT INTO `Kultforr` (`Azonosító`, `Nev`, `Osztaly`, `Szinhaz`, `Mozi`, `Napilap`, `KonyvOldal`) VALUES (6, 'Csontos Károly', 'A', 1, 1, 'Nem', 211);
INSERT INTO `Kultforr` (`Azonosító`, `Nev`, `Osztaly`, `Szinhaz`, `Mozi`, `Napilap`, `KonyvOldal`) VALUES (7, 'Dénes László', 'A', 3, 1, 'Igen', 706);
INSERT INTO `Kultforr` (`Azonosító`, `Nev`, `Osztaly`, `Szinhaz`, `Mozi`, `Napilap`, `KonyvOldal`) VALUES (8, 'Dobó Ernő', 'A', 0, 5, 'Igen', 1025);
INSERT INTO `Kultforr` (`Azonosító`, `Nev`, `Osztaly`, `Szinhaz`, `Mozi`, `Napilap`, `KonyvOldal`) VALUES (9, 'Érsek Márta', 'B', 2, 1, 'Igen', 1188);
INSERT INTO `Kultforr` (`Azonosító`, `Nev`, `Osztaly`, `Szinhaz`, `Mozi`, `Napilap`, `KonyvOldal`) VALUES (10, 'Farádi Anikó', 'A', 2, 0, 'Nem', 152);
INSERT INTO `Kultforr` (`Azonosító`, `Nev`, `Osztaly`, `Szinhaz`, `Mozi`, `Napilap`, `KonyvOldal`) VALUES (11, 'Gál Ádám', 'A', 2, 5, 'Nem', 569);
INSERT INTO `Kultforr` (`Azonosító`, `Nev`, `Osztaly`, `Szinhaz`, `Mozi`, `Napilap`, `KonyvOldal`) VALUES (12, 'Hegedűs Zoltán', 'B', 0, 5, 'Nem', 787);
INSERT INTO `Kultforr` (`Azonosító`, `Nev`, `Osztaly`, `Szinhaz`, `Mozi`, `Napilap`, `KonyvOldal`) VALUES (13, 'Illés Miklós', 'A', 2, 2, 'Nem', 635);
INSERT INTO `Kultforr` (`Azonosító`, `Nev`, `Osztaly`, `Szinhaz`, `Mozi`, `Napilap`, `KonyvOldal`) VALUES (14, 'Jakab Ágnes', 'B', 4, 1, 'Nem', 1019);
INSERT INTO `Kultforr` (`Azonosító`, `Nev`, `Osztaly`, `Szinhaz`, `Mozi`, `Napilap`, `KonyvOldal`) VALUES (15, 'Káli Lajos', 'B', 3, 0, 'Nem', 719);
INSERT INTO `Kultforr` (`Azonosító`, `Nev`, `Osztaly`, `Szinhaz`, `Mozi`, `Napilap`, `KonyvOldal`) VALUES (16, 'Kocsis Judit', 'A', 3, 0, 'Igen', 1323);
INSERT INTO `Kultforr` (`Azonosító`, `Nev`, `Osztaly`, `Szinhaz`, `Mozi`, `Napilap`, `KonyvOldal`) VALUES (17, 'Kósa Gyula', 'B', 5, 0, 'Nem', 478);
INSERT INTO `Kultforr` (`Azonosító`, `Nev`, `Osztaly`, `Szinhaz`, `Mozi`, `Napilap`, `KonyvOldal`) VALUES (18, 'Kovács Rita', 'A', 0, 3, 'Nem', 1127);
INSERT INTO `Kultforr` (`Azonosító`, `Nev`, `Osztaly`, `Szinhaz`, `Mozi`, `Napilap`, `KonyvOldal`) VALUES (19, 'Kozma Kálmán', 'B', 1, 1, 'Nem', 485);
INSERT INTO `Kultforr` (`Azonosító`, `Nev`, `Osztaly`, `Szinhaz`, `Mozi`, `Napilap`, `KonyvOldal`) VALUES (20, 'Lakatos Réka', 'B', 1, 3, 'Nem', 31);
INSERT INTO `Kultforr` (`Azonosító`, `Nev`, `Osztaly`, `Szinhaz`, `Mozi`, `Napilap`, `KonyvOldal`) VALUES (21, 'Lázár Tamás', 'A', 0, 4, 'Igen', 57);
INSERT INTO `Kultforr` (`Azonosító`, `Nev`, `Osztaly`, `Szinhaz`, `Mozi`, `Napilap`, `KonyvOldal`) VALUES (22, 'Lengyel Mihály', 'A', 3, 1, 'Nem', 464);
INSERT INTO `Kultforr` (`Azonosító`, `Nev`, `Osztaly`, `Szinhaz`, `Mozi`, `Napilap`, `KonyvOldal`) VALUES (23, 'Madarász Emil', 'B', 1, 2, 'Igen', 1185);
INSERT INTO `Kultforr` (`Azonosító`, `Nev`, `Osztaly`, `Szinhaz`, `Mozi`, `Napilap`, `KonyvOldal`) VALUES (24, 'Máté Margit', 'B', 1, 1, 'Igen', 1027);
INSERT INTO `Kultforr` (`Azonosító`, `Nev`, `Osztaly`, `Szinhaz`, `Mozi`, `Napilap`, `KonyvOldal`) VALUES (25, 'Mécses Zsófia', 'A', 2, 5, 'Nem', 548);
INSERT INTO `Kultforr` (`Azonosító`, `Nev`, `Osztaly`, `Szinhaz`, `Mozi`, `Napilap`, `KonyvOldal`) VALUES (26, 'Molnár Dorottya', 'A', 1, 0, 'Nem', 605);
INSERT INTO `Kultforr` (`Azonosító`, `Nev`, `Osztaly`, `Szinhaz`, `Mozi`, `Napilap`, `KonyvOldal`) VALUES (27, 'Nagy Zsuzsa', 'A', 0, 4, 'Nem', 745);
INSERT INTO `Kultforr` (`Azonosító`, `Nev`, `Osztaly`, `Szinhaz`, `Mozi`, `Napilap`, `KonyvOldal`) VALUES (28, 'Pál Beáta', 'B', 1, 1, 'Nem', 113);
INSERT INTO `Kultforr` (`Azonosító`, `Nev`, `Osztaly`, `Szinhaz`, `Mozi`, `Napilap`, `KonyvOldal`) VALUES (29, 'Pásztor Mihály', 'B', 2, 0, 'Nem', 455);
INSERT INTO `Kultforr` (`Azonosító`, `Nev`, `Osztaly`, `Szinhaz`, `Mozi`, `Napilap`, `KonyvOldal`) VALUES (30, 'Pataky József', 'A', 1, 1, 'Nem', 768);
INSERT INTO `Kultforr` (`Azonosító`, `Nev`, `Osztaly`, `Szinhaz`, `Mozi`, `Napilap`, `KonyvOldal`) VALUES (31, 'Rácz Mária', 'A', 0, 4, 'Nem', 544);
INSERT INTO `Kultforr` (`Azonosító`, `Nev`, `Osztaly`, `Szinhaz`, `Mozi`, `Napilap`, `KonyvOldal`) VALUES (32, 'Rózsa Róbert', 'B', 3, 0, 'Nem', 224);
INSERT INTO `Kultforr` (`Azonosító`, `Nev`, `Osztaly`, `Szinhaz`, `Mozi`, `Napilap`, `KonyvOldal`) VALUES (33, 'Sas Ignácz', 'B', 1, 0, 'Igen', 1140);
INSERT INTO `Kultforr` (`Azonosító`, `Nev`, `Osztaly`, `Szinhaz`, `Mozi`, `Napilap`, `KonyvOldal`) VALUES (34, 'Simon Simon', 'B', 0, 2, 'Nem', 438);
INSERT INTO `Kultforr` (`Azonosító`, `Nev`, `Osztaly`, `Szinhaz`, `Mozi`, `Napilap`, `KonyvOldal`) VALUES (35, 'Sós Miklós', 'A', 1, 3, 'Nem', 1062);
INSERT INTO `Kultforr` (`Azonosító`, `Nev`, `Osztaly`, `Szinhaz`, `Mozi`, `Napilap`, `KonyvOldal`) VALUES (36, 'Szabó Mária', 'B', 5, 0, 'Nem', 577);
INSERT INTO `Kultforr` (`Azonosító`, `Nev`, `Osztaly`, `Szinhaz`, `Mozi`, `Napilap`, `KonyvOldal`) VALUES (37, 'Szűcs György', 'B', 0, 1, 'Nem', 606);
INSERT INTO `Kultforr` (`Azonosító`, `Nev`, `Osztaly`, `Szinhaz`, `Mozi`, `Napilap`, `KonyvOldal`) VALUES (38, 'Tatai Márk', 'B', 3, 3, 'Nem', 382);
INSERT INTO `Kultforr` (`Azonosító`, `Nev`, `Osztaly`, `Szinhaz`, `Mozi`, `Napilap`, `KonyvOldal`) VALUES (39, 'Tóbiás Krisztina', 'B', 2, 2, 'Nem', 651);
INSERT INTO `Kultforr` (`Azonosító`, `Nev`, `Osztaly`, `Szinhaz`, `Mozi`, `Napilap`, `KonyvOldal`) VALUES (40, 'Tóth János', 'B', 0, 0, 'Nem', 930);
INSERT INTO `Kultforr` (`Azonosító`, `Nev`, `Osztaly`, `Szinhaz`, `Mozi`, `Napilap`, `KonyvOldal`) VALUES (41, 'Varga István', 'A', 3, 2, 'Igen', 1222);
INSERT INTO `Kultforr` (`Azonosító`, `Nev`, `Osztaly`, `Szinhaz`, `Mozi`, `Napilap`, `KonyvOldal`) VALUES (42, 'Vígh Éva', 'A', 4, 0, 'Nem', 689);
# 42 records

