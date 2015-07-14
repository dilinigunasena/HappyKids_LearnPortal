-- phpMyAdmin SQL Dump
-- version 4.1.14
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Dec 19, 2014 at 05:17 PM
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
-- Table structure for table `teacher_info`
--

CREATE TABLE IF NOT EXISTS `teacher_info` (
  `teacer_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'PK',
  `teacher_name` varchar(150) NOT NULL,
  `teacher_email` varchar(255) NOT NULL,
  `teacher_gender` varchar(10) NOT NULL,
  `teacher_password` varchar(255) NOT NULL,
  `teacher_logintime` datetime NOT NULL,
  PRIMARY KEY (`teacer_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=ascii AUTO_INCREMENT=4 ;

--
-- Dumping data for table `teacher_info`
--

INSERT INTO `teacher_info` (`teacer_id`, `teacher_name`, `teacher_email`, `teacher_gender`, `teacher_password`, `teacher_logintime`) VALUES
(1, 'Namali', 'Namali@gmail.com', 'female', '123', '2014-12-19 02:14:02'),
(2, 'Amunugama', 'amunu@gmail.com', 'male', '890', '2014-12-19 09:31:25'),
(3, 'Wijayasingha', 'wjya@gmail.com', 'male', '345', '2014-12-19 09:46:35');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
