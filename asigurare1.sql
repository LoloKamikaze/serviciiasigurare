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
-- Database: `asigurare1`
--

-- --------------------------------------------------------

--
-- Table structure for table `carteverde`
--

CREATE TABLE `carteverde` (
  `ID` int(11) NOT NULL,
  `IDNP` int(17) NOT NULL,
  `numarcertificat` int(55) NOT NULL,
  `numarinmatriculare` int(55) NOT NULL,
  `zonadeplasare` varchar(55) NOT NULL,
  `perioadaasigurare` int(255) NOT NULL,
  `nrcontact` int(55) NOT NULL,
  `adresa` varchar(55) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `carteverde`
--

INSERT INTO `carteverde` (`ID`, `IDNP`, `numarcertificat`, `numarinmatriculare`, `zonadeplasare`, `perioadaasigurare`, `nrcontact`, `adresa`) VALUES
(1, 2147483647, 2147483647, 2147483647, 'Belarus', 74, 2141234431, 'aaaaa@gmail.com');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `carteverde`
--
ALTER TABLE `carteverde`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `carteverde`
--
ALTER TABLE `carteverde`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
