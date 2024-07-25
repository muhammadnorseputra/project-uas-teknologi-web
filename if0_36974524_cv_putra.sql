-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: sql306.byetcluster.com
-- Generation Time: Jul 25, 2024 at 10:16 AM
-- Server version: 10.4.17-MariaDB
-- PHP Version: 7.2.22

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `if0_36974524_cv_putra`
--

-- --------------------------------------------------------

--
-- Table structure for table `keahlian`
--

CREATE TABLE `keahlian` (
  `id` int(11) NOT NULL,
  `keterangan` varchar(255) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `keahlian`
--

INSERT INTO `keahlian` (`id`, `keterangan`) VALUES
(1, 'Microsoft Word'),
(2, 'Microsoft Excel'),
(3, 'Microsoft Power Point'),
(4, 'Photografi'),
(5, 'Photoshop'),
(6, 'Canva');

-- --------------------------------------------------------

--
-- Table structure for table `keahlian_bahasa`
--

CREATE TABLE `keahlian_bahasa` (
  `id` int(11) NOT NULL,
  `keterangan` varchar(255) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `keahlian_bahasa`
--

INSERT INTO `keahlian_bahasa` (`id`, `keterangan`) VALUES
(1, 'Indonesia (ID)'),
(2, 'Banjar'),
(3, 'Inggris (Sedikit)');

-- --------------------------------------------------------

--
-- Table structure for table `pengalaman`
--

CREATE TABLE `pengalaman` (
  `id` int(11) NOT NULL,
  `tahun` varchar(20) DEFAULT NULL,
  `pekerjaan` varchar(30) DEFAULT NULL,
  `lokasi` varchar(30) DEFAULT NULL,
  `deskripsi_pekerjaan` text DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pengalaman`
--

INSERT INTO `pengalaman` (`id`, `tahun`, `pekerjaan`, `lokasi`, `deskripsi_pekerjaan`) VALUES
(1, '2019 - Present', 'Web Developer', 'Stark Industries <br/>\nLos Ang', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Delectus laudantium, voluptatem quis repellendus eaque sit animi illo ipsam amet officiis corporis sed aliquam non voluptate corrupti excepturi maxime porro fuga.'),
(2, '2017 - 2019', 'SEM Specialist', 'Wayne Enterprises <br/>\nGotham', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Delectus laudantium, voluptatem quis repellendus eaque sit animi illo ipsam amet officiis corporis sed aliquam non voluptate corrupti excepturi maxime porro fuga.');

-- --------------------------------------------------------

--
-- Table structure for table `profile`
--

CREATE TABLE `profile` (
  `id` int(11) DEFAULT NULL,
  `key` varchar(30) DEFAULT NULL,
  `value` text DEFAULT NULL,
  `type` varchar(10) NOT NULL DEFAULT 'basic'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `profile`
--

INSERT INTO `profile` (`id`, `key`, `value`, `type`) VALUES
(1, 'nama', 'M. Nor Saputra', 'basic'),
(2, 'title', 'My Portofolio', 'basic'),
(3, 'nama_panggilan', 'Putra', 'basic'),
(4, 'copyright', '2024 - Institut Teknologi Sapta Mandiri :: M. Nor Saputra', 'basic'),
(5, 'tentang', 'Saya berkuliah di <b>Institut Teknologi Sapta Mandiri</b> jurusan <b>Teknolog Informasi</b> dengan Nomor Induk Mahasiwa <b>230311034</b> Semester II. kalian dapat menghubungi saya melalui sosial media yang sudah tertera pada website ini.', 'basic'),
(6, 'icon', '<i class=\"bi bi-github\"></i>', 'https://gi'),
(7, 'icon', '<i class=\"bi bi-linkedin\"></i>', 'linkedin'),
(8, 'icon', '<i class=\"bi bi-twitter\"></i>', 'twitter');

-- --------------------------------------------------------

--
-- Table structure for table `project`
--

CREATE TABLE `project` (
  `id` int(11) NOT NULL,
  `judul` varchar(255) DEFAULT NULL,
  `keterangan` text DEFAULT NULL,
  `gambar` varchar(255) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `project`
--

INSERT INTO `project` (`id`, `judul`, `keterangan`, `gambar`) VALUES
(1, 'Project Name 1', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Eius at enim eum illum aperiam placeat esse? Mollitia omnis minima saepe recusandae libero, iste ad asperiores! Explicabo commodi quo itaque! Ipsam!', 'https://dummyimage.com/300x400/343a40/6c757d'),
(2, 'Project Name 2', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Eius at enim eum illum aperiam placeat esse? Mollitia omnis minima saepe recusandae libero, iste ad asperiores! Explicabo commodi quo itaque! Ipsam!', 'https://dummyimage.com/300x400/343a40/6c757d');

-- --------------------------------------------------------

--
-- Table structure for table `sekolah`
--

CREATE TABLE `sekolah` (
  `id` int(11) NOT NULL,
  `tahun` varchar(20) DEFAULT NULL,
  `tingkat` varchar(30) DEFAULT NULL,
  `lokasi` varchar(30) DEFAULT NULL,
  `deskripsi_sekolah` text DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sekolah`
--

INSERT INTO `sekolah` (`id`, `tahun`, `tingkat`, `lokasi`, `deskripsi_sekolah`) VALUES
(1, '2015 - 2017', 'Barnett College', 'Fairfield, NY', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Delectus laudantium, voluptatem quis repellendus eaque sit animi illo ipsam amet officiis corporis sed aliquam non voluptate corrupti excepturi maxime porro fuga.'),
(2, '2011 - 2015', 'ULA', 'Los Angeles, CA', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Delectus laudantium, voluptatem quis repellendus eaque sit animi illo ipsam amet officiis corporis sed aliquam non voluptate corrupti excepturi maxime porro fuga.');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `keahlian`
--
ALTER TABLE `keahlian`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `keahlian_bahasa`
--
ALTER TABLE `keahlian_bahasa`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pengalaman`
--
ALTER TABLE `pengalaman`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `project`
--
ALTER TABLE `project`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sekolah`
--
ALTER TABLE `sekolah`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `keahlian`
--
ALTER TABLE `keahlian`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `keahlian_bahasa`
--
ALTER TABLE `keahlian_bahasa`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `project`
--
ALTER TABLE `project`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `sekolah`
--
ALTER TABLE `sekolah`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
