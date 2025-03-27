#
# DUMP FILE
#
# Database is ported from MS Access
#------------------------------------------------------------------
# Created using "MS Access to MySQL" form http://www.bullzip.com
# Program Version 5.5.282
#
# OPTIONS:
#   sourcefilename=d:/Egyetem/ExampleDatabases/02_Tobbtablaa/feltatalo/feltalalok.mdb
#   sourceusername=
#   sourcepassword=
#   sourcesystemdatabase=
#   destinationdatabase=feltalalo
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

DROP DATABASE IF EXISTS `feltalalo`;
CREATE DATABASE IF NOT EXISTS `feltalalo`;
USE `feltalalo`;

#
# Table structure for table 'kapcsol'
#

DROP TABLE IF EXISTS `kapcsol`;

CREATE TABLE `kapcsol` (
  `tkod` INTEGER, 
  `fkod` INTEGER, 
  INDEX (`fkod`), 
  INDEX (`tkod`)
) ENGINE=innodb DEFAULT CHARSET=utf8;

SET autocommit=1;

#
# Dumping data for table 'kapcsol'
#

INSERT INTO `kapcsol` (`tkod`, `fkod`) VALUES (11, 5);
INSERT INTO `kapcsol` (`tkod`, `fkod`) VALUES (3, 17);
INSERT INTO `kapcsol` (`tkod`, `fkod`) VALUES (18, 8);
INSERT INTO `kapcsol` (`tkod`, `fkod`) VALUES (25, 1);
INSERT INTO `kapcsol` (`tkod`, `fkod`) VALUES (16, 15);
INSERT INTO `kapcsol` (`tkod`, `fkod`) VALUES (3, 30);
INSERT INTO `kapcsol` (`tkod`, `fkod`) VALUES (32, 1);
INSERT INTO `kapcsol` (`tkod`, `fkod`) VALUES (1, 36);
INSERT INTO `kapcsol` (`tkod`, `fkod`) VALUES (9, 29);
INSERT INTO `kapcsol` (`tkod`, `fkod`) VALUES (12, 29);
INSERT INTO `kapcsol` (`tkod`, `fkod`) VALUES (39, 4);
INSERT INTO `kapcsol` (`tkod`, `fkod`) VALUES (44, 2);
INSERT INTO `kapcsol` (`tkod`, `fkod`) VALUES (10, 37);
INSERT INTO `kapcsol` (`tkod`, `fkod`) VALUES (31, 18);
INSERT INTO `kapcsol` (`tkod`, `fkod`) VALUES (5, 45);
INSERT INTO `kapcsol` (`tkod`, `fkod`) VALUES (22, 28);
INSERT INTO `kapcsol` (`tkod`, `fkod`) VALUES (23, 27);
INSERT INTO `kapcsol` (`tkod`, `fkod`) VALUES (19, 32);
INSERT INTO `kapcsol` (`tkod`, `fkod`) VALUES (20, 31);
INSERT INTO `kapcsol` (`tkod`, `fkod`) VALUES (50, 3);
INSERT INTO `kapcsol` (`tkod`, `fkod`) VALUES (51, 2);
INSERT INTO `kapcsol` (`tkod`, `fkod`) VALUES (35, 19);
INSERT INTO `kapcsol` (`tkod`, `fkod`) VALUES (36, 19);
INSERT INTO `kapcsol` (`tkod`, `fkod`) VALUES (37, 21);
INSERT INTO `kapcsol` (`tkod`, `fkod`) VALUES (24, 35);
INSERT INTO `kapcsol` (`tkod`, `fkod`) VALUES (2, 58);
INSERT INTO `kapcsol` (`tkod`, `fkod`) VALUES (4, 56);
INSERT INTO `kapcsol` (`tkod`, `fkod`) VALUES (29, 34);
INSERT INTO `kapcsol` (`tkod`, `fkod`) VALUES (46, 17);
INSERT INTO `kapcsol` (`tkod`, `fkod`) VALUES (62, 1);
INSERT INTO `kapcsol` (`tkod`, `fkod`) VALUES (17, 48);
INSERT INTO `kapcsol` (`tkod`, `fkod`) VALUES (28, 38);
INSERT INTO `kapcsol` (`tkod`, `fkod`) VALUES (38, 29);
INSERT INTO `kapcsol` (`tkod`, `fkod`) VALUES (58, 9);
INSERT INTO `kapcsol` (`tkod`, `fkod`) VALUES (33, 35);
INSERT INTO `kapcsol` (`tkod`, `fkod`) VALUES (36, 32);
INSERT INTO `kapcsol` (`tkod`, `fkod`) VALUES (21, 48);
INSERT INTO `kapcsol` (`tkod`, `fkod`) VALUES (34, 35);
INSERT INTO `kapcsol` (`tkod`, `fkod`) VALUES (35, 35);
INSERT INTO `kapcsol` (`tkod`, `fkod`) VALUES (53, 17);
INSERT INTO `kapcsol` (`tkod`, `fkod`) VALUES (30, 41);
INSERT INTO `kapcsol` (`tkod`, `fkod`) VALUES (52, 20);
INSERT INTO `kapcsol` (`tkod`, `fkod`) VALUES (56, 17);
INSERT INTO `kapcsol` (`tkod`, `fkod`) VALUES (7, 68);
INSERT INTO `kapcsol` (`tkod`, `fkod`) VALUES (69, 6);
INSERT INTO `kapcsol` (`tkod`, `fkod`) VALUES (8, 68);
INSERT INTO `kapcsol` (`tkod`, `fkod`) VALUES (14, 62);
INSERT INTO `kapcsol` (`tkod`, `fkod`) VALUES (46, 30);
INSERT INTO `kapcsol` (`tkod`, `fkod`) VALUES (75, 1);
INSERT INTO `kapcsol` (`tkod`, `fkod`) VALUES (26, 51);
INSERT INTO `kapcsol` (`tkod`, `fkod`) VALUES (68, 10);
INSERT INTO `kapcsol` (`tkod`, `fkod`) VALUES (40, 39);
INSERT INTO `kapcsol` (`tkod`, `fkod`) VALUES (5, 75);
INSERT INTO `kapcsol` (`tkod`, `fkod`) VALUES (77, 3);
INSERT INTO `kapcsol` (`tkod`, `fkod`) VALUES (13, 68);
INSERT INTO `kapcsol` (`tkod`, `fkod`) VALUES (6, 77);
INSERT INTO `kapcsol` (`tkod`, `fkod`) VALUES (53, 30);
INSERT INTO `kapcsol` (`tkod`, `fkod`) VALUES (7, 77);
INSERT INTO `kapcsol` (`tkod`, `fkod`) VALUES (65, 19);
INSERT INTO `kapcsol` (`tkod`, `fkod`) VALUES (56, 30);
INSERT INTO `kapcsol` (`tkod`, `fkod`) VALUES (70, 16);
INSERT INTO `kapcsol` (`tkod`, `fkod`) VALUES (82, 5);
INSERT INTO `kapcsol` (`tkod`, `fkod`) VALUES (43, 46);
INSERT INTO `kapcsol` (`tkod`, `fkod`) VALUES (72, 17);
INSERT INTO `kapcsol` (`tkod`, `fkod`) VALUES (13, 77);
INSERT INTO `kapcsol` (`tkod`, `fkod`) VALUES (79, 11);
INSERT INTO `kapcsol` (`tkod`, `fkod`) VALUES (47, 44);
INSERT INTO `kapcsol` (`tkod`, `fkod`) VALUES (67, 24);
INSERT INTO `kapcsol` (`tkod`, `fkod`) VALUES (41, 53);
INSERT INTO `kapcsol` (`tkod`, `fkod`) VALUES (55, 40);
INSERT INTO `kapcsol` (`tkod`, `fkod`) VALUES (61, 34);
INSERT INTO `kapcsol` (`tkod`, `fkod`) VALUES (82, 13);
INSERT INTO `kapcsol` (`tkod`, `fkod`) VALUES (42, 54);
INSERT INTO `kapcsol` (`tkod`, `fkod`) VALUES (84, 12);
INSERT INTO `kapcsol` (`tkod`, `fkod`) VALUES (74, 23);
INSERT INTO `kapcsol` (`tkod`, `fkod`) VALUES (49, 50);
INSERT INTO `kapcsol` (`tkod`, `fkod`) VALUES (63, 36);
INSERT INTO `kapcsol` (`tkod`, `fkod`) VALUES (85, 14);
INSERT INTO `kapcsol` (`tkod`, `fkod`) VALUES (64, 36);
INSERT INTO `kapcsol` (`tkod`, `fkod`) VALUES (71, 29);
INSERT INTO `kapcsol` (`tkod`, `fkod`) VALUES (88, 12);
INSERT INTO `kapcsol` (`tkod`, `fkod`) VALUES (95, 5);
INSERT INTO `kapcsol` (`tkod`, `fkod`) VALUES (99, 1);
INSERT INTO `kapcsol` (`tkod`, `fkod`) VALUES (78, 23);
INSERT INTO `kapcsol` (`tkod`, `fkod`) VALUES (79, 22);
INSERT INTO `kapcsol` (`tkod`, `fkod`) VALUES (100, 1);
INSERT INTO `kapcsol` (`tkod`, `fkod`) VALUES (72, 30);
INSERT INTO `kapcsol` (`tkod`, `fkod`) VALUES (60, 43);
INSERT INTO `kapcsol` (`tkod`, `fkod`) VALUES (95, 13);
INSERT INTO `kapcsol` (`tkod`, `fkod`) VALUES (87, 24);
INSERT INTO `kapcsol` (`tkod`, `fkod`) VALUES (73, 39);
INSERT INTO `kapcsol` (`tkod`, `fkod`) VALUES (98, 14);
INSERT INTO `kapcsol` (`tkod`, `fkod`) VALUES (83, 31);
INSERT INTO `kapcsol` (`tkod`, `fkod`) VALUES (80, 35);
INSERT INTO `kapcsol` (`tkod`, `fkod`) VALUES (109, 7);
INSERT INTO `kapcsol` (`tkod`, `fkod`) VALUES (41, 76);
INSERT INTO `kapcsol` (`tkod`, `fkod`) VALUES (86, 31);
INSERT INTO `kapcsol` (`tkod`, `fkod`) VALUES (45, 73);
INSERT INTO `kapcsol` (`tkod`, `fkod`) VALUES (106, 12);
INSERT INTO `kapcsol` (`tkod`, `fkod`) VALUES (48, 72);
INSERT INTO `kapcsol` (`tkod`, `fkod`) VALUES (57, 70);
INSERT INTO `kapcsol` (`tkod`, `fkod`) VALUES (115, 12);
INSERT INTO `kapcsol` (`tkod`, `fkod`) VALUES (66, 64);
INSERT INTO `kapcsol` (`tkod`, `fkod`) VALUES (94, 36);
INSERT INTO `kapcsol` (`tkod`, `fkod`) VALUES (79, 52);
INSERT INTO `kapcsol` (`tkod`, `fkod`) VALUES (89, 42);
INSERT INTO `kapcsol` (`tkod`, `fkod`) VALUES (96, 36);
INSERT INTO `kapcsol` (`tkod`, `fkod`) VALUES (59, 74);
INSERT INTO `kapcsol` (`tkod`, `fkod`) VALUES (76, 57);
INSERT INTO `kapcsol` (`tkod`, `fkod`) VALUES (104, 29);
INSERT INTO `kapcsol` (`tkod`, `fkod`) VALUES (110, 25);
INSERT INTO `kapcsol` (`tkod`, `fkod`) VALUES (112, 23);
INSERT INTO `kapcsol` (`tkod`, `fkod`) VALUES (114, 21);
INSERT INTO `kapcsol` (`tkod`, `fkod`) VALUES (117, 18);
INSERT INTO `kapcsol` (`tkod`, `fkod`) VALUES (127, 9);
INSERT INTO `kapcsol` (`tkod`, `fkod`) VALUES (108, 29);
INSERT INTO `kapcsol` (`tkod`, `fkod`) VALUES (128, 9);
INSERT INTO `kapcsol` (`tkod`, `fkod`) VALUES (131, 6);
INSERT INTO `kapcsol` (`tkod`, `fkod`) VALUES (79, 59);
INSERT INTO `kapcsol` (`tkod`, `fkod`) VALUES (93, 45);
INSERT INTO `kapcsol` (`tkod`, `fkod`) VALUES (125, 14);
INSERT INTO `kapcsol` (`tkod`, `fkod`) VALUES (134, 5);
INSERT INTO `kapcsol` (`tkod`, `fkod`) VALUES (91, 51);
INSERT INTO `kapcsol` (`tkod`, `fkod`) VALUES (90, 53);
INSERT INTO `kapcsol` (`tkod`, `fkod`) VALUES (138, 9);
INSERT INTO `kapcsol` (`tkod`, `fkod`) VALUES (81, 71);
INSERT INTO `kapcsol` (`tkod`, `fkod`) VALUES (97, 56);
INSERT INTO `kapcsol` (`tkod`, `fkod`) VALUES (89, 65);
INSERT INTO `kapcsol` (`tkod`, `fkod`) VALUES (89, 67);
INSERT INTO `kapcsol` (`tkod`, `fkod`) VALUES (144, 14);
INSERT INTO `kapcsol` (`tkod`, `fkod`) VALUES (130, 29);
INSERT INTO `kapcsol` (`tkod`, `fkod`) VALUES (103, 57);
INSERT INTO `kapcsol` (`tkod`, `fkod`) VALUES (101, 61);
INSERT INTO `kapcsol` (`tkod`, `fkod`) VALUES (102, 60);
INSERT INTO `kapcsol` (`tkod`, `fkod`) VALUES (85, 78);
INSERT INTO `kapcsol` (`tkod`, `fkod`) VALUES (122, 42);
INSERT INTO `kapcsol` (`tkod`, `fkod`) VALUES (90, 76);
INSERT INTO `kapcsol` (`tkod`, `fkod`) VALUES (136, 31);
INSERT INTO `kapcsol` (`tkod`, `fkod`) VALUES (93, 75);
INSERT INTO `kapcsol` (`tkod`, `fkod`) VALUES (133, 35);
INSERT INTO `kapcsol` (`tkod`, `fkod`) VALUES (137, 31);
INSERT INTO `kapcsol` (`tkod`, `fkod`) VALUES (140, 29);
INSERT INTO `kapcsol` (`tkod`, `fkod`) VALUES (123, 47);
INSERT INTO `kapcsol` (`tkod`, `fkod`) VALUES (105, 66);
INSERT INTO `kapcsol` (`tkod`, `fkod`) VALUES (118, 55);
INSERT INTO `kapcsol` (`tkod`, `fkod`) VALUES (143, 31);
INSERT INTO `kapcsol` (`tkod`, `fkod`) VALUES (135, 40);
INSERT INTO `kapcsol` (`tkod`, `fkod`) VALUES (142, 33);
INSERT INTO `kapcsol` (`tkod`, `fkod`) VALUES (98, 78);
INSERT INTO `kapcsol` (`tkod`, `fkod`) VALUES (107, 69);
INSERT INTO `kapcsol` (`tkod`, `fkod`) VALUES (129, 49);
INSERT INTO `kapcsol` (`tkod`, `fkod`) VALUES (113, 69);
INSERT INTO `kapcsol` (`tkod`, `fkod`) VALUES (119, 65);
INSERT INTO `kapcsol` (`tkod`, `fkod`) VALUES (116, 70);
INSERT INTO `kapcsol` (`tkod`, `fkod`) VALUES (122, 65);
INSERT INTO `kapcsol` (`tkod`, `fkod`) VALUES (111, 77);
INSERT INTO `kapcsol` (`tkod`, `fkod`) VALUES (122, 67);
INSERT INTO `kapcsol` (`tkod`, `fkod`) VALUES (121, 72);
INSERT INTO `kapcsol` (`tkod`, `fkod`) VALUES (132, 61);
INSERT INTO `kapcsol` (`tkod`, `fkod`) VALUES (139, 58);
INSERT INTO `kapcsol` (`tkod`, `fkod`) VALUES (125, 78);
INSERT INTO `kapcsol` (`tkod`, `fkod`) VALUES (141, 63);
INSERT INTO `kapcsol` (`tkod`, `fkod`) VALUES (144, 78);
INSERT INTO `kapcsol` (`tkod`, `fkod`) VALUES (145, 79);
INSERT INTO `kapcsol` (`tkod`, `fkod`) VALUES (146, 79);
INSERT INTO `kapcsol` (`tkod`, `fkod`) VALUES (147, 80);
INSERT INTO `kapcsol` (`tkod`, `fkod`) VALUES (148, 81);
INSERT INTO `kapcsol` (`tkod`, `fkod`) VALUES (149, 81);
# 168 records

