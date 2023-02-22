-- phpMyAdmin SQL Dump
-- version 4.0.4
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Jun 23, 2021 at 07:18 PM
-- Server version: 5.6.12-log
-- PHP Version: 5.4.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `kcausda_notice`
--
CREATE DATABASE IF NOT EXISTS `kcausda_notice` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `kcausda_notice`;

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE IF NOT EXISTS `admin` (
  `admin_id` int(11) NOT NULL AUTO_INCREMENT,
  `user` varchar(50) NOT NULL,
  `pass` varchar(50) NOT NULL,
  PRIMARY KEY (`admin_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`admin_id`, `user`, `pass`) VALUES
(1, 'admin@gmail.com', '123');

-- --------------------------------------------------------

--
-- Table structure for table `chat`
--

CREATE TABLE IF NOT EXISTS `chat` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(40) CHARACTER SET latin1 DEFAULT NULL,
  `message` char(255) CHARACTER SET latin1 NOT NULL,
  `created_on` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 AUTO_INCREMENT=114 ;

--
-- Dumping data for table `chat`
--

INSERT INTO `chat` (`id`, `name`, `message`, `created_on`) VALUES
(104, 'sushantpaudel@gmail.com', 'Hello after 4days of break', '2020-01-18 14:09:24'),
(105, 'sushantpaudel@gmail.com', 'Australia in a relief now', '2020-01-18 14:10:38'),
(106, 'rogy@gmail.com', '][[', '2021-06-16 18:38:06'),
(107, 'rogy@gmail.com', '][]', '2021-06-16 18:38:09'),
(108, 'rogy@gmail.com', 'jkk', '2021-06-16 18:38:21'),
(109, 'rogy@gmail.com', 'p[[', '2021-06-16 18:38:37'),
(110, 'rogy@gmail.com', 'lk', '2021-06-16 18:51:22'),
(111, 'rogy@gmail.com', 'lk', '2021-06-16 18:51:22'),
(112, 'rogy@gmail.com', 'yuyu', '2021-06-16 18:51:52'),
(113, 'rogy@gmail.com', 'uiui', '2021-06-16 18:51:55');

-- --------------------------------------------------------

--
-- Table structure for table `contact`
--

CREATE TABLE IF NOT EXISTS `contact` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(200) NOT NULL,
  `email` varchar(200) NOT NULL,
  `message` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `notice`
--

CREATE TABLE IF NOT EXISTS `notice` (
  `notice_id` int(11) NOT NULL AUTO_INCREMENT,
  `user` varchar(50) NOT NULL,
  `subject` varchar(100) NOT NULL,
  `Description` text NOT NULL,
  `Date` datetime NOT NULL,
  PRIMARY KEY (`notice_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=35 ;

--
-- Dumping data for table `notice`
--

INSERT INTO `notice` (`notice_id`, `user`, `subject`, `Description`, `Date`) VALUES
(23, 'rogy@gmail.com', 'kesho', 'we meet', '2021-06-23 21:47:44'),
(31, 'rogy@gmail.com', 'kesho', 'we meet', '2021-06-23 21:47:53');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE IF NOT EXISTS `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` char(40) NOT NULL,
  `email` varchar(40) NOT NULL,
  `pass` varchar(40) NOT NULL,
  `gender` varchar(40) NOT NULL,
  `mobile` bigint(15) NOT NULL,
  `image` varchar(50) NOT NULL,
  `regid` varchar(20) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `email` (`email`),
  FULLTEXT KEY `name` (`name`),
  FULLTEXT KEY `name_2` (`name`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=79 ;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `name`, `email`, `pass`, `gender`, `mobile`, `image`, `regid`) VALUES
(65, 'Rogy', 'rogy@gmail.com', 'a01610228fe998f515a72dd730294d87', 'f', 9869986741, '', '2020-01-04 20:54:13');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
