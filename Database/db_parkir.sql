-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 11, 2017 at 01:02 AM
-- Server version: 10.1.28-MariaDB
-- PHP Version: 7.1.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_parkir`
--

-- --------------------------------------------------------

--
-- Table structure for table `biaya_parkir`
--

CREATE TABLE `biaya_parkir` (
  `id_kendaraan` int(3) NOT NULL,
  `jenis_kendaraan` varchar(15) NOT NULL,
  `Tarif` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `biaya_parkir`
--

INSERT INTO `biaya_parkir` (`id_kendaraan`, `jenis_kendaraan`, `Tarif`) VALUES
(1, 'mobil', 5000),
(2, 'motor', 2000);

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE `login` (
  `id_petugas` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `barcode` varchar(12) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `alamat` varchar(50) NOT NULL,
  `No_Hp` varchar(50) NOT NULL,
  `Privillage` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `login`
--

INSERT INTO `login` (`id_petugas`, `username`, `password`, `barcode`, `nama`, `alamat`, `No_Hp`, `Privillage`) VALUES
(3, 'admin', 'admin', '12345', 'admin', 'yogyakarta', '30303343', 0),
(5, 'cahyo', 'cahyo', '67891', 'arif cahyo prasetyo', 'yogyakarta', '190313801', 1);

-- --------------------------------------------------------

--
-- Table structure for table `parkir_masuk`
--

CREATE TABLE `parkir_masuk` (
  `no_masuk` int(11) NOT NULL,
  `no_kendaraan` varchar(15) NOT NULL,
  `id_kendaraan` int(3) NOT NULL,
  `tanggal_masuk` date NOT NULL,
  `jam_masuk` time NOT NULL,
  `tanggal_keluar` date DEFAULT NULL,
  `jam_keluar` time NOT NULL,
  `tarif` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `parkir_masuk`
--

INSERT INTO `parkir_masuk` (`no_masuk`, `no_kendaraan`, `id_kendaraan`, `tanggal_masuk`, `jam_masuk`, `tanggal_keluar`, `jam_keluar`, `tarif`) VALUES
(12313, '231332', 1, '2017-12-05', '01:12:07', '2017-12-11', '06:57:47', 5000),
(12347, '1', 0, '2017-12-05', '00:55:06', NULL, '00:00:00', 0),
(12348, '12345', 1, '2017-12-05', '22:09:47', '2017-12-11', '06:57:09', 5000),
(12349, '', 0, '2017-12-05', '23:23:25', NULL, '00:00:00', 0),
(12350, '1234', 1, '2017-12-06', '12:39:21', '2017-12-06', '13:49:19', 5000),
(12351, '13', 2, '2017-12-06', '13:51:11', '2017-12-06', '13:52:59', 5000),
(12352, '1587', 1, '2017-12-06', '14:04:21', NULL, '00:00:00', 0),
(12353, '9090', 1, '2017-12-06', '14:29:18', NULL, '00:00:00', 0),
(12354, '6667687', 2, '2017-12-06', '14:35:16', NULL, '00:00:00', 0),
(12355, '123', 1, '2017-12-07', '19:56:43', NULL, '00:00:00', 0),
(12356, '558', 2, '2017-12-07', '19:57:44', NULL, '00:00:00', 0),
(12357, '8874', 1, '2017-12-08', '00:07:03', NULL, '00:00:00', 0),
(12358, '61151', 2, '2017-12-08', '00:14:00', NULL, '00:00:00', 0),
(12359, '789488', 1, '2017-12-08', '00:16:36', NULL, '00:00:00', 0),
(12360, '34142', 1, '2017-12-08', '00:25:25', NULL, '00:00:00', 0),
(12361, '8946', 0, '2017-12-08', '00:26:34', NULL, '00:00:00', 0),
(12362, '8894', 1, '2017-12-08', '00:29:27', NULL, '00:00:00', 0),
(12363, '12345232', 0, '2017-12-08', '00:43:10', NULL, '00:00:00', 0),
(12364, '124221', 2, '2017-12-08', '00:45:29', NULL, '00:00:00', 0),
(12365, '1221213', 1, '2017-12-08', '00:52:01', NULL, '00:00:00', 0),
(12366, '122131', 1, '2017-12-08', '00:54:12', NULL, '00:00:00', 0),
(12367, '122', 1, '2017-12-08', '00:57:58', NULL, '00:00:00', 0),
(12368, '142142', 1, '2017-12-11', '06:55:11', NULL, '00:00:00', 0),
(12369, '142142', 1, '2017-12-11', '06:57:19', NULL, '00:00:00', 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `biaya_parkir`
--
ALTER TABLE `biaya_parkir`
  ADD PRIMARY KEY (`id_kendaraan`);

--
-- Indexes for table `login`
--
ALTER TABLE `login`
  ADD PRIMARY KEY (`id_petugas`);

--
-- Indexes for table `parkir_masuk`
--
ALTER TABLE `parkir_masuk`
  ADD PRIMARY KEY (`no_masuk`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `biaya_parkir`
--
ALTER TABLE `biaya_parkir`
  MODIFY `id_kendaraan` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `login`
--
ALTER TABLE `login`
  MODIFY `id_petugas` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `parkir_masuk`
--
ALTER TABLE `parkir_masuk`
  MODIFY `no_masuk` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12370;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
