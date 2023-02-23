-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Feb 23, 2023 at 06:42 PM
-- Server version: 8.0.30
-- PHP Version: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `uaspraksi`
--

-- --------------------------------------------------------

--
-- Table structure for table `alternatif`
--

CREATE TABLE `alternatif` (
  `idalternatif` int NOT NULL,
  `nmalternatif` varchar(50) DEFAULT NULL,
  `nim` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `alternatif`
--

INSERT INTO `alternatif` (`idalternatif`, `nmalternatif`, `nim`) VALUES
(1, 'Vera Artanti', '200605110039'),
(2, 'Salma AInur Rohma', '200605110007'),
(3, 'Ghozirotun Ni\'mah', '200401110066'),
(4, 'Hakam Adilla Subhan', '200204110073'),
(5, 'Kharisma Uyun Azizah', '200104110042'),
(6, 'Fina Riqqotul Aisiyiyyah', '200204110075'),
(7, 'Alva Saputra', '200605110176'),
(8, 'Syifa', '200301110155'),
(9, 'Kartika Wulandari', '200605110041'),
(10, 'Akiful Khoir', '200604110037'),
(11, 'M. Khoirul Huda', '200605110085');

-- --------------------------------------------------------

--
-- Table structure for table `bobot`
--

CREATE TABLE `bobot` (
  `idbobot` int NOT NULL,
  `idkriteria` int DEFAULT NULL,
  `valuebobot` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `bobot`
--

INSERT INTO `bobot` (`idbobot`, `idkriteria`, `valuebobot`) VALUES
(1, 1, 0.408),
(2, 2, 0.242),
(3, 3, 0.158),
(4, 4, 0.103),
(5, 5, 0.06),
(6, 6, 0.03);

-- --------------------------------------------------------

--
-- Table structure for table `kriteria`
--

CREATE TABLE `kriteria` (
  `idkriteria` int NOT NULL,
  `nmkriteria` varchar(50) DEFAULT NULL,
  `tipe` enum('Benefit','Cost') DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `kriteria`
--

INSERT INTO `kriteria` (`idkriteria`, `nmkriteria`, `tipe`) VALUES
(1, 'Kepemimpinan', 'Benefit'),
(2, 'IPK', 'Benefit'),
(3, 'Absensi Kuliah', 'Benefit'),
(4, 'Visi dan Misi', 'Benefit'),
(5, 'Pengalaman Organisasi', 'Benefit'),
(6, 'Wawasan Keorganisasian Umum', 'Benefit');

-- --------------------------------------------------------

--
-- Table structure for table `matrixkeputusan`
--

CREATE TABLE `matrixkeputusan` (
  `idmatrix` int NOT NULL,
  `idbobot` int NOT NULL,
  `idobject` int NOT NULL,
  `idskala` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `matrixkeputusan`
--

INSERT INTO `matrixkeputusan` (`idmatrix`, `idbobot`, `idobject`, `idskala`) VALUES
(1, 1, 1, 2),
(2, 2, 1, 5),
(3, 3, 1, 5),
(4, 4, 1, 5),
(5, 5, 1, 4),
(6, 6, 1, 4),
(7, 1, 2, 1),
(8, 2, 2, 5),
(9, 3, 2, 5),
(10, 4, 2, 3),
(11, 5, 2, 3),
(12, 6, 2, 3),
(13, 1, 3, 1),
(14, 2, 3, 5),
(15, 3, 3, 5),
(16, 4, 3, 3),
(17, 5, 3, 2),
(18, 6, 3, 3),
(19, 1, 4, 2),
(20, 2, 4, 5),
(21, 3, 4, 5),
(22, 4, 4, 5),
(23, 5, 4, 3),
(24, 6, 4, 4),
(25, 1, 5, 1),
(26, 2, 5, 5),
(27, 3, 5, 5),
(28, 4, 5, 3),
(29, 5, 5, 3),
(30, 6, 5, 4),
(31, 1, 6, 1),
(32, 2, 6, 5),
(33, 3, 6, 5),
(34, 4, 6, 1),
(35, 5, 6, 1),
(36, 5, 6, 4),
(37, 1, 7, 2),
(38, 2, 7, 4),
(39, 3, 7, 5),
(40, 4, 7, 3),
(41, 5, 7, 4),
(42, 6, 7, 3),
(43, 1, 8, 1),
(44, 2, 8, 4),
(45, 3, 8, 5),
(46, 4, 8, 2),
(47, 5, 8, 1),
(48, 6, 8, 4),
(49, 1, 9, 1),
(50, 2, 9, 5),
(51, 3, 9, 5),
(52, 4, 9, 4),
(53, 5, 9, 2),
(54, 6, 9, 5),
(55, 1, 10, 1),
(56, 2, 10, 4),
(57, 3, 10, 5),
(58, 4, 10, 4),
(59, 5, 10, 1),
(60, 6, 10, 4),
(61, 1, 11, 1),
(62, 2, 11, 4),
(63, 3, 11, 5),
(64, 4, 11, 3),
(65, 5, 11, 2),
(66, 6, 11, 3);

-- --------------------------------------------------------

--
-- Table structure for table `skala`
--

CREATE TABLE `skala` (
  `idskala` int NOT NULL,
  `value` int DEFAULT NULL,
  `keterangan` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `skala`
--

INSERT INTO `skala` (`idskala`, `value`, `keterangan`) VALUES
(1, 1, 'Sangat Kurang'),
(2, 2, 'Kurang'),
(3, 3, 'Cukup'),
(4, 4, 'Baik'),
(5, 5, 'Sangat Baik');

-- --------------------------------------------------------

--
-- Stand-in structure for view `vmatrixkeputusan`
-- (See below for the actual view)
--
CREATE TABLE `vmatrixkeputusan` (
`idmatrix` int
,`idalternatif` int
,`nmalternatif` varchar(50)
,`nim` varchar(50)
,`idkriteria` int
,`nmkriteria` varchar(50)
,`tipe` enum('Benefit','Cost')
,`idbobot` int
,`valuebobot` double
,`nilai` int
,`keterangan` varchar(50)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `wp_jumbobot`
-- (See below for the actual view)
--
CREATE TABLE `wp_jumbobot` (
`jumlah` double
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `wp_nilais`
-- (See below for the actual view)
--
CREATE TABLE `wp_nilais` (
`idalternatif` int
,`nmalternatif` varchar(50)
,`nilais` double
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `wp_nilaiv`
-- (See below for the actual view)
--
CREATE TABLE `wp_nilaiv` (
`idalternatif` int
,`nmalternatif` varchar(50)
,`nilaiV` double
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `wp_normalisasiterbobot`
-- (See below for the actual view)
--
CREATE TABLE `wp_normalisasiterbobot` (
`idbobot` int
,`idkriteria` int
,`valuebobot` double
,`jumlah` double
,`normalisasi_w` double
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `wp_pangkat`
-- (See below for the actual view)
--
CREATE TABLE `wp_pangkat` (
`idmatrix` int
,`idalternatif` int
,`nmalternatif` varchar(50)
,`nim` varchar(50)
,`idkriteria` int
,`nmkriteria` varchar(50)
,`tipe` enum('Benefit','Cost')
,`idbobot` int
,`valuebobot` double
,`nilai` int
,`keterangan` varchar(50)
,`normalisasi_w` double
,`pangkat` double
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `wp_sums`
-- (See below for the actual view)
--
CREATE TABLE `wp_sums` (
`jum` double
);

-- --------------------------------------------------------

--
-- Structure for view `vmatrixkeputusan`
--
DROP TABLE IF EXISTS `vmatrixkeputusan`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `vmatrixkeputusan`  AS SELECT `matrixkeputusan`.`idmatrix` AS `idmatrix`, `alternatif`.`idalternatif` AS `idalternatif`, `alternatif`.`nmalternatif` AS `nmalternatif`, `alternatif`.`nim` AS `nim`, `kriteria`.`idkriteria` AS `idkriteria`, `kriteria`.`nmkriteria` AS `nmkriteria`, `kriteria`.`tipe` AS `tipe`, `bobot`.`idbobot` AS `idbobot`, `bobot`.`valuebobot` AS `valuebobot`, `skala`.`value` AS `nilai`, `skala`.`keterangan` AS `keterangan` FROM ((((`matrixkeputusan` join `skala`) join `bobot`) join `kriteria`) join `alternatif`) WHERE ((`matrixkeputusan`.`idobject` = `alternatif`.`idalternatif`) AND (`matrixkeputusan`.`idbobot` = `bobot`.`idbobot`) AND (`matrixkeputusan`.`idskala` = `skala`.`idskala`) AND (`kriteria`.`idkriteria` = `bobot`.`idkriteria`))  ;

-- --------------------------------------------------------

--
-- Structure for view `wp_jumbobot`
--
DROP TABLE IF EXISTS `wp_jumbobot`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `wp_jumbobot`  AS SELECT sum(`bobot`.`valuebobot`) AS `jumlah` FROM `bobot``bobot`  ;

-- --------------------------------------------------------

--
-- Structure for view `wp_nilais`
--
DROP TABLE IF EXISTS `wp_nilais`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `wp_nilais`  AS SELECT `wp_pangkat`.`idalternatif` AS `idalternatif`, `wp_pangkat`.`nmalternatif` AS `nmalternatif`, exp(sum(log(`wp_pangkat`.`pangkat`))) AS `nilais` FROM `wp_pangkat` GROUP BY `wp_pangkat`.`idalternatif``idalternatif`  ;

-- --------------------------------------------------------

--
-- Structure for view `wp_nilaiv`
--
DROP TABLE IF EXISTS `wp_nilaiv`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `wp_nilaiv`  AS SELECT `wp_nilais`.`idalternatif` AS `idalternatif`, `wp_nilais`.`nmalternatif` AS `nmalternatif`, (`wp_nilais`.`nilais` / `wp_sums`.`jum`) AS `nilaiV` FROM (`wp_nilais` join `wp_sums`)  ;

-- --------------------------------------------------------

--
-- Structure for view `wp_normalisasiterbobot`
--
DROP TABLE IF EXISTS `wp_normalisasiterbobot`;

CREATE ALGORITHM=TEMPTABLE DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `wp_normalisasiterbobot`  AS SELECT `bobot`.`idbobot` AS `idbobot`, `bobot`.`idkriteria` AS `idkriteria`, `bobot`.`valuebobot` AS `valuebobot`, `wp_jumbobot`.`jumlah` AS `jumlah`, (`bobot`.`valuebobot` / `wp_jumbobot`.`jumlah`) AS `normalisasi_w` FROM (`bobot` join `wp_jumbobot`)  ;

-- --------------------------------------------------------

--
-- Structure for view `wp_pangkat`
--
DROP TABLE IF EXISTS `wp_pangkat`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `wp_pangkat`  AS SELECT `vmatrixkeputusan`.`idmatrix` AS `idmatrix`, `vmatrixkeputusan`.`idalternatif` AS `idalternatif`, `vmatrixkeputusan`.`nmalternatif` AS `nmalternatif`, `vmatrixkeputusan`.`nim` AS `nim`, `vmatrixkeputusan`.`idkriteria` AS `idkriteria`, `vmatrixkeputusan`.`nmkriteria` AS `nmkriteria`, `vmatrixkeputusan`.`tipe` AS `tipe`, `vmatrixkeputusan`.`idbobot` AS `idbobot`, `vmatrixkeputusan`.`valuebobot` AS `valuebobot`, `vmatrixkeputusan`.`nilai` AS `nilai`, `vmatrixkeputusan`.`keterangan` AS `keterangan`, `wp_normalisasiterbobot`.`normalisasi_w` AS `normalisasi_w`, pow(`vmatrixkeputusan`.`nilai`,`wp_normalisasiterbobot`.`normalisasi_w`) AS `pangkat` FROM (`vmatrixkeputusan` join `wp_normalisasiterbobot`) WHERE (`wp_normalisasiterbobot`.`idkriteria` = `vmatrixkeputusan`.`idkriteria`) GROUP BY `vmatrixkeputusan`.`idmatrix``idmatrix`  ;

-- --------------------------------------------------------

--
-- Structure for view `wp_sums`
--
DROP TABLE IF EXISTS `wp_sums`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `wp_sums`  AS SELECT sum(`wp_nilais`.`nilais`) AS `jum` FROM `wp_nilais``wp_nilais`  ;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `alternatif`
--
ALTER TABLE `alternatif`
  ADD PRIMARY KEY (`idalternatif`);

--
-- Indexes for table `bobot`
--
ALTER TABLE `bobot`
  ADD PRIMARY KEY (`idbobot`),
  ADD KEY `Index 2` (`idkriteria`);

--
-- Indexes for table `kriteria`
--
ALTER TABLE `kriteria`
  ADD PRIMARY KEY (`idkriteria`);

--
-- Indexes for table `matrixkeputusan`
--
ALTER TABLE `matrixkeputusan`
  ADD PRIMARY KEY (`idmatrix`),
  ADD KEY `Index 3` (`idobject`) USING BTREE,
  ADD KEY `Index 2` (`idbobot`) USING BTREE,
  ADD KEY `FK_matrixkeputusan_skala` (`idskala`);

--
-- Indexes for table `skala`
--
ALTER TABLE `skala`
  ADD PRIMARY KEY (`idskala`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `alternatif`
--
ALTER TABLE `alternatif`
  MODIFY `idalternatif` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4236;

--
-- AUTO_INCREMENT for table `kriteria`
--
ALTER TABLE `kriteria`
  MODIFY `idkriteria` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=455;

--
-- AUTO_INCREMENT for table `matrixkeputusan`
--
ALTER TABLE `matrixkeputusan`
  MODIFY `idmatrix` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=135;

--
-- AUTO_INCREMENT for table `skala`
--
ALTER TABLE `skala`
  MODIFY `idskala` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `bobot`
--
ALTER TABLE `bobot`
  ADD CONSTRAINT `FK_bobot_kriteria` FOREIGN KEY (`idkriteria`) REFERENCES `kriteria` (`idkriteria`);

--
-- Constraints for table `matrixkeputusan`
--
ALTER TABLE `matrixkeputusan`
  ADD CONSTRAINT `FK_matrixkeputusan_alternatif_2` FOREIGN KEY (`idobject`) REFERENCES `alternatif` (`idalternatif`),
  ADD CONSTRAINT `FK_matrixkeputusan_bobot` FOREIGN KEY (`idbobot`) REFERENCES `bobot` (`idbobot`),
  ADD CONSTRAINT `FK_matrixkeputusan_skala` FOREIGN KEY (`idskala`) REFERENCES `skala` (`idskala`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
