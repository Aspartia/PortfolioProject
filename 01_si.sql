#
# DUMP FILE
#
# Database is ported from MS Access
#------------------------------------------------------------------
# Created using "MS Access to MySQL" form http://www.bullzip.com
# Program Version 5.5.282
#
# OPTIONS:
#   sourcefilename=d:/Egyetem/Munka/2022_2023/ZH1/si.accdb
#   sourceusername=
#   sourcepassword=
#   sourcesystemdatabase=
#   destinationdatabase=si
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

DROP DATABASE IF EXISTS `si`;
CREATE DATABASE IF NOT EXISTS `si`;
USE `si`;

#
# Table structure for table 'Sipalya'
#

DROP TABLE IF EXISTS `Sipalya`;

CREATE TABLE `Sipalya` (
  `Azonosító` INTEGER NOT NULL AUTO_INCREMENT, 
  `Azon` INTEGER, 
  `Nev` VARCHAR(255), 
  `Hegyseg` VARCHAR(255), 
  `Teteje` INTEGER, 
  `Alja` INTEGER, 
  `Hossza` INTEGER, 
  PRIMARY KEY (`Azonosító`)
) ENGINE=innodb DEFAULT CHARSET=utf8;

SET autocommit=1;

#
# Dumping data for table 'Sipalya'
#

