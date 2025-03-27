#
# DUMP FILE
#
# Database is ported from MS Access
#------------------------------------------------------------------
# Created using "MS Access to MySQL" form http://www.bullzip.com
# Program Version 5.5.282
#
# OPTIONS:
#   sourcefilename=c:/Users/gugol/Documents/szallitas.accdb
#   sourceusername=
#   sourcepassword=
#   sourcesystemdatabase=
#   destinationdatabase=szallitas
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

DROP DATABASE IF EXISTS `szallitas`;
CREATE DATABASE IF NOT EXISTS `szallitas`;
USE `szallitas`;

#
# Table structure for table 'lakig'
#

DROP TABLE IF EXISTS `lakig`;

CREATE TABLE `lakig` (
  `azon` INTEGER NOT NULL AUTO_INCREMENT, 
  `igeny` DATETIME, 
  `szolgid` INTEGER, 
  `mennyiseg` INTEGER, 
  PRIMARY KEY (`azon`), 
  INDEX (`szolgid`)
) ENGINE=innodb DEFAULT CHARSET=utf8;

SET autocommit=1;

#
# Dumping data for table 'lakig'
#

INSERT INTO `lakig` (`azon`, `igeny`, `szolgid`, `mennyiseg`) VALUES (1, '2018-01-04 00:00:00', 5, 1);
INSERT INTO `lakig` (`azon`, `igeny`, `szolgid`, `mennyiseg`) VALUES (2, '2018-01-11 00:00:00', 5, 1);
INSERT INTO `lakig` (`azon`, `igeny`, `szolgid`, `mennyiseg`) VALUES (3, '2018-01-18 00:00:00', 4, 2);
INSERT INTO `lakig` (`azon`, `igeny`, `szolgid`, `mennyiseg`) VALUES (4, '2018-01-18 00:00:00', 5, 1);
INSERT INTO `lakig` (`azon`, `igeny`, `szolgid`, `mennyiseg`) VALUES (5, '2018-01-17 00:00:00', 3, 1);
INSERT INTO `lakig` (`azon`, `igeny`, `szolgid`, `mennyiseg`) VALUES (6, '2018-01-24 00:00:00', 5, 1);
INSERT INTO `lakig` (`azon`, `igeny`, `szolgid`, `mennyiseg`) VALUES (7, '2018-01-30 00:00:00', 1, 3);
INSERT INTO `lakig` (`azon`, `igeny`, `szolgid`, `mennyiseg`) VALUES (8, '2018-01-31 00:00:00', 4, 1);
INSERT INTO `lakig` (`azon`, `igeny`, `szolgid`, `mennyiseg`) VALUES (9, '2018-02-01 00:00:00', 5, 1);
INSERT INTO `lakig` (`azon`, `igeny`, `szolgid`, `mennyiseg`) VALUES (10, '2018-02-08 00:00:00', 5, 1);
INSERT INTO `lakig` (`azon`, `igeny`, `szolgid`, `mennyiseg`) VALUES (11, '2018-02-13 00:00:00', 4, 1);
INSERT INTO `lakig` (`azon`, `igeny`, `szolgid`, `mennyiseg`) VALUES (12, '2018-02-15 00:00:00', 5, 1);
INSERT INTO `lakig` (`azon`, `igeny`, `szolgid`, `mennyiseg`) VALUES (13, '2018-02-22 00:00:00', 5, 1);
INSERT INTO `lakig` (`azon`, `igeny`, `szolgid`, `mennyiseg`) VALUES (14, '2018-02-27 00:00:00', 1, 2);
INSERT INTO `lakig` (`azon`, `igeny`, `szolgid`, `mennyiseg`) VALUES (15, '2018-03-02 00:00:00', 4, 1);
INSERT INTO `lakig` (`azon`, `igeny`, `szolgid`, `mennyiseg`) VALUES (16, '2018-03-01 00:00:00', 5, 1);
INSERT INTO `lakig` (`azon`, `igeny`, `szolgid`, `mennyiseg`) VALUES (17, '2018-03-04 00:00:00', 3, 2);
INSERT INTO `lakig` (`azon`, `igeny`, `szolgid`, `mennyiseg`) VALUES (18, '2018-03-08 00:00:00', 5, 1);
INSERT INTO `lakig` (`azon`, `igeny`, `szolgid`, `mennyiseg`) VALUES (19, '2018-03-15 00:00:00', 5, 1);
INSERT INTO `lakig` (`azon`, `igeny`, `szolgid`, `mennyiseg`) VALUES (20, '2018-03-21 00:00:00', 5, 1);
INSERT INTO `lakig` (`azon`, `igeny`, `szolgid`, `mennyiseg`) VALUES (21, '2018-03-29 00:00:00', 5, 1);
INSERT INTO `lakig` (`azon`, `igeny`, `szolgid`, `mennyiseg`) VALUES (22, '2018-04-03 00:00:00', 3, 6);
INSERT INTO `lakig` (`azon`, `igeny`, `szolgid`, `mennyiseg`) VALUES (23, '2018-04-05 00:00:00', 5, 1);
INSERT INTO `lakig` (`azon`, `igeny`, `szolgid`, `mennyiseg`) VALUES (24, '2018-04-11 00:00:00', 3, 19);
INSERT INTO `lakig` (`azon`, `igeny`, `szolgid`, `mennyiseg`) VALUES (25, '2018-04-09 00:00:00', 4, 1);
INSERT INTO `lakig` (`azon`, `igeny`, `szolgid`, `mennyiseg`) VALUES (26, '2018-04-10 00:00:00', 5, 1);
INSERT INTO `lakig` (`azon`, `igeny`, `szolgid`, `mennyiseg`) VALUES (27, '2018-04-19 00:00:00', 5, 1);
INSERT INTO `lakig` (`azon`, `igeny`, `szolgid`, `mennyiseg`) VALUES (28, '2018-04-26 00:00:00', 5, 1);
INSERT INTO `lakig` (`azon`, `igeny`, `szolgid`, `mennyiseg`) VALUES (29, '2018-04-29 00:00:00', 3, 5);
INSERT INTO `lakig` (`azon`, `igeny`, `szolgid`, `mennyiseg`) VALUES (30, '2018-05-03 00:00:00', 5, 1);
INSERT INTO `lakig` (`azon`, `igeny`, `szolgid`, `mennyiseg`) VALUES (31, '2018-05-06 00:00:00', 3, 4);
INSERT INTO `lakig` (`azon`, `igeny`, `szolgid`, `mennyiseg`) VALUES (32, '2018-05-10 00:00:00', 5, 1);
INSERT INTO `lakig` (`azon`, `igeny`, `szolgid`, `mennyiseg`) VALUES (33, '2018-05-16 00:00:00', 3, 3);
INSERT INTO `lakig` (`azon`, `igeny`, `szolgid`, `mennyiseg`) VALUES (34, '2018-05-17 00:00:00', 5, 1);
INSERT INTO `lakig` (`azon`, `igeny`, `szolgid`, `mennyiseg`) VALUES (35, '2018-05-21 00:00:00', 3, 3);
INSERT INTO `lakig` (`azon`, `igeny`, `szolgid`, `mennyiseg`) VALUES (36, '2018-05-22 00:00:00', 1, 1);
INSERT INTO `lakig` (`azon`, `igeny`, `szolgid`, `mennyiseg`) VALUES (37, '2018-05-24 00:00:00', 4, 1);
INSERT INTO `lakig` (`azon`, `igeny`, `szolgid`, `mennyiseg`) VALUES (38, '2018-05-24 00:00:00', 5, 1);
INSERT INTO `lakig` (`azon`, `igeny`, `szolgid`, `mennyiseg`) VALUES (39, '2018-05-27 00:00:00', 3, 3);
INSERT INTO `lakig` (`azon`, `igeny`, `szolgid`, `mennyiseg`) VALUES (40, '2018-05-31 00:00:00', 5, 1);
INSERT INTO `lakig` (`azon`, `igeny`, `szolgid`, `mennyiseg`) VALUES (41, '2018-06-03 00:00:00', 5, 1);
INSERT INTO `lakig` (`azon`, `igeny`, `szolgid`, `mennyiseg`) VALUES (42, '2018-06-04 00:00:00', 3, 5);
INSERT INTO `lakig` (`azon`, `igeny`, `szolgid`, `mennyiseg`) VALUES (43, '2018-06-04 00:00:00', 1, 3);
INSERT INTO `lakig` (`azon`, `igeny`, `szolgid`, `mennyiseg`) VALUES (44, '2018-06-06 00:00:00', 4, 3);
INSERT INTO `lakig` (`azon`, `igeny`, `szolgid`, `mennyiseg`) VALUES (45, '2018-06-07 00:00:00', 5, 1);
INSERT INTO `lakig` (`azon`, `igeny`, `szolgid`, `mennyiseg`) VALUES (46, '2018-06-10 00:00:00', 5, 1);
INSERT INTO `lakig` (`azon`, `igeny`, `szolgid`, `mennyiseg`) VALUES (47, '2018-06-10 00:00:00', 3, 2);
INSERT INTO `lakig` (`azon`, `igeny`, `szolgid`, `mennyiseg`) VALUES (48, '2018-06-14 00:00:00', 5, 1);
INSERT INTO `lakig` (`azon`, `igeny`, `szolgid`, `mennyiseg`) VALUES (49, '2018-06-17 00:00:00', 5, 1);
INSERT INTO `lakig` (`azon`, `igeny`, `szolgid`, `mennyiseg`) VALUES (50, '2018-06-20 00:00:00', 3, 2);
INSERT INTO `lakig` (`azon`, `igeny`, `szolgid`, `mennyiseg`) VALUES (51, '2018-06-20 00:00:00', 4, 1);
INSERT INTO `lakig` (`azon`, `igeny`, `szolgid`, `mennyiseg`) VALUES (52, '2018-06-21 00:00:00', 5, 1);
INSERT INTO `lakig` (`azon`, `igeny`, `szolgid`, `mennyiseg`) VALUES (53, '2018-06-24 00:00:00', 5, 1);
INSERT INTO `lakig` (`azon`, `igeny`, `szolgid`, `mennyiseg`) VALUES (54, '2018-06-25 00:00:00', 3, 2);
INSERT INTO `lakig` (`azon`, `igeny`, `szolgid`, `mennyiseg`) VALUES (55, '2018-06-27 00:00:00', 5, 1);
INSERT INTO `lakig` (`azon`, `igeny`, `szolgid`, `mennyiseg`) VALUES (56, '2018-07-01 00:00:00', 5, 1);
INSERT INTO `lakig` (`azon`, `igeny`, `szolgid`, `mennyiseg`) VALUES (57, '2018-07-02 00:00:00', 3, 1);
INSERT INTO `lakig` (`azon`, `igeny`, `szolgid`, `mennyiseg`) VALUES (58, '2018-07-02 00:00:00', 4, 3);
INSERT INTO `lakig` (`azon`, `igeny`, `szolgid`, `mennyiseg`) VALUES (59, '2018-07-05 00:00:00', 5, 1);
INSERT INTO `lakig` (`azon`, `igeny`, `szolgid`, `mennyiseg`) VALUES (60, '2018-07-08 00:00:00', 5, 1);
INSERT INTO `lakig` (`azon`, `igeny`, `szolgid`, `mennyiseg`) VALUES (61, '2018-07-08 00:00:00', 3, 3);
INSERT INTO `lakig` (`azon`, `igeny`, `szolgid`, `mennyiseg`) VALUES (62, '2018-07-12 00:00:00', 5, 1);
INSERT INTO `lakig` (`azon`, `igeny`, `szolgid`, `mennyiseg`) VALUES (63, '2018-07-15 00:00:00', 5, 1);
INSERT INTO `lakig` (`azon`, `igeny`, `szolgid`, `mennyiseg`) VALUES (64, '2018-07-16 00:00:00', 3, 1);
INSERT INTO `lakig` (`azon`, `igeny`, `szolgid`, `mennyiseg`) VALUES (65, '2018-07-18 00:00:00', 1, 1);
INSERT INTO `lakig` (`azon`, `igeny`, `szolgid`, `mennyiseg`) VALUES (66, '2018-07-19 00:00:00', 4, 2);
INSERT INTO `lakig` (`azon`, `igeny`, `szolgid`, `mennyiseg`) VALUES (67, '2018-07-19 00:00:00', 5, 1);
INSERT INTO `lakig` (`azon`, `igeny`, `szolgid`, `mennyiseg`) VALUES (68, '2018-07-22 00:00:00', 5, 1);
INSERT INTO `lakig` (`azon`, `igeny`, `szolgid`, `mennyiseg`) VALUES (69, '2018-07-22 00:00:00', 3, 1);
INSERT INTO `lakig` (`azon`, `igeny`, `szolgid`, `mennyiseg`) VALUES (70, '2018-07-26 00:00:00', 5, 1);
INSERT INTO `lakig` (`azon`, `igeny`, `szolgid`, `mennyiseg`) VALUES (71, '2018-07-29 00:00:00', 5, 1);
INSERT INTO `lakig` (`azon`, `igeny`, `szolgid`, `mennyiseg`) VALUES (72, '2018-07-31 00:00:00', 3, 2);
INSERT INTO `lakig` (`azon`, `igeny`, `szolgid`, `mennyiseg`) VALUES (73, '2018-08-26 00:00:00', 5, 1);
INSERT INTO `lakig` (`azon`, `igeny`, `szolgid`, `mennyiseg`) VALUES (74, '2018-08-29 00:00:00', 3, 3);
INSERT INTO `lakig` (`azon`, `igeny`, `szolgid`, `mennyiseg`) VALUES (75, '2018-08-27 00:00:00', 1, 1);
INSERT INTO `lakig` (`azon`, `igeny`, `szolgid`, `mennyiseg`) VALUES (76, '2018-08-29 00:00:00', 4, 1);
INSERT INTO `lakig` (`azon`, `igeny`, `szolgid`, `mennyiseg`) VALUES (77, '2018-08-30 00:00:00', 5, 1);
INSERT INTO `lakig` (`azon`, `igeny`, `szolgid`, `mennyiseg`) VALUES (78, '2018-09-01 00:00:00', 3, 4);
INSERT INTO `lakig` (`azon`, `igeny`, `szolgid`, `mennyiseg`) VALUES (79, '2018-09-06 00:00:00', 5, 1);
INSERT INTO `lakig` (`azon`, `igeny`, `szolgid`, `mennyiseg`) VALUES (80, '2018-09-09 00:00:00', 3, 3);
INSERT INTO `lakig` (`azon`, `igeny`, `szolgid`, `mennyiseg`) VALUES (81, '2018-09-10 00:00:00', 1, 3);
INSERT INTO `lakig` (`azon`, `igeny`, `szolgid`, `mennyiseg`) VALUES (82, '2018-09-13 00:00:00', 5, 1);
INSERT INTO `lakig` (`azon`, `igeny`, `szolgid`, `mennyiseg`) VALUES (83, '2018-09-18 00:00:00', 3, 2);
INSERT INTO `lakig` (`azon`, `igeny`, `szolgid`, `mennyiseg`) VALUES (84, '2018-09-20 00:00:00', 5, 1);
INSERT INTO `lakig` (`azon`, `igeny`, `szolgid`, `mennyiseg`) VALUES (85, '2018-09-23 00:00:00', 3, 1);
INSERT INTO `lakig` (`azon`, `igeny`, `szolgid`, `mennyiseg`) VALUES (86, '2018-09-24 00:00:00', 4, 2);
INSERT INTO `lakig` (`azon`, `igeny`, `szolgid`, `mennyiseg`) VALUES (87, '2018-09-27 00:00:00', 5, 1);
INSERT INTO `lakig` (`azon`, `igeny`, `szolgid`, `mennyiseg`) VALUES (88, '2018-09-29 00:00:00', 3, 1);
INSERT INTO `lakig` (`azon`, `igeny`, `szolgid`, `mennyiseg`) VALUES (89, '2018-10-04 00:00:00', 5, 1);
INSERT INTO `lakig` (`azon`, `igeny`, `szolgid`, `mennyiseg`) VALUES (90, '2018-10-10 00:00:00', 3, 2);
INSERT INTO `lakig` (`azon`, `igeny`, `szolgid`, `mennyiseg`) VALUES (91, '2018-10-10 00:00:00', 5, 1);
INSERT INTO `lakig` (`azon`, `igeny`, `szolgid`, `mennyiseg`) VALUES (92, '2018-10-15 00:00:00', 3, 2);
INSERT INTO `lakig` (`azon`, `igeny`, `szolgid`, `mennyiseg`) VALUES (93, '2018-10-18 00:00:00', 5, 1);
INSERT INTO `lakig` (`azon`, `igeny`, `szolgid`, `mennyiseg`) VALUES (94, '2018-10-22 00:00:00', 3, 6);
INSERT INTO `lakig` (`azon`, `igeny`, `szolgid`, `mennyiseg`) VALUES (95, '2018-10-25 00:00:00', 5, 1);
INSERT INTO `lakig` (`azon`, `igeny`, `szolgid`, `mennyiseg`) VALUES (96, '2018-10-31 00:00:00', 3, 3);
INSERT INTO `lakig` (`azon`, `igeny`, `szolgid`, `mennyiseg`) VALUES (97, '2018-11-01 00:00:00', 5, 1);
INSERT INTO `lakig` (`azon`, `igeny`, `szolgid`, `mennyiseg`) VALUES (98, '2018-11-04 00:00:00', 3, 13);
INSERT INTO `lakig` (`azon`, `igeny`, `szolgid`, `mennyiseg`) VALUES (99, '2018-11-05 00:00:00', 1, 2);
INSERT INTO `lakig` (`azon`, `igeny`, `szolgid`, `mennyiseg`) VALUES (100, '2018-11-07 00:00:00', 4, 1);
INSERT INTO `lakig` (`azon`, `igeny`, `szolgid`, `mennyiseg`) VALUES (101, '2018-11-15 00:00:00', 5, 1);
INSERT INTO `lakig` (`azon`, `igeny`, `szolgid`, `mennyiseg`) VALUES (102, '2018-11-17 00:00:00', 3, 7);
INSERT INTO `lakig` (`azon`, `igeny`, `szolgid`, `mennyiseg`) VALUES (103, '2018-11-22 00:00:00', 5, 1);
INSERT INTO `lakig` (`azon`, `igeny`, `szolgid`, `mennyiseg`) VALUES (104, '2018-11-26 00:00:00', 3, 3);
INSERT INTO `lakig` (`azon`, `igeny`, `szolgid`, `mennyiseg`) VALUES (105, '2018-11-29 00:00:00', 5, 1);
INSERT INTO `lakig` (`azon`, `igeny`, `szolgid`, `mennyiseg`) VALUES (106, '2018-12-06 00:00:00', 5, 1);
INSERT INTO `lakig` (`azon`, `igeny`, `szolgid`, `mennyiseg`) VALUES (107, '2018-12-13 00:00:00', 5, 1);
INSERT INTO `lakig` (`azon`, `igeny`, `szolgid`, `mennyiseg`) VALUES (108, '2018-12-19 00:00:00', 4, 2);
INSERT INTO `lakig` (`azon`, `igeny`, `szolgid`, `mennyiseg`) VALUES (109, '2018-12-20 00:00:00', 5, 1);
INSERT INTO `lakig` (`azon`, `igeny`, `szolgid`, `mennyiseg`) VALUES (110, '2018-12-26 00:00:00', 5, 1);
# 110 records

