-- phpMyAdmin SQL Dump
-- version 4.1.14
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Oct 03, 2017 at 04:05 AM
-- Server version: 5.6.17
-- PHP Version: 5.5.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `kartsburgerdb`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_burgers`
--

CREATE TABLE IF NOT EXISTS `tbl_burgers` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `Title` varchar(20) NOT NULL,
  `Desc` varchar(100) NOT NULL,
  `Price` varchar(30) NOT NULL,
  `ImagePath` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `tbl_burgers`
--

INSERT INTO `tbl_burgers` (`id`, `Title`, `Desc`, `Price`, `ImagePath`) VALUES
(1, 'Burger10', 'Best Burger', '30.0', 'http://192.168.1.11/kartsburgerdb/images/1.jpg'),
(2, 'ASD', 'sddf', '60', 'http://192.168.1.11/kartsburgerdb/images/2.png');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_customers`
--

CREATE TABLE IF NOT EXISTS `tbl_customers` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `transactionId` varchar(2000) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `tbl_customers`
--

INSERT INTO `tbl_customers` (`id`, `transactionId`) VALUES
(1, 'T-0001'),
(3, 'T-2'),
(4, 'T-3');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_drinks`
--

CREATE TABLE IF NOT EXISTS `tbl_drinks` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `Title` varchar(20) NOT NULL,
  `Desc` varchar(100) NOT NULL,
  `Price` varchar(30) NOT NULL,
  `ImagePath` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `tbl_drinks`
--

INSERT INTO `tbl_drinks` (`id`, `Title`, `Desc`, `Price`, `ImagePath`) VALUES
(1, 'Drinks1', 'Good drinks', '90', 'http://192.168.1.11/kartsburgerdb/images/4.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_orders`
--

CREATE TABLE IF NOT EXISTS `tbl_orders` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `OrderCode` varchar(20) NOT NULL,
  `TableNo` int(11) NOT NULL,
  `FoodName` text NOT NULL,
  `FoodQty` varchar(200) NOT NULL,
  `FoodPrice` varchar(200) NOT NULL,
  `OrderTotal` float NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_pastas`
--

CREATE TABLE IF NOT EXISTS `tbl_pastas` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `Title` varchar(20) NOT NULL,
  `Desc` varchar(100) NOT NULL,
  `Price` varchar(30) NOT NULL,
  `ImagePath` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `tbl_pastas`
--

INSERT INTO `tbl_pastas` (`id`, `Title`, `Desc`, `Price`, `ImagePath`) VALUES
(1, 'Pasta1', 'Good pasta', '50', 'http://192.168.1.11/kartsburgerdb/images/3.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_users`
--

CREATE TABLE IF NOT EXISTS `tbl_users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `Username` varchar(20) NOT NULL,
  `Password` varchar(32) NOT NULL,
  `FirstName` varchar(20) NOT NULL,
  `MiddleName` varchar(15) NOT NULL,
  `LastName` varchar(20) NOT NULL,
  `City` varchar(10) NOT NULL,
  `Province` varchar(20) NOT NULL,
  `ContactNo` varchar(12) NOT NULL,
  `Email` varchar(20) NOT NULL,
  `KartsCredits` float NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `tbl_users`
--

INSERT INTO `tbl_users` (`id`, `Username`, `Password`, `FirstName`, `MiddleName`, `LastName`, `City`, `Province`, `ContactNo`, `Email`, `KartsCredits`) VALUES
(1, 'adminjrc', '123456', 'John Reinel', 'Salaveria', 'Caluag', 'Malolos', 'Bulacan', '0979983866', 'johnrenielcaluag1000', -104),
(2, 'jrcandroid', '123456', 'John Reinel', 'Salaveria', 'Caluag', 'Malolos', 'Bulacan', '09354675163', 'johnrenielcaluag1009', -2004);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
