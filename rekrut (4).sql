-- phpMyAdmin SQL Dump
-- version 4.3.11
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Mar 01, 2020 at 09:45 AM
-- Server version: 5.6.24
-- PHP Version: 5.6.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `rekrut`
--

-- --------------------------------------------------------

--
-- Table structure for table `lowongan`
--

CREATE TABLE IF NOT EXISTS `lowongan` (
  `id_lowongan` int(11) NOT NULL,
  `tgl_post` date NOT NULL,
  `posisi` varchar(50) NOT NULL,
  `kriteria` text NOT NULL,
  `tgl_close` date NOT NULL,
  `keterangan` text NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `lowongan`
--

INSERT INTO `lowongan` (`id_lowongan`, `tgl_post`, `posisi`, `kriteria`, `tgl_close`, `keterangan`) VALUES
(8, '2020-02-22', 'QA/QC', 'llllll', '2017-01-22', 'ppppppp'),
(9, '2020-02-26', 'Operator Produksi', 'jbczkcbKZCvzC', '2020-02-28', 'abcdefg'),
(10, '2020-02-25', 'QA/QC', 'hxhjxjzc', '2020-02-27', 'dhasfdjjaKD'),
(11, '2020-02-26', 'Maintenance', 'fgdshd', '2020-02-27', 'sdgdag');

-- --------------------------------------------------------

--
-- Table structure for table `pelamar`
--

CREATE TABLE IF NOT EXISTS `pelamar` (
  `id_daftar` int(11) NOT NULL,
  `id_pengguna` int(11) NOT NULL,
  `id_lowongan` int(11) NOT NULL,
  `posisi` varchar(50) NOT NULL,
  `no_ktp` varchar(25) NOT NULL,
  `foto` varchar(100) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `tempat_lahir` varchar(50) NOT NULL,
  `tgl_lahir` date NOT NULL,
  `alamat` text NOT NULL,
  `jenis_kelamin` varchar(25) NOT NULL,
  `pendidikan` varchar(50) NOT NULL,
  `email` varchar(25) NOT NULL,
  `no_hp` int(15) NOT NULL,
  `tb` int(10) NOT NULL,
  `bb` int(10) NOT NULL,
  `status` int(1) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=44 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pelamar`
--

INSERT INTO `pelamar` (`id_daftar`, `id_pengguna`, `id_lowongan`, `posisi`, `no_ktp`, `foto`, `nama`, `tempat_lahir`, `tgl_lahir`, `alamat`, `jenis_kelamin`, `pendidikan`, `email`, `no_hp`, `tb`, `bb`, `status`) VALUES
(40, 33, 8, 'QA/QC', '1234567898654', 'Halaman Informasi pelamar.png', 'khal', 'batam', '2020-02-26', 'dgfdsfhfjgrhs', 'Laki-laki', 'smk', 'khal@gmail.com', 2147483647, 170, 58, 1),
(42, 34, 11, 'Maintenance', '1234567898654', 'Halaman Informasi pelamar.png', 'j', 'bali', '2020-02-11', 'sgdshsd', 'Laki-laki', 'smk', 'j@gmail.com', 0, 135, 35, 2),
(43, 34, 10, 'QA/QC', '1234567898654', 'Halaman Informasi pelamar.png', 'j', 'bali', '2020-03-10', 'hfhfhf', 'Laki-laki', 'sma', 'j@gmail.com', 0, 123, 22, 0);

-- --------------------------------------------------------

--
-- Table structure for table `pengguna`
--

CREATE TABLE IF NOT EXISTS `pengguna` (
  `id` int(11) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `username` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(100) NOT NULL,
  `level` varchar(10) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=35 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pengguna`
--

INSERT INTO `pengguna` (`id`, `nama`, `username`, `email`, `password`, `level`) VALUES
(11, 'dimas', 'dimas', 'dimas@dimas.com', '$2y$10$8hvtgSbNmKRxdeQ4dqQXQ.9IuWXqTNOBTLFjOrrOqwgIAkj6sBiMm', 'Pelamar'),
(12, 'dita', 'dita', 'dita@dita.com', '$2y$10$zRZgZTb6DmvVRATxprubO.38u3wfN2rXBHHGI4o1PkqctbbBtK9HG', 'HRD'),
(27, 'ludita', 'ludita', 'ludita@gmail.com', '$2y$10$uQpFGwI9VS5YbDb8tUrnAuaiTLTjinf5gTnE98Y/HhRFog6eMGZgi', 'Pelamar'),
(28, 'yuli', 'yuli', 'yuli@gmail.com', '$2y$10$T0H1kJWNh9L5LAIoiLHB7uTyNu6/.qpirGTuY.4DR9NcHvpoiEsf.', 'Pelamar'),
(29, 'a', 'a', 'a@gmail.com', '$2y$10$VtZrpVXVlUOeQm172e.MIuj3iihnqvMhq0HfU9zB.0gpLuLV4s7Yu', 'Pelamar'),
(30, 'b', 'b', 'b@gmail.com', '$2y$10$xXjKyOs4MaqPK7TfVM.u7unZoY6svwcIu8vrCEgR1Co75VlRimKMW', 'Pelamar'),
(31, 'mutiara', 'mutiara', 'mutiara@gmail.com', '$2y$10$nlaSU2VbJlc47O4j7UKYb./CiT1oKKI4MHRpHLZ3PqI5SUvBClihC', 'Pelamar'),
(32, 'g', 'g', 'g@yahoo.com', '$2y$10$cvv2hnUDa0WsG1Ox.F/X.uoSDBwRkQMrHZOqzuvnUPe46H.a/rrMK', 'Pelamar'),
(33, 'khal', 'khal', 'khal@gmail.com', '$2y$10$9LrjLmoV9J/lcksoeqbuIuSKinvm/YOkzZ7yhITLMfVawF40kni9G', 'Pelamar'),
(34, 'j', 'j', 'j@gmail.com', '$2y$10$40qp/Fc7/0OmGpD8tpq6EuqVVXxrvUgHpFwf8hxPFj7yzUs6U9Axe', 'Pelamar');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `lowongan`
--
ALTER TABLE `lowongan`
  ADD PRIMARY KEY (`id_lowongan`);

--
-- Indexes for table `pelamar`
--
ALTER TABLE `pelamar`
  ADD PRIMARY KEY (`id_daftar`), ADD KEY `id_pengguna` (`id_pengguna`), ADD KEY `id_lowongan` (`id_lowongan`);

--
-- Indexes for table `pengguna`
--
ALTER TABLE `pengguna`
  ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `username` (`username`), ADD UNIQUE KEY `email` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `lowongan`
--
ALTER TABLE `lowongan`
  MODIFY `id_lowongan` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT for table `pelamar`
--
ALTER TABLE `pelamar`
  MODIFY `id_daftar` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=44;
--
-- AUTO_INCREMENT for table `pengguna`
--
ALTER TABLE `pengguna`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=35;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `pelamar`
--
ALTER TABLE `pelamar`
ADD CONSTRAINT `pelamar_ibfk_1` FOREIGN KEY (`id_pengguna`) REFERENCES `pengguna` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
ADD CONSTRAINT `pelamar_ibfk_2` FOREIGN KEY (`id_lowongan`) REFERENCES `lowongan` (`id_lowongan`) ON DELETE CASCADE ON UPDATE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