#
# Table structure for table 'naptar'
#

DROP TABLE IF EXISTS `naptar`;

CREATE TABLE `naptar` (
  `azon` INTEGER NOT NULL AUTO_INCREMENT, 
  `datum` DATETIME, 
  `szolgid` INTEGER, 
  PRIMARY KEY (`azon`), 
  INDEX (`szolgid`)
) ENGINE=innodb DEFAULT CHARSET=utf8;

SET autocommit=1;

#
# Dumping data for table 'naptar'
#

INSERT INTO `naptar` (`azon`, `datum`, `szolgid`) VALUES (1, '2018-01-03 00:00:00', 1);
INSERT INTO `naptar` (`azon`, `datum`, `szolgid`) VALUES (2, '2018-01-03 00:00:00', 4);
INSERT INTO `naptar` (`azon`, `datum`, `szolgid`) VALUES (3, '2018-01-04 00:00:00', 5);
INSERT INTO `naptar` (`azon`, `datum`, `szolgid`) VALUES (4, '2018-01-11 00:00:00', 5);
INSERT INTO `naptar` (`azon`, `datum`, `szolgid`) VALUES (5, '2018-01-17 00:00:00', 1);
INSERT INTO `naptar` (`azon`, `datum`, `szolgid`) VALUES (6, '2018-01-17 00:00:00', 4);
INSERT INTO `naptar` (`azon`, `datum`, `szolgid`) VALUES (7, '2018-01-18 00:00:00', 5);
INSERT INTO `naptar` (`azon`, `datum`, `szolgid`) VALUES (8, '2018-01-18 00:00:00', 3);
INSERT INTO `naptar` (`azon`, `datum`, `szolgid`) VALUES (9, '2018-01-25 00:00:00', 5);
INSERT INTO `naptar` (`azon`, `datum`, `szolgid`) VALUES (10, '2018-01-25 00:00:00', 3);
INSERT INTO `naptar` (`azon`, `datum`, `szolgid`) VALUES (11, '2018-01-31 00:00:00', 1);
INSERT INTO `naptar` (`azon`, `datum`, `szolgid`) VALUES (12, '2018-01-31 00:00:00', 4);
INSERT INTO `naptar` (`azon`, `datum`, `szolgid`) VALUES (13, '2018-02-01 00:00:00', 5);
INSERT INTO `naptar` (`azon`, `datum`, `szolgid`) VALUES (14, '2018-02-08 00:00:00', 5);
INSERT INTO `naptar` (`azon`, `datum`, `szolgid`) VALUES (15, '2018-02-14 00:00:00', 1);
INSERT INTO `naptar` (`azon`, `datum`, `szolgid`) VALUES (16, '2018-02-14 00:00:00', 4);
INSERT INTO `naptar` (`azon`, `datum`, `szolgid`) VALUES (17, '2018-02-15 00:00:00', 5);
INSERT INTO `naptar` (`azon`, `datum`, `szolgid`) VALUES (18, '2018-02-22 00:00:00', 5);
INSERT INTO `naptar` (`azon`, `datum`, `szolgid`) VALUES (19, '2018-02-28 00:00:00', 1);
INSERT INTO `naptar` (`azon`, `datum`, `szolgid`) VALUES (20, '2018-02-28 00:00:00', 4);
INSERT INTO `naptar` (`azon`, `datum`, `szolgid`) VALUES (21, '2018-03-01 00:00:00', 5);
INSERT INTO `naptar` (`azon`, `datum`, `szolgid`) VALUES (22, '2018-03-05 00:00:00', 3);
INSERT INTO `naptar` (`azon`, `datum`, `szolgid`) VALUES (23, '2018-03-08 00:00:00', 5);
INSERT INTO `naptar` (`azon`, `datum`, `szolgid`) VALUES (24, '2018-03-12 00:00:00', 3);
INSERT INTO `naptar` (`azon`, `datum`, `szolgid`) VALUES (25, '2018-03-14 00:00:00', 1);
INSERT INTO `naptar` (`azon`, `datum`, `szolgid`) VALUES (26, '2018-03-14 00:00:00', 4);
INSERT INTO `naptar` (`azon`, `datum`, `szolgid`) VALUES (27, '2018-03-15 00:00:00', 5);
INSERT INTO `naptar` (`azon`, `datum`, `szolgid`) VALUES (28, '2018-03-19 00:00:00', 3);
INSERT INTO `naptar` (`azon`, `datum`, `szolgid`) VALUES (29, '2018-03-22 00:00:00', 5);
INSERT INTO `naptar` (`azon`, `datum`, `szolgid`) VALUES (30, '2018-03-26 00:00:00', 3);
INSERT INTO `naptar` (`azon`, `datum`, `szolgid`) VALUES (31, '2018-03-28 00:00:00', 1);
INSERT INTO `naptar` (`azon`, `datum`, `szolgid`) VALUES (32, '2018-03-28 00:00:00', 4);
INSERT INTO `naptar` (`azon`, `datum`, `szolgid`) VALUES (33, '2018-03-29 00:00:00', 5);
INSERT INTO `naptar` (`azon`, `datum`, `szolgid`) VALUES (34, '2018-04-02 00:00:00', 3);
INSERT INTO `naptar` (`azon`, `datum`, `szolgid`) VALUES (35, '2018-04-05 00:00:00', 5);
INSERT INTO `naptar` (`azon`, `datum`, `szolgid`) VALUES (36, '2018-04-09 00:00:00', 3);
INSERT INTO `naptar` (`azon`, `datum`, `szolgid`) VALUES (37, '2018-04-11 00:00:00', 1);
INSERT INTO `naptar` (`azon`, `datum`, `szolgid`) VALUES (38, '2018-04-11 00:00:00', 4);
INSERT INTO `naptar` (`azon`, `datum`, `szolgid`) VALUES (39, '2018-04-12 00:00:00', 5);
INSERT INTO `naptar` (`azon`, `datum`, `szolgid`) VALUES (40, '2018-04-16 00:00:00', 3);
INSERT INTO `naptar` (`azon`, `datum`, `szolgid`) VALUES (41, '2018-04-19 00:00:00', 5);
INSERT INTO `naptar` (`azon`, `datum`, `szolgid`) VALUES (42, '2018-04-23 00:00:00', 3);
INSERT INTO `naptar` (`azon`, `datum`, `szolgid`) VALUES (43, '2018-04-25 00:00:00', 1);
INSERT INTO `naptar` (`azon`, `datum`, `szolgid`) VALUES (44, '2018-04-25 00:00:00', 4);
INSERT INTO `naptar` (`azon`, `datum`, `szolgid`) VALUES (45, '2018-04-26 00:00:00', 5);
INSERT INTO `naptar` (`azon`, `datum`, `szolgid`) VALUES (46, '2018-04-30 00:00:00', 3);
INSERT INTO `naptar` (`azon`, `datum`, `szolgid`) VALUES (47, '2018-05-03 00:00:00', 5);
INSERT INTO `naptar` (`azon`, `datum`, `szolgid`) VALUES (48, '2018-05-07 00:00:00', 3);
INSERT INTO `naptar` (`azon`, `datum`, `szolgid`) VALUES (49, '2018-05-09 00:00:00', 1);
INSERT INTO `naptar` (`azon`, `datum`, `szolgid`) VALUES (50, '2018-05-09 00:00:00', 4);
INSERT INTO `naptar` (`azon`, `datum`, `szolgid`) VALUES (51, '2018-05-10 00:00:00', 5);
INSERT INTO `naptar` (`azon`, `datum`, `szolgid`) VALUES (52, '2018-05-14 00:00:00', 3);
INSERT INTO `naptar` (`azon`, `datum`, `szolgid`) VALUES (53, '2018-05-17 00:00:00', 5);
INSERT INTO `naptar` (`azon`, `datum`, `szolgid`) VALUES (54, '2018-05-21 00:00:00', 3);
INSERT INTO `naptar` (`azon`, `datum`, `szolgid`) VALUES (55, '2018-05-23 00:00:00', 1);
INSERT INTO `naptar` (`azon`, `datum`, `szolgid`) VALUES (56, '2018-05-23 00:00:00', 4);
INSERT INTO `naptar` (`azon`, `datum`, `szolgid`) VALUES (57, '2018-05-24 00:00:00', 5);
INSERT INTO `naptar` (`azon`, `datum`, `szolgid`) VALUES (58, '2018-05-28 00:00:00', 3);
INSERT INTO `naptar` (`azon`, `datum`, `szolgid`) VALUES (59, '2018-05-31 00:00:00', 5);
INSERT INTO `naptar` (`azon`, `datum`, `szolgid`) VALUES (60, '2018-06-03 00:00:00', 5);
INSERT INTO `naptar` (`azon`, `datum`, `szolgid`) VALUES (61, '2018-06-04 00:00:00', 3);
INSERT INTO `naptar` (`azon`, `datum`, `szolgid`) VALUES (62, '2018-06-06 00:00:00', 1);
INSERT INTO `naptar` (`azon`, `datum`, `szolgid`) VALUES (63, '2018-06-06 00:00:00', 4);
INSERT INTO `naptar` (`azon`, `datum`, `szolgid`) VALUES (64, '2018-06-07 00:00:00', 5);
INSERT INTO `naptar` (`azon`, `datum`, `szolgid`) VALUES (65, '2018-06-10 00:00:00', 5);
INSERT INTO `naptar` (`azon`, `datum`, `szolgid`) VALUES (66, '2018-06-11 00:00:00', 3);
INSERT INTO `naptar` (`azon`, `datum`, `szolgid`) VALUES (67, '2018-06-14 00:00:00', 5);
INSERT INTO `naptar` (`azon`, `datum`, `szolgid`) VALUES (68, '2018-06-17 00:00:00', 5);
INSERT INTO `naptar` (`azon`, `datum`, `szolgid`) VALUES (69, '2018-06-18 00:00:00', 3);
INSERT INTO `naptar` (`azon`, `datum`, `szolgid`) VALUES (70, '2018-06-20 00:00:00', 1);
INSERT INTO `naptar` (`azon`, `datum`, `szolgid`) VALUES (71, '2018-06-20 00:00:00', 4);
INSERT INTO `naptar` (`azon`, `datum`, `szolgid`) VALUES (72, '2018-06-21 00:00:00', 5);
INSERT INTO `naptar` (`azon`, `datum`, `szolgid`) VALUES (73, '2018-06-24 00:00:00', 5);
INSERT INTO `naptar` (`azon`, `datum`, `szolgid`) VALUES (74, '2018-06-25 00:00:00', 3);
INSERT INTO `naptar` (`azon`, `datum`, `szolgid`) VALUES (75, '2018-06-28 00:00:00', 5);
INSERT INTO `naptar` (`azon`, `datum`, `szolgid`) VALUES (76, '2018-07-01 00:00:00', 5);
INSERT INTO `naptar` (`azon`, `datum`, `szolgid`) VALUES (77, '2018-07-02 00:00:00', 3);
INSERT INTO `naptar` (`azon`, `datum`, `szolgid`) VALUES (78, '2018-07-04 00:00:00', 1);
INSERT INTO `naptar` (`azon`, `datum`, `szolgid`) VALUES (79, '2018-07-04 00:00:00', 4);
INSERT INTO `naptar` (`azon`, `datum`, `szolgid`) VALUES (80, '2018-07-05 00:00:00', 5);
INSERT INTO `naptar` (`azon`, `datum`, `szolgid`) VALUES (81, '2018-07-08 00:00:00', 5);
INSERT INTO `naptar` (`azon`, `datum`, `szolgid`) VALUES (82, '2018-07-09 00:00:00', 3);
INSERT INTO `naptar` (`azon`, `datum`, `szolgid`) VALUES (83, '2018-07-12 00:00:00', 5);
INSERT INTO `naptar` (`azon`, `datum`, `szolgid`) VALUES (84, '2018-07-15 00:00:00', 5);
INSERT INTO `naptar` (`azon`, `datum`, `szolgid`) VALUES (85, '2018-07-16 00:00:00', 3);
INSERT INTO `naptar` (`azon`, `datum`, `szolgid`) VALUES (86, '2018-07-18 00:00:00', 1);
INSERT INTO `naptar` (`azon`, `datum`, `szolgid`) VALUES (87, '2018-07-18 00:00:00', 4);
INSERT INTO `naptar` (`azon`, `datum`, `szolgid`) VALUES (88, '2018-07-19 00:00:00', 5);
INSERT INTO `naptar` (`azon`, `datum`, `szolgid`) VALUES (89, '2018-07-22 00:00:00', 5);
INSERT INTO `naptar` (`azon`, `datum`, `szolgid`) VALUES (90, '2018-07-23 00:00:00', 3);
INSERT INTO `naptar` (`azon`, `datum`, `szolgid`) VALUES (91, '2018-07-26 00:00:00', 5);
INSERT INTO `naptar` (`azon`, `datum`, `szolgid`) VALUES (92, '2018-07-29 00:00:00', 5);
INSERT INTO `naptar` (`azon`, `datum`, `szolgid`) VALUES (93, '2018-07-30 00:00:00', 3);
INSERT INTO `naptar` (`azon`, `datum`, `szolgid`) VALUES (94, '2018-08-01 00:00:00', 1);
INSERT INTO `naptar` (`azon`, `datum`, `szolgid`) VALUES (95, '2018-08-01 00:00:00', 4);
INSERT INTO `naptar` (`azon`, `datum`, `szolgid`) VALUES (96, '2018-08-02 00:00:00', 5);
INSERT INTO `naptar` (`azon`, `datum`, `szolgid`) VALUES (97, '2018-08-05 00:00:00', 5);
INSERT INTO `naptar` (`azon`, `datum`, `szolgid`) VALUES (98, '2018-08-06 00:00:00', 3);
INSERT INTO `naptar` (`azon`, `datum`, `szolgid`) VALUES (99, '2018-08-09 00:00:00', 5);
INSERT INTO `naptar` (`azon`, `datum`, `szolgid`) VALUES (100, '2018-08-12 00:00:00', 5);
INSERT INTO `naptar` (`azon`, `datum`, `szolgid`) VALUES (101, '2018-08-13 00:00:00', 3);
INSERT INTO `naptar` (`azon`, `datum`, `szolgid`) VALUES (102, '2018-08-15 00:00:00', 1);
INSERT INTO `naptar` (`azon`, `datum`, `szolgid`) VALUES (103, '2018-08-15 00:00:00', 4);
INSERT INTO `naptar` (`azon`, `datum`, `szolgid`) VALUES (104, '2018-08-16 00:00:00', 5);
INSERT INTO `naptar` (`azon`, `datum`, `szolgid`) VALUES (105, '2018-08-19 00:00:00', 5);
INSERT INTO `naptar` (`azon`, `datum`, `szolgid`) VALUES (106, '2018-08-20 00:00:00', 3);
INSERT INTO `naptar` (`azon`, `datum`, `szolgid`) VALUES (107, '2018-08-23 00:00:00', 5);
INSERT INTO `naptar` (`azon`, `datum`, `szolgid`) VALUES (108, '2018-08-26 00:00:00', 5);
INSERT INTO `naptar` (`azon`, `datum`, `szolgid`) VALUES (109, '2018-08-27 00:00:00', 3);
INSERT INTO `naptar` (`azon`, `datum`, `szolgid`) VALUES (110, '2018-08-29 00:00:00', 1);
INSERT INTO `naptar` (`azon`, `datum`, `szolgid`) VALUES (111, '2018-08-29 00:00:00', 4);
INSERT INTO `naptar` (`azon`, `datum`, `szolgid`) VALUES (112, '2018-08-30 00:00:00', 5);
INSERT INTO `naptar` (`azon`, `datum`, `szolgid`) VALUES (113, '2018-09-03 00:00:00', 3);
INSERT INTO `naptar` (`azon`, `datum`, `szolgid`) VALUES (114, '2018-09-06 00:00:00', 5);
INSERT INTO `naptar` (`azon`, `datum`, `szolgid`) VALUES (115, '2018-09-10 00:00:00', 3);
INSERT INTO `naptar` (`azon`, `datum`, `szolgid`) VALUES (116, '2018-09-12 00:00:00', 1);
INSERT INTO `naptar` (`azon`, `datum`, `szolgid`) VALUES (117, '2018-09-12 00:00:00', 4);
INSERT INTO `naptar` (`azon`, `datum`, `szolgid`) VALUES (118, '2018-09-13 00:00:00', 5);
INSERT INTO `naptar` (`azon`, `datum`, `szolgid`) VALUES (119, '2018-09-17 00:00:00', 3);
INSERT INTO `naptar` (`azon`, `datum`, `szolgid`) VALUES (120, '2018-09-20 00:00:00', 5);
INSERT INTO `naptar` (`azon`, `datum`, `szolgid`) VALUES (121, '2018-09-24 00:00:00', 3);
INSERT INTO `naptar` (`azon`, `datum`, `szolgid`) VALUES (122, '2018-09-26 00:00:00', 1);
INSERT INTO `naptar` (`azon`, `datum`, `szolgid`) VALUES (123, '2018-09-26 00:00:00', 4);
INSERT INTO `naptar` (`azon`, `datum`, `szolgid`) VALUES (124, '2018-09-27 00:00:00', 5);
INSERT INTO `naptar` (`azon`, `datum`, `szolgid`) VALUES (125, '2018-10-01 00:00:00', 3);
INSERT INTO `naptar` (`azon`, `datum`, `szolgid`) VALUES (126, '2018-10-04 00:00:00', 5);
INSERT INTO `naptar` (`azon`, `datum`, `szolgid`) VALUES (127, '2018-10-08 00:00:00', 3);
INSERT INTO `naptar` (`azon`, `datum`, `szolgid`) VALUES (128, '2018-10-10 00:00:00', 1);
INSERT INTO `naptar` (`azon`, `datum`, `szolgid`) VALUES (129, '2018-10-10 00:00:00', 4);
INSERT INTO `naptar` (`azon`, `datum`, `szolgid`) VALUES (130, '2018-10-11 00:00:00', 5);
INSERT INTO `naptar` (`azon`, `datum`, `szolgid`) VALUES (131, '2018-10-15 00:00:00', 3);
INSERT INTO `naptar` (`azon`, `datum`, `szolgid`) VALUES (132, '2018-10-18 00:00:00', 5);
INSERT INTO `naptar` (`azon`, `datum`, `szolgid`) VALUES (133, '2018-10-22 00:00:00', 3);
INSERT INTO `naptar` (`azon`, `datum`, `szolgid`) VALUES (134, '2018-10-24 00:00:00', 1);
INSERT INTO `naptar` (`azon`, `datum`, `szolgid`) VALUES (135, '2018-10-24 00:00:00', 4);
INSERT INTO `naptar` (`azon`, `datum`, `szolgid`) VALUES (136, '2018-10-25 00:00:00', 5);
INSERT INTO `naptar` (`azon`, `datum`, `szolgid`) VALUES (137, '2018-10-29 00:00:00', 3);
INSERT INTO `naptar` (`azon`, `datum`, `szolgid`) VALUES (138, '2018-11-01 00:00:00', 5);
INSERT INTO `naptar` (`azon`, `datum`, `szolgid`) VALUES (139, '2018-11-05 00:00:00', 3);
INSERT INTO `naptar` (`azon`, `datum`, `szolgid`) VALUES (140, '2018-11-07 00:00:00', 1);
INSERT INTO `naptar` (`azon`, `datum`, `szolgid`) VALUES (141, '2018-11-07 00:00:00', 4);
INSERT INTO `naptar` (`azon`, `datum`, `szolgid`) VALUES (142, '2018-11-08 00:00:00', 5);
INSERT INTO `naptar` (`azon`, `datum`, `szolgid`) VALUES (143, '2018-11-12 00:00:00', 3);
INSERT INTO `naptar` (`azon`, `datum`, `szolgid`) VALUES (144, '2018-11-15 00:00:00', 5);
INSERT INTO `naptar` (`azon`, `datum`, `szolgid`) VALUES (145, '2018-11-19 00:00:00', 3);
INSERT INTO `naptar` (`azon`, `datum`, `szolgid`) VALUES (146, '2018-11-21 00:00:00', 1);
INSERT INTO `naptar` (`azon`, `datum`, `szolgid`) VALUES (147, '2018-11-21 00:00:00', 4);
INSERT INTO `naptar` (`azon`, `datum`, `szolgid`) VALUES (148, '2018-11-22 00:00:00', 5);
INSERT INTO `naptar` (`azon`, `datum`, `szolgid`) VALUES (149, '2018-11-26 00:00:00', 3);
INSERT INTO `naptar` (`azon`, `datum`, `szolgid`) VALUES (150, '2018-11-29 00:00:00', 5);
INSERT INTO `naptar` (`azon`, `datum`, `szolgid`) VALUES (151, '2018-12-05 00:00:00', 1);
INSERT INTO `naptar` (`azon`, `datum`, `szolgid`) VALUES (152, '2018-12-05 00:00:00', 4);
INSERT INTO `naptar` (`azon`, `datum`, `szolgid`) VALUES (153, '2018-12-06 00:00:00', 5);
INSERT INTO `naptar` (`azon`, `datum`, `szolgid`) VALUES (154, '2018-12-13 00:00:00', 5);
INSERT INTO `naptar` (`azon`, `datum`, `szolgid`) VALUES (155, '2018-12-19 00:00:00', 1);
INSERT INTO `naptar` (`azon`, `datum`, `szolgid`) VALUES (156, '2018-12-20 00:00:00', 5);
INSERT INTO `naptar` (`azon`, `datum`, `szolgid`) VALUES (157, '2018-12-27 00:00:00', 5);
# 157 records