#
# Table structure for table 'kutato'
#

DROP TABLE IF EXISTS `kutato`;

CREATE TABLE `kutato` (
  `fkod` INTEGER, 
  `nev` VARCHAR(255), 
  `szul` INTEGER, 
  `meghal` INTEGER
) ENGINE=innodb DEFAULT CHARSET=utf8;

SET autocommit=1;

#
# Dumping data for table 'kutato'
#

INSERT INTO `kutato` (`fkod`, `nev`, `szul`, `meghal`) VALUES (1, 'Ajtay Zoltán Endre', 1900, 1983);
INSERT INTO `kutato` (`fkod`, `nev`, `szul`, `meghal`) VALUES (2, 'Balogh Tibor', 1956, NULL);
INSERT INTO `kutato` (`fkod`, `nev`, `szul`, `meghal`) VALUES (3, 'Bay Zoltán', 1900, 1992);
INSERT INTO `kutato` (`fkod`, `nev`, `szul`, `meghal`) VALUES (4, 'Bánhidi Antal', 1902, 1994);
INSERT INTO `kutato` (`fkod`, `nev`, `szul`, `meghal`) VALUES (5, 'Bánki Donát', 1859, 1922);
INSERT INTO `kutato` (`fkod`, `nev`, `szul`, `meghal`) VALUES (6, 'Bárczy Pál', 1941, NULL);
INSERT INTO `kutato` (`fkod`, `nev`, `szul`, `meghal`) VALUES (7, 'Bermann Miksa', 1861, 1925);
INSERT INTO `kutato` (`fkod`, `nev`, `szul`, `meghal`) VALUES (8, 'Békésy György', 1899, 1972);
INSERT INTO `kutato` (`fkod`, `nev`, `szul`, `meghal`) VALUES (9, 'Bláthy Ottó Titusz', 1860, 1939);
INSERT INTO `kutato` (`fkod`, `nev`, `szul`, `meghal`) VALUES (10, 'Bródy Imre', 1891, 1944);
INSERT INTO `kutato` (`fkod`, `nev`, `szul`, `meghal`) VALUES (11, 'Budó Ágoston', 1914, 1969);
INSERT INTO `kutato` (`fkod`, `nev`, `szul`, `meghal`) VALUES (12, 'Buzágh Aladár', 1895, 1962);
INSERT INTO `kutato` (`fkod`, `nev`, `szul`, `meghal`) VALUES (13, 'Csonka János', 1852, 1939);
INSERT INTO `kutato` (`fkod`, `nev`, `szul`, `meghal`) VALUES (14, 'Déri Miksa', 1854, 1938);
INSERT INTO `kutato` (`fkod`, `nev`, `szul`, `meghal`) VALUES (15, 'Dulovits Jenő', 1903, 1972);
INSERT INTO `kutato` (`fkod`, `nev`, `szul`, `meghal`) VALUES (16, 'Fejes Jenő', 1877, 1952);
INSERT INTO `kutato` (`fkod`, `nev`, `szul`, `meghal`) VALUES (17, 'Forgó László', 1907, 1980);
INSERT INTO `kutato` (`fkod`, `nev`, `szul`, `meghal`) VALUES (18, 'Frommer Rudolf', 1868, 1936);
INSERT INTO `kutato` (`fkod`, `nev`, `szul`, `meghal`) VALUES (19, 'Ganz Ábrahám', 1814, 1867);
INSERT INTO `kutato` (`fkod`, `nev`, `szul`, `meghal`) VALUES (20, 'Gábor Dénes', 1900, 1979);
INSERT INTO `kutato` (`fkod`, `nev`, `szul`, `meghal`) VALUES (21, 'Gáspár Béla', 1898, 1973);
INSERT INTO `kutato` (`fkod`, `nev`, `szul`, `meghal`) VALUES (22, 'Gerő Loránd', 1910, 1945);
INSERT INTO `kutato` (`fkod`, `nev`, `szul`, `meghal`) VALUES (23, 'Goldmark Péter Károly', 1906, 1977);
INSERT INTO `kutato` (`fkod`, `nev`, `szul`, `meghal`) VALUES (24, 'Greguss Pál', 1921, 2003);
INSERT INTO `kutato` (`fkod`, `nev`, `szul`, `meghal`) VALUES (25, 'Haggenmacher Károly', 1835, 1921);
INSERT INTO `kutato` (`fkod`, `nev`, `szul`, `meghal`) VALUES (26, 'Hanaman Ferenc', 1878, 1941);
INSERT INTO `kutato` (`fkod`, `nev`, `szul`, `meghal`) VALUES (27, 'Hankóczy Jenö', 1879, 1939);
INSERT INTO `kutato` (`fkod`, `nev`, `szul`, `meghal`) VALUES (28, 'Hegedűs Ramón', 1982, NULL);
INSERT INTO `kutato` (`fkod`, `nev`, `szul`, `meghal`) VALUES (29, 'Hell József Károly', 1713, 1789);
INSERT INTO `kutato` (`fkod`, `nev`, `szul`, `meghal`) VALUES (30, 'Heller László', 1907, 1980);
INSERT INTO `kutato` (`fkod`, `nev`, `szul`, `meghal`) VALUES (31, 'Jedlik Ányos Istán', 1800, 1895);
INSERT INTO `kutato` (`fkod`, `nev`, `szul`, `meghal`) VALUES (32, 'Jendrassik György', 1898, 1954);
INSERT INTO `kutato` (`fkod`, `nev`, `szul`, `meghal`) VALUES (33, 'Just Sándor', 1874, 1937);
INSERT INTO `kutato` (`fkod`, `nev`, `szul`, `meghal`) VALUES (34, 'Kalmár László', 1905, 1976);
INSERT INTO `kutato` (`fkod`, `nev`, `szul`, `meghal`) VALUES (35, 'Kandó Kálmán', 1869, 1931);
INSERT INTO `kutato` (`fkod`, `nev`, `szul`, `meghal`) VALUES (36, 'Kármán Tódor', 1881, 1963);
INSERT INTO `kutato` (`fkod`, `nev`, `szul`, `meghal`) VALUES (37, 'Kemény János György', 1926, 1992);
INSERT INTO `kutato` (`fkod`, `nev`, `szul`, `meghal`) VALUES (38, 'Kerpely Antal', 1866, 1917);
INSERT INTO `kutato` (`fkod`, `nev`, `szul`, `meghal`) VALUES (39, 'Köszeghi-Mártony Károly', 1783, 1848);
INSERT INTO `kutato` (`fkod`, `nev`, `szul`, `meghal`) VALUES (40, 'Kühne Ede', 1839, 1903);
INSERT INTO `kutato` (`fkod`, `nev`, `szul`, `meghal`) VALUES (41, 'Kürti Miklós', 1908, 1999);
INSERT INTO `kutato` (`fkod`, `nev`, `szul`, `meghal`) VALUES (42, 'Landy Kornél', 1948, NULL);
INSERT INTO `kutato` (`fkod`, `nev`, `szul`, `meghal`) VALUES (43, 'Maderspach Károly', 1791, 1849);
INSERT INTO `kutato` (`fkod`, `nev`, `szul`, `meghal`) VALUES (44, 'Mechwart András', 1834, 1907);
INSERT INTO `kutato` (`fkod`, `nev`, `szul`, `meghal`) VALUES (45, 'Mondl Ferenc', 1902, 1964);
INSERT INTO `kutato` (`fkod`, `nev`, `szul`, `meghal`) VALUES (46, 'Mihály Dénes', 1894, 1953);
INSERT INTO `kutato` (`fkod`, `nev`, `szul`, `meghal`) VALUES (47, 'Mihályi József', 1889, 1978);
INSERT INTO `kutato` (`fkod`, `nev`, `szul`, `meghal`) VALUES (48, 'Neumann János', 1903, 1957);
INSERT INTO `kutato` (`fkod`, `nev`, `szul`, `meghal`) VALUES (49, 'Okolicsányi Ferenc', 1894, 1954);
INSERT INTO `kutato` (`fkod`, `nev`, `szul`, `meghal`) VALUES (50, 'Pavlics Ferenc', 1928, NULL);
INSERT INTO `kutato` (`fkod`, `nev`, `szul`, `meghal`) VALUES (51, 'Petzval József', 1807, 1891);
INSERT INTO `kutato` (`fkod`, `nev`, `szul`, `meghal`) VALUES (52, 'Pogány Béla', 1887, 1943);
INSERT INTO `kutato` (`fkod`, `nev`, `szul`, `meghal`) VALUES (53, 'Pollák Antal', 1865, 1943);
INSERT INTO `kutato` (`fkod`, `nev`, `szul`, `meghal`) VALUES (54, 'Pulvári Károly', 1907, 1999);
INSERT INTO `kutato` (`fkod`, `nev`, `szul`, `meghal`) VALUES (55, 'Puskás Tivadar', 1844, 1893);
INSERT INTO `kutato` (`fkod`, `nev`, `szul`, `meghal`) VALUES (56, 'Reich Ernő', 1887, 1965);
INSERT INTO `kutato` (`fkod`, `nev`, `szul`, `meghal`) VALUES (57, 'Riszdorfer Ödön', 1893, 1944);
INSERT INTO `kutato` (`fkod`, `nev`, `szul`, `meghal`) VALUES (58, 'Roska Tamás', 1940, NULL);
INSERT INTO `kutato` (`fkod`, `nev`, `szul`, `meghal`) VALUES (59, 'Schmid Rezső', 1904, 1943);
INSERT INTO `kutato` (`fkod`, `nev`, `szul`, `meghal`) VALUES (60, 'Segner János András', 1704, 1777);
INSERT INTO `kutato` (`fkod`, `nev`, `szul`, `meghal`) VALUES (61, 'Simonyi Károly', 1916, 2001);
INSERT INTO `kutato` (`fkod`, `nev`, `szul`, `meghal`) VALUES (62, 'Sklenár János', 1884, 1954);
INSERT INTO `kutato` (`fkod`, `nev`, `szul`, `meghal`) VALUES (63, 'Somogyi Adolf', 1846, 1919);
INSERT INTO `kutato` (`fkod`, `nev`, `szul`, `meghal`) VALUES (64, 'Svachulay Sándor', 1875, 1954);
INSERT INTO `kutato` (`fkod`, `nev`, `szul`, `meghal`) VALUES (65, 'Szabó István', 1941, NULL);
INSERT INTO `kutato` (`fkod`, `nev`, `szul`, `meghal`) VALUES (66, 'Szabó István', 1910, 1997);
INSERT INTO `kutato` (`fkod`, `nev`, `szul`, `meghal`) VALUES (67, 'Sziklay Péter', 1958, NULL);
INSERT INTO `kutato` (`fkod`, `nev`, `szul`, `meghal`) VALUES (68, 'Szilárd Leó', 1898, 1964);
INSERT INTO `kutato` (`fkod`, `nev`, `szul`, `meghal`) VALUES (69, 'Szilvay Kornél', 1890, 1957);
INSERT INTO `kutato` (`fkod`, `nev`, `szul`, `meghal`) VALUES (70, 'Szőcs István', 1943, NULL);
INSERT INTO `kutato` (`fkod`, `nev`, `szul`, `meghal`) VALUES (71, 'Telkes Mária', 1900, 1995);
INSERT INTO `kutato` (`fkod`, `nev`, `szul`, `meghal`) VALUES (72, 'Teller Ede', 1908, 2003);
INSERT INTO `kutato` (`fkod`, `nev`, `szul`, `meghal`) VALUES (73, 'Tihanyi Kálmán', 1897, 1947);
INSERT INTO `kutato` (`fkod`, `nev`, `szul`, `meghal`) VALUES (74, 'Tófalvi Gyula', 1927, 2003);
INSERT INTO `kutato` (`fkod`, `nev`, `szul`, `meghal`) VALUES (75, 'Vecsei Géza', 1902, 1960);
INSERT INTO `kutato` (`fkod`, `nev`, `szul`, `meghal`) VALUES (76, 'Virág József', 1870, 1901);
INSERT INTO `kutato` (`fkod`, `nev`, `szul`, `meghal`) VALUES (77, 'Wigner Jenő', 1902, 1995);
INSERT INTO `kutato` (`fkod`, `nev`, `szul`, `meghal`) VALUES (78, 'Zipernowsky Károly', 1853, 1942);
INSERT INTO `kutato` (`fkod`, `nev`, `szul`, `meghal`) VALUES (79, 'Bíró László', 1899, 1985);
INSERT INTO `kutato` (`fkod`, `nev`, `szul`, `meghal`) VALUES (80, 'Szent-Györgyi Albert', 1893, 1986);
INSERT INTO `kutato` (`fkod`, `nev`, `szul`, `meghal`) VALUES (81, 'xy', 2222, 2222);
# 81 records

