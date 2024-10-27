-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 18, 2024 at 04:36 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `users`
--

-- --------------------------------------------------------

--
-- Table structure for table `files`
--

CREATE TABLE `files` (
  `Sub_id` varchar(100) NOT NULL,
  `doc` blob NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `files`
--

INSERT INTO `files` (`Sub_id`, `doc`) VALUES
('RRC', 0x41676520646973747269627574696f6e2e706e67),
('Pk', 0x6869746d61702e706e67),
('RRC', 0x424d4920646973747269627574696f6e2e706e67),
('SAL', 0x53637265656e73686f7420323032342d31302d3137203139323933382e706e67),
('sur', 0x53637265656e73686f7420323032342d31302d3137203139323532362e706e67);

-- --------------------------------------------------------

--
-- Table structure for table `registration`
--

CREATE TABLE `registration` (
  `username` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `dob` date NOT NULL,
  `password` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `registration`
--

INSERT INTO `registration` (`username`, `email`, `dob`, `password`) VALUES
('prabhav', 'kalagerashmee@gmail.com', '2004-07-10', '1234'),
('dnyanesh', 'happy@gmail.com', '2024-10-10', '12345'),
('saloni', 'saloni@gmail.com', '2011-02-03', '123'),
('surabhi', 'surabhi@gmail.com', '2024-10-01', '098');

-- --------------------------------------------------------

--
-- Table structure for table `subcriber`
--

CREATE TABLE `subcriber` (
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `Subcriber_id` varchar(100) NOT NULL,
  `plan` varchar(100) NOT NULL,
  `amount` varchar(100) NOT NULL,
  `card_no` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `subcriber`
--

INSERT INTO `subcriber` (`name`, `email`, `Subcriber_id`, `plan`, `amount`, `card_no`) VALUES
('Prabhav', 'kalagerashmee@gmail.com', 'RRc', 'basic', '20', 48939327233),
('saloni', 'saloni@gmail.com', 'SAN', 'premium', '50', 636386386979279),
('surabhi', 'surabhi@gmail.com', 'sur', 'basic', '20', 5458767869);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
