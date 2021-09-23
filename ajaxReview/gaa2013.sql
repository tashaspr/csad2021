-- phpMyAdmin SQL Dump
-- version 4.7.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Sep 20, 2018 at 03:12 PM
-- Server version: 10.1.25-MariaDB
-- PHP Version: 5.6.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `gaa2013`
--
create database `gaa2013`;
use `gaa2013`;


-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(11) NOT NULL,
  `description` varchar(50) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `description`) VALUES
(1, 'Ulster'),
(2, 'Leinster'),
(3, 'Munster'),
(4, 'Connacht'),
(5, 'Qualifier'),
(6, 'Quarter Final'),
(7, 'Semi Final'),
(8, 'Final');

-- --------------------------------------------------------

--
-- Table structure for table `games`
--

CREATE TABLE `games` (
  `gameno` int(11) NOT NULL,
  `gameweek` int(11) NOT NULL,
  `category` int(11) NOT NULL,
  `datetime` datetime NOT NULL,
  `team1` varchar(50) NOT NULL,
  `team2` varchar(50) NOT NULL,
  `team1gls` int(11) NOT NULL,
  `team1pts` int(11) NOT NULL,
  `team2gls` int(11) NOT NULL,
  `team2pts` int(11) NOT NULL,
  `result` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `games`
--

INSERT INTO `games` (`gameno`, `gameweek`, `category`, `datetime`, `team1`, `team2`, `team1gls`, `team1pts`, `team2gls`, `team2pts`, `result`) VALUES
(101, 1, 1, '2013-05-19 14:00:00', 'Cavan', 'Armagh', 1, 15, 1, 11, 1),
(201, 1, 2, '2013-05-19 15:30:00', 'Westmeath', 'Carlow', 2, 15, 1, 10, 1),
(401, 1, 4, '2013-05-19 16:00:00', 'Galway', 'Mayo', 0, 11, 4, 16, 2),
(102, 2, 1, '2013-05-26 16:00:00', 'Donegal', 'Tyrone', 2, 10, 0, 10, 1),
(202, 2, 2, '2013-05-26 15:00:00', 'Laois', 'Louth', 1, 6, 1, 16, 2),
(203, 2, 2, '2013-05-26 15:30:00', 'Wicklow', 'Longford', 1, 15, 0, 16, 1),
(301, 2, 3, '2013-05-25 19:00:00', 'Limerick', 'Cork', 0, 8, 3, 17, 2),
(302, 2, 3, '2013-05-26 14:00:00', 'Kerry', 'Tipperary', 2, 19, 0, 8, 1),
(402, 2, 4, '2013-05-26 14:30:00', 'London', 'Sligo', 1, 12, 0, 14, 1),
(103, 3, 1, '2013-06-02 14:00:00', 'Derry', 'Down', 1, 15, 2, 17, 2),
(204, 3, 2, '2013-06-01 17:00:00', 'Offaly', 'Kildare', 1, 12, 0, 19, 2),
(104, 4, 1, '2013-06-09 15:30:00', 'Antrim', 'Monaghan', 0, 0, 0, 0, 2),
(105, 5, 1, '2013-06-16 14:00:00', 'Fermanagh', 'Cavan', 0, 11, 0, 13, 2),
(205, 3, 2, '2013-06-01 19:00:00', 'Dublin', 'Westmeath', 1, 22, 0, 9, 1),
(403, 5, 4, '2013-06-16 16:00:00', 'Roscommon', 'Mayo', 0, 9, 0, 21, 2),
(206, 4, 2, '2013-06-09 15:30:00', 'Louth', 'Wexford', 0, 0, 0, 0, 2),
(207, 5, 2, '2013-06-15 19:00:00', 'Wicklow', 'Meath', 1, 12, 1, 17, 2),
(303, 3, 3, '2013-06-01 19:00:00', 'Kerry', 'Waterford', 4, 21, 1, 4, 1),
(304, 5, 3, '2013-06-16 15:30:00', 'Clare', 'Cork', 1, 11, 1, 20, 2),
(404, 6, 4, '2013-06-23 15:30:00', 'Leitrim', 'London', 0, 13, 2, 7, 3),
(106, 6, 1, '2013-06-23 14:00:00', 'Donegal', 'Down', 0, 12, 0, 9, 1),
(208, 7, 2, '2013-06-30 16:00:00', 'Dublin', 'Kildare', 4, 16, 1, 9, 1),
(107, 7, 1, '2013-06-29 19:00:00', 'Monaghan', 'Cavan', 1, 10, 0, 12, 1),
(305, 8, 3, '2013-07-07 14:00:00', 'Kerry', 'Cork', 1, 16, 0, 17, 1),
(501, 7, 5, '2013-06-28 19:45:00', 'Carlow', 'Laois', 0, 12, 3, 13, 2),
(502, 7, 5, '2013-06-29 15:00:00', 'Offaly', 'Tyrone', 0, 8, 1, 27, 2),
(503, 7, 5, '2013-06-29 15:00:00', 'Louth', 'Antrim', 1, 17, 1, 11, 1),
(504, 7, 5, '2013-06-29 15:00:00', 'Westmeath', 'Fermanagh', 1, 15, 3, 10, 2),
(505, 7, 5, '2013-06-29 19:00:00', 'Longford', 'Limerick', 2, 14, 0, 9, 1),
(506, 7, 5, '2013-06-29 19:00:00', 'Galway', 'Tipperary', 1, 12, 0, 11, 1),
(507, 7, 5, '2013-06-30 15:00:00', 'Armagh', 'Wicklow', 2, 21, 0, 2, 1),
(508, 7, 5, '2013-06-30 17:00:00', 'Derry', 'Sligo', 0, 15, 0, 8, 1),
(209, 7, 2, '2013-06-30 14:00:00', 'Meath', 'Wexford', 0, 18, 0, 13, 1),
(405, 7, 4, '2013-06-30 15:40:00', 'London', 'Leitrim', 2, 11, 1, 14, 1),
(509, 8, 5, '2013-07-06 14:30:00', 'Galway', 'Waterford', 1, 12, 0, 14, 1),
(510, 8, 5, '2013-07-06 17:00:00', 'Clare', 'Laois', 0, 10, 3, 17, 2),
(511, 8, 5, '2013-07-06 17:00:00', 'Derry', 'Down', 0, 13, 1, 5, 1),
(512, 8, 5, '2013-07-06 18:00:00', 'Roscommon', 'Tyrone', 1, 7, 0, 12, 2),
(513, 9, 5, '2013-07-13 19:00:00', 'Longford', 'Wexford', 0, 16, 2, 15, 2),
(514, 9, 5, '2013-07-13 17:00:00', 'Leitrim', 'Armagh', 0, 10, 8, 13, 2),
(515, 9, 5, '2013-07-13 19:00:00', 'Cavan', 'Fermanagh', 1, 14, 0, 10, 1),
(516, 9, 5, '2013-07-13 19:00:00', 'Kildare', 'Louth', 1, 19, 0, 15, 1),
(108, 10, 1, '2013-07-21 16:00:00', 'Monaghan', 'Donegal', 0, 13, 0, 7, 1),
(210, 9, 2, '2013-07-14 14:00:00', 'Dublin', 'Meath', 2, 15, 0, 14, 1),
(406, 10, 4, '2013-07-21 14:00:00', 'Mayo', 'London', 5, 11, 0, 10, 1),
(517, 10, 5, '2013-07-20 17:00:00', 'Galway', 'Armagh', 1, 11, 0, 9, 1),
(518, 10, 5, '2013-07-20 19:00:00', 'Wexford', 'Laois', 2, 8, 0, 16, 2),
(519, 10, 5, '2013-07-20 19:00:00', 'Kildare', 'Tyrone', 0, 12, 1, 11, 2),
(520, 10, 5, '2013-07-20 17:00:00', 'Derry', 'Cavan', 0, 20, 1, 22, 2),
(521, 11, 5, '2013-07-27 17:00:00', 'Cork', 'Galway', 1, 17, 1, 16, 1),
(522, 11, 5, '2013-07-27 19:00:00', 'Meath', 'Tyrone', 2, 9, 0, 17, 2),
(523, 11, 5, '2013-07-27 15:00:00', 'London', 'Cavan', 1, 7, 1, 18, 2),
(524, 11, 5, '2013-07-27 17:00:00', 'Donegal', 'Laois', 0, 14, 0, 8, 1),
(601, 12, 6, '2013-08-03 17:00:00', 'Monaghan', 'Tyrone', 0, 12, 0, 14, 2),
(602, 12, 6, '2013-08-03 19:00:00', 'Dublin', 'Cork', 1, 16, 0, 14, 1),
(603, 12, 6, '2013-08-04 14:00:00', 'Kerry', 'Cavan', 0, 15, 0, 9, 1),
(604, 12, 6, '2013-08-04 16:00:00', 'Mayo', 'Donegal', 4, 17, 1, 10, 1),
(701, 13, 7, '2013-08-25 15:30:00', 'Mayo', 'Tyrone', 1, 16, 0, 13, 1),
(702, 14, 7, '2013-09-01 15:30:00', 'Kerry', 'Dublin', 3, 11, 3, 18, 2),
(801, 15, 8, '2013-09-22 15:30:00', 'Dublin', 'Mayo', 2, 12, 1, 14, 1);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `cookieid` int(11) NOT NULL,
  `username` varchar(30) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(15) NOT NULL,
  `teamname` varchar(50) NOT NULL,
  `name` varchar(50) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `cookieid`, `username`, `email`, `password`, `teamname`, `name`) VALUES
(1, 123456, 'Xavi', 'xavi@lyit.ie', 'letmein', '', 'Xavi Hernandez i Creus'),
(2, 483612, 'you', 'you@lyit.ie', 'letmein', '', 'Your Name');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
