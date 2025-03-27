#
# DUMP FILE
#
# Database is ported from MS Access
#------------------------------------------------------------------
# Created using "MS Access to MySQL" form http://www.bullzip.com
# Program Version 5.5.282
#
# OPTIONS:
#   sourceusername=
#   sourcepassword=
#   sourcesystemdatabase=
#   destinationdatabase=csomagkuldo2
#   storageengine=MyISAM
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

DROP DATABASE IF EXISTS `csomagkuldo`;
CREATE DATABASE IF NOT EXISTS `csomagkuldo`;
USE `csomagkuldo`;

#
# Table structure for table 'csomagok'
#

DROP TABLE IF EXISTS `csomagok`;

CREATE TABLE `csomagok` (
  `Azon` INTEGER NOT NULL AUTO_INCREMENT, 
  `Rogzites` DATETIME, 
  `Szallitas` DATETIME, 
  `Hosszusag` INTEGER, 
  `Szelesseg` INTEGER, 
  `Magassag` INTEGER, 
  `Tomeg` DOUBLE NULL, 
  PRIMARY KEY (`Azon`)
) ENGINE=myisam DEFAULT CHARSET=utf8;

SET autocommit=1;

#
# Dumping data for table 'csomagok'
#

INSERT INTO `csomagok` (`Azon`, `Rogzites`, `Szallitas`, `Hosszusag`, `Szelesseg`, `Magassag`, `Tomeg`) VALUES (1, '2007-03-11 08:00:00', '2007-03-21 00:00:00', 86, 55, 48, 49.48);
INSERT INTO `csomagok` (`Azon`, `Rogzites`, `Szallitas`, `Hosszusag`, `Szelesseg`, `Magassag`, `Tomeg`) VALUES (2, '2007-03-12 08:22:00', '2007-03-27 00:00:00', 29, 43, 74, 15.19);
INSERT INTO `csomagok` (`Azon`, `Rogzites`, `Szallitas`, `Hosszusag`, `Szelesseg`, `Magassag`, `Tomeg`) VALUES (3, '2007-03-13 09:27:00', '2007-03-25 00:00:00', 42, 56, 46, 28.67);
INSERT INTO `csomagok` (`Azon`, `Rogzites`, `Szallitas`, `Hosszusag`, `Szelesseg`, `Magassag`, `Tomeg`) VALUES (4, '2007-03-14 12:04:00', '2007-03-30 00:00:00', 55, 12, 98, 76.25);
INSERT INTO `csomagok` (`Azon`, `Rogzites`, `Szallitas`, `Hosszusag`, `Szelesseg`, `Magassag`, `Tomeg`) VALUES (5, '2007-03-15 10:56:00', '2007-04-13 00:00:00', 77, 40, 60, 17.97);
INSERT INTO `csomagok` (`Azon`, `Rogzites`, `Szallitas`, `Hosszusag`, `Szelesseg`, `Magassag`, `Tomeg`) VALUES (6, '2007-03-15 14:04:00', '2007-04-13 00:00:00', 66, 80, 55, 101.53);
INSERT INTO `csomagok` (`Azon`, `Rogzites`, `Szallitas`, `Hosszusag`, `Szelesseg`, `Magassag`, `Tomeg`) VALUES (7, '2007-03-16 13:42:00', '2007-04-13 00:00:00', 80, 80, 61, 70.67);
INSERT INTO `csomagok` (`Azon`, `Rogzites`, `Szallitas`, `Hosszusag`, `Szelesseg`, `Magassag`, `Tomeg`) VALUES (8, '2007-03-16 08:05:00', '2007-03-27 00:00:00', 11, 58, 72, 32.4);
INSERT INTO `csomagok` (`Azon`, `Rogzites`, `Szallitas`, `Hosszusag`, `Szelesseg`, `Magassag`, `Tomeg`) VALUES (9, '2007-03-17 12:19:00', '2007-03-26 00:00:00', 69, 94, 64, 39.87);
INSERT INTO `csomagok` (`Azon`, `Rogzites`, `Szallitas`, `Hosszusag`, `Szelesseg`, `Magassag`, `Tomeg`) VALUES (10, '2007-03-17 13:35:00', '2007-04-07 00:00:00', 97, 71, 47, 83.64);
INSERT INTO `csomagok` (`Azon`, `Rogzites`, `Szallitas`, `Hosszusag`, `Szelesseg`, `Magassag`, `Tomeg`) VALUES (11, '2007-03-17 15:05:00', '2007-04-03 00:00:00', 37, 23, 22, 79.37);
INSERT INTO `csomagok` (`Azon`, `Rogzites`, `Szallitas`, `Hosszusag`, `Szelesseg`, `Magassag`, `Tomeg`) VALUES (12, '2007-03-17 11:38:00', '2007-04-13 00:00:00', 40, 37, 39, 56.04);
INSERT INTO `csomagok` (`Azon`, `Rogzites`, `Szallitas`, `Hosszusag`, `Szelesseg`, `Magassag`, `Tomeg`) VALUES (13, '2007-03-17 08:10:00', '2007-04-08 00:00:00', 70, 38, 85, 93.07);
INSERT INTO `csomagok` (`Azon`, `Rogzites`, `Szallitas`, `Hosszusag`, `Szelesseg`, `Magassag`, `Tomeg`) VALUES (14, '2007-03-18 14:47:00', '2007-04-10 00:00:00', 65, 91, 99, 49.77);
INSERT INTO `csomagok` (`Azon`, `Rogzites`, `Szallitas`, `Hosszusag`, `Szelesseg`, `Magassag`, `Tomeg`) VALUES (15, '2007-03-19 15:15:00', '2007-04-04 00:00:00', 71, 64, 39, 40.4);
INSERT INTO `csomagok` (`Azon`, `Rogzites`, `Szallitas`, `Hosszusag`, `Szelesseg`, `Magassag`, `Tomeg`) VALUES (16, '2007-03-19 10:27:00', '2007-03-26 00:00:00', 23, 50, 65, 96.65);
INSERT INTO `csomagok` (`Azon`, `Rogzites`, `Szallitas`, `Hosszusag`, `Szelesseg`, `Magassag`, `Tomeg`) VALUES (17, '2007-03-20 12:25:00', '2007-04-18 00:00:00', 32, 91, 21, 55.75);
INSERT INTO `csomagok` (`Azon`, `Rogzites`, `Szallitas`, `Hosszusag`, `Szelesseg`, `Magassag`, `Tomeg`) VALUES (18, '2007-03-20 08:58:00', '2007-04-06 00:00:00', 22, 14, 28, 95.31);
INSERT INTO `csomagok` (`Azon`, `Rogzites`, `Szallitas`, `Hosszusag`, `Szelesseg`, `Magassag`, `Tomeg`) VALUES (19, '2007-03-21 11:10:00', '2007-03-29 00:00:00', 97, 50, 98, 72.21);
INSERT INTO `csomagok` (`Azon`, `Rogzites`, `Szallitas`, `Hosszusag`, `Szelesseg`, `Magassag`, `Tomeg`) VALUES (20, '2007-03-22 14:01:00', '2007-04-03 00:00:00', 25, 81, 44, 93.76);
INSERT INTO `csomagok` (`Azon`, `Rogzites`, `Szallitas`, `Hosszusag`, `Szelesseg`, `Magassag`, `Tomeg`) VALUES (21, '2007-03-22 13:47:00', '2007-04-09 00:00:00', 98, 93, 72, 50.11);
INSERT INTO `csomagok` (`Azon`, `Rogzites`, `Szallitas`, `Hosszusag`, `Szelesseg`, `Magassag`, `Tomeg`) VALUES (22, '2007-03-22 14:40:00', '2007-03-28 00:00:00', 82, 92, 19, 54.45);
INSERT INTO `csomagok` (`Azon`, `Rogzites`, `Szallitas`, `Hosszusag`, `Szelesseg`, `Magassag`, `Tomeg`) VALUES (23, '2007-03-22 08:53:00', '2007-04-01 00:00:00', 96, 31, 96, 82.23);
INSERT INTO `csomagok` (`Azon`, `Rogzites`, `Szallitas`, `Hosszusag`, `Szelesseg`, `Magassag`, `Tomeg`) VALUES (24, '2007-03-23 08:03:00', '2007-03-26 00:00:00', 59, 75, 73, 33.29);
INSERT INTO `csomagok` (`Azon`, `Rogzites`, `Szallitas`, `Hosszusag`, `Szelesseg`, `Magassag`, `Tomeg`) VALUES (25, '2007-03-24 09:31:00', '2007-04-13 00:00:00', 38, 18, 22, 56.01);
INSERT INTO `csomagok` (`Azon`, `Rogzites`, `Szallitas`, `Hosszusag`, `Szelesseg`, `Magassag`, `Tomeg`) VALUES (26, '2007-03-25 10:56:00', '2007-04-19 00:00:00', 76, 31, 20, 96.33);
INSERT INTO `csomagok` (`Azon`, `Rogzites`, `Szallitas`, `Hosszusag`, `Szelesseg`, `Magassag`, `Tomeg`) VALUES (27, '2007-03-25 11:03:00', '2007-03-28 00:00:00', 20, 38, 15, 7.19);
INSERT INTO `csomagok` (`Azon`, `Rogzites`, `Szallitas`, `Hosszusag`, `Szelesseg`, `Magassag`, `Tomeg`) VALUES (28, '2007-03-26 15:32:00', '2007-04-05 00:00:00', 52, 82, 61, 43.44);
INSERT INTO `csomagok` (`Azon`, `Rogzites`, `Szallitas`, `Hosszusag`, `Szelesseg`, `Magassag`, `Tomeg`) VALUES (29, '2007-03-26 08:13:00', '2007-04-11 00:00:00', 24, 40, 19, 99.49);
INSERT INTO `csomagok` (`Azon`, `Rogzites`, `Szallitas`, `Hosszusag`, `Szelesseg`, `Magassag`, `Tomeg`) VALUES (30, '2007-03-26 14:35:00', '2007-04-23 00:00:00', 33, 18, 69, 17.74);
INSERT INTO `csomagok` (`Azon`, `Rogzites`, `Szallitas`, `Hosszusag`, `Szelesseg`, `Magassag`, `Tomeg`) VALUES (31, '2007-03-27 10:20:00', '2007-04-10 00:00:00', 57, 30, 93, 47.53);
INSERT INTO `csomagok` (`Azon`, `Rogzites`, `Szallitas`, `Hosszusag`, `Szelesseg`, `Magassag`, `Tomeg`) VALUES (32, '2007-03-28 08:38:00', '2007-04-05 00:00:00', 70, 97, 18, 46.54);
INSERT INTO `csomagok` (`Azon`, `Rogzites`, `Szallitas`, `Hosszusag`, `Szelesseg`, `Magassag`, `Tomeg`) VALUES (33, '2007-03-28 11:33:00', '2007-04-17 00:00:00', 13, 41, 63, 31.42);
INSERT INTO `csomagok` (`Azon`, `Rogzites`, `Szallitas`, `Hosszusag`, `Szelesseg`, `Magassag`, `Tomeg`) VALUES (34, '2007-03-29 13:04:00', '2007-04-26 00:00:00', 38, 51, 38, 17.79);
INSERT INTO `csomagok` (`Azon`, `Rogzites`, `Szallitas`, `Hosszusag`, `Szelesseg`, `Magassag`, `Tomeg`) VALUES (35, '2007-03-30 13:02:00', '2007-04-06 00:00:00', 11, 67, 31, 13.36);
INSERT INTO `csomagok` (`Azon`, `Rogzites`, `Szallitas`, `Hosszusag`, `Szelesseg`, `Magassag`, `Tomeg`) VALUES (36, '2007-03-31 14:38:00', '2007-04-15 00:00:00', 28, 55, 16, 53.83);
INSERT INTO `csomagok` (`Azon`, `Rogzites`, `Szallitas`, `Hosszusag`, `Szelesseg`, `Magassag`, `Tomeg`) VALUES (37, '2007-03-31 11:12:00', '2007-04-09 00:00:00', 87, 91, 70, 46.84);
INSERT INTO `csomagok` (`Azon`, `Rogzites`, `Szallitas`, `Hosszusag`, `Szelesseg`, `Magassag`, `Tomeg`) VALUES (38, '2007-03-31 10:45:00', '2007-04-08 00:00:00', 78, 91, 34, 98.37);
INSERT INTO `csomagok` (`Azon`, `Rogzites`, `Szallitas`, `Hosszusag`, `Szelesseg`, `Magassag`, `Tomeg`) VALUES (39, '2007-04-01 13:03:00', '2007-04-04 00:00:00', 62, 53, 30, 65.92);
INSERT INTO `csomagok` (`Azon`, `Rogzites`, `Szallitas`, `Hosszusag`, `Szelesseg`, `Magassag`, `Tomeg`) VALUES (40, '2007-04-01 10:25:00', '2007-04-04 00:00:00', 14, 29, 52, 35.06);
INSERT INTO `csomagok` (`Azon`, `Rogzites`, `Szallitas`, `Hosszusag`, `Szelesseg`, `Magassag`, `Tomeg`) VALUES (41, '2007-04-01 09:27:00', '2007-04-14 00:00:00', 43, 63, 93, 85.79);
INSERT INTO `csomagok` (`Azon`, `Rogzites`, `Szallitas`, `Hosszusag`, `Szelesseg`, `Magassag`, `Tomeg`) VALUES (42, '2007-04-02 14:20:00', '2007-04-06 00:00:00', 58, 44, 20, 23.42);
INSERT INTO `csomagok` (`Azon`, `Rogzites`, `Szallitas`, `Hosszusag`, `Szelesseg`, `Magassag`, `Tomeg`) VALUES (43, '2007-04-03 09:47:00', '2007-04-23 00:00:00', 58, 44, 20, 28.48);
INSERT INTO `csomagok` (`Azon`, `Rogzites`, `Szallitas`, `Hosszusag`, `Szelesseg`, `Magassag`, `Tomeg`) VALUES (44, '2007-04-04 14:00:00', '2007-05-03 00:00:00', 89, 86, 98, 29.4);
INSERT INTO `csomagok` (`Azon`, `Rogzites`, `Szallitas`, `Hosszusag`, `Szelesseg`, `Magassag`, `Tomeg`) VALUES (45, '2007-04-05 08:23:00', '2007-04-23 00:00:00', 22, 37, 81, 50.08);
INSERT INTO `csomagok` (`Azon`, `Rogzites`, `Szallitas`, `Hosszusag`, `Szelesseg`, `Magassag`, `Tomeg`) VALUES (46, '2007-04-05 09:34:00', '2007-04-29 00:00:00', 36, 36, 34, 101.27);
INSERT INTO `csomagok` (`Azon`, `Rogzites`, `Szallitas`, `Hosszusag`, `Szelesseg`, `Magassag`, `Tomeg`) VALUES (47, '2007-04-05 15:40:00', '2007-04-15 00:00:00', 74, 69, 79, 16.52);
INSERT INTO `csomagok` (`Azon`, `Rogzites`, `Szallitas`, `Hosszusag`, `Szelesseg`, `Magassag`, `Tomeg`) VALUES (48, '2007-04-05 10:50:00', '2007-04-22 00:00:00', 33, 95, 44, 82.74);
INSERT INTO `csomagok` (`Azon`, `Rogzites`, `Szallitas`, `Hosszusag`, `Szelesseg`, `Magassag`, `Tomeg`) VALUES (49, '2007-04-05 13:24:00', '2007-04-18 00:00:00', 96, 48, 12, 39.64);
INSERT INTO `csomagok` (`Azon`, `Rogzites`, `Szallitas`, `Hosszusag`, `Szelesseg`, `Magassag`, `Tomeg`) VALUES (50, '2007-04-05 12:54:00', '2007-04-25 00:00:00', 70, 64, 14, 99.15);
INSERT INTO `csomagok` (`Azon`, `Rogzites`, `Szallitas`, `Hosszusag`, `Szelesseg`, `Magassag`, `Tomeg`) VALUES (51, '2007-04-05 10:46:00', '2007-04-07 00:00:00', 13, 98, 50, 101.41);
INSERT INTO `csomagok` (`Azon`, `Rogzites`, `Szallitas`, `Hosszusag`, `Szelesseg`, `Magassag`, `Tomeg`) VALUES (52, '2007-04-06 12:55:00', '2007-05-02 00:00:00', 83, 19, 72, 75.84);
INSERT INTO `csomagok` (`Azon`, `Rogzites`, `Szallitas`, `Hosszusag`, `Szelesseg`, `Magassag`, `Tomeg`) VALUES (53, '2007-04-07 09:55:00', '2007-04-25 00:00:00', 19, 19, 31, 48.52);
INSERT INTO `csomagok` (`Azon`, `Rogzites`, `Szallitas`, `Hosszusag`, `Szelesseg`, `Magassag`, `Tomeg`) VALUES (54, '2007-04-07 08:42:00', '2007-04-29 00:00:00', 28, 85, 26, 44.26);
INSERT INTO `csomagok` (`Azon`, `Rogzites`, `Szallitas`, `Hosszusag`, `Szelesseg`, `Magassag`, `Tomeg`) VALUES (55, '2007-04-08 08:30:00', '2007-04-25 00:00:00', 40, 86, 92, 75.94);
INSERT INTO `csomagok` (`Azon`, `Rogzites`, `Szallitas`, `Hosszusag`, `Szelesseg`, `Magassag`, `Tomeg`) VALUES (56, '2007-04-09 11:56:00', '2007-05-04 00:00:00', 31, 46, 46, 66.51);
INSERT INTO `csomagok` (`Azon`, `Rogzites`, `Szallitas`, `Hosszusag`, `Szelesseg`, `Magassag`, `Tomeg`) VALUES (57, '2007-04-10 08:18:00', '2007-04-30 00:00:00', 40, 74, 42, 25.88);
INSERT INTO `csomagok` (`Azon`, `Rogzites`, `Szallitas`, `Hosszusag`, `Szelesseg`, `Magassag`, `Tomeg`) VALUES (58, '2007-04-11 08:54:00', '2007-04-19 00:00:00', 79, 46, 18, 43.13);
INSERT INTO `csomagok` (`Azon`, `Rogzites`, `Szallitas`, `Hosszusag`, `Szelesseg`, `Magassag`, `Tomeg`) VALUES (59, '2007-04-11 12:12:00', '2007-05-01 00:00:00', 53, 96, 41, 96.75);
INSERT INTO `csomagok` (`Azon`, `Rogzites`, `Szallitas`, `Hosszusag`, `Szelesseg`, `Magassag`, `Tomeg`) VALUES (60, '2007-04-12 15:45:00', '2007-04-18 00:00:00', 77, 53, 78, 87.02);
INSERT INTO `csomagok` (`Azon`, `Rogzites`, `Szallitas`, `Hosszusag`, `Szelesseg`, `Magassag`, `Tomeg`) VALUES (61, '2007-04-13 11:13:00', '2007-05-03 00:00:00', 38, 86, 60, 65.68);
INSERT INTO `csomagok` (`Azon`, `Rogzites`, `Szallitas`, `Hosszusag`, `Szelesseg`, `Magassag`, `Tomeg`) VALUES (62, '2007-04-14 12:11:00', '2007-04-20 00:00:00', 43, 18, 18, 32.7);
INSERT INTO `csomagok` (`Azon`, `Rogzites`, `Szallitas`, `Hosszusag`, `Szelesseg`, `Magassag`, `Tomeg`) VALUES (63, '2007-04-14 11:14:00', '2007-04-25 00:00:00', 68, 58, 11, 71.01);
INSERT INTO `csomagok` (`Azon`, `Rogzites`, `Szallitas`, `Hosszusag`, `Szelesseg`, `Magassag`, `Tomeg`) VALUES (64, '2007-04-14 12:31:00', '2007-05-09 00:00:00', 76, 50, 87, 85.74);
INSERT INTO `csomagok` (`Azon`, `Rogzites`, `Szallitas`, `Hosszusag`, `Szelesseg`, `Magassag`, `Tomeg`) VALUES (65, '2007-04-14 15:25:00', '2007-04-26 00:00:00', 14, 94, 58, 9.95);
INSERT INTO `csomagok` (`Azon`, `Rogzites`, `Szallitas`, `Hosszusag`, `Szelesseg`, `Magassag`, `Tomeg`) VALUES (66, '2007-04-15 09:02:00', '2007-04-30 00:00:00', 79, 27, 78, 62.72);
INSERT INTO `csomagok` (`Azon`, `Rogzites`, `Szallitas`, `Hosszusag`, `Szelesseg`, `Magassag`, `Tomeg`) VALUES (67, '2007-04-16 15:30:00', '2007-05-08 00:00:00', 19, 79, 15, 71.35);
INSERT INTO `csomagok` (`Azon`, `Rogzites`, `Szallitas`, `Hosszusag`, `Szelesseg`, `Magassag`, `Tomeg`) VALUES (68, '2007-04-17 15:49:00', '2007-05-12 00:00:00', 76, 70, 84, 84.27);
INSERT INTO `csomagok` (`Azon`, `Rogzites`, `Szallitas`, `Hosszusag`, `Szelesseg`, `Magassag`, `Tomeg`) VALUES (69, '2007-04-17 12:14:00', '2007-04-23 00:00:00', 59, 29, 63, 87.94);
INSERT INTO `csomagok` (`Azon`, `Rogzites`, `Szallitas`, `Hosszusag`, `Szelesseg`, `Magassag`, `Tomeg`) VALUES (70, '2007-04-18 14:19:00', '2007-04-22 00:00:00', 25, 89, 99, 66.35);
INSERT INTO `csomagok` (`Azon`, `Rogzites`, `Szallitas`, `Hosszusag`, `Szelesseg`, `Magassag`, `Tomeg`) VALUES (71, '2007-04-19 09:25:00', '2007-05-09 00:00:00', 89, 92, 15, 6.56);
INSERT INTO `csomagok` (`Azon`, `Rogzites`, `Szallitas`, `Hosszusag`, `Szelesseg`, `Magassag`, `Tomeg`) VALUES (72, '2007-04-20 09:02:00', '2007-05-03 00:00:00', 40, 96, 77, 92.34);
INSERT INTO `csomagok` (`Azon`, `Rogzites`, `Szallitas`, `Hosszusag`, `Szelesseg`, `Magassag`, `Tomeg`) VALUES (73, '2007-04-20 15:25:00', '2007-04-29 00:00:00', 82, 50, 40, 13.35);
INSERT INTO `csomagok` (`Azon`, `Rogzites`, `Szallitas`, `Hosszusag`, `Szelesseg`, `Magassag`, `Tomeg`) VALUES (74, '2007-04-20 13:21:00', '2007-04-27 00:00:00', 66, 24, 64, 5.44);
INSERT INTO `csomagok` (`Azon`, `Rogzites`, `Szallitas`, `Hosszusag`, `Szelesseg`, `Magassag`, `Tomeg`) VALUES (75, '2007-04-20 15:20:00', '2007-05-10 00:00:00', 33, 97, 46, 15.28);
INSERT INTO `csomagok` (`Azon`, `Rogzites`, `Szallitas`, `Hosszusag`, `Szelesseg`, `Magassag`, `Tomeg`) VALUES (76, '2007-04-21 14:19:00', '2007-05-09 00:00:00', 50, 52, 78, 81.66);
INSERT INTO `csomagok` (`Azon`, `Rogzites`, `Szallitas`, `Hosszusag`, `Szelesseg`, `Magassag`, `Tomeg`) VALUES (77, '2007-04-22 12:21:00', '2007-05-13 00:00:00', 10, 42, 94, 36.99);
INSERT INTO `csomagok` (`Azon`, `Rogzites`, `Szallitas`, `Hosszusag`, `Szelesseg`, `Magassag`, `Tomeg`) VALUES (78, '2007-04-22 08:35:00', '2007-05-06 00:00:00', 67, 84, 78, 13.7);
INSERT INTO `csomagok` (`Azon`, `Rogzites`, `Szallitas`, `Hosszusag`, `Szelesseg`, `Magassag`, `Tomeg`) VALUES (79, '2007-04-23 10:25:00', '2007-04-28 00:00:00', 28, 51, 68, 68.08);
INSERT INTO `csomagok` (`Azon`, `Rogzites`, `Szallitas`, `Hosszusag`, `Szelesseg`, `Magassag`, `Tomeg`) VALUES (80, '2007-04-24 09:22:00', '2007-04-28 00:00:00', 13, 66, 39, 77.89);
INSERT INTO `csomagok` (`Azon`, `Rogzites`, `Szallitas`, `Hosszusag`, `Szelesseg`, `Magassag`, `Tomeg`) VALUES (81, '2007-04-24 10:58:00', '2007-05-18 00:00:00', 79, 43, 85, 101.15);
INSERT INTO `csomagok` (`Azon`, `Rogzites`, `Szallitas`, `Hosszusag`, `Szelesseg`, `Magassag`, `Tomeg`) VALUES (82, '2007-04-25 15:14:00', '2007-05-19 00:00:00', 95, 14, 65, 32.94);
INSERT INTO `csomagok` (`Azon`, `Rogzites`, `Szallitas`, `Hosszusag`, `Szelesseg`, `Magassag`, `Tomeg`) VALUES (83, '2007-04-25 09:06:00', '2007-05-18 00:00:00', 95, 36, 75, 55.58);
INSERT INTO `csomagok` (`Azon`, `Rogzites`, `Szallitas`, `Hosszusag`, `Szelesseg`, `Magassag`, `Tomeg`) VALUES (84, '2007-04-26 10:58:00', '2007-05-21 00:00:00', 59, 29, 89, 39.65);
INSERT INTO `csomagok` (`Azon`, `Rogzites`, `Szallitas`, `Hosszusag`, `Szelesseg`, `Magassag`, `Tomeg`) VALUES (85, '2007-04-26 13:55:00', '2007-05-12 00:00:00', 37, 84, 57, 26.88);
INSERT INTO `csomagok` (`Azon`, `Rogzites`, `Szallitas`, `Hosszusag`, `Szelesseg`, `Magassag`, `Tomeg`) VALUES (86, '2007-04-26 11:27:00', '2007-05-12 00:00:00', 49, 87, 99, 14.61);
INSERT INTO `csomagok` (`Azon`, `Rogzites`, `Szallitas`, `Hosszusag`, `Szelesseg`, `Magassag`, `Tomeg`) VALUES (87, '2007-04-26 08:55:00', '2007-05-12 00:00:00', 78, 63, 97, 36.17);
INSERT INTO `csomagok` (`Azon`, `Rogzites`, `Szallitas`, `Hosszusag`, `Szelesseg`, `Magassag`, `Tomeg`) VALUES (88, '2007-04-27 09:30:00', '2007-05-11 00:00:00', 23, 35, 86, 31.55);
INSERT INTO `csomagok` (`Azon`, `Rogzites`, `Szallitas`, `Hosszusag`, `Szelesseg`, `Magassag`, `Tomeg`) VALUES (89, '2007-04-27 14:19:00', '2007-05-05 00:00:00', 39, 31, 36, 50.78);
INSERT INTO `csomagok` (`Azon`, `Rogzites`, `Szallitas`, `Hosszusag`, `Szelesseg`, `Magassag`, `Tomeg`) VALUES (90, '2007-04-28 10:18:00', '2007-05-02 00:00:00', 26, 21, 68, 2.8);
INSERT INTO `csomagok` (`Azon`, `Rogzites`, `Szallitas`, `Hosszusag`, `Szelesseg`, `Magassag`, `Tomeg`) VALUES (91, '2007-04-28 14:18:00', '2007-05-12 00:00:00', 27, 81, 74, 63.33);
INSERT INTO `csomagok` (`Azon`, `Rogzites`, `Szallitas`, `Hosszusag`, `Szelesseg`, `Magassag`, `Tomeg`) VALUES (92, '2007-04-28 14:36:00', '2007-05-08 00:00:00', 71, 48, 16, 100.35);
INSERT INTO `csomagok` (`Azon`, `Rogzites`, `Szallitas`, `Hosszusag`, `Szelesseg`, `Magassag`, `Tomeg`) VALUES (93, '2007-04-29 15:30:00', '2007-05-10 00:00:00', 19, 99, 94, 73.98);
INSERT INTO `csomagok` (`Azon`, `Rogzites`, `Szallitas`, `Hosszusag`, `Szelesseg`, `Magassag`, `Tomeg`) VALUES (94, '2007-04-30 11:45:00', '2007-05-15 00:00:00', 78, 62, 83, 80.67);
INSERT INTO `csomagok` (`Azon`, `Rogzites`, `Szallitas`, `Hosszusag`, `Szelesseg`, `Magassag`, `Tomeg`) VALUES (95, '2007-04-30 14:16:00', '2007-05-21 00:00:00', 34, 92, 76, 36.5);
INSERT INTO `csomagok` (`Azon`, `Rogzites`, `Szallitas`, `Hosszusag`, `Szelesseg`, `Magassag`, `Tomeg`) VALUES (96, '2007-04-30 10:46:00', '2007-05-17 00:00:00', 49, 62, 19, 81.67);
INSERT INTO `csomagok` (`Azon`, `Rogzites`, `Szallitas`, `Hosszusag`, `Szelesseg`, `Magassag`, `Tomeg`) VALUES (97, '2007-04-30 08:13:00', '2007-05-11 00:00:00', 53, 66, 38, 12.93);
INSERT INTO `csomagok` (`Azon`, `Rogzites`, `Szallitas`, `Hosszusag`, `Szelesseg`, `Magassag`, `Tomeg`) VALUES (98, '2007-04-30 12:01:00', '2007-05-16 00:00:00', 61, 99, 49, 12.55);
INSERT INTO `csomagok` (`Azon`, `Rogzites`, `Szallitas`, `Hosszusag`, `Szelesseg`, `Magassag`, `Tomeg`) VALUES (99, '2007-05-01 13:36:00', '2007-05-28 00:00:00', 88, 62, 90, 95.96);
INSERT INTO `csomagok` (`Azon`, `Rogzites`, `Szallitas`, `Hosszusag`, `Szelesseg`, `Magassag`, `Tomeg`) VALUES (100, '2007-05-01 15:32:00', '2007-05-03 00:00:00', 69, 37, 34, 74.34);
INSERT INTO `csomagok` (`Azon`, `Rogzites`, `Szallitas`, `Hosszusag`, `Szelesseg`, `Magassag`, `Tomeg`) VALUES (101, '2007-05-02 13:24:00', '2007-05-25 00:00:00', 26, 90, 97, 19.75);
INSERT INTO `csomagok` (`Azon`, `Rogzites`, `Szallitas`, `Hosszusag`, `Szelesseg`, `Magassag`, `Tomeg`) VALUES (102, '2007-05-03 12:25:00', '2007-05-09 00:00:00', 15, 94, 88, 96.58);
INSERT INTO `csomagok` (`Azon`, `Rogzites`, `Szallitas`, `Hosszusag`, `Szelesseg`, `Magassag`, `Tomeg`) VALUES (103, '2007-05-03 13:27:00', '2007-05-28 00:00:00', 43, 69, 73, 76.06);
INSERT INTO `csomagok` (`Azon`, `Rogzites`, `Szallitas`, `Hosszusag`, `Szelesseg`, `Magassag`, `Tomeg`) VALUES (104, '2007-05-03 13:54:00', '2007-05-23 00:00:00', 91, 39, 52, 54.29);
INSERT INTO `csomagok` (`Azon`, `Rogzites`, `Szallitas`, `Hosszusag`, `Szelesseg`, `Magassag`, `Tomeg`) VALUES (105, '2007-05-03 09:18:00', '2007-05-08 00:00:00', 42, 26, 81, 13.13);
INSERT INTO `csomagok` (`Azon`, `Rogzites`, `Szallitas`, `Hosszusag`, `Szelesseg`, `Magassag`, `Tomeg`) VALUES (106, '2007-05-03 10:12:00', '2007-05-13 00:00:00', 13, 22, 80, 62.28);
INSERT INTO `csomagok` (`Azon`, `Rogzites`, `Szallitas`, `Hosszusag`, `Szelesseg`, `Magassag`, `Tomeg`) VALUES (107, '2007-05-04 13:07:00', '2007-05-18 00:00:00', 72, 35, 19, 100.63);
INSERT INTO `csomagok` (`Azon`, `Rogzites`, `Szallitas`, `Hosszusag`, `Szelesseg`, `Magassag`, `Tomeg`) VALUES (108, '2007-05-04 10:34:00', '2007-06-01 00:00:00', 39, 76, 55, 47.57);
INSERT INTO `csomagok` (`Azon`, `Rogzites`, `Szallitas`, `Hosszusag`, `Szelesseg`, `Magassag`, `Tomeg`) VALUES (109, '2007-05-05 10:49:00', '2007-05-30 00:00:00', 73, 25, 78, 78.68);
INSERT INTO `csomagok` (`Azon`, `Rogzites`, `Szallitas`, `Hosszusag`, `Szelesseg`, `Magassag`, `Tomeg`) VALUES (110, '2007-05-06 13:48:00', '2007-05-09 00:00:00', 45, 23, 84, 56.31);
INSERT INTO `csomagok` (`Azon`, `Rogzites`, `Szallitas`, `Hosszusag`, `Szelesseg`, `Magassag`, `Tomeg`) VALUES (111, '2007-05-07 13:54:00', '2007-05-28 00:00:00', 44, 98, 63, 56.28);
INSERT INTO `csomagok` (`Azon`, `Rogzites`, `Szallitas`, `Hosszusag`, `Szelesseg`, `Magassag`, `Tomeg`) VALUES (112, '2007-05-08 12:47:00', '2007-05-19 00:00:00', 68, 89, 37, 78.05);
INSERT INTO `csomagok` (`Azon`, `Rogzites`, `Szallitas`, `Hosszusag`, `Szelesseg`, `Magassag`, `Tomeg`) VALUES (113, '2007-05-08 14:58:00', '2007-05-23 00:00:00', 87, 94, 91, 56.81);
INSERT INTO `csomagok` (`Azon`, `Rogzites`, `Szallitas`, `Hosszusag`, `Szelesseg`, `Magassag`, `Tomeg`) VALUES (114, '2007-05-09 09:14:00', '2007-05-22 00:00:00', 47, 27, 96, 6.03);
INSERT INTO `csomagok` (`Azon`, `Rogzites`, `Szallitas`, `Hosszusag`, `Szelesseg`, `Magassag`, `Tomeg`) VALUES (115, '2007-05-09 09:20:00', '2007-06-06 00:00:00', 31, 25, 55, 91.2);
INSERT INTO `csomagok` (`Azon`, `Rogzites`, `Szallitas`, `Hosszusag`, `Szelesseg`, `Magassag`, `Tomeg`) VALUES (116, '2007-05-10 10:23:00', '2007-05-27 00:00:00', 10, 81, 90, 83.99);
INSERT INTO `csomagok` (`Azon`, `Rogzites`, `Szallitas`, `Hosszusag`, `Szelesseg`, `Magassag`, `Tomeg`) VALUES (117, '2007-05-10 13:27:00', '2007-06-07 00:00:00', 21, 98, 62, 20.9);
INSERT INTO `csomagok` (`Azon`, `Rogzites`, `Szallitas`, `Hosszusag`, `Szelesseg`, `Magassag`, `Tomeg`) VALUES (118, '2007-05-11 09:24:00', '2007-06-04 00:00:00', 43, 70, 28, 31.78);
INSERT INTO `csomagok` (`Azon`, `Rogzites`, `Szallitas`, `Hosszusag`, `Szelesseg`, `Magassag`, `Tomeg`) VALUES (119, '2007-05-12 10:36:00', '2007-06-02 00:00:00', 34, 55, 71, 42.27);
INSERT INTO `csomagok` (`Azon`, `Rogzites`, `Szallitas`, `Hosszusag`, `Szelesseg`, `Magassag`, `Tomeg`) VALUES (120, '2007-05-12 09:05:00', '2007-05-31 00:00:00', 30, 41, 83, 64.2);
INSERT INTO `csomagok` (`Azon`, `Rogzites`, `Szallitas`, `Hosszusag`, `Szelesseg`, `Magassag`, `Tomeg`) VALUES (121, '2007-05-12 15:08:00', '2007-05-15 00:00:00', 96, 87, 87, 79.69);
INSERT INTO `csomagok` (`Azon`, `Rogzites`, `Szallitas`, `Hosszusag`, `Szelesseg`, `Magassag`, `Tomeg`) VALUES (122, '2007-05-12 12:32:00', '2007-05-31 00:00:00', 65, 18, 61, 91.49);
INSERT INTO `csomagok` (`Azon`, `Rogzites`, `Szallitas`, `Hosszusag`, `Szelesseg`, `Magassag`, `Tomeg`) VALUES (123, '2007-05-13 09:53:00', '2007-05-21 00:00:00', 81, 71, 66, 39.9);
INSERT INTO `csomagok` (`Azon`, `Rogzites`, `Szallitas`, `Hosszusag`, `Szelesseg`, `Magassag`, `Tomeg`) VALUES (124, '2007-05-13 15:46:00', '2007-06-01 00:00:00', 37, 77, 95, 6.96);
INSERT INTO `csomagok` (`Azon`, `Rogzites`, `Szallitas`, `Hosszusag`, `Szelesseg`, `Magassag`, `Tomeg`) VALUES (125, '2007-05-14 13:50:00', '2007-05-19 00:00:00', 97, 24, 43, 9.78);
INSERT INTO `csomagok` (`Azon`, `Rogzites`, `Szallitas`, `Hosszusag`, `Szelesseg`, `Magassag`, `Tomeg`) VALUES (126, '2007-05-14 14:15:00', '2007-06-02 00:00:00', 71, 65, 65, 82.15);
INSERT INTO `csomagok` (`Azon`, `Rogzites`, `Szallitas`, `Hosszusag`, `Szelesseg`, `Magassag`, `Tomeg`) VALUES (127, '2007-05-14 09:58:00', '2007-06-07 00:00:00', 33, 90, 81, 49.19);
INSERT INTO `csomagok` (`Azon`, `Rogzites`, `Szallitas`, `Hosszusag`, `Szelesseg`, `Magassag`, `Tomeg`) VALUES (128, '2007-05-14 11:19:00', '2007-05-17 00:00:00', 48, 94, 31, 21.6);
INSERT INTO `csomagok` (`Azon`, `Rogzites`, `Szallitas`, `Hosszusag`, `Szelesseg`, `Magassag`, `Tomeg`) VALUES (129, '2007-05-15 12:51:00', '2007-05-21 00:00:00', 90, 58, 99, 7.58);
INSERT INTO `csomagok` (`Azon`, `Rogzites`, `Szallitas`, `Hosszusag`, `Szelesseg`, `Magassag`, `Tomeg`) VALUES (130, '2007-05-15 11:32:00', '2007-05-19 00:00:00', 31, 83, 62, 33.61);
INSERT INTO `csomagok` (`Azon`, `Rogzites`, `Szallitas`, `Hosszusag`, `Szelesseg`, `Magassag`, `Tomeg`) VALUES (131, '2007-05-16 10:34:00', '2007-06-05 00:00:00', 33, 95, 59, 44.89);
INSERT INTO `csomagok` (`Azon`, `Rogzites`, `Szallitas`, `Hosszusag`, `Szelesseg`, `Magassag`, `Tomeg`) VALUES (132, '2007-05-17 13:32:00', '2007-05-26 00:00:00', 58, 20, 67, 80.51);
INSERT INTO `csomagok` (`Azon`, `Rogzites`, `Szallitas`, `Hosszusag`, `Szelesseg`, `Magassag`, `Tomeg`) VALUES (133, '2007-05-18 13:29:00', '2007-06-12 00:00:00', 68, 64, 72, 24.28);
INSERT INTO `csomagok` (`Azon`, `Rogzites`, `Szallitas`, `Hosszusag`, `Szelesseg`, `Magassag`, `Tomeg`) VALUES (134, '2007-05-19 09:40:00', '2007-05-26 00:00:00', 33, 57, 13, 15.72);
INSERT INTO `csomagok` (`Azon`, `Rogzites`, `Szallitas`, `Hosszusag`, `Szelesseg`, `Magassag`, `Tomeg`) VALUES (135, '2007-05-20 09:57:00', '2007-05-23 00:00:00', 94, 21, 40, 61.43);
INSERT INTO `csomagok` (`Azon`, `Rogzites`, `Szallitas`, `Hosszusag`, `Szelesseg`, `Magassag`, `Tomeg`) VALUES (136, '2007-05-20 14:51:00', '2007-05-27 00:00:00', 47, 22, 32, 21.06);
INSERT INTO `csomagok` (`Azon`, `Rogzites`, `Szallitas`, `Hosszusag`, `Szelesseg`, `Magassag`, `Tomeg`) VALUES (137, '2007-05-21 12:45:00', '2007-06-10 00:00:00', 10, 71, 61, 13.22);
INSERT INTO `csomagok` (`Azon`, `Rogzites`, `Szallitas`, `Hosszusag`, `Szelesseg`, `Magassag`, `Tomeg`) VALUES (138, '2007-05-22 12:09:00', '2007-06-17 00:00:00', 53, 75, 37, 76.87);
INSERT INTO `csomagok` (`Azon`, `Rogzites`, `Szallitas`, `Hosszusag`, `Szelesseg`, `Magassag`, `Tomeg`) VALUES (139, '2007-05-23 13:25:00', '2007-06-05 00:00:00', 82, 30, 83, 50.88);
INSERT INTO `csomagok` (`Azon`, `Rogzites`, `Szallitas`, `Hosszusag`, `Szelesseg`, `Magassag`, `Tomeg`) VALUES (140, '2007-05-24 10:09:00', '2007-05-27 00:00:00', 69, 95, 24, 79.34);
INSERT INTO `csomagok` (`Azon`, `Rogzites`, `Szallitas`, `Hosszusag`, `Szelesseg`, `Magassag`, `Tomeg`) VALUES (141, '2007-05-25 09:14:00', '2007-05-29 00:00:00', 15, 39, 69, 101.86);
INSERT INTO `csomagok` (`Azon`, `Rogzites`, `Szallitas`, `Hosszusag`, `Szelesseg`, `Magassag`, `Tomeg`) VALUES (142, '2007-05-26 11:12:00', '2007-06-03 00:00:00', 52, 87, 10, 12.43);
INSERT INTO `csomagok` (`Azon`, `Rogzites`, `Szallitas`, `Hosszusag`, `Szelesseg`, `Magassag`, `Tomeg`) VALUES (143, '2007-05-27 08:37:00', '2007-06-03 00:00:00', 32, 44, 96, 96.96);
INSERT INTO `csomagok` (`Azon`, `Rogzites`, `Szallitas`, `Hosszusag`, `Szelesseg`, `Magassag`, `Tomeg`) VALUES (144, '2007-05-28 15:32:00', '2007-06-16 00:00:00', 85, 36, 30, 6.05);
INSERT INTO `csomagok` (`Azon`, `Rogzites`, `Szallitas`, `Hosszusag`, `Szelesseg`, `Magassag`, `Tomeg`) VALUES (145, '2007-05-29 12:18:00', '2007-06-09 00:00:00', 30, 11, 94, 41.75);
INSERT INTO `csomagok` (`Azon`, `Rogzites`, `Szallitas`, `Hosszusag`, `Szelesseg`, `Magassag`, `Tomeg`) VALUES (146, '2007-05-30 15:56:00', '2007-06-28 00:00:00', 61, 25, 25, 37.69);
INSERT INTO `csomagok` (`Azon`, `Rogzites`, `Szallitas`, `Hosszusag`, `Szelesseg`, `Magassag`, `Tomeg`) VALUES (147, '2007-05-31 14:19:00', '2007-06-15 00:00:00', 75, 94, 16, 21.54);
INSERT INTO `csomagok` (`Azon`, `Rogzites`, `Szallitas`, `Hosszusag`, `Szelesseg`, `Magassag`, `Tomeg`) VALUES (148, '2007-05-31 11:18:00', '2007-06-23 00:00:00', 82, 24, 69, 27.72);
INSERT INTO `csomagok` (`Azon`, `Rogzites`, `Szallitas`, `Hosszusag`, `Szelesseg`, `Magassag`, `Tomeg`) VALUES (149, '2007-06-01 11:47:00', '2007-06-29 00:00:00', 93, 95, 18, 53.65);
INSERT INTO `csomagok` (`Azon`, `Rogzites`, `Szallitas`, `Hosszusag`, `Szelesseg`, `Magassag`, `Tomeg`) VALUES (150, '2007-06-01 14:02:00', '2007-06-11 00:00:00', 17, 16, 81, 50.82);
INSERT INTO `csomagok` (`Azon`, `Rogzites`, `Szallitas`, `Hosszusag`, `Szelesseg`, `Magassag`, `Tomeg`) VALUES (151, '2007-06-02 15:05:00', '2007-06-08 00:00:00', 48, 75, 20, 11.92);
INSERT INTO `csomagok` (`Azon`, `Rogzites`, `Szallitas`, `Hosszusag`, `Szelesseg`, `Magassag`, `Tomeg`) VALUES (152, '2007-06-03 11:52:00', '2007-06-16 00:00:00', 11, 45, 57, 70.54);
INSERT INTO `csomagok` (`Azon`, `Rogzites`, `Szallitas`, `Hosszusag`, `Szelesseg`, `Magassag`, `Tomeg`) VALUES (153, '2007-06-03 10:18:00', '2007-06-08 00:00:00', 19, 74, 58, 80.77);
INSERT INTO `csomagok` (`Azon`, `Rogzites`, `Szallitas`, `Hosszusag`, `Szelesseg`, `Magassag`, `Tomeg`) VALUES (154, '2007-06-04 14:29:00', '2007-07-01 00:00:00', 50, 90, 10, 97.49);
INSERT INTO `csomagok` (`Azon`, `Rogzites`, `Szallitas`, `Hosszusag`, `Szelesseg`, `Magassag`, `Tomeg`) VALUES (155, '2007-06-05 09:06:00', '2007-06-26 00:00:00', 73, 31, 96, 47.79);
INSERT INTO `csomagok` (`Azon`, `Rogzites`, `Szallitas`, `Hosszusag`, `Szelesseg`, `Magassag`, `Tomeg`) VALUES (156, '2007-06-05 13:37:00', '2007-06-30 00:00:00', 93, 98, 18, 26.22);
INSERT INTO `csomagok` (`Azon`, `Rogzites`, `Szallitas`, `Hosszusag`, `Szelesseg`, `Magassag`, `Tomeg`) VALUES (157, '2007-06-05 08:08:00', '2007-06-21 00:00:00', 61, 73, 89, 16.12);
INSERT INTO `csomagok` (`Azon`, `Rogzites`, `Szallitas`, `Hosszusag`, `Szelesseg`, `Magassag`, `Tomeg`) VALUES (158, '2007-06-06 12:20:00', '2007-06-26 00:00:00', 46, 96, 24, 5.18);
INSERT INTO `csomagok` (`Azon`, `Rogzites`, `Szallitas`, `Hosszusag`, `Szelesseg`, `Magassag`, `Tomeg`) VALUES (159, '2007-06-07 12:45:00', '2007-06-16 00:00:00', 66, 48, 41, 6.29);
INSERT INTO `csomagok` (`Azon`, `Rogzites`, `Szallitas`, `Hosszusag`, `Szelesseg`, `Magassag`, `Tomeg`) VALUES (160, '2007-06-07 13:28:00', '2007-06-18 00:00:00', 92, 17, 62, 38.3);
INSERT INTO `csomagok` (`Azon`, `Rogzites`, `Szallitas`, `Hosszusag`, `Szelesseg`, `Magassag`, `Tomeg`) VALUES (161, '2007-06-08 12:56:00', '2007-07-04 00:00:00', 80, 62, 28, 34.71);
INSERT INTO `csomagok` (`Azon`, `Rogzites`, `Szallitas`, `Hosszusag`, `Szelesseg`, `Magassag`, `Tomeg`) VALUES (162, '2007-06-08 10:42:00', '2007-06-10 00:00:00', 93, 22, 59, 101.95);
INSERT INTO `csomagok` (`Azon`, `Rogzites`, `Szallitas`, `Hosszusag`, `Szelesseg`, `Magassag`, `Tomeg`) VALUES (163, '2007-06-08 09:43:00', '2007-06-22 00:00:00', 49, 13, 54, 67.02);
INSERT INTO `csomagok` (`Azon`, `Rogzites`, `Szallitas`, `Hosszusag`, `Szelesseg`, `Magassag`, `Tomeg`) VALUES (164, '2007-06-09 14:22:00', '2007-07-07 00:00:00', 66, 82, 42, 71.65);
INSERT INTO `csomagok` (`Azon`, `Rogzites`, `Szallitas`, `Hosszusag`, `Szelesseg`, `Magassag`, `Tomeg`) VALUES (165, '2007-06-09 11:28:00', '2007-06-22 00:00:00', 76, 18, 44, 9.63);
INSERT INTO `csomagok` (`Azon`, `Rogzites`, `Szallitas`, `Hosszusag`, `Szelesseg`, `Magassag`, `Tomeg`) VALUES (166, '2007-06-10 14:34:00', '2007-07-08 00:00:00', 83, 79, 76, 17);
INSERT INTO `csomagok` (`Azon`, `Rogzites`, `Szallitas`, `Hosszusag`, `Szelesseg`, `Magassag`, `Tomeg`) VALUES (167, '2007-06-11 15:06:00', '2007-07-01 00:00:00', 59, 93, 33, 2.6);
INSERT INTO `csomagok` (`Azon`, `Rogzites`, `Szallitas`, `Hosszusag`, `Szelesseg`, `Magassag`, `Tomeg`) VALUES (168, '2007-06-12 12:01:00', '2007-06-23 00:00:00', 60, 67, 87, 61.26);
INSERT INTO `csomagok` (`Azon`, `Rogzites`, `Szallitas`, `Hosszusag`, `Szelesseg`, `Magassag`, `Tomeg`) VALUES (169, '2007-06-12 13:10:00', '2007-06-28 00:00:00', 44, 43, 50, 94.61);
INSERT INTO `csomagok` (`Azon`, `Rogzites`, `Szallitas`, `Hosszusag`, `Szelesseg`, `Magassag`, `Tomeg`) VALUES (170, '2007-06-12 13:17:00', '2007-06-27 00:00:00', 37, 29, 79, 47.9);
INSERT INTO `csomagok` (`Azon`, `Rogzites`, `Szallitas`, `Hosszusag`, `Szelesseg`, `Magassag`, `Tomeg`) VALUES (171, '2007-06-12 13:10:00', '2007-06-23 00:00:00', 36, 75, 43, 85.76);
INSERT INTO `csomagok` (`Azon`, `Rogzites`, `Szallitas`, `Hosszusag`, `Szelesseg`, `Magassag`, `Tomeg`) VALUES (172, '2007-06-13 13:40:00', '2007-07-10 00:00:00', 26, 33, 96, 79.27);
INSERT INTO `csomagok` (`Azon`, `Rogzites`, `Szallitas`, `Hosszusag`, `Szelesseg`, `Magassag`, `Tomeg`) VALUES (173, '2007-06-14 15:31:00', '2007-07-03 00:00:00', 45, 78, 62, 58.7);
INSERT INTO `csomagok` (`Azon`, `Rogzites`, `Szallitas`, `Hosszusag`, `Szelesseg`, `Magassag`, `Tomeg`) VALUES (174, '2007-06-14 08:01:00', '2007-07-10 00:00:00', 80, 91, 79, 36.47);
INSERT INTO `csomagok` (`Azon`, `Rogzites`, `Szallitas`, `Hosszusag`, `Szelesseg`, `Magassag`, `Tomeg`) VALUES (175, '2007-06-14 15:52:00', '2007-07-13 00:00:00', 86, 71, 20, 94.85);
INSERT INTO `csomagok` (`Azon`, `Rogzites`, `Szallitas`, `Hosszusag`, `Szelesseg`, `Magassag`, `Tomeg`) VALUES (176, '2007-06-14 09:56:00', '2007-07-12 00:00:00', 74, 79, 11, 51.1);
INSERT INTO `csomagok` (`Azon`, `Rogzites`, `Szallitas`, `Hosszusag`, `Szelesseg`, `Magassag`, `Tomeg`) VALUES (177, '2007-06-15 09:27:00', '2007-06-20 00:00:00', 82, 50, 64, 43.61);
INSERT INTO `csomagok` (`Azon`, `Rogzites`, `Szallitas`, `Hosszusag`, `Szelesseg`, `Magassag`, `Tomeg`) VALUES (178, '2007-06-15 10:25:00', '2007-07-11 00:00:00', 91, 63, 83, 87.15);
INSERT INTO `csomagok` (`Azon`, `Rogzites`, `Szallitas`, `Hosszusag`, `Szelesseg`, `Magassag`, `Tomeg`) VALUES (179, '2007-06-15 08:34:00', '2007-06-21 00:00:00', 88, 62, 25, 75.91);
INSERT INTO `csomagok` (`Azon`, `Rogzites`, `Szallitas`, `Hosszusag`, `Szelesseg`, `Magassag`, `Tomeg`) VALUES (180, '2007-06-15 13:07:00', '2007-07-06 00:00:00', 94, 76, 61, 19.73);
INSERT INTO `csomagok` (`Azon`, `Rogzites`, `Szallitas`, `Hosszusag`, `Szelesseg`, `Magassag`, `Tomeg`) VALUES (181, '2007-06-15 09:34:00', '2007-06-19 00:00:00', 43, 41, 47, 38.96);
INSERT INTO `csomagok` (`Azon`, `Rogzites`, `Szallitas`, `Hosszusag`, `Szelesseg`, `Magassag`, `Tomeg`) VALUES (182, '2007-06-16 15:52:00', '2007-07-03 00:00:00', 86, 35, 19, 30.39);
INSERT INTO `csomagok` (`Azon`, `Rogzites`, `Szallitas`, `Hosszusag`, `Szelesseg`, `Magassag`, `Tomeg`) VALUES (183, '2007-06-16 10:00:00', '2007-06-25 00:00:00', 34, 96, 64, 74.06);
INSERT INTO `csomagok` (`Azon`, `Rogzites`, `Szallitas`, `Hosszusag`, `Szelesseg`, `Magassag`, `Tomeg`) VALUES (184, '2007-06-16 11:02:00', '2007-06-23 00:00:00', 78, 14, 67, 58.15);
INSERT INTO `csomagok` (`Azon`, `Rogzites`, `Szallitas`, `Hosszusag`, `Szelesseg`, `Magassag`, `Tomeg`) VALUES (185, '2007-06-17 14:22:00', '2007-06-23 00:00:00', 67, 13, 98, 53.59);
INSERT INTO `csomagok` (`Azon`, `Rogzites`, `Szallitas`, `Hosszusag`, `Szelesseg`, `Magassag`, `Tomeg`) VALUES (186, '2007-06-17 10:55:00', '2007-06-20 00:00:00', 57, 69, 79, 84.53);
INSERT INTO `csomagok` (`Azon`, `Rogzites`, `Szallitas`, `Hosszusag`, `Szelesseg`, `Magassag`, `Tomeg`) VALUES (187, '2007-06-17 14:56:00', '2007-06-22 00:00:00', 72, 57, 32, 91.22);
INSERT INTO `csomagok` (`Azon`, `Rogzites`, `Szallitas`, `Hosszusag`, `Szelesseg`, `Magassag`, `Tomeg`) VALUES (188, '2007-06-17 15:47:00', '2007-07-14 00:00:00', 88, 59, 89, 67.66);
INSERT INTO `csomagok` (`Azon`, `Rogzites`, `Szallitas`, `Hosszusag`, `Szelesseg`, `Magassag`, `Tomeg`) VALUES (189, '2007-06-17 15:13:00', '2007-06-21 00:00:00', 60, 83, 34, 80.47);
INSERT INTO `csomagok` (`Azon`, `Rogzites`, `Szallitas`, `Hosszusag`, `Szelesseg`, `Magassag`, `Tomeg`) VALUES (190, '2007-06-17 13:16:00', '2007-07-07 00:00:00', 76, 14, 34, 19.27);
INSERT INTO `csomagok` (`Azon`, `Rogzites`, `Szallitas`, `Hosszusag`, `Szelesseg`, `Magassag`, `Tomeg`) VALUES (191, '2007-06-18 11:10:00', '2007-07-10 00:00:00', 15, 26, 16, 2.18);
INSERT INTO `csomagok` (`Azon`, `Rogzites`, `Szallitas`, `Hosszusag`, `Szelesseg`, `Magassag`, `Tomeg`) VALUES (192, '2007-06-19 13:40:00', '2007-06-22 00:00:00', 98, 64, 89, 15.3);
INSERT INTO `csomagok` (`Azon`, `Rogzites`, `Szallitas`, `Hosszusag`, `Szelesseg`, `Magassag`, `Tomeg`) VALUES (193, '2007-06-20 11:06:00', '2007-07-05 00:00:00', 48, 63, 61, 2.22);
INSERT INTO `csomagok` (`Azon`, `Rogzites`, `Szallitas`, `Hosszusag`, `Szelesseg`, `Magassag`, `Tomeg`) VALUES (194, '2007-06-21 12:57:00', '2007-06-26 00:00:00', 74, 22, 30, 76.4);
INSERT INTO `csomagok` (`Azon`, `Rogzites`, `Szallitas`, `Hosszusag`, `Szelesseg`, `Magassag`, `Tomeg`) VALUES (195, '2007-06-22 14:24:00', '2007-06-29 00:00:00', 62, 22, 67, 76.4);
INSERT INTO `csomagok` (`Azon`, `Rogzites`, `Szallitas`, `Hosszusag`, `Szelesseg`, `Magassag`, `Tomeg`) VALUES (196, '2007-06-22 10:18:00', '2007-07-09 00:00:00', 73, 69, 20, 13.36);
INSERT INTO `csomagok` (`Azon`, `Rogzites`, `Szallitas`, `Hosszusag`, `Szelesseg`, `Magassag`, `Tomeg`) VALUES (197, '2007-06-22 12:49:00', '2007-06-29 00:00:00', 55, 95, 77, 37.38);
INSERT INTO `csomagok` (`Azon`, `Rogzites`, `Szallitas`, `Hosszusag`, `Szelesseg`, `Magassag`, `Tomeg`) VALUES (198, '2007-06-23 09:09:00', '2007-07-19 00:00:00', 13, 70, 98, 20.58);
INSERT INTO `csomagok` (`Azon`, `Rogzites`, `Szallitas`, `Hosszusag`, `Szelesseg`, `Magassag`, `Tomeg`) VALUES (199, '2007-06-24 12:13:00', '2007-07-13 00:00:00', 47, 16, 59, 83.18);
INSERT INTO `csomagok` (`Azon`, `Rogzites`, `Szallitas`, `Hosszusag`, `Szelesseg`, `Magassag`, `Tomeg`) VALUES (200, '2007-06-24 09:39:00', '2007-07-10 00:00:00', 25, 36, 42, 33.45);
INSERT INTO `csomagok` (`Azon`, `Rogzites`, `Szallitas`, `Hosszusag`, `Szelesseg`, `Magassag`, `Tomeg`) VALUES (201, '2007-06-24 08:03:00', '2007-07-17 00:00:00', 83, 43, 59, 93.39);
INSERT INTO `csomagok` (`Azon`, `Rogzites`, `Szallitas`, `Hosszusag`, `Szelesseg`, `Magassag`, `Tomeg`) VALUES (202, '2007-06-24 11:37:00', '2007-07-18 00:00:00', 28, 58, 79, 96.8);
INSERT INTO `csomagok` (`Azon`, `Rogzites`, `Szallitas`, `Hosszusag`, `Szelesseg`, `Magassag`, `Tomeg`) VALUES (203, '2007-06-25 15:58:00', '2007-07-05 00:00:00', 20, 10, 47, 64.18);
INSERT INTO `csomagok` (`Azon`, `Rogzites`, `Szallitas`, `Hosszusag`, `Szelesseg`, `Magassag`, `Tomeg`) VALUES (204, '2007-06-26 12:47:00', '2007-07-25 00:00:00', 93, 94, 55, 45.9);
INSERT INTO `csomagok` (`Azon`, `Rogzites`, `Szallitas`, `Hosszusag`, `Szelesseg`, `Magassag`, `Tomeg`) VALUES (205, '2007-06-27 14:43:00', '2007-07-16 00:00:00', 57, 70, 84, 41.11);
INSERT INTO `csomagok` (`Azon`, `Rogzites`, `Szallitas`, `Hosszusag`, `Szelesseg`, `Magassag`, `Tomeg`) VALUES (206, '2007-06-28 11:23:00', '2007-07-06 00:00:00', 77, 62, 54, 21.74);
INSERT INTO `csomagok` (`Azon`, `Rogzites`, `Szallitas`, `Hosszusag`, `Szelesseg`, `Magassag`, `Tomeg`) VALUES (207, '2007-06-28 12:54:00', '2007-07-10 00:00:00', 64, 80, 90, 71.2);
INSERT INTO `csomagok` (`Azon`, `Rogzites`, `Szallitas`, `Hosszusag`, `Szelesseg`, `Magassag`, `Tomeg`) VALUES (208, '2007-06-29 10:50:00', '2007-07-08 00:00:00', 25, 92, 27, 27.77);
INSERT INTO `csomagok` (`Azon`, `Rogzites`, `Szallitas`, `Hosszusag`, `Szelesseg`, `Magassag`, `Tomeg`) VALUES (209, '2007-06-30 08:58:00', '2007-07-26 00:00:00', 63, 88, 38, 83.62);
INSERT INTO `csomagok` (`Azon`, `Rogzites`, `Szallitas`, `Hosszusag`, `Szelesseg`, `Magassag`, `Tomeg`) VALUES (210, '2007-06-30 15:01:00', '2007-07-07 00:00:00', 63, 92, 70, 26.5);
INSERT INTO `csomagok` (`Azon`, `Rogzites`, `Szallitas`, `Hosszusag`, `Szelesseg`, `Magassag`, `Tomeg`) VALUES (211, '2007-06-30 10:48:00', '2007-07-09 00:00:00', 26, 28, 41, 48.27);
INSERT INTO `csomagok` (`Azon`, `Rogzites`, `Szallitas`, `Hosszusag`, `Szelesseg`, `Magassag`, `Tomeg`) VALUES (212, '2007-07-01 12:29:00', '2007-07-21 00:00:00', 41, 44, 98, 70.49);
INSERT INTO `csomagok` (`Azon`, `Rogzites`, `Szallitas`, `Hosszusag`, `Szelesseg`, `Magassag`, `Tomeg`) VALUES (213, '2007-07-02 09:18:00', '2007-07-20 00:00:00', 28, 36, 93, 85.73);
INSERT INTO `csomagok` (`Azon`, `Rogzites`, `Szallitas`, `Hosszusag`, `Szelesseg`, `Magassag`, `Tomeg`) VALUES (214, '2007-07-02 08:51:00', '2007-07-29 00:00:00', 24, 59, 30, 83.95);
INSERT INTO `csomagok` (`Azon`, `Rogzites`, `Szallitas`, `Hosszusag`, `Szelesseg`, `Magassag`, `Tomeg`) VALUES (215, '2007-07-03 11:52:00', '2007-07-21 00:00:00', 31, 72, 18, 72.3);
INSERT INTO `csomagok` (`Azon`, `Rogzites`, `Szallitas`, `Hosszusag`, `Szelesseg`, `Magassag`, `Tomeg`) VALUES (216, '2007-07-03 08:53:00', '2007-07-17 00:00:00', 37, 79, 85, 84.32);
INSERT INTO `csomagok` (`Azon`, `Rogzites`, `Szallitas`, `Hosszusag`, `Szelesseg`, `Magassag`, `Tomeg`) VALUES (217, '2007-07-04 15:27:00', '2007-07-11 00:00:00', 93, 28, 75, 66.42);
INSERT INTO `csomagok` (`Azon`, `Rogzites`, `Szallitas`, `Hosszusag`, `Szelesseg`, `Magassag`, `Tomeg`) VALUES (218, '2007-07-05 09:44:00', '2007-07-14 00:00:00', 23, 20, 90, 101.69);
INSERT INTO `csomagok` (`Azon`, `Rogzites`, `Szallitas`, `Hosszusag`, `Szelesseg`, `Magassag`, `Tomeg`) VALUES (219, '2007-07-06 15:18:00', '2007-07-29 00:00:00', 32, 86, 76, 16.71);
INSERT INTO `csomagok` (`Azon`, `Rogzites`, `Szallitas`, `Hosszusag`, `Szelesseg`, `Magassag`, `Tomeg`) VALUES (220, '2007-07-06 11:09:00', '2007-07-22 00:00:00', 97, 83, 92, 67.43);
INSERT INTO `csomagok` (`Azon`, `Rogzites`, `Szallitas`, `Hosszusag`, `Szelesseg`, `Magassag`, `Tomeg`) VALUES (221, '2007-07-06 11:52:00', '2007-07-10 00:00:00', 35, 11, 33, 25.66);
INSERT INTO `csomagok` (`Azon`, `Rogzites`, `Szallitas`, `Hosszusag`, `Szelesseg`, `Magassag`, `Tomeg`) VALUES (222, '2007-07-06 09:03:00', '2007-07-21 00:00:00', 83, 77, 32, 49.8);
INSERT INTO `csomagok` (`Azon`, `Rogzites`, `Szallitas`, `Hosszusag`, `Szelesseg`, `Magassag`, `Tomeg`) VALUES (223, '2007-07-06 08:25:00', '2007-07-18 00:00:00', 43, 81, 26, 69.55);
INSERT INTO `csomagok` (`Azon`, `Rogzites`, `Szallitas`, `Hosszusag`, `Szelesseg`, `Magassag`, `Tomeg`) VALUES (224, '2007-07-07 11:14:00', '2007-07-14 00:00:00', 51, 43, 83, 42.68);
INSERT INTO `csomagok` (`Azon`, `Rogzites`, `Szallitas`, `Hosszusag`, `Szelesseg`, `Magassag`, `Tomeg`) VALUES (225, '2007-07-08 09:47:00', '2007-08-05 00:00:00', 50, 11, 92, 42.85);
INSERT INTO `csomagok` (`Azon`, `Rogzites`, `Szallitas`, `Hosszusag`, `Szelesseg`, `Magassag`, `Tomeg`) VALUES (226, '2007-07-08 12:27:00', '2007-08-05 00:00:00', 35, 58, 63, 46.78);
INSERT INTO `csomagok` (`Azon`, `Rogzites`, `Szallitas`, `Hosszusag`, `Szelesseg`, `Magassag`, `Tomeg`) VALUES (227, '2007-07-08 14:58:00', '2007-07-16 00:00:00', 32, 91, 38, 86.7);
INSERT INTO `csomagok` (`Azon`, `Rogzites`, `Szallitas`, `Hosszusag`, `Szelesseg`, `Magassag`, `Tomeg`) VALUES (228, '2007-07-08 08:52:00', '2007-07-24 00:00:00', 88, 74, 98, 43.69);
INSERT INTO `csomagok` (`Azon`, `Rogzites`, `Szallitas`, `Hosszusag`, `Szelesseg`, `Magassag`, `Tomeg`) VALUES (229, '2007-07-09 13:58:00', '2007-07-18 00:00:00', 10, 19, 40, 58);
INSERT INTO `csomagok` (`Azon`, `Rogzites`, `Szallitas`, `Hosszusag`, `Szelesseg`, `Magassag`, `Tomeg`) VALUES (230, '2007-07-09 14:03:00', '2007-08-06 00:00:00', 20, 71, 62, 51.98);
INSERT INTO `csomagok` (`Azon`, `Rogzites`, `Szallitas`, `Hosszusag`, `Szelesseg`, `Magassag`, `Tomeg`) VALUES (231, '2007-07-10 11:39:00', '2007-08-04 00:00:00', 59, 75, 17, 38.25);
INSERT INTO `csomagok` (`Azon`, `Rogzites`, `Szallitas`, `Hosszusag`, `Szelesseg`, `Magassag`, `Tomeg`) VALUES (232, '2007-07-10 10:16:00', '2007-08-05 00:00:00', 20, 97, 79, 50.35);
INSERT INTO `csomagok` (`Azon`, `Rogzites`, `Szallitas`, `Hosszusag`, `Szelesseg`, `Magassag`, `Tomeg`) VALUES (233, '2007-07-10 08:01:00', '2007-07-19 00:00:00', 70, 89, 71, 62.08);
INSERT INTO `csomagok` (`Azon`, `Rogzites`, `Szallitas`, `Hosszusag`, `Szelesseg`, `Magassag`, `Tomeg`) VALUES (234, '2007-07-11 12:02:00', '2007-07-13 00:00:00', 40, 50, 52, 27.96);
INSERT INTO `csomagok` (`Azon`, `Rogzites`, `Szallitas`, `Hosszusag`, `Szelesseg`, `Magassag`, `Tomeg`) VALUES (235, '2007-07-11 11:46:00', '2007-07-28 00:00:00', 19, 63, 96, 67.67);
INSERT INTO `csomagok` (`Azon`, `Rogzites`, `Szallitas`, `Hosszusag`, `Szelesseg`, `Magassag`, `Tomeg`) VALUES (236, '2007-07-11 10:50:00', '2007-08-08 00:00:00', 88, 33, 24, 17.72);
INSERT INTO `csomagok` (`Azon`, `Rogzites`, `Szallitas`, `Hosszusag`, `Szelesseg`, `Magassag`, `Tomeg`) VALUES (237, '2007-07-12 09:19:00', '2007-08-09 00:00:00', 26, 65, 29, 17.7);
INSERT INTO `csomagok` (`Azon`, `Rogzites`, `Szallitas`, `Hosszusag`, `Szelesseg`, `Magassag`, `Tomeg`) VALUES (238, '2007-07-12 11:56:00', '2007-08-07 00:00:00', 12, 26, 30, 91.75);
INSERT INTO `csomagok` (`Azon`, `Rogzites`, `Szallitas`, `Hosszusag`, `Szelesseg`, `Magassag`, `Tomeg`) VALUES (239, '2007-07-13 14:29:00', '2007-07-31 00:00:00', 79, 40, 71, 45.74);
INSERT INTO `csomagok` (`Azon`, `Rogzites`, `Szallitas`, `Hosszusag`, `Szelesseg`, `Magassag`, `Tomeg`) VALUES (240, '2007-07-14 12:04:00', '2007-08-08 00:00:00', 51, 43, 60, 5.43);
INSERT INTO `csomagok` (`Azon`, `Rogzites`, `Szallitas`, `Hosszusag`, `Szelesseg`, `Magassag`, `Tomeg`) VALUES (241, '2007-07-14 15:55:00', '2007-08-03 00:00:00', 37, 98, 53, 3.37);
INSERT INTO `csomagok` (`Azon`, `Rogzites`, `Szallitas`, `Hosszusag`, `Szelesseg`, `Magassag`, `Tomeg`) VALUES (242, '2007-07-14 14:11:00', '2007-07-24 00:00:00', 81, 15, 95, 97.39);
INSERT INTO `csomagok` (`Azon`, `Rogzites`, `Szallitas`, `Hosszusag`, `Szelesseg`, `Magassag`, `Tomeg`) VALUES (243, '2007-07-14 14:08:00', '2007-08-01 00:00:00', 66, 60, 96, 14.75);
INSERT INTO `csomagok` (`Azon`, `Rogzites`, `Szallitas`, `Hosszusag`, `Szelesseg`, `Magassag`, `Tomeg`) VALUES (244, '2007-07-15 10:22:00', '2007-08-04 00:00:00', 37, 75, 28, 84.92);
INSERT INTO `csomagok` (`Azon`, `Rogzites`, `Szallitas`, `Hosszusag`, `Szelesseg`, `Magassag`, `Tomeg`) VALUES (245, '2007-07-16 10:52:00', '2007-08-12 00:00:00', 45, 89, 59, 39.32);
INSERT INTO `csomagok` (`Azon`, `Rogzites`, `Szallitas`, `Hosszusag`, `Szelesseg`, `Magassag`, `Tomeg`) VALUES (246, '2007-07-17 10:32:00', '2007-07-22 00:00:00', 36, 41, 13, 6.84);
INSERT INTO `csomagok` (`Azon`, `Rogzites`, `Szallitas`, `Hosszusag`, `Szelesseg`, `Magassag`, `Tomeg`) VALUES (247, '2007-07-17 12:48:00', '2007-07-30 00:00:00', 10, 37, 67, 30.94);
INSERT INTO `csomagok` (`Azon`, `Rogzites`, `Szallitas`, `Hosszusag`, `Szelesseg`, `Magassag`, `Tomeg`) VALUES (248, '2007-07-18 14:51:00', '2007-08-03 00:00:00', 42, 52, 10, 43.73);
INSERT INTO `csomagok` (`Azon`, `Rogzites`, `Szallitas`, `Hosszusag`, `Szelesseg`, `Magassag`, `Tomeg`) VALUES (249, '2007-07-19 10:25:00', '2007-08-07 00:00:00', 30, 68, 59, 20.05);
INSERT INTO `csomagok` (`Azon`, `Rogzites`, `Szallitas`, `Hosszusag`, `Szelesseg`, `Magassag`, `Tomeg`) VALUES (250, '2007-07-20 12:52:00', '2007-07-24 00:00:00', 15, 74, 99, 32.24);
INSERT INTO `csomagok` (`Azon`, `Rogzites`, `Szallitas`, `Hosszusag`, `Szelesseg`, `Magassag`, `Tomeg`) VALUES (251, '2007-07-20 14:07:00', '2007-08-09 00:00:00', 80, 48, 91, 94.62);
INSERT INTO `csomagok` (`Azon`, `Rogzites`, `Szallitas`, `Hosszusag`, `Szelesseg`, `Magassag`, `Tomeg`) VALUES (252, '2007-07-21 09:47:00', '2007-08-16 00:00:00', 26, 48, 25, 30.84);
INSERT INTO `csomagok` (`Azon`, `Rogzites`, `Szallitas`, `Hosszusag`, `Szelesseg`, `Magassag`, `Tomeg`) VALUES (253, '2007-07-21 09:16:00', '2007-08-08 00:00:00', 32, 40, 55, 82.46);
INSERT INTO `csomagok` (`Azon`, `Rogzites`, `Szallitas`, `Hosszusag`, `Szelesseg`, `Magassag`, `Tomeg`) VALUES (254, '2007-07-21 09:21:00', '2007-07-23 00:00:00', 76, 32, 51, 42.45);
INSERT INTO `csomagok` (`Azon`, `Rogzites`, `Szallitas`, `Hosszusag`, `Szelesseg`, `Magassag`, `Tomeg`) VALUES (255, '2007-07-22 13:02:00', '2007-08-08 00:00:00', 56, 82, 52, 27.5);
INSERT INTO `csomagok` (`Azon`, `Rogzites`, `Szallitas`, `Hosszusag`, `Szelesseg`, `Magassag`, `Tomeg`) VALUES (256, '2007-07-23 12:40:00', '2007-08-21 00:00:00', 93, 17, 18, 56.24);
INSERT INTO `csomagok` (`Azon`, `Rogzites`, `Szallitas`, `Hosszusag`, `Szelesseg`, `Magassag`, `Tomeg`) VALUES (257, '2007-07-24 08:14:00', '2007-08-15 00:00:00', 27, 36, 42, 95.04);
INSERT INTO `csomagok` (`Azon`, `Rogzites`, `Szallitas`, `Hosszusag`, `Szelesseg`, `Magassag`, `Tomeg`) VALUES (258, '2007-07-25 13:54:00', '2007-07-30 00:00:00', 46, 82, 58, 22.95);
INSERT INTO `csomagok` (`Azon`, `Rogzites`, `Szallitas`, `Hosszusag`, `Szelesseg`, `Magassag`, `Tomeg`) VALUES (259, '2007-07-26 14:08:00', '2007-08-04 00:00:00', 37, 46, 86, 85.48);
# 259 records