#
# Table structure for table 'szolgaltatas'
#

DROP TABLE IF EXISTS `szolgaltatas`;

CREATE TABLE `szolgaltatas` (
  `id` INTEGER NOT NULL, 
  `tipus` VARCHAR(255), 
  `jelentes` VARCHAR(255), 
  PRIMARY KEY (`id`)
) ENGINE=innodb DEFAULT CHARSET=utf8;

SET autocommit=1;

#
# Dumping data for table 'szolgaltatas'
#

INSERT INTO `szolgaltatas` (`id`, `tipus`, `jelentes`) VALUES (1, 'mua', 'Műanyag hulladék: PET palack, kozmetikai flakonok(PP+HDPE), szatyor, zacskó.');
INSERT INTO `szolgaltatas` (`id`, `tipus`, `jelentes`) VALUES (2, 'uv', 'Üveg hulladék: színes és fehér üveg.');
INSERT INTO `szolgaltatas` (`id`, `tipus`, `jelentes`) VALUES (3, 'zold', 'Zöldhulladék: komposztálható, kerti hulladékok.');
INSERT INTO `szolgaltatas` (`id`, `tipus`, `jelentes`) VALUES (4, 'pa', 'Papírhulladékok: újságok, könyvek, kartondobozok.');
INSERT INTO `szolgaltatas` (`id`, `tipus`, `jelentes`) VALUES (5, 'kom', 'Kommunális hulladék: szilárd, a lakókörnyezetünkben található, nem lebomló, nem veszélyes hulladék.');
# 5 records

