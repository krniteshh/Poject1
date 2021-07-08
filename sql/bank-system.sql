-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Generation Time: Jul07, 2021 at 005:25 PM
-- Server version: 5.7.31
-- PHP Version: 7.3.21

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";



--
-- Database: `bank-system`
--

-- --------------------------------------------------------

--
-- Table structure for table `transaction`
--

DROP TABLE IF EXISTS `transaction`;
CREATE TABLE IF NOT EXISTS `transaction` (
  `sno` int(3) NOT NULL AUTO_INCREMENT,
  `sender` text NOT NULL,
  `receiver` text NOT NULL,
  `balance` int(8) NOT NULL,
  `datetime` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`sno`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `transaction`
--

INSERT INTO `transaction` (`sno`, `sender`, `receiver`, `balance`, `datetime`) VALUES
(1, 'nitesh ', 'sanjiv', 7000, '2021-07-19 17:48:58'),
(2, 'sanjiv', 'nitesh ', 6000, '2021-07-19 17:45:20');


-- --------------------------------------------------------

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` int(3) NOT NULL AUTO_INCREMENT,
  `name` text NOT NULL,
  `email` varchar(30) NOT NULL,
  `balance` int(8) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `balance`) VALUES
(1, 'Nitesh ', 'nk726934@gmail.com', 50000),
(2, 'sanjiv', 'sanjivkr90@gmail.com', 40000),
(3, 'Ayush singh', 'ayushsingh3@gmail.com', 35000),
(4, 'himanshu singh', 'himanshu12@gmail.com', 25000),
(5, 'prajwal', 'prajwal345@gmail.com', 45000),
(6, 'payel singh', 'payelkr567@gmail.com', 20000),
(7, 'vanshika', 'vanshikasingh54@gmail.com', 55000),
(8, 'riya singh', 'riyasinghkr123@gmail.com', 10000),
(9, 'saurav pandey', 'sauravkumarpandey23@gmail.com', 45000),
(10, 'prakash singh', 'prasashsingh89@gmail.com', 60000);
COMMIT;

