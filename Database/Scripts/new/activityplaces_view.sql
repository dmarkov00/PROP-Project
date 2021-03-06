-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Jun 26, 2016 at 12:59 PM
-- Server version: 10.1.9-MariaDB
-- PHP Version: 5.6.15

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `propdbtest`
--

-- --------------------------------------------------------

--
-- Structure for view `activityplaces_view`
--

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `activityplaces_view`  AS  select `a`.`ACTIVITY_ID` AS `ACTIVITY_ID`,`a`.`TOTALPLACES` AS `TOTALPLACES`,floor((`a`.`TOTALPLACES` / 2)) AS `TORESPLCS`,count(`ar`.`USER_ID`) AS `RESERVEDPLACES` from (`activities` `a` join `activityreservations` `ar` on((`a`.`ACTIVITY_ID` = `ar`.`ACTIVITY_ID`))) group by `a`.`ACTIVITY_ID` ;

--
-- VIEW  `activityplaces_view`
-- Data: None
--


/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
