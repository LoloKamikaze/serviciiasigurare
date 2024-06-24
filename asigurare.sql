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
-- Database: `asigurare`
--

-- --------------------------------------------------------

--
-- Table structure for table `declaratie`
--

CREATE TABLE `declaratie` (
  `ID` int(11) NOT NULL,
  `numesiprenume` varchar(55) NOT NULL,
  `dataa` datetime(6) NOT NULL,
  `numar` int(55) NOT NULL,
  `descrieti` varchar(255) NOT NULL,
  `nrcontact` int(20) NOT NULL,
  `adresa` varchar(55) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `medicala`
--

CREATE TABLE `medicala` (
  `ID` int(11) NOT NULL,
  `destination` varchar(55) NOT NULL,
  `startt` datetime(6) NOT NULL,
  `endd` datetime(6) NOT NULL,
  `typee` varchar(255) NOT NULL,
  `nrcontact` int(20) NOT NULL,
  `adresa` varchar(55) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `medicala`
--

INSERT INTO `medicala` (`ID`, `destination`, `startt`, `endd`, `typee`, `nrcontact`, `adresa`) VALUES
(1, 'Las Vegas', '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', '', 2141234431, 'aaaaa@gmail.com'),
(2, 'Las Vegas', '2024-06-25 23:41:00.000000', '2024-07-05 23:41:00.000000', '', 2141234431, 'aaaaa@gmail.com'),
(3, 'Las Vegas', '2024-06-25 23:41:00.000000', '2024-07-05 23:41:00.000000', '', 2141234431, 'aaaaa@gmail.com'),
(4, 'Las Vegas', '2024-06-25 23:41:00.000000', '2024-07-05 23:41:00.000000', '', 2141234431, 'aaaaa@gmail.com'),
(5, 'Las Vegas', '2024-06-25 23:41:00.000000', '2024-07-05 23:41:00.000000', '', 2141234431, 'aaaaa@gmail.com'),
(6, '', '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', '', 2141234431, 'aaaaa@gmail.com'),
(7, '', '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', '', 2141234431, 'aaaaa@gmail.com'),
(8, '', '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', '', 2141234431, 'aaaaa@gmail.com'),
(9, '', '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', '', 2141234431, 'aaaaa@gmail.com2'),
(10, '', '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', '', 2141234431, 'aaaaa@gmail.com2');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `declaratie`
--
ALTER TABLE `declaratie`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `medicala`
--
ALTER TABLE `medicala`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `declaratie`
--
ALTER TABLE `declaratie`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `medicala`
--
ALTER TABLE `medicala`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
