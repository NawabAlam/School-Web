-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Mar 15, 2023 at 12:38 PM
-- Server version: 5.7.36
-- PHP Version: 7.4.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `jss_database`
--

-- --------------------------------------------------------

--
-- Table structure for table `registration`
--

DROP TABLE IF EXISTS `registration`;
CREATE TABLE IF NOT EXISTS `registration` (
  `full_name` varchar(255) DEFAULT NULL,
  `Email` varchar(255) NOT NULL,
  `father` varchar(255) DEFAULT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`username`),
  UNIQUE KEY `Email` (`Email`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `registration`
--

INSERT INTO `registration` (`full_name`, `Email`, `father`, `username`, `password`) VALUES
('Ram Bharosh', 'bharoshdas31@gmail.com', '', 'bharoshd12', '12345'),
('Nawab Alam', 'nawabmohammad83@gmail.com', 'Mohd. Aslam', 'Nahunter', 'doodle787'),
('Arman', 'arman2@gmail.com', 'Arman', 'arman12', '12345'),
('Mausham', 'mausham32@gmail.com', 'Raza', 'mausham12', '12345'),
('Shubhadip Chandra', 'shubha01@gmail.com', 'Pradip Chandra', 'shubho12', '12345'),
('name', 'email123@gmail.com', 'fathers', 'name1', '12345'),
('ram', 'bharoshdas30@gmail.com', 'Dayal', 'Bharoshd123', '12345678');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
