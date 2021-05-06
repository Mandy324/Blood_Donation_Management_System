-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 09, 2021 at 06:43 PM
-- Server version: 10.4.17-MariaDB
-- PHP Version: 7.3.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `blooddonation`
--

-- --------------------------------------------------------

--
-- Table structure for table `available_pac`
--

CREATE TABLE `available_pac` (
  `name` varchar(250) COLLATE utf8mb4_bin NOT NULL,   
  -- A collation is a set of rules for comparing characters in a charset. 
  -- utf8_bin is case-sensitive because it compares the binary values of the character.
  `available` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

--
-- Dumping data for table `available_pac`
--

INSERT INTO `available_pac` (`name`, `available`) VALUES
('A+', 23),
('B+', 21),
('AB+', 39),
('O+', 31),
('A-', 18),
('B-', 35),
('AB-', 40),
('O-', 24);

-- --------------------------------------------------------

--
-- Table structure for table `donor`
--

CREATE TABLE `donor` (
  `id` int(11) NOT NULL,
  `name` varchar(230) COLLATE utf8mb4_bin NOT NULL,
  `bloodgroup` varchar(250) COLLATE utf8mb4_bin DEFAULT NULL,
  `sex` varchar(240) COLLATE utf8mb4_bin NOT NULL,
  `age` int(11) NOT NULL,
  `address` varchar(250) COLLATE utf8mb4_bin NOT NULL,
  `phoneno` bigint(20) DEFAULT NULL,
  `date` date NOT NULL,
  `username` varchar(250) COLLATE utf8mb4_bin DEFAULT NULL,
  `password` varchar(250) COLLATE utf8mb4_bin DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

--
-- Dumping data for table `donor`
--

INSERT INTO `donor` (`id`, `name`, `bloodgroup`, `sex`, `age`, `address`, `phoneno`, `date`, `username`, `password`) VALUES
(1, 'Mahesh Doiphode', 'A+', 'Male', 19, 'Pune', 2143563432, '2020-03-03', 'Mandy', '123');

-- --------------------------------------------------------

--
-- Table structure for table `donorhistory`
--

CREATE TABLE `donorhistory` (
  `bloodtype` varchar(250) COLLATE utf8mb4_bin NOT NULL,
  `user` varchar(250) COLLATE utf8mb4_bin NOT NULL,
  `date` date NOT NULL,
  `time` time DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

--
-- Dumping data for table `donorhistory`
--

INSERT INTO `donorhistory` (`bloodtype`, `user`, `date`, `time`) VALUES
('A+', 'Mahesh', '2021-04-11', '13:42:47');

-- --------------------------------------------------------

--
-- Table structure for table `purchaser`
--

CREATE TABLE `purchaser` (
  `id` int(11) NOT NULL,
  `name` varchar(260) COLLATE utf8mb4_bin DEFAULT NULL,
  `mobile` bigint(20) DEFAULT NULL,
  `address` varchar(250) COLLATE utf8mb4_bin NOT NULL,
  `user` varchar(259) COLLATE utf8mb4_bin NOT NULL,
  `password` varchar(250) COLLATE utf8mb4_bin NOT NULL,
  `date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

--
-- Dumping data for table `purchaser`
--

INSERT INTO `purchaser` (`id`, `name`, `mobile`, `address`, `user`, `password`, `date`) VALUES
(1, 'Mandy', 4576349432, 'Pune', 'Mandy', '123', '2021-03-08');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `donor`
--
ALTER TABLE `donor`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `purchaser`
--
ALTER TABLE `purchaser`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `donor`
--
ALTER TABLE `donor`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `purchaser`
--
ALTER TABLE `purchaser`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
