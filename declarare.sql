-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 24, 2024 at 03:27 PM
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
-- Database: `declarare`
--

-- --------------------------------------------------------

--
-- Table structure for table `declara`
--

CREATE TABLE `declara` (
  `ID` int(11) NOT NULL,
  `numesiprenume` varchar(55) NOT NULL,
  `dataa` datetime(6) NOT NULL,
  `numar` int(55) NOT NULL,
  `descrieti` varchar(255) NOT NULL,
  `nrcontact` int(20) NOT NULL,
  `adresa` varchar(55) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `declara`
--

INSERT INTO `declara` (`ID`, `numesiprenume`, `dataa`, `numar`, `descrieti`, `nrcontact`, `adresa`) VALUES
(1, 'Mihai Mircea', '2024-06-04 22:50:00.000000', 2147483647, 'Am facut accident de masinaaaaaa', 2141234431, 'aaaaa@gmail.com');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `declara`
--
ALTER TABLE `declara`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `declara`
--
ALTER TABLE `declara`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
