-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 02, 2019 at 03:41 AM
-- Server version: 10.1.21-MariaDB
-- PHP Version: 7.1.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `kinerja`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `username` varchar(20) NOT NULL,
  `password` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`username`, `password`) VALUES
('sheli', 'sheli123'),
('sheli', 'sheli123'),
('ayu', 'ayu123'),
('ayuamaliyah', 'ayu12');

-- --------------------------------------------------------

--
-- Table structure for table `indikator`
--

CREATE TABLE `indikator` (
  `id_indikator` char(10) NOT NULL,
  `nama_indikator` char(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `indikator`
--

INSERT INTO `indikator` (`id_indikator`, `nama_indikator`) VALUES
('ID01', 'Ayu Amaliyah'),
('ID02', 'Sheli Indriani'),
('ID03', 'kiki setiawan'),
('ID04', 'Aqil'),
('ID05', 'Juju');

-- --------------------------------------------------------

--
-- Table structure for table `keberatan`
--

CREATE TABLE `keberatan` (
  `id_keberatan` int(11) NOT NULL,
  `komplain` text NOT NULL,
  `tgl_kirim` datetime NOT NULL,
  `id_sub_nilai` char(10) NOT NULL,
  `status` int(2) NOT NULL,
  `pengirim` char(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `keberatan`
--

INSERT INTO `keberatan` (`id_keberatan`, `komplain`, `tgl_kirim`, `id_sub_nilai`, `status`, `pengirim`) VALUES
(1, 'hi', '2018-09-16 23:09:15', 'NILAI01', 1, '11'),
(10, 'a', '2018-09-18 00:29:52', 'NILAI03', 1, 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `pegawai`
--

CREATE TABLE `pegawai` (
  `nik` char(16) NOT NULL,
  `nama` char(100) NOT NULL,
  `tempat_lahir` char(30) NOT NULL,
  `tgl_lahir` date NOT NULL,
  `sd` char(50) NOT NULL,
  `smp` char(50) NOT NULL,
  `sma` char(50) NOT NULL,
  `akademik` char(50) NOT NULL,
  `thn_masuk_kerja` year(4) NOT NULL,
  `status` char(25) NOT NULL,
  `nomor_sk` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pegawai`
--

INSERT INTO `pegawai` (`nik`, `nama`, `tempat_lahir`, `tgl_lahir`, `sd`, `smp`, `sma`, `akademik`, `thn_masuk_kerja`, `status`, `nomor_sk`) VALUES
('11', 'Sheln', 'cirebon', '2018-09-08', 'SD', 'SMP', 'SMA', 'POLINDRA', 2017, 'joms', 1),
('12', 'Ayu', 'Brebes', '2018-09-17', 'SD', 'SMP', 'SMA', 'UNSWAGATI', 2017, 'BUJANK', 3);

-- --------------------------------------------------------

--
-- Table structure for table `penilaian`
--

CREATE TABLE `penilaian` (
  `id_nilai` int(11) NOT NULL,
  `id_sub_nilai` char(10) NOT NULL,
  `semester` char(20) NOT NULL,
  `tahun` year(4) NOT NULL,
  `nik` char(16) NOT NULL,
  `id_indikator` char(10) NOT NULL,
  `nilai` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `penilaian`
--

INSERT INTO `penilaian` (`id_nilai`, `id_sub_nilai`, `semester`, `tahun`, `nik`, `id_indikator`, `nilai`) VALUES
(16, 'NILAI01', '1', 2018, '11', 'ID01', 99),
(17, 'NILAI01', '1', 2018, '11', 'ID02', 87),
(18, 'NILAI01', '1', 2018, '11', 'ID03', 87),
(19, 'NILAI02', '1', 2018, '12', 'ID01', 50),
(20, 'NILAI02', '1', 2018, '12', 'ID02', 60),
(21, 'NILAI02', '1', 2018, '12', 'ID03', 90),
(22, 'NILAI03', '2', 2018, '11', 'ID01', 60),
(23, 'NILAI03', '2', 2018, '11', 'ID02', 70),
(24, 'NILAI03', '2', 2018, '11', 'ID03', 80),
(25, 'NILAI04', '2', 2018, '12', 'ID01', 70),
(26, 'NILAI04', '2', 2018, '12', 'ID02', 80),
(27, 'NILAI04', '2', 2018, '12', 'ID03', 90),
(28, 'NILAI05', '1', 2019, '11', 'ID01', 80),
(29, 'NILAI05', '1', 2019, '11', 'ID02', 89),
(30, 'NILAI05', '1', 2019, '11', 'ID03', 70),
(31, 'NILAI05', '1', 2019, '11', 'ID04', 60),
(32, 'NILAI05', '1', 2019, '11', 'ID05', 100);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id_user` int(11) NOT NULL,
  `username` char(50) NOT NULL,
  `password` char(255) NOT NULL,
  `level` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id_user`, `username`, `password`, `level`) VALUES
(1, 'admin', 'admin', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `indikator`
--
ALTER TABLE `indikator`
  ADD PRIMARY KEY (`id_indikator`);

--
-- Indexes for table `keberatan`
--
ALTER TABLE `keberatan`
  ADD PRIMARY KEY (`id_keberatan`);

--
-- Indexes for table `pegawai`
--
ALTER TABLE `pegawai`
  ADD PRIMARY KEY (`nik`);

--
-- Indexes for table `penilaian`
--
ALTER TABLE `penilaian`
  ADD PRIMARY KEY (`id_nilai`),
  ADD KEY `fk_kinerja_1` (`nik`),
  ADD KEY `fk_kinerja_2` (`id_indikator`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id_user`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `keberatan`
--
ALTER TABLE `keberatan`
  MODIFY `id_keberatan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `penilaian`
--
ALTER TABLE `penilaian`
  MODIFY `id_nilai` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;
--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id_user` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `penilaian`
--
ALTER TABLE `penilaian`
  ADD CONSTRAINT `fk_kinerja_1` FOREIGN KEY (`nik`) REFERENCES `pegawai` (`nik`),
  ADD CONSTRAINT `fk_kinerja_2` FOREIGN KEY (`id_indikator`) REFERENCES `indikator` (`id_indikator`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
