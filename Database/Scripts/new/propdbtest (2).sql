-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Jun 26, 2016 at 01:34 AM
-- Server version: 10.1.9-MariaDB
-- PHP Version: 5.6.15

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";
SET FOREIGN_KEY_CHECKS = 0;

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `dbi339282`
--

-- --------------------------------------------------------

--
-- Table structure for table `activities`
--

DROP TABLE IF EXISTS `activities`;
CREATE TABLE `activities` (
  `ACTIVITY_ID` int(11) NOT NULL,
  `ACTIVITYNAME` varchar(120) NOT NULL,
  `DESCRIPTION` varchar(400) NOT NULL,
  `DATE` datetime NOT NULL,
  `TOTALPLACES` int(11) NOT NULL,
  `OPENPLACES` int(11) NOT NULL,
  `OPENPLACESTAKEN` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Truncate table before insert `activities`
--

TRUNCATE TABLE `activities`;
--
-- Dumping data for table `activities`
--

INSERT INTO `activities` (`ACTIVITY_ID`, `ACTIVITYNAME`, `DESCRIPTION`, `DATE`, `TOTALPLACES`, `OPENPLACES`, `OPENPLACESTAKEN`) VALUES
(1, 'YOGA WITH SHANTAM KAUR', 'JOIN THE MORNING CLASSES AND MAKE YOUR BODY AND SOUL A PRESENT', '2016-05-20 09:30:30', 40, 0, 0),
(3, 'GUITAR LESSONS WITH DIMITAR MARKOV', 'LEARN TO PLAY THE BEST INSTRUMENT IN THE WORLD WITH THE BEST TEACHER IN THE WORLD. NO GIRL WILL BE ABLE TO STAND AGAINST YOUR LOVESONGS', '2016-05-20 14:00:00', 500, 0, 0),
(4, 'Play PIANO WITH KARL KARLOV', 'KARL KARLOV WILL KARL YOU TO KARL', '2016-05-21 15:10:21', 300, 0, 0),
(5, 'PERKS OF YODDELING WITH WITH WITHERSPOON', 'YODL', '2016-05-21 09:00:00', 150, 0, 0),
(6, 'THE WAY OF JAZZ', 'LEARN ALL YOU CAN ', '2016-05-22 16:00:00', 312, 0, 0),
(7, 'PUSH IT TO THE LIMIT', 'Walk along the razor''s edge\r\nBut don''t look down, just keep your head\r\nOr you''ll be finished\r\n\r\nOpen up the limit\r\nPast the point of no return\r\nYou''ve reached the top but still you gotta learn\r\nHow to keep it', '2016-05-20 06:24:15', 9001, 0, 0);

-- --------------------------------------------------------

--
-- Stand-in structure for view `activityplaces_view`
--
DROP VIEW IF EXISTS `activityplaces_view`;
CREATE TABLE `activityplaces_view` (
`ACTIVITY_ID` int(11)
,`TOTALPLACES` int(11)
,`TORESPLCS` bigint(13)
,`RESERVEDPLACES` bigint(21)
);

-- --------------------------------------------------------

--
-- Table structure for table `activityreservations`
--

DROP TABLE IF EXISTS `activityreservations`;
CREATE TABLE `activityreservations` (
  `ACTIVITY_ID` int(11) NOT NULL,
  `USER_ID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Truncate table before insert `activityreservations`
--

TRUNCATE TABLE `activityreservations`;
--
-- Dumping data for table `activityreservations`
--

INSERT INTO `activityreservations` (`ACTIVITY_ID`, `USER_ID`) VALUES
(1, 1137),
(1, 1142),
(3, 1123),
(3, 1139),
(4, 1123),
(4, 1125),
(4, 1139),
(4, 1140),
(4, 1142),
(5, 1123),
(5, 1125),
(5, 1136),
(5, 1139),
(5, 1142),
(6, 1136),
(6, 1140),
(7, 1123),
(7, 1136),
(7, 1140);

-- --------------------------------------------------------

--
-- Table structure for table `camps`
--

DROP TABLE IF EXISTS `camps`;
CREATE TABLE `camps` (
  `CAMPING_ID` int(11) NOT NULL,
  `TENTNR` int(11) NOT NULL,
  `AVAILABLE` tinyint(1) NOT NULL DEFAULT '1',
  `TYPE` varchar(25) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Truncate table before insert `camps`
--

TRUNCATE TABLE `camps`;
--
-- Dumping data for table `camps`
--

INSERT INTO `camps` (`CAMPING_ID`, `TENTNR`, `AVAILABLE`, `TYPE`) VALUES
(10001, 33, 0, 'TIPI'),
(11112, 34, 0, 'CARDBOARD BOX'),
(11113, 12, 0, 'CHAIR CASTLE'),
(11114, 13, 0, 'TREE HOUSE'),
(11115, 332, 0, 'Pineapple'),
(11116, 76, 0, 'House'),
(11117, 2, 0, 'Yard'),
(11118, 12, 0, 'Farm'),
(11119, 22, 0, 'Garbage'),
(11120, 22, 0, 'Toilet'),
(11121, 2, 0, 'Chalk Shaft'),
(11122, 4444, 0, 'blanket'),
(11123, 223, 1, 'Molden blanket'),
(11124, 1, 1, 'Shop');

-- --------------------------------------------------------

--
-- Table structure for table `foodproducts`
--

DROP TABLE IF EXISTS `foodproducts`;
CREATE TABLE `foodproducts` (
  `PRODUCT_ID` int(11) NOT NULL,
  `NAME` varchar(15) NOT NULL,
  `PRICE` double NOT NULL,
  `STOCK` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Truncate table before insert `foodproducts`
--

TRUNCATE TABLE `foodproducts`;
--
-- Dumping data for table `foodproducts`
--

INSERT INTO `foodproducts` (`PRODUCT_ID`, `NAME`, `PRICE`, `STOCK`) VALUES
(1, 'Carrot Soup', 13.3, 155),
(2, 'Lamb Burger', 13.2, 123),
(3, 'Ulmodwich', 3.5, 30),
(4, 'Slurp', 2.2, 44),
(5, 'Yellow Cheese', 3.3, 12),
(6, 'Licorice ', 44.3, 20);

-- --------------------------------------------------------

--
-- Table structure for table `loanitems`
--

DROP TABLE IF EXISTS `loanitems`;
CREATE TABLE `loanitems` (
  `ARTICLE_ID` int(11) NOT NULL,
  `PRICEDAY` int(11) DEFAULT '0',
  `NAME` varchar(10) NOT NULL,
  `USER_ID` int(11) NOT NULL,
  `LoanStatus` tinyint(4) NOT NULL,
  `RETURNDATE` datetime NOT NULL,
  `DUEDATE` datetime NOT NULL,
  `STARTDATE` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Truncate table before insert `loanitems`
--

TRUNCATE TABLE `loanitems`;
--
-- Dumping data for table `loanitems`
--

INSERT INTO `loanitems` (`ARTICLE_ID`, `PRICEDAY`, `NAME`, `USER_ID`, `LoanStatus`, `RETURNDATE`, `DUEDATE`, `STARTDATE`) VALUES
(1, 420, 'Bong', 234, 1, '2016-06-29 00:00:00', '2016-06-30 00:00:00', '2016-06-28 00:00:00'),
(2, 20, 'GUITAR', 1123, 0, '2016-08-19 00:00:00', '2016-03-15 00:00:00', '2016-08-19 00:00:00'),
(3, 34, 'DRUMS', 1123, 0, '2016-05-11 00:00:00', '2016-05-12 00:00:00', '2016-05-20 00:00:00'),
(4, 80, 'STONE', 1123, 0, '2016-05-22 00:00:00', '2016-05-03 00:00:00', '2016-05-28 00:00:00'),
(5, 80, 'STONE', 1124, 0, '2016-05-22 00:00:00', '2016-05-03 00:00:00', '2016-05-28 00:00:00'),
(6, 80, 'STONE', 1124, 0, '2016-05-22 00:00:00', '2016-05-03 00:00:00', '2016-05-28 00:00:00'),
(7, 420, 'Bong', 234, 1, '2016-06-29 00:00:00', '2016-06-30 00:00:00', '2016-06-28 00:00:00'),
(8, 45, 'Violin', 435, 0, '2016-06-29 00:00:00', '2016-06-30 00:00:00', '2016-06-28 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `location_history`
--

DROP TABLE IF EXISTS `location_history`;
CREATE TABLE `location_history` (
  `VISITSTAMP_ID` int(11) NOT NULL,
  `USER_ID` int(11) NOT NULL,
  `ACTIVITY_ID` int(11) DEFAULT NULL,
  `CAMPING` int(11) DEFAULT NULL,
  `TIME_ENTRANCE` datetime NOT NULL,
  `TIME_EXIT` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Truncate table before insert `location_history`
--

TRUNCATE TABLE `location_history`;
-- --------------------------------------------------------

--
-- Table structure for table `pincodes`
--

DROP TABLE IF EXISTS `pincodes`;
CREATE TABLE `pincodes` (
  `ID` int(11) NOT NULL,
  `CODE` varchar(4) NOT NULL,
  `TAKEN` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Truncate table before insert `pincodes`
--

TRUNCATE TABLE `pincodes`;
-- --------------------------------------------------------

--
-- Table structure for table `productstorages`
--

DROP TABLE IF EXISTS `productstorages`;
CREATE TABLE `productstorages` (
  `INSTOREQUANTITY` int(11) NOT NULL,
  `PRODUCT_ID` int(11) NOT NULL,
  `STORE_ID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Truncate table before insert `productstorages`
--

TRUNCATE TABLE `productstorages`;
--
-- Dumping data for table `productstorages`
--

INSERT INTO `productstorages` (`INSTOREQUANTITY`, `PRODUCT_ID`, `STORE_ID`) VALUES
(28, 1, 1),
(0, 2, 1),
(31, 3, 1),
(28, 5, 1),
(40, 6, 1),
(54, 1, 2),
(18, 3, 2),
(128, 5, 2);

-- --------------------------------------------------------

--
-- Table structure for table `rfids`
--

DROP TABLE IF EXISTS `rfids`;
CREATE TABLE `rfids` (
  `BRACELET_ID` varchar(25) NOT NULL,
  `STATUS` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Truncate table before insert `rfids`
--

TRUNCATE TABLE `rfids`;
--
-- Dumping data for table `rfids`
--

INSERT INTO `rfids` (`BRACELET_ID`, `STATUS`) VALUES
('2800b8532e', 'DEACTIVATED'),
('49001ebf55', 'STAND_BY'),
('5c005ca01e', 'DEACTIVATED'),
('5c005e6a62', 'DEACTIVATED'),
('7000822356', 'DEACTIVATED');

-- --------------------------------------------------------

--
-- Table structure for table `salelines`
--

DROP TABLE IF EXISTS `salelines`;
CREATE TABLE `salelines` (
  `PRODUCT_ID` int(11) NOT NULL,
  `QUANTITY` int(11) NOT NULL,
  `PAYMENT_ID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Truncate table before insert `salelines`
--

TRUNCATE TABLE `salelines`;
--
-- Dumping data for table `salelines`
--

INSERT INTO `salelines` (`PRODUCT_ID`, `QUANTITY`, `PAYMENT_ID`) VALUES
(1, 1, 12),
(1, 11, 15),
(1, 2, 16),
(1, 4, 17),
(1, 2, 20),
(2, 2, 18),
(3, 2, 11),
(3, 2, 12),
(3, 9, 13),
(3, 2, 14),
(3, 10, 15),
(3, 1, 19),
(5, 1, 12),
(5, 2, 14),
(5, 6, 15),
(5, 2, 16),
(5, 3, 18),
(6, 2, 18),
(6, 2, 21);

-- --------------------------------------------------------

--
-- Table structure for table `serpayments`
--

DROP TABLE IF EXISTS `serpayments`;
CREATE TABLE `serpayments` (
  `PAYMENT_ID` int(11) NOT NULL,
  `USER_ID` int(11) NOT NULL,
  `DATE` datetime NOT NULL,
  `TYPE` varchar(1) NOT NULL,
  `PAYSUM` double NOT NULL,
  `DESCRIPTION` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Truncate table before insert `serpayments`
--

TRUNCATE TABLE `serpayments`;
--
-- Dumping data for table `serpayments`
--

INSERT INTO `serpayments` (`PAYMENT_ID`, `USER_ID`, `DATE`, `TYPE`, `PAYSUM`, `DESCRIPTION`) VALUES
(14, 1123, '2016-05-22 16:00:00', '-', 25, 'Tent Reservation Payment. Group of 4'),
(15, 1144, '2016-05-26 07:31:51', '', 50, 'Tent Reservation Payment. Group of 2 .'),
(16, 1147, '2016-05-26 07:48:30', '', 50, 'Tent Reservation Payment. Group of 2 .'),
(17, 1148, '2016-05-26 07:51:22', '', 25, 'Tent Reservation Payment. Group of 1 .'),
(18, 1148, '2016-05-26 07:53:40', '', 25, 'Tent Reservation Payment. Group of 1 .'),
(19, 1151, '2016-05-26 07:56:54', '', 15, 'Tent Reservation Payment. Group of 1 .'),
(20, 1152, '2016-05-26 08:02:55', '', 25, 'Tent Reservation Payment. Group of 1 .'),
(21, 1136, '2016-05-26 08:06:34', '', 25, 'Tent Reservation Payment. Group of 1 .'),
(22, 1153, '2016-05-26 11:13:48', '', 50, 'Tent Reservation Payment. Group of 2 .'),
(23, 1130, '2016-05-26 11:15:36', '', 25, 'Tent Reservation Payment. Group of 1 .'),
(24, 1140, '2016-05-26 11:16:20', '', 15, 'Tent Reservation Payment. Group of 1 .'),
(28, 1125, '2016-05-28 12:52:30', '-', 55, 'Ticket Payment'),
(29, 1123, '2016-05-28 12:53:56', '-', 55, 'Ticket Payment'),
(30, 1159, '2016-05-28 02:08:21', '-', 55, 'Ticket Payment'),
(31, 1136, '2016-05-28 02:16:54', '-', 125, 'Ticket Payment'),
(32, 1158, '2016-05-28 07:53:07', '-', 55, 'Ticket Payment'),
(33, 1158, '2016-05-28 23:53:07', '-', 50, 'Tent Reservation Payment. Group of 2 .');

-- --------------------------------------------------------

--
-- Table structure for table `storepayment`
--

DROP TABLE IF EXISTS `storepayment`;
CREATE TABLE `storepayment` (
  `PAYMENT_ID` int(11) NOT NULL,
  `USER_ID` int(11) NOT NULL,
  `STORE_ID` int(11) NOT NULL,
  `TOTALPRICE` double NOT NULL,
  `PURCHASETIME` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Truncate table before insert `storepayment`
--

TRUNCATE TABLE `storepayment`;
--
-- Dumping data for table `storepayment`
--

INSERT INTO `storepayment` (`PAYMENT_ID`, `USER_ID`, `STORE_ID`, `TOTALPRICE`, `PURCHASETIME`) VALUES
(11, 1124, 2, 7, '2016-06-12 17:38:11'),
(12, 1124, 2, 23.6, '2016-06-12 17:39:30'),
(13, 1124, 2, 31.5, '2016-06-12 17:41:23'),
(14, 1124, 2, 13.6, '2016-06-12 17:52:39'),
(15, 1130, 3, 123, '2016-06-12 04:22:03'),
(16, 1127, 1, 22, '2016-06-14 04:19:03'),
(17, 1125, 1, 53.2, '2016-06-25 21:42:56'),
(18, 1125, 1, 124.9, '2016-06-25 21:51:54'),
(19, 1144, 1, 3.5, '2016-06-25 22:12:51'),
(20, 1145, 1, 26.6, '2016-06-25 22:15:41'),
(21, 1145, 1, 88.6, '2016-06-25 22:15:52');

-- --------------------------------------------------------

--
-- Table structure for table `storeperfarchive`
--

DROP TABLE IF EXISTS `storeperfarchive`;
CREATE TABLE `storeperfarchive` (
  `SAVE_ID` int(11) NOT NULL,
  `SLICETIME` datetime NOT NULL,
  `PRODNAME` varchar(15) NOT NULL,
  `PRODUCT_ID` int(11) NOT NULL,
  `STORE_ID` int(11) NOT NULL,
  `QUANTITY` int(11) NOT NULL,
  `NUMSALES` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Truncate table before insert `storeperfarchive`
--

TRUNCATE TABLE `storeperfarchive`;
--
-- Dumping data for table `storeperfarchive`
--

INSERT INTO `storeperfarchive` (`SAVE_ID`, `SLICETIME`, `PRODNAME`, `PRODUCT_ID`, `STORE_ID`, `QUANTITY`, `NUMSALES`) VALUES
(23, '2016-06-13 21:10:00', 'Carrot Soup', 1, 1, 34, 2),
(24, '2016-06-13 21:10:00', 'Carrot Soup', 1, 2, 54, 1),
(25, '2016-06-13 21:10:00', 'Ulmodwich', 3, 2, 18, 15),
(26, '2016-06-13 21:10:00', 'Yellow Cheese', 5, 1, 31, 2),
(27, '2016-06-13 21:10:00', 'Yellow Cheese', 5, 2, 128, 3),
(28, '2016-06-13 22:10:00', 'Carrot Soup', 1, 1, 34, 2),
(29, '2016-06-13 22:10:00', 'Carrot Soup', 1, 2, 54, 1),
(30, '2016-06-13 22:10:00', 'Ulmodwich', 3, 2, 18, 15),
(31, '2016-06-13 22:10:00', 'Yellow Cheese', 5, 1, 31, 2),
(32, '2016-06-13 22:10:00', 'Yellow Cheese', 5, 2, 128, 3),
(35, '2016-06-13 23:10:00', 'Carrot Soup', 1, 1, 34, 2),
(36, '2016-06-13 23:10:00', 'Carrot Soup', 1, 2, 54, 1),
(37, '2016-06-13 23:10:00', 'Ulmodwich', 3, 2, 18, 15),
(38, '2016-06-13 23:10:00', 'Yellow Cheese', 5, 1, 31, 2),
(39, '2016-06-13 23:10:00', 'Yellow Cheese', 5, 2, 128, 3),
(42, '2016-06-14 00:10:00', 'Carrot Soup', 1, 1, 34, 2),
(43, '2016-06-14 00:10:00', 'Carrot Soup', 1, 2, 54, 1),
(44, '2016-06-14 00:10:00', 'Ulmodwich', 3, 2, 18, 15),
(45, '2016-06-14 00:10:00', 'Yellow Cheese', 5, 1, 31, 2),
(46, '2016-06-14 00:10:00', 'Yellow Cheese', 5, 2, 128, 3),
(49, '2016-06-14 01:10:00', 'Carrot Soup', 1, 1, 34, 2),
(50, '2016-06-14 01:10:00', 'Carrot Soup', 1, 2, 54, 1),
(51, '2016-06-14 01:10:00', 'Ulmodwich', 3, 2, 18, 15),
(52, '2016-06-14 01:10:00', 'Yellow Cheese', 5, 1, 31, 2),
(53, '2016-06-14 01:10:00', 'Yellow Cheese', 5, 2, 128, 3);

-- --------------------------------------------------------

--
-- Stand-in structure for view `storeprodinfo`
--
DROP VIEW IF EXISTS `storeprodinfo`;
CREATE TABLE `storeprodinfo` (
`STORENAME` varchar(25)
,`PRODUCT_ID` int(11)
,`PRODNAME` varchar(15)
,`PRICE` double
,`QUANTITY` int(11)
);

-- --------------------------------------------------------

--
-- Table structure for table `stores`
--

DROP TABLE IF EXISTS `stores`;
CREATE TABLE `stores` (
  `STORE_ID` int(11) NOT NULL,
  `STORENAME` varchar(25) NOT NULL,
  `DESCRIPTION` varchar(400) DEFAULT NULL,
  `ACCESSCODE` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Truncate table before insert `stores`
--

TRUNCATE TABLE `stores`;
--
-- Dumping data for table `stores`
--

INSERT INTO `stores` (`STORE_ID`, `STORENAME`, `DESCRIPTION`, `ACCESSCODE`) VALUES
(1, 'Pho Phuck Ly', 'Don''t lieeee! It''s a pho phuc ly. Best food eva', 'PPL'),
(2, 'MOES', 'No Homers allowed', 'NOHOMERS!'),
(3, 'BravoPanCakes', 'Johnny Bravo''s pretty pancakes will make you go monkey with him', 'YeahWhatever'),
(4, 'Test', 'Testtest', 'tttest'),
(5, 'BobPlace', 'Pururu', 'Bob');

-- --------------------------------------------------------

--
-- Table structure for table `tentleaders`
--

DROP TABLE IF EXISTS `tentleaders`;
CREATE TABLE `tentleaders` (
  `CAMPING_ID` int(11) NOT NULL,
  `USER_ID` int(11) NOT NULL,
  `ARRIVALDATE` date NOT NULL,
  `LEAVEDATE` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Truncate table before insert `tentleaders`
--

TRUNCATE TABLE `tentleaders`;
--
-- Dumping data for table `tentleaders`
--

INSERT INTO `tentleaders` (`CAMPING_ID`, `USER_ID`, `ARRIVALDATE`, `LEAVEDATE`) VALUES
(10001, 1123, '0000-00-00', '0000-00-00'),
(11112, 1144, '0000-00-00', '0000-00-00'),
(11113, 1147, '0000-00-00', '0000-00-00'),
(11114, 1148, '0000-00-00', '0000-00-00'),
(11115, 1148, '0000-00-00', '0000-00-00'),
(11116, 1151, '0000-00-00', '0000-00-00'),
(11117, 1152, '0000-00-00', '0000-00-00'),
(11118, 1136, '0000-00-00', '0000-00-00'),
(11119, 1153, '0000-00-00', '0000-00-00'),
(11120, 1130, '0000-00-00', '0000-00-00'),
(11121, 1140, '0000-00-00', '0000-00-00'),
(11122, 1158, '0000-00-00', '0000-00-00');

-- --------------------------------------------------------

--
-- Stand-in structure for view `tentleadersextra_view`
--
DROP VIEW IF EXISTS `tentleadersextra_view`;
CREATE TABLE `tentleadersextra_view` (
`USER_ID` int(11)
,`CAMPING_ID` int(11)
,`FNAME` varchar(25)
,`LNAME` varchar(25)
);

-- --------------------------------------------------------

--
-- Table structure for table `visitors`
--

DROP TABLE IF EXISTS `visitors`;
CREATE TABLE `visitors` (
  `USER_ID` int(11) NOT NULL,
  `SECCODE` varchar(4) DEFAULT NULL,
  `PASSWORD` varchar(25) NOT NULL,
  `EMAIL` varchar(25) NOT NULL,
  `FNAME` varchar(25) NOT NULL,
  `LNAME` varchar(25) NOT NULL,
  `DOB` date NOT NULL,
  `REGDATE` date DEFAULT NULL,
  `BALANCE` double NOT NULL DEFAULT '0',
  `PAID` tinyint(1) NOT NULL DEFAULT '0',
  `BRACELET_ID` varchar(25) DEFAULT NULL,
  `CAMPING_ID` int(11) DEFAULT NULL,
  `STATUS` int(11) DEFAULT '0',
  `ADDRESS` varchar(150) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Truncate table before insert `visitors`
--

TRUNCATE TABLE `visitors`;
--
-- Dumping data for table `visitors`
--

INSERT INTO `visitors` (`USER_ID`, `SECCODE`, `PASSWORD`, `EMAIL`, `FNAME`, `LNAME`, `DOB`, `REGDATE`, `BALANCE`, `PAID`, `BRACELET_ID`, `CAMPING_ID`, `STATUS`, `ADDRESS`) VALUES
(1123, '4CU2', '123123', 'karl@karl.com', 'KARL', 'KARLSON', '1970-04-08', NULL, 45, 1, '5c005ca01e', 10001, 0, NULL),
(1124, 'FU4M', 'rarar', 'rar@rar.rar', 'Rar', 'Raaaar', '1923-05-12', NULL, 86.4, 0, '49001ebf55', 10001, 0, NULL),
(1125, 'KARL', 'abc', 'abc@abc.abc', 'Gertrude', 'Fury', '1907-07-07', NULL, 166.9, 1, '2800b8532e', 10001, 0, NULL),
(1126, 'GUGU', '123@ada', '123@ada', '123@ada', '123@ada', '2016-05-04', '2016-05-04', 0, 0, NULL, 10001, 0, NULL),
(1127, '', '123', 'gs@gs.ss', 'george', 'stevenson', '0000-00-00', '0000-00-00', 0, 0, NULL, NULL, 0, 'asdaaa'),
(1130, NULL, 'purpurpur@pa', 'purpurpur@pa', 'purpurpur@pa', 'purpurpur@pa', '2019-01-03', '2016-05-14', 0, 0, NULL, 11120, 0, 'purpurpur@pa,v,purpurpur@pa,purpurpur@pa'),
(1131, NULL, 'sjdasklfall@a', 'sjdasklfall@a', 'sjdasklfall@a', 'sjdasklfall@a', '2018-01-30', '2016-05-14', 0, 0, NULL, NULL, 0, 'Novogireevskaya ul.,Moscow,Netherlands,111394'),
(1132, NULL, 'sjdasklfall!12@asda', 'sjdasklfall!12@asda', 'v', 'sjdasklfall!12@asda', '0000-00-00', '2016-05-14', 0, 0, NULL, NULL, 0, 'sjdasklfall!12@asda,sjdasklfall!12@asda12,1,123'),
(1133, NULL, 'qqq@qq', 'qqq@qq', 'qqq@qq', 'qqq@qq', '2016-01-01', '2016-05-14', 0, 0, NULL, NULL, 0, 'qqq@qq,qqq@qq,qqq@qq,qqq@qq'),
(1134, NULL, 'sjdasklfall@sad', 'sjdasklfall@sad', 'sjdasklfall@sad', 'sjdasklfall@sad', '2016-02-01', '2016-05-14', 0, 0, NULL, NULL, 0, 'sjdasklfall@sad,sjdasklfall@sad,sjdasklfall@sad,sjdasklfall@sad'),
(1135, NULL, 'sjdasklfall@qqq', 'sjdasklfall@qqq', 'sjdasklfall@qqq', 'sjdasklfall@qqq', '0123-12-21', '2016-05-14', 0, 0, NULL, NULL, 0, 'sjdasklfall@qqqq,sjdasklfall@qqq,sjdasklfall@qqq,sjdasklfall@qqq'),
(1136, NULL, 'caca@caca', 'caca@caca', 'caca@caca', 'caca@caca', '2016-05-02', '2016-05-15', 0, 1, NULL, 11118, 0, 'caca@caca,caca@caca,caca@caca,caca@caca'),
(1137, NULL, 'cacaasda@caca', 'cacaasda@caca', 'cacaasda@caca', 'cacaasda@caca', '2016-05-24', '2016-05-15', 0, 0, NULL, NULL, 0, 'cacaasda@caca,cacaasda@caca,cacaasda@caca,cacaasda@caca'),
(1138, NULL, 'asda@adad', 'asda@adad', 'asda@adad', 'asda@adad', '2016-05-25', '2016-05-16', 0, 0, NULL, 11122, 0, 'asda@adad,asda@adad,asda@adad,asda@adad'),
(1139, NULL, 'caaasdaca@caca', 'caaasdaca@caca', 'caaasdaca@caca', 'caaasdaca@caca', '2016-01-06', '2016-05-16', 0, 0, NULL, NULL, 0, 'caaasdaca@caca,caaasdaca@caca,caaasdaca@caca,caaasdaca@caca'),
(1140, NULL, 'aaa', 'aaaa@aaaaa.aa', 'Aaa Aaovich', 'Aaaovsky', '1969-01-08', '2016-05-16', 0, 0, NULL, 11121, 0, 'Astreet,2,3a,Atown,Acountry,Azip'),
(1141, NULL, '', '', '', '', '0000-00-00', '2016-05-16', 0, 0, NULL, NULL, 0, ',,,'),
(1142, NULL, 'asda@adadASDASDSA', 'asda@adadASDASDSA', 'BOB', 'PETERS', '2014-06-13', '2016-05-17', 0, 0, NULL, NULL, 0, 'fAR STREEETT,AS,ADS,AD'),
(1143, NULL, '123', 'asdd@dd', 'asf', 'asf', '2016-05-17', '2016-05-24', 0, 0, NULL, NULL, 0, 'a,s,x,z'),
(1144, NULL, 'curry', 'curry@curry.curry', 'Alice', 'Curry', '1986-01-26', '2016-05-26', 196.5, 1, '7000822356', 11112, 0, NULL),
(1145, NULL, 'pepe', 'pepe@pe.pe', 'Penelopa', 'Pe', '1993-02-10', '2016-05-04', 5859.8, 1, '5c005e6a62', 11112, 0, NULL),
(1146, 'RTYE', '123', 'fred@dead.com', 'Fred', 'Dead', '1816-02-02', '2016-05-26', 0, 0, NULL, 11113, 0, NULL),
(1147, 'Deac', '123', 'jo@jo.jo', 'Josaphine', 'Joplin', '2016-05-11', NULL, 73, 0, NULL, 11113, 0, NULL),
(1148, 'assd', 'issd', 'issd@issd.is', 'IS', 'SD', '2016-02-24', NULL, 197, 0, NULL, 11115, 0, NULL),
(1151, NULL, 'nic', 'cb@cb.fr', 'Carla', 'Bruni', '1967-12-23', NULL, 985, 0, NULL, 11116, 0, NULL),
(1152, '2222', 'sos', 'sos@sos.sos', 'Soso', 'Sosov', '2016-05-11', NULL, 5, 0, NULL, 11117, 0, NULL),
(1153, 'NICO', 'nico', 'nico@nico', 'Nicolas', 'Sarkozy', '1958-01-28', '2016-05-04', 20, 0, NULL, 11119, 0, NULL),
(1154, '4tfa', '123', 'car@car.com', 'Mad', 'Max', '1968-12-02', '2016-05-03', 5000, 0, NULL, 11119, 0, NULL),
(1157, NULL, '123', 'b.vangestel@asdasdasda.nl', 'Bert', 'van Gestel', '2016-05-11', '2016-05-27', 0, 0, NULL, NULL, 0, '76,Eindhoven,Netherlands,5612 JD'),
(1158, NULL, '123', 'sd@ds', 'sd', 'ds', '2016-05-11', '2016-05-28', 145, 1, NULL, 11122, 0, 's,s,s,s'),
(1159, NULL, '123', 'rita@rt.com', 'Rita Drita', 'Van Dida', '2016-05-12', '2016-05-28', 345, 1, NULL, NULL, 0, 'Sdada,Vzsaa,JBVA,LLK'),
(1160, NULL, 'asd', 'bear@boar.com', 'Bear', 'Boar', '2016-05-04', '2016-05-29', 0, 0, NULL, NULL, 0, 'B,B,B,B');

-- --------------------------------------------------------

--
-- Structure for view `activityplaces_view`
--
DROP TABLE IF EXISTS `activityplaces_view`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `activityplaces_view`  AS  select `a`.`ACTIVITY_ID` AS `ACTIVITY_ID`,`a`.`TOTALPLACES` AS `TOTALPLACES`,floor((`a`.`TOTALPLACES` / 2)) AS `TORESPLCS`,count(`ar`.`USER_ID`) AS `RESERVEDPLACES` from (`activities` `a` join `activityreservations` `ar` on((`a`.`ACTIVITY_ID` = `ar`.`ACTIVITY_ID`))) group by `a`.`ACTIVITY_ID` ;

-- --------------------------------------------------------

--
-- Structure for view `storeprodinfo`
--
DROP TABLE IF EXISTS `storeprodinfo`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `storeprodinfo`  AS  select `st`.`STORENAME` AS `STORENAME`,`ps`.`PRODUCT_ID` AS `PRODUCT_ID`,`fp`.`NAME` AS `PRODNAME`,`fp`.`PRICE` AS `PRICE`,`ps`.`INSTOREQUANTITY` AS `QUANTITY` from ((`productstorages` `ps` join `foodproducts` `fp` on((`ps`.`PRODUCT_ID` = `fp`.`PRODUCT_ID`))) join `stores` `st` on((`st`.`STORE_ID` = `ps`.`STORE_ID`))) order by `fp`.`NAME` ;

-- --------------------------------------------------------

--
-- Structure for view `tentleadersextra_view`
--
DROP TABLE IF EXISTS `tentleadersextra_view`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `tentleadersextra_view`  AS  select `t`.`USER_ID` AS `USER_ID`,`t`.`CAMPING_ID` AS `CAMPING_ID`,`v`.`FNAME` AS `FNAME`,`v`.`LNAME` AS `LNAME` from (`tentleaders` `t` join `visitors` `v` on((`t`.`USER_ID` = `v`.`USER_ID`))) ;

--
-- Indexes for dumped tables
--

DELIMITER $$
--
-- Events
--
DROP EVENT `SALESSLICEREVENT`$$
CREATE EVENT `SALESSLICEREVENT` ON SCHEDULE EVERY 1 HOUR STARTS '2016-06-13 20:10:00' ENDS '2016-06-15 04:00:00' ON COMPLETION PRESERVE ENABLE COMMENT 'ARCHIVES INFO ABOUT THE SALES AND STORAGES PER STORE' DO INSERT INTO storeperfarchive (SLICETIME, PRODNAME, PRODUCT_ID, QUANTITY, NUMSALES, STORE_ID) 
	
     SELECT NOW(), fp.NAME, ps.PRODUCT_ID, ps.INSTOREQUANTITY, SUM(sl.QUANTITY) AS NUMSOLD, ps.STORE_ID 
     FROM foodproducts fp
     	join productstorages ps 
        	on fp.PRODUCT_ID = ps.PRODUCT_ID
     	left outer join storepayment sp 
        	on ps.STORE_ID=sp.STORE_ID 
     	join salelines sl 
     		on sp.PAYMENT_ID = sl.PAYMENT_ID and sl.PRODUCT_ID = ps.PRODUCT_ID 
     GROUP BY ps.PRODUCT_ID, ps.STORE_ID$$

DELIMITER ;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
