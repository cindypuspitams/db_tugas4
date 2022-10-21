-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 21, 2022 at 09:18 AM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 7.4.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_universitas`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_ambilmk`
--

CREATE TABLE `tbl_ambilmk` (
  `nip` int(10) NOT NULL,
  `kd_mk` varchar(30) NOT NULL,
  `ruangan` varchar(30) NOT NULL,
  `jml_mhs` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_ambilmk`
--

INSERT INTO `tbl_ambilmk` (`nip`, `kd_mk`, `ruangan`, `jml_mhs`) VALUES
(3, 'PTI101', 'H5211', 40),
(2, 'PTI102', 'H5212', 45),
(2, 'PTI103', 'H5206', 40),
(1, 'IS101', '17312', 30);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_instruktur`
--

CREATE TABLE `tbl_instruktur` (
  `nip` int(10) NOT NULL,
  `nama_ins` varchar(30) NOT NULL,
  `jurusan` varchar(30) NOT NULL,
  `asal_kota` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_instruktur`
--

INSERT INTO `tbl_instruktur` (`nip`, `nama_ins`, `jurusan`, `asal_kota`) VALUES
(1, 'Muhammad Akbar', 'Ilmu Sejarah', 'Malang'),
(2, 'Saichul Fitrian A', 'Ilmu Komputer', 'Malang'),
(3, 'Annafia Oktavian', 'Ilmu Komputer', 'Klaten'),
(4, 'Budy Pratama', 'Ilmu Komputer', 'Magelang');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_matakuliah`
--

CREATE TABLE `tbl_matakuliah` (
  `kd_mk` varchar(10) NOT NULL,
  `nama_mk` varchar(30) NOT NULL,
  `sks` int(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_matakuliah`
--

INSERT INTO `tbl_matakuliah` (`kd_mk`, `nama_mk`, `sks`) VALUES
('IS101', 'Sejarah Indonesia', 3),
('PTI101', 'Algoritma dan Pemograman', 3),
('PTI102', 'Basis Data', 3),
('PTI103', 'Visual Basic', 3);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_instruktur`
--
ALTER TABLE `tbl_instruktur`
  ADD PRIMARY KEY (`nip`);

--
-- Indexes for table `tbl_matakuliah`
--
ALTER TABLE `tbl_matakuliah`
  ADD PRIMARY KEY (`kd_mk`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