#
# Table structure for table 'talalmany'
#

DROP TABLE IF EXISTS `talalmany`;

CREATE TABLE `talalmany` (
  `tkod` INTEGER, 
  `talnev` VARCHAR(255)
) ENGINE=innodb DEFAULT CHARSET=utf8;

SET autocommit=1;

#
# Dumping data for table 'talalmany'
#

INSERT INTO `talalmany` (`tkod`, `talnev`) VALUES (1, 'aerodinamika');
INSERT INTO `talalmany` (`tkod`, `talnev`) VALUES (2, 'analogikai celluláris számítógép');
INSERT INTO `talalmany` (`tkod`, `talnev`) VALUES (3, 'apró bordás hőcserélő');
INSERT INTO `talalmany` (`tkod`, `talnev`) VALUES (4, 'áramfogó');
INSERT INTO `talalmany` (`tkod`, `talnev`) VALUES (5, 'árammérő');
INSERT INTO `talalmany` (`tkod`, `talnev`) VALUES (6, 'atombomba');
INSERT INTO `talalmany` (`tkod`, `talnev`) VALUES (7, 'atommáglya');
INSERT INTO `talalmany` (`tkod`, `talnev`) VALUES (8, 'atomreaktor');
INSERT INTO `talalmany` (`tkod`, `talnev`) VALUES (9, 'atmoszferikus gőzgép');
INSERT INTO `talalmany` (`tkod`, `talnev`) VALUES (10, 'BASIC');
INSERT INTO `talalmany` (`tkod`, `talnev`) VALUES (11, 'Bánki-turbina');
INSERT INTO `talalmany` (`tkod`, `talnev`) VALUES (12, 'bányavizek elleni védekezés');
INSERT INTO `talalmany` (`tkod`, `talnev`) VALUES (13, 'chicagói atommáglya');
INSERT INTO `talalmany` (`tkod`, `talnev`) VALUES (14, 'csillagmotor');
INSERT INTO `talalmany` (`tkod`, `talnev`) VALUES (15, 'derivatográf');
INSERT INTO `talalmany` (`tkod`, `talnev`) VALUES (16, 'Duflex fényképezőgép');
INSERT INTO `talalmany` (`tkod`, `talnev`) VALUES (17, 'EDVAC');
INSERT INTO `talalmany` (`tkod`, `talnev`) VALUES (18, 'elektroncsöves audio-méter');
INSERT INTO `talalmany` (`tkod`, `talnev`) VALUES (19, 'előkamrás sűrítő nélküli dízelmotor');
INSERT INTO `talalmany` (`tkod`, `talnev`) VALUES (20, 'egysarkú villámindító');
INSERT INTO `talalmany` (`tkod`, `talnev`) VALUES (21, 'ENIAC');
INSERT INTO `talalmany` (`tkod`, `talnev`) VALUES (22, 'excimer lézeres abláció háromdimenziós gyors­fényképezése');
INSERT INTO `talalmany` (`tkod`, `talnev`) VALUES (23, 'farinográf');
INSERT INTO `talalmany` (`tkod`, `talnev`) VALUES (24, 'fázisváltós villamos mozdony');
INSERT INTO `talalmany` (`tkod`, `talnev`) VALUES (25, 'fejtőgép');
INSERT INTO `talalmany` (`tkod`, `talnev`) VALUES (26, 'fényképezőgép-lencse');
INSERT INTO `talalmany` (`tkod`, `talnev`) VALUES (27, 'forgódugattyús gép');
INSERT INTO `talalmany` (`tkod`, `talnev`) VALUES (28, 'forgórostélyos gázgenerátor');
INSERT INTO `talalmany` (`tkod`, `talnev`) VALUES (29, 'formulavezérlésű számítógép');
INSERT INTO `talalmany` (`tkod`, `talnev`) VALUES (30, 'főzés fizikája');
INSERT INTO `talalmany` (`tkod`, `talnev`) VALUES (31, 'Frommer-pisztoly');
INSERT INTO `talalmany` (`tkod`, `talnev`) VALUES (32, 'F-típusú fejtő-rakodó gép');
INSERT INTO `talalmany` (`tkod`, `talnev`) VALUES (33, 'F típusjelű három­fázisú aszinkron motorsorozat');
INSERT INTO `talalmany` (`tkod`, `talnev`) VALUES (34, 'FF háromfázisú motorsorozat');
INSERT INTO `talalmany` (`tkod`, `talnev`) VALUES (35, 'Ganz-gyár');
INSERT INTO `talalmany` (`tkod`, `talnev`) VALUES (36, 'Ganz—Jendrassik-motor');
INSERT INTO `talalmany` (`tkod`, `talnev`) VALUES (37, 'Gasparcolor színes film');
INSERT INTO `talalmany` (`tkod`, `talnev`) VALUES (38, 'gázlift');
INSERT INTO `talalmany` (`tkod`, `talnev`) VALUES (39, 'Gerle repülőgép');
INSERT INTO `talalmany` (`tkod`, `talnev`) VALUES (40, 'gulyáságyú');
INSERT INTO `talalmany` (`tkod`, `talnev`) VALUES (41, 'gyorstávíró');
INSERT INTO `talalmany` (`tkod`, `talnev`) VALUES (42, 'hangfelvevő kamera');
INSERT INTO `talalmany` (`tkod`, `talnev`) VALUES (43, 'hangosfilm');
INSERT INTO `talalmany` (`tkod`, `talnev`) VALUES (44, 'háromdimenziós kijelző');
INSERT INTO `talalmany` (`tkod`, `talnev`) VALUES (45, 'HDTV');
INSERT INTO `talalmany` (`tkod`, `talnev`) VALUES (46, 'Heller—Forgó hűtőtorony');
INSERT INTO `talalmany` (`tkod`, `talnev`) VALUES (47, 'hengerszék');
INSERT INTO `talalmany` (`tkod`, `talnev`) VALUES (48, 'hidrogénbomba');
INSERT INTO `talalmany` (`tkod`, `talnev`) VALUES (49, 'holdautó');
INSERT INTO `talalmany` (`tkod`, `talnev`) VALUES (50, 'Hold-radar');
INSERT INTO `talalmany` (`tkod`, `talnev`) VALUES (51, 'hologramkiállítás');
INSERT INTO `talalmany` (`tkod`, `talnev`) VALUES (52, 'holográfia');
INSERT INTO `talalmany` (`tkod`, `talnev`) VALUES (53, 'hőenergetikai képzés');
INSERT INTO `talalmany` (`tkod`, `talnev`) VALUES (54, 'HSCS');
INSERT INTO `talalmany` (`tkod`, `talnev`) VALUES (55, 'Hungária-Drill sorvetőgép');
INSERT INTO `talalmany` (`tkod`, `talnev`) VALUES (56, 'hűtőtorony');
INSERT INTO `talalmany` (`tkod`, `talnev`) VALUES (57, 'impulzus tűzoltókészülék');
INSERT INTO `talalmany` (`tkod`, `talnev`) VALUES (58, 'indukciós fogyasztásmérő');
INSERT INTO `talalmany` (`tkod`, `talnev`) VALUES (59, 'IRX típusú ionoszféra-kutató berendezés');
INSERT INTO `talalmany` (`tkod`, `talnev`) VALUES (60, 'íven függő vonórudas vashíd');
INSERT INTO `talalmany` (`tkod`, `talnev`) VALUES (61, 'Katicabogár');
INSERT INTO `talalmany` (`tkod`, `talnev`) VALUES (62, 'karsztvíz elleni védekezés a bányaüzemekben');
INSERT INTO `talalmany` (`tkod`, `talnev`) VALUES (63, 'Kármán-féle örvénysornak');
INSERT INTO `talalmany` (`tkod`, `talnev`) VALUES (64, 'Kármán-spektrum');
INSERT INTO `talalmany` (`tkod`, `talnev`) VALUES (65, 'kéregöntés');
INSERT INTO `talalmany` (`tkod`, `talnev`) VALUES (66, 'Kolibri repülőgép');
INSERT INTO `talalmany` (`tkod`, `talnev`) VALUES (67, 'körbe látó optika');
INSERT INTO `talalmany` (`tkod`, `talnev`) VALUES (68, 'kriptonlámpa');
INSERT INTO `talalmany` (`tkod`, `talnev`) VALUES (69, 'kristálynövesztés űrkemencében');
INSERT INTO `talalmany` (`tkod`, `talnev`) VALUES (70, 'lemezmotor és lemezautó');
INSERT INTO `talalmany` (`tkod`, `talnev`) VALUES (71, 'léggép');
INSERT INTO `talalmany` (`tkod`, `talnev`) VALUES (72, 'légkondenzációs hűtőtorony');
INSERT INTO `talalmany` (`tkod`, `talnev`) VALUES (73, 'légzőkészülék');
INSERT INTO `talalmany` (`tkod`, `talnev`) VALUES (74, 'LP—long-playing');
INSERT INTO `talalmany` (`tkod`, `talnev`) VALUES (75, 'marófejes jövesztőgép');
INSERT INTO `talalmany` (`tkod`, `talnev`) VALUES (76, 'megvilágításmérő');
INSERT INTO `talalmany` (`tkod`, `talnev`) VALUES (77, 'méter fogalma');
INSERT INTO `talalmany` (`tkod`, `talnev`) VALUES (78, 'mikrobarázdás hanglemez');
INSERT INTO `talalmany` (`tkod`, `talnev`) VALUES (79, 'molekulaspektroszkópia');
INSERT INTO `talalmany` (`tkod`, `talnev`) VALUES (80, 'mozdonyok');
INSERT INTO `talalmany` (`tkod`, `talnev`) VALUES (81, 'napenergia');
INSERT INTO `talalmany` (`tkod`, `talnev`) VALUES (82, 'négyütemű belső égésű motor');
INSERT INTO `talalmany` (`tkod`, `talnev`) VALUES (83, 'optikai rácsosztó gép');
INSERT INTO `talalmany` (`tkod`, `talnev`) VALUES (84, 'Ostwald-Buzágh-féle üledékszabály');
INSERT INTO `talalmany` (`tkod`, `talnev`) VALUES (85, 'öngerjesztésű kompaundált szinkrongép');
INSERT INTO `talalmany` (`tkod`, `talnev`) VALUES (86, 'ősdinamó');
INSERT INTO `talalmany` (`tkod`, `talnev`) VALUES (87, 'PAL-optika');
INSERT INTO `talalmany` (`tkod`, `talnev`) VALUES (88, 'papírgyártás');
INSERT INTO `talalmany` (`tkod`, `talnev`) VALUES (89, 'PePy');
INSERT INTO `talalmany` (`tkod`, `talnev`) VALUES (90, 'perforátor');
INSERT INTO `talalmany` (`tkod`, `talnev`) VALUES (91, 'Petzval-féle összeg');
INSERT INTO `talalmany` (`tkod`, `talnev`) VALUES (92, 'Pille');
INSERT INTO `talalmany` (`tkod`, `talnev`) VALUES (93, 'Pintsch-féle gázmérő');
INSERT INTO `talalmany` (`tkod`, `talnev`) VALUES (94, 'PKZ helikopter');
INSERT INTO `talalmany` (`tkod`, `talnev`) VALUES (95, 'porlasztó');
INSERT INTO `talalmany` (`tkod`, `talnev`) VALUES (96, 'rakéta');
INSERT INTO `talalmany` (`tkod`, `talnev`) VALUES (97, 'Reich-fogó');
INSERT INTO `talalmany` (`tkod`, `talnev`) VALUES (98, 'repulziós motor');
INSERT INTO `talalmany` (`tkod`, `talnev`) VALUES (99, 'réselőlánc');
INSERT INTO `talalmany` (`tkod`, `talnev`) VALUES (100, 'réselőrúd');
INSERT INTO `talalmany` (`tkod`, `talnev`) VALUES (101, 'részecskegyorsító');
INSERT INTO `talalmany` (`tkod`, `talnev`) VALUES (102, 'Segner-kerék');
INSERT INTO `talalmany` (`tkod`, `talnev`) VALUES (103, 'Super Kodak Six-20');
INSERT INTO `talalmany` (`tkod`, `talnev`) VALUES (104, 'sűrített levegő');
INSERT INTO `talalmany` (`tkod`, `talnev`) VALUES (105, 'Szabó-féle görgős eke');
INSERT INTO `talalmany` (`tkod`, `talnev`) VALUES (106, 'szakadásiszög-mérő');
INSERT INTO `talalmany` (`tkod`, `talnev`) VALUES (107, 'szárazoltó');
INSERT INTO `talalmany` (`tkod`, `talnev`) VALUES (108, 'szénhidrogén-bányászat');
INSERT INTO `talalmany` (`tkod`, `talnev`) VALUES (109, 'szikrapróba');
INSERT INTO `talalmany` (`tkod`, `talnev`) VALUES (110, 'síkszita');
INSERT INTO `talalmany` (`tkod`, `talnev`) VALUES (111, 'szimmetria­elvek');
INSERT INTO `talalmany` (`tkod`, `talnev`) VALUES (112, 'színes televízió');
INSERT INTO `talalmany` (`tkod`, `talnev`) VALUES (113, 'Szilvay-féle szárazoltásos rendszer');
INSERT INTO `talalmany` (`tkod`, `talnev`) VALUES (114, 'színes film');
INSERT INTO `talalmany` (`tkod`, `talnev`) VALUES (115, 'szolstabilitáskontinuitás elmélet');
INSERT INTO `talalmany` (`tkod`, `talnev`) VALUES (116, 'szuperintenzív habelárasztás');
INSERT INTO `talalmany` (`tkod`, `talnev`) VALUES (117, 'tekercsrugós vadászpuska');
INSERT INTO `talalmany` (`tkod`, `talnev`) VALUES (118, 'telefonhírmondó');
INSERT INTO `talalmany` (`tkod`, `talnev`) VALUES (119, 'telefonközpont');
INSERT INTO `talalmany` (`tkod`, `talnev`) VALUES (120, 'termolumineszcens dózismérő');
INSERT INTO `talalmany` (`tkod`, `talnev`) VALUES (121, 'termonukleáris reakció');
INSERT INTO `talalmany` (`tkod`, `talnev`) VALUES (122, 'titkosítás');
INSERT INTO `talalmany` (`tkod`, `talnev`) VALUES (123, 'törtképes távmérő');
INSERT INTO `talalmany` (`tkod`, `talnev`) VALUES (124, 'traktor');
INSERT INTO `talalmany` (`tkod`, `talnev`) VALUES (125, 'transzformátor');
INSERT INTO `talalmany` (`tkod`, `talnev`) VALUES (126, 'TS-uszályhíd');
INSERT INTO `talalmany` (`tkod`, `talnev`) VALUES (127, 'turbógenerátor-gyártás');
INSERT INTO `talalmany` (`tkod`, `talnev`) VALUES (128, 'turbógenerátor - tekercselő');
INSERT INTO `talalmany` (`tkod`, `talnev`) VALUES (129, 'tükörcsavaros képíró');
INSERT INTO `talalmany` (`tkod`, `talnev`) VALUES (130, 'tűzgép');
INSERT INTO `talalmany` (`tkod`, `talnev`) VALUES (131, 'űrkemence');
INSERT INTO `talalmany` (`tkod`, `talnev`) VALUES (132, 'Van de Graaff generátor');
INSERT INTO `talalmany` (`tkod`, `talnev`) VALUES (133, 'Valtellina');
INSERT INTO `talalmany` (`tkod`, `talnev`) VALUES (134, 'Vaskapu-vízerőmű');
INSERT INTO `talalmany` (`tkod`, `talnev`) VALUES (135, 'vetőgép');
INSERT INTO `talalmany` (`tkod`, `talnev`) VALUES (136, 'villámdelejes forgony');
INSERT INTO `talalmany` (`tkod`, `talnev`) VALUES (137, 'villámfeszítő');
INSERT INTO `talalmany` (`tkod`, `talnev`) VALUES (138, 'villanyóra');
INSERT INTO `talalmany` (`tkod`, `talnev`) VALUES (139, 'vizuális mikroprocesszor');
INSERT INTO `talalmany` (`tkod`, `talnev`) VALUES (140, 'vízemelő');
INSERT INTO `talalmany` (`tkod`, `talnev`) VALUES (141, 'vízóra');
INSERT INTO `talalmany` (`tkod`, `talnev`) VALUES (142, 'volfrámszálas izzó');
INSERT INTO `talalmany` (`tkod`, `talnev`) VALUES (143, 'vonalzógép');
INSERT INTO `talalmany` (`tkod`, `talnev`) VALUES (144, 'zárt vasmagú transzformátor');
INSERT INTO `talalmany` (`tkod`, `talnev`) VALUES (145, 'golyóstoll');
INSERT INTO `talalmany` (`tkod`, `talnev`) VALUES (146, 'automata sebességváltó');
INSERT INTO `talalmany` (`tkod`, `talnev`) VALUES (147, 'C-vitamin');
INSERT INTO `talalmany` (`tkod`, `talnev`) VALUES (148, 'macska');
INSERT INTO `talalmany` (`tkod`, `talnev`) VALUES (149, 'egér');
# 149 records

