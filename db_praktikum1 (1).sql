-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 21, 2022 at 09:17 AM
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
-- Database: `db_praktikum1`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_ambilmk`
--

CREATE TABLE `tbl_ambilmk` (
  `NPM` int(20) NOT NULL,
  `Kode_mk` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_ambilmk`
--

INSERT INTO `tbl_ambilmk` (`NPM`, `Kode_mk`) VALUES
(101, 'PTI447'),
(103, 'TIK333'),
(104, 'PTI333'),
(104, 'PTI777'),
(111, 'PTI123'),
(123, 'PTI999');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_mahasiswa`
--

CREATE TABLE `tbl_mahasiswa` (
  `NPM` int(30) NOT NULL,
  `Nama` varchar(30) NOT NULL,
  `Jenis_kelamin` varchar(10) NOT NULL,
  `Alamat` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_mahasiswa`
--

INSERT INTO `tbl_mahasiswa` (`NPM`, `Nama`, `Jenis_kelamin`, `Alamat`) VALUES
(101, 'Arif', 'L', 'Jl.Kenangan'),
(102, 'Budi', 'L', 'Jl.Jombang'),
(103, 'Wati', 'P', 'Jl.Surabaya'),
(104, 'Ika', 'P', 'Jl.Jombang'),
(105, 'Tono', 'L', 'Jl.Jakarta'),
(106, 'Iwan', 'L', 'Jl.Bandung'),
(107, 'Sari', 'P', 'Jl.Malang');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_matakuliah`
--

CREATE TABLE `tbl_matakuliah` (
  `kode_mk` varchar(30) NOT NULL,
  `nama_mk` varchar(50) NOT NULL,
  `sks` int(5) NOT NULL,
  `semester` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_matakuliah`
--

INSERT INTO `tbl_matakuliah` (`kode_mk`, `nama_mk`, `sks`, `semester`) VALUES
('PTI447', 'Praktikum Basis Data', 1, 3),
('TIK342', 'Praktikum Basis Data', 1, 3),
('PTI333', 'Basis Data Terdistribusi', 3, 5),
('TIK123', 'Jaringan Komputer', 2, 5),
('TIK333', 'Sistem Operasi', 3, 5),
('PTI123', 'Grafika Multimedia', 3, 5),
('PTI777', 'Sistem Informasi', 2, 3);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_mahasiswa`
--
ALTER TABLE `tbl_mahasiswa`
  ADD PRIMARY KEY (`NPM`);

--
-- Indexes for table `tbl_matakuliah`
--
ALTER TABLE `tbl_matakuliah`
  ADD KEY `kode_mk` (`kode_mk`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
