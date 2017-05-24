-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: May 21, 2017 at 04:05 PM
-- Server version: 10.1.10-MariaDB
-- PHP Version: 7.0.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `absen`
--

-- --------------------------------------------------------

--
-- Table structure for table `rekap`
--

CREATE TABLE `rekap` (
  `noinduk` int(4) NOT NULL,
  `nama` varchar(20) NOT NULL,
  `masuk` int(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `rekap`
--

INSERT INTO `rekap` (`noinduk`, `nama`, `masuk`) VALUES
(1123, 'Benny Putra Halim', 22),
(1134, 'Siti Nur Baidun', 30),
(1123, 'Benny Putra Halim', 22),
(1134, 'Siti Nur Baidun', 30),
(987, 'Ahmad Rois', 31),
(1423, 'Roy Martheen', 31),
(1008, 'Dadang Kempot', 29),
(1010, 'Rochis Factory', 31),
(1562, 'Keling Keling', 31),
(1241, 'Baba Bibu', 26),
(1423, 'Huru Hara', 30),
(1987, 'Yayang Fernandi', 14),
(1512, 'Kulum Mahmudin', 11),
(1982, 'Tejo Tejoamn', 9),
(987, 'Ahmad Rois', 31),
(1423, 'Roy Martheen', 31),
(1008, 'Dadang Kempot', 29),
(1010, 'Rochis Factory', 31),
(1562, 'Keling Keling', 31),
(1241, 'Baba Bibu', 26),
(1423, 'Huru Hara', 30),
(1987, 'Yayang Fernandi', 14),
(1512, 'Kulum Mahmudin', 11),
(1982, 'Tejo Tejoamn', 9);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
