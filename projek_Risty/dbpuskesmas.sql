-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 10, 2024 at 07:10 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `dbpuskesmas`
--

-- --------------------------------------------------------

--
-- Table structure for table `dokter`
--

CREATE TABLE `dokter` (
  `id` int(11) NOT NULL,
  `nama` varchar(45) NOT NULL,
  `gender` char(1) NOT NULL,
  `tmp_lahir` varchar(30) NOT NULL,
  `tgl_lahir` date NOT NULL,
  `kategori` enum('Umum','Spesialis','Bidan','Dokter Gigi','Anestesi','Bedah','Ginekolog') NOT NULL,
  `telpon` varchar(20) NOT NULL,
  `alamat` varchar(100) NOT NULL,
  `unit_kerja_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

--
-- Dumping data for table `dokter`
--

INSERT INTO `dokter` (`id`, `nama`, `gender`, `tmp_lahir`, `tgl_lahir`, `kategori`, `telpon`, `alamat`, `unit_kerja_id`) VALUES
(1, 'dr.sindy', 'P', 'bekasi', '1994-05-15', 'Umum', '081234567890', 'jln.kesukaan', 1),
(2, 'Dr. Nazwa', 'P', 'Jakarta', '1984-10-10', 'Spesialis', '082345678901', 'jln.kebugaran', 2),
(3, 'Dr. ridwan', 'L', 'Bali', '1994-08-04', 'Dokter Gigi', '083456789012', 'jln.sehat', 3);

-- --------------------------------------------------------

--
-- Table structure for table `kelurahan`
--

CREATE TABLE `kelurahan` (
  `id` int(11) NOT NULL,
  `nama` varchar(45) NOT NULL,
  `kec_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

--
-- Dumping data for table `kelurahan`
--

INSERT INTO `kelurahan` (`id`, `nama`, `kec_id`) VALUES
(1, 'Bambu ireng', 1),
(2, 'Gang kejang', 2),
(3, 'Cimande', 3),
(4, 'cisaat', 4),
(5, 'cimesir', 5);

-- --------------------------------------------------------

--
-- Table structure for table `paramedik`
--

CREATE TABLE `paramedik` (
  `id` int(11) NOT NULL,
  `nama` varchar(45) NOT NULL,
  `gender` char(1) NOT NULL,
  `tmp_lahir` varchar(30) NOT NULL,
  `tgl_lahir` date NOT NULL,
  `kategori` enum('dokter mata','dokter jantung','dokter bedah') NOT NULL,
  `telpon` varchar(20) NOT NULL,
  `alamat` varchar(100) NOT NULL,
  `unit_kerja_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

--
-- Dumping data for table `paramedik`
--

INSERT INTO `paramedik` (`id`, `nama`, `gender`, `tmp_lahir`, `tgl_lahir`, `kategori`, `telpon`, `alamat`, `unit_kerja_id`) VALUES
(1, 'Dr.sindy', 'L', 'bekasi', '1994-05-04', 'dokter mata', '08676543324', 'Bima', 1),
(2, 'Dr. guntur', 'L', 'Jakarta', '1995-08-09', 'dokter jantung', '082345678901', 'sukamadu', 2),
(3, 'Dr. Asep', 'L', 'Bali', '1996-11-06', 'dokter bedah', '081234567890', 'Bali', 3),
(4, 'Dr.mia ', 'P', 'Mbojo', '0000-00-00', 'dokter jantung', '080475788385', ' sukabumi', 4),
(5, 'Dr.putri', 'p', 'cikarang', '2001-01-05', 'dokter mata', '0865358947', 'jln.keselamatan', 5);

-- --------------------------------------------------------

--
-- Table structure for table `pasien`
--

CREATE TABLE `pasien` (
  `id` int(11) NOT NULL,
  `kode` varchar(10) NOT NULL,
  `nama` varchar(45) NOT NULL,
  `tmp_lahir` varchar(30) NOT NULL,
  `tgl_lahir` date NOT NULL,
  `gender` char(1) NOT NULL,
  `email` varchar(50) NOT NULL,
  `alamat` varchar(100) NOT NULL,
  `kelurahan_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

--
-- Dumping data for table `pasien`
--

INSERT INTO `pasien` (`id`, `kode`, `nama`, `tmp_lahir`, `tgl_lahir`, `gender`, `email`, `alamat`, `kelurahan_id`) VALUES
(1, 'P001', 'nurul', 'Bima', '2005-05-13', 'P', 'mia@gmail.com', 'jln.kerinduan', 1),
(2, 'P002', 'melinda', 'Jakarta', '2004-07-08', 'P', 'melinda@gmail.com', 'Jakarta', 2),
(3, 'P003', ' teguh', 'Sangia', '2001-10-05', 'L', 'teguh@gmail.com', 'cimanggis', 3),
(4, 'P004', 'elsa', 'parungkuda', '2003-10-01', 'P', 'elsa@gmail.com', ' kalimantan', 3),
(5, 'P005', 'nuril', 'cijati', '2005-05-05', 'P', 'nuril@gmail.com', 'jln.kebenaran', 5);

-- --------------------------------------------------------

--
-- Table structure for table `periksa`
--

CREATE TABLE `periksa` (
  `id` int(11) NOT NULL,
  `tanggal` date NOT NULL,
  `berat` double NOT NULL,
  `tinggi` double NOT NULL,
  `tensi` varchar(20) NOT NULL,
  `keterangan` varchar(100) NOT NULL,
  `pasien_id` int(11) NOT NULL,
  `dokter_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

--
-- Dumping data for table `periksa`
--

INSERT INTO `periksa` (`id`, `tanggal`, `berat`, `tinggi`, `tensi`, `keterangan`, `pasien_id`, `dokter_id`) VALUES
(1, '2024-01-02', 50, 140, '120/80', 'pusing', 1, 1),
(2, '2024-03-05', 70, 165, '130/85', 'sakit perut', 2, 2),
(3, '2024-03-10', 72, 175, '140/90', 'demam', 3, 3),
(4, '2024-04-07', 50, 170, '200', 'sakit kaki', 4, 4),
(5, '2005-09-07', 40, 170, '200', 'sakit hidung', 5, 5);

-- --------------------------------------------------------

--
-- Table structure for table `unit_kerja`
--

CREATE TABLE `unit_kerja` (
  `id` int(11) NOT NULL,
  `nama` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

--
-- Dumping data for table `unit_kerja`
--

INSERT INTO `unit_kerja` (`id`, `nama`) VALUES
(1, 'Rumah  sakit Harapan'),
(2, 'Rumah Sakit Bencana'),
(3, 'Rumah Sakit genteng'),
(4, 'Rumah sakit bandang'),
(5, 'Rumah sakin bundaran');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `dokter`
--
ALTER TABLE `dokter`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `kelurahan`
--
ALTER TABLE `kelurahan`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `paramedik`
--
ALTER TABLE `paramedik`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pasien`
--
ALTER TABLE `pasien`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `periksa`
--
ALTER TABLE `periksa`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `unit_kerja`
--
ALTER TABLE `unit_kerja`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `dokter`
--
ALTER TABLE `dokter`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `kelurahan`
--
ALTER TABLE `kelurahan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `paramedik`
--
ALTER TABLE `paramedik`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `pasien`
--
ALTER TABLE `pasien`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `periksa`
--
ALTER TABLE `periksa`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `unit_kerja`
--
ALTER TABLE `unit_kerja`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
