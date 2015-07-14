-- phpMyAdmin SQL Dump
-- version 4.1.14
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Dec 19, 2014 at 05:18 PM
-- Server version: 5.6.17
-- PHP Version: 5.5.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `happykids`
--

-- --------------------------------------------------------

--
-- Table structure for table `child_info`
--

CREATE TABLE IF NOT EXISTS `child_info` (
  `child_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'pk',
  `parent_name` varchar(255) NOT NULL COMMENT 'name of parent/guardian',
  `parent_email` varchar(255) NOT NULL,
  `child_name` varchar(255) NOT NULL,
  `child_age` int(2) unsigned NOT NULL COMMENT 'child`s age',
  `child_gender` varchar(10) NOT NULL COMMENT 'child`s gender',
  `password` varchar(255) NOT NULL,
  `login_time` datetime NOT NULL COMMENT 'login time to system',
  PRIMARY KEY (`child_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=ascii COMMENT='child registration table' AUTO_INCREMENT=5 ;

--
-- Dumping data for table `child_info`
--

INSERT INTO `child_info` (`child_id`, `parent_name`, `parent_email`, `child_name`, `child_age`, `child_gender`, `password`, `login_time`) VALUES
(2, 'Malani', 'malani@gmail.com', 'Dilini', 5, 'female', '123', '2014-12-19 04:40:25'),
(3, 'A.K.Gunasena', 'akgattanagoda@yahoo.com', 'Eranda', 4, 'male', '456', '2014-12-19 04:41:52'),
(4, 'M sirisena', 'msiri@gmail.com', 'namal', 5, 'male', '123', '2014-12-19 09:30:47');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