INSERT INTO `Sipalya` (`Azonosító`, `Azon`, `Nev`, `Hegyseg`, `Teteje`, `Alja`, `Hossza`) VALUES (1, 1, 'Bálvány', 'Bükk', 900, 820, 450);
INSERT INTO `Sipalya` (`Azonosító`, `Azon`, `Nev`, `Hegyseg`, `Teteje`, `Alja`, `Hossza`) VALUES (2, 2, 'Bánkút 1', 'Bükk', 930, 760, 600);
INSERT INTO `Sipalya` (`Azonosító`, `Azon`, `Nev`, `Hegyseg`, `Teteje`, `Alja`, `Hossza`) VALUES (3, 3, 'Bánkút 2', 'Bükk', 930, 800, 500);
INSERT INTO `Sipalya` (`Azonosító`, `Azon`, `Nev`, `Hegyseg`, `Teteje`, `Alja`, `Hossza`) VALUES (4, 4, 'Bánkút 3', 'Bükk', 920, 840, 300);
INSERT INTO `Sipalya` (`Azonosító`, `Azon`, `Nev`, `Hegyseg`, `Teteje`, `Alja`, `Hossza`) VALUES (5, 5, 'Bánkút 4', 'Bükk', 920, 905, 200);
INSERT INTO `Sipalya` (`Azonosító`, `Azon`, `Nev`, `Hegyseg`, `Teteje`, `Alja`, `Hossza`) VALUES (6, 6, 'Bánkút 5', 'Bükk', 920, 900, 150);
INSERT INTO `Sipalya` (`Azonosító`, `Azon`, `Nev`, `Hegyseg`, `Teteje`, `Alja`, `Hossza`) VALUES (7, 7, 'Bánkút 6', 'Bükk', 920, 770, 1300);
INSERT INTO `Sipalya` (`Azonosító`, `Azon`, `Nev`, `Hegyseg`, `Teteje`, `Alja`, `Hossza`) VALUES (8, 8, 'Bánkút 7', 'Bükk', 920, 890, 180);
INSERT INTO `Sipalya` (`Azonosító`, `Azon`, `Nev`, `Hegyseg`, `Teteje`, `Alja`, `Hossza`) VALUES (9, 9, 'Bánkút 8', 'Bükk', 920, 900, 150);
INSERT INTO `Sipalya` (`Azonosító`, `Azon`, `Nev`, `Hegyseg`, `Teteje`, `Alja`, `Hossza`) VALUES (10, 10, 'Brennberg-völgy', 'Soproni-hegység', 540, 400, 610);
INSERT INTO `Sipalya` (`Azonosító`, `Azon`, `Nev`, `Hegyseg`, `Teteje`, `Alja`, `Hossza`) VALUES (11, 11, 'Bükkszentkereszt', 'Bükk', 650, 550, 400);
INSERT INTO `Sipalya` (`Azonosító`, `Azon`, `Nev`, `Hegyseg`, `Teteje`, `Alja`, `Hossza`) VALUES (12, 12, 'Dobogókő 1', 'Pilis', 700, 522, 980);
INSERT INTO `Sipalya` (`Azonosító`, `Azon`, `Nev`, `Hegyseg`, `Teteje`, `Alja`, `Hossza`) VALUES (13, 13, 'Dobogókő 2', 'Pilis', 700, 522, 1170);
INSERT INTO `Sipalya` (`Azonosító`, `Azon`, `Nev`, `Hegyseg`, `Teteje`, `Alja`, `Hossza`) VALUES (14, 14, 'Dunakömlőd', 'Paks környéke', 185, 125, 350);
INSERT INTO `Sipalya` (`Azonosító`, `Azon`, `Nev`, `Hegyseg`, `Teteje`, `Alja`, `Hossza`) VALUES (15, 15, 'Eplény 1', 'Bakony', 530, 350, 970);
INSERT INTO `Sipalya` (`Azonosító`, `Azon`, `Nev`, `Hegyseg`, `Teteje`, `Alja`, `Hossza`) VALUES (16, 16, 'Eplény 2', 'Bakony', 530, 350, 1050);
INSERT INTO `Sipalya` (`Azonosító`, `Azon`, `Nev`, `Hegyseg`, `Teteje`, `Alja`, `Hossza`) VALUES (17, 17, 'Eplény 3', 'Bakony', 530, 350, 830);
INSERT INTO `Sipalya` (`Azonosító`, `Azon`, `Nev`, `Hegyseg`, `Teteje`, `Alja`, `Hossza`) VALUES (18, 18, 'Eplény 4', 'Bakony', 530, 350, 800);
INSERT INTO `Sipalya` (`Azonosító`, `Azon`, `Nev`, `Hegyseg`, `Teteje`, `Alja`, `Hossza`) VALUES (19, 19, 'Eplény 5', 'Bakony', 530, 350, 920);
INSERT INTO `Sipalya` (`Azonosító`, `Azon`, `Nev`, `Hegyseg`, `Teteje`, `Alja`, `Hossza`) VALUES (20, 20, 'Galyatető', 'Mátra', 950, 750, 950);
INSERT INTO `Sipalya` (`Azonosító`, `Azon`, `Nev`, `Hegyseg`, `Teteje`, `Alja`, `Hossza`) VALUES (21, 21, 'Kékestető, északi', 'Mátra', 1000, 800, 550);
INSERT INTO `Sipalya` (`Azonosító`, `Azon`, `Nev`, `Hegyseg`, `Teteje`, `Alja`, `Hossza`) VALUES (22, 22, 'Kékestető, kis északi', 'Mátra', 1000, 900, 390);
INSERT INTO `Sipalya` (`Azonosító`, `Azon`, `Nev`, `Hegyseg`, `Teteje`, `Alja`, `Hossza`) VALUES (23, 23, 'Kékestető, déli 1.', 'Mátra', 1014, 704, 2200);
INSERT INTO `Sipalya` (`Azonosító`, `Azon`, `Nev`, `Hegyseg`, `Teteje`, `Alja`, `Hossza`) VALUES (24, 24, 'Kékestető, déli 2.', 'Mátra', 1014, 909, 700);
INSERT INTO `Sipalya` (`Azonosító`, `Azon`, `Nev`, `Hegyseg`, `Teteje`, `Alja`, `Hossza`) VALUES (25, 25, 'Kékestető, tanuló 1.', 'Mátra', 1014, 1007, 70);
INSERT INTO `Sipalya` (`Azonosító`, `Azon`, `Nev`, `Hegyseg`, `Teteje`, `Alja`, `Hossza`) VALUES (26, 26, 'Kékestető, tanuló 2.', 'Mátra', 1000, 975, 200);
INSERT INTO `Sipalya` (`Azonosító`, `Azon`, `Nev`, `Hegyseg`, `Teteje`, `Alja`, `Hossza`) VALUES (27, 27, 'Kemence', 'Börzsöny', 600, 450, 900);
INSERT INTO `Sipalya` (`Azonosító`, `Azon`, `Nev`, `Hegyseg`, `Teteje`, `Alja`, `Hossza`) VALUES (28, 28, 'Lillafüred', 'Bükk', 600, 350, 900);
INSERT INTO `Sipalya` (`Azonosító`, `Azon`, `Nev`, `Hegyseg`, `Teteje`, `Alja`, `Hossza`) VALUES (29, 29, 'Mátraháza, Honvéd Üdülő', 'Mátra', 700, 675, 100);
INSERT INTO `Sipalya` (`Azonosító`, `Azon`, `Nev`, `Hegyseg`, `Teteje`, `Alja`, `Hossza`) VALUES (30, 30, 'Mátraszentimre', 'Mátra', 729, 629, 500);
INSERT INTO `Sipalya` (`Azonosító`, `Azon`, `Nev`, `Hegyseg`, `Teteje`, `Alja`, `Hossza`) VALUES (31, 31, 'Mátraszentistván 1', 'Mátra', 821, 676, 560);
INSERT INTO `Sipalya` (`Azonosító`, `Azon`, `Nev`, `Hegyseg`, `Teteje`, `Alja`, `Hossza`) VALUES (32, 32, 'Mátraszentistván 2', 'Mátra', 821, 676, 580);
INSERT INTO `Sipalya` (`Azonosító`, `Azon`, `Nev`, `Hegyseg`, `Teteje`, `Alja`, `Hossza`) VALUES (33, 33, 'Mátraszentistván 3', 'Mátra', 821, 676, 650);
INSERT INTO `Sipalya` (`Azonosító`, `Azon`, `Nev`, `Hegyseg`, `Teteje`, `Alja`, `Hossza`) VALUES (34, 34, 'Mátraszentistván 4', 'Mátra', 821, 676, 1000);
INSERT INTO `Sipalya` (`Azonosító`, `Azon`, `Nev`, `Hegyseg`, `Teteje`, `Alja`, `Hossza`) VALUES (35, 35, 'Mátraszentistván 5', 'Mátra', 821, 766, 350);
INSERT INTO `Sipalya` (`Azonosító`, `Azon`, `Nev`, `Hegyseg`, `Teteje`, `Alja`, `Hossza`) VALUES (36, 36, 'Mátraszentistván 6', 'Mátra', 821, 794, 280);
INSERT INTO `Sipalya` (`Azonosító`, `Azon`, `Nev`, `Hegyseg`, `Teteje`, `Alja`, `Hossza`) VALUES (37, 37, 'Mátraszentistván 7', 'Mátra', 821, 805, 100);
INSERT INTO `Sipalya` (`Azonosító`, `Azon`, `Nev`, `Hegyseg`, `Teteje`, `Alja`, `Hossza`) VALUES (38, 38, 'Mátraszentlászló', 'Mátra', 900, 820, 250);
INSERT INTO `Sipalya` (`Azonosító`, `Azon`, `Nev`, `Hegyseg`, `Teteje`, `Alja`, `Hossza`) VALUES (39, 39, 'Nagybárkány', 'Cserhát', 350, 270, 300);
INSERT INTO `Sipalya` (`Azonosító`, `Azon`, `Nev`, `Hegyseg`, `Teteje`, `Alja`, `Hossza`) VALUES (40, 40, 'Nagy-Hideg-Hegy 1', 'Börzsöny', 800, 585, 1200);
INSERT INTO `Sipalya` (`Azonosító`, `Azon`, `Nev`, `Hegyseg`, `Teteje`, `Alja`, `Hossza`) VALUES (41, 41, 'Nagy-Hideg-Hegy 2', 'Börzsöny', 800, 710, 330);
INSERT INTO `Sipalya` (`Azonosító`, `Azon`, `Nev`, `Hegyseg`, `Teteje`, `Alja`, `Hossza`) VALUES (42, 42, 'Nagy-Hideg-Hegy 3', 'Börzsöny', 800, 700, 310);
INSERT INTO `Sipalya` (`Azonosító`, `Azon`, `Nev`, `Hegyseg`, `Teteje`, `Alja`, `Hossza`) VALUES (43, 43, 'Nagy-mező', 'Bükk', 800, 765, 100);
INSERT INTO `Sipalya` (`Azonosító`, `Azon`, `Nev`, `Hegyseg`, `Teteje`, `Alja`, `Hossza`) VALUES (44, 44, 'Nagyvillám 1', 'Visegrádi-hegység', 372, 272, 500);
INSERT INTO `Sipalya` (`Azonosító`, `Azon`, `Nev`, `Hegyseg`, `Teteje`, `Alja`, `Hossza`) VALUES (45, 45, 'Nagyvillám 2', 'Visegrádi-hegység', 372, 120, 1500);
INSERT INTO `Sipalya` (`Azonosító`, `Azon`, `Nev`, `Hegyseg`, `Teteje`, `Alja`, `Hossza`) VALUES (46, 46, 'Pécs - Misina-tető', 'Mecsek', 460, 320, 600);
INSERT INTO `Sipalya` (`Azonosító`, `Azon`, `Nev`, `Hegyseg`, `Teteje`, `Alja`, `Hossza`) VALUES (47, 47, 'Salgótarján - Salgóbánya', 'Karancs-hegység', 450, 390, 300);
INSERT INTO `Sipalya` (`Azonosító`, `Azon`, `Nev`, `Hegyseg`, `Teteje`, `Alja`, `Hossza`) VALUES (48, 48, 'Salgótarján-Szilvás-kő', 'Karancs-hegység', 625, 545, 480);
INSERT INTO `Sipalya` (`Azonosító`, `Azon`, `Nev`, `Hegyseg`, `Teteje`, `Alja`, `Hossza`) VALUES (49, 49, 'Sátoraljaújhely - Magas-hegy 1', 'Zempléni-hegység', 580, 330, 1030);
INSERT INTO `Sipalya` (`Azonosító`, `Azon`, `Nev`, `Hegyseg`, `Teteje`, `Alja`, `Hossza`) VALUES (50, 50, 'Sátoraljaújhely - Magas-hegy 2', 'Zempléni-hegység', 580, 380, 450);
INSERT INTO `Sipalya` (`Azonosító`, `Azon`, `Nev`, `Hegyseg`, `Teteje`, `Alja`, `Hossza`) VALUES (51, 51, 'Sopron, Dalos-hegy 1', 'Soproni-hegység', 380, 290, 360);
INSERT INTO `Sipalya` (`Azonosító`, `Azon`, `Nev`, `Hegyseg`, `Teteje`, `Alja`, `Hossza`) VALUES (52, 52, 'Sopron, Dalos-hegy 2', 'Soproni-hegység', 380, 290, 250);
INSERT INTO `Sipalya` (`Azonosító`, `Azon`, `Nev`, `Hegyseg`, `Teteje`, `Alja`, `Hossza`) VALUES (53, 53, 'Szabó-hegy, déli', 'Kőszegi-hegység', 470, 390, 270);
INSERT INTO `Sipalya` (`Azonosító`, `Azon`, `Nev`, `Hegyseg`, `Teteje`, `Alja`, `Hossza`) VALUES (54, 54, 'Szabó-hegy, északi', 'Kőszegi-hegység', 462, 390, 210);
INSERT INTO `Sipalya` (`Azonosító`, `Azon`, `Nev`, `Hegyseg`, `Teteje`, `Alja`, `Hossza`) VALUES (55, 55, 'Szokolya', 'Börzsöny', 252, 152, 400);
INSERT INTO `Sipalya` (`Azonosító`, `Azon`, `Nev`, `Hegyseg`, `Teteje`, `Alja`, `Hossza`) VALUES (56, 56, 'Telkibánya', 'Zempléni-hegység', 400, 280, 500);
INSERT INTO `Sipalya` (`Azonosító`, `Azon`, `Nev`, `Hegyseg`, `Teteje`, `Alja`, `Hossza`) VALUES (57, 57, 'Tokaj-Tarcal', 'Zempléni-hegység', 476, 375, 570);
# 57 records

