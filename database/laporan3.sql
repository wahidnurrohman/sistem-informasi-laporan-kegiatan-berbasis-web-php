-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jul 15, 2023 at 11:25 AM
-- Server version: 8.0.33
-- PHP Version: 7.4.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `laporan`
--

-- --------------------------------------------------------

--
-- Table structure for table `foto_kegiatan`
--

CREATE TABLE `foto_kegiatan` (
  `id_foto` int NOT NULL,
  `id_laporan` int NOT NULL,
  `foto` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `foto_kegiatan`
--

INSERT INTO `foto_kegiatan` (`id_foto`, `id_laporan`, `foto`) VALUES
(3, 2, '23-05-2022-gambar 2.jpg'),
(4, 2, '23-05-2022-gambar1.jpg'),
(5, 3, '23-05-2022-gambar1.jpg'),
(6, 3, '23-05-2022-gambar 2.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `jenis_laporan`
--

CREATE TABLE `jenis_laporan` (
  `id_jenis_laporan` int NOT NULL,
  `judul` varchar(100) NOT NULL,
  `created_by` varchar(100) NOT NULL,
  `created_at` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `jenis_laporan`
--

INSERT INTO `jenis_laporan` (`id_jenis_laporan`, `judul`, `created_by`, `created_at`) VALUES
(4, 'Sosial', 'Ari Dwiantoro', '22-05-2022 18:24:21'),
(5, 'vaksin', 'Ari Dwiantoro', '23-05-2022 01:23:47');

-- --------------------------------------------------------

--
-- Table structure for table `laporan_kegiatan`
--

CREATE TABLE `laporan_kegiatan` (
  `id_laporan` int NOT NULL,
  `judul_laporan` varchar(255) DEFAULT NULL,
  `id_jenis_laporan` int DEFAULT NULL,
  `lokasi` varchar(255) DEFAULT NULL,
  `tgl` date DEFAULT NULL,
  `isi` text,
  `created_by` text,
  `created_at` date DEFAULT NULL,
  `status` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `laporan_kegiatan`
--

INSERT INTO `laporan_kegiatan` (`id_laporan`, `judul_laporan`, `id_jenis_laporan`, `lokasi`, `tgl`, `isi`, `created_by`, `created_at`, `status`) VALUES
(2, 'Vaksin Covid', 4, 'Palembang sukarme', '2022-05-30', '<p>vaksinasi di kabupaten palembang sukarame</p>', '13', '2022-05-23', 'PENDING'),
(3, 'pengamanan pemilu 2022', 4, 'palembang', '2022-05-25', '<p>pengamanan dalam proses pemilu 2022</p>', '15', '2022-05-23', 'DITERIMA');

-- --------------------------------------------------------

--
-- Table structure for table `staff`
--

CREATE TABLE `staff` (
  `id_staff` int NOT NULL,
  `nrp` varchar(255) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `jenis_kelamin` varchar(30) NOT NULL,
  `pangkat` varchar(30) NOT NULL,
  `password` varchar(100) NOT NULL,
  `tipe` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `staff`
--

INSERT INTO `staff` (`id_staff`, `nrp`, `nama`, `jenis_kelamin`, `pangkat`, `password`, `tipe`) VALUES
(13, '12345', 'Ari Dwiantoro', 'perempuan', 'komando', '12345', 'admin'),
(15, '2201999', 'rizki ratih purwasih', 'perempuan', 'kopral', '12345', 'anggota');

-- --------------------------------------------------------

--
-- Table structure for table `video_kegiatan`
--

CREATE TABLE `video_kegiatan` (
  `id_video` int NOT NULL,
  `id_laporan` int NOT NULL,
  `video` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `video_kegiatan`
--

INSERT INTO `video_kegiatan` (`id_video`, `id_laporan`, `video`) VALUES
(2, 2, '23-05-2022-00064.mp4'),
(3, 3, '23-05-2022-00064.mp4');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `foto_kegiatan`
--
ALTER TABLE `foto_kegiatan`
  ADD PRIMARY KEY (`id_foto`);

--
-- Indexes for table `jenis_laporan`
--
ALTER TABLE `jenis_laporan`
  ADD PRIMARY KEY (`id_jenis_laporan`);

--
-- Indexes for table `laporan_kegiatan`
--
ALTER TABLE `laporan_kegiatan`
  ADD PRIMARY KEY (`id_laporan`);

--
-- Indexes for table `staff`
--
ALTER TABLE `staff`
  ADD PRIMARY KEY (`id_staff`);

--
-- Indexes for table `video_kegiatan`
--
ALTER TABLE `video_kegiatan`
  ADD PRIMARY KEY (`id_video`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `foto_kegiatan`
--
ALTER TABLE `foto_kegiatan`
  MODIFY `id_foto` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `jenis_laporan`
--
ALTER TABLE `jenis_laporan`
  MODIFY `id_jenis_laporan` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `laporan_kegiatan`
--
ALTER TABLE `laporan_kegiatan`
  MODIFY `id_laporan` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `staff`
--
ALTER TABLE `staff`
  MODIFY `id_staff` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `video_kegiatan`
--
ALTER TABLE `video_kegiatan`
  MODIFY `id_video` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
