-- phpMyAdmin SQL Dump
-- version 4.7.9
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 03, 2019 at 04:33 PM
-- Server version: 10.1.31-MariaDB
-- PHP Version: 7.2.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `travelmate`
--

-- --------------------------------------------------------

--
-- Table structure for table `airport`
--

CREATE TABLE `airport` (
  `id` int(11) NOT NULL,
  `id_destination` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `iso` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `airport`
--

INSERT INTO `airport` (`id`, `id_destination`, `name`, `iso`) VALUES
(1, 2, 'Halim Perdana Kusuma', 'HLP'),
(2, 2, 'Soekarno-Hatta', 'CGK'),
(3, 1, 'Husein Sastranegara', 'BDO'),
(4, 7, 'Achmad Yani', 'SRG'),
(5, 3, 'Juanda Airport', 'SUB'),
(6, 4, 'Adisumarmo Airport', 'SOC'),
(7, 6, 'Adisucipto', 'JOG'),
(8, 8, 'Sultan Iskandar Muda', 'BTJ'),
(9, 10, 'Radint Inten II Airport', 'TKG'),
(10, 5, 'Tunggul Wulung', 'CXP'),
(11, 9, 'Fatmawati-Soekarno Airport', 'BKS');

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `id` int(11) NOT NULL,
  `id_users` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `noid` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`id`, `id_users`, `name`, `noid`) VALUES
(1, 4, 'ilham', '213123213'),
(2, 4, 'nopia', '3213123'),
(3, 4, 'siti', '2321320'),
(4, 4, 'sinop', '30103012301'),
(5, 4, 'sinoptu', '132123121240');

-- --------------------------------------------------------

--
-- Table structure for table `destination`
--

CREATE TABLE `destination` (
  `id` int(11) NOT NULL,
  `destination` varchar(255) NOT NULL,
  `iso` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `destination`
--

INSERT INTO `destination` (`id`, `destination`, `iso`) VALUES
(1, 'Bandung', 'BDG'),
(2, 'Jakarta', 'JKT'),
(3, 'Surabaya', 'SBY'),
(4, 'Solo', 'SOC'),
(5, 'Cilacap', 'CLP'),
(6, 'Yogyakarta', 'YYK'),
(7, 'Semarang', 'SMG'),
(8, 'Aceh', 'BNA'),
(9, 'Bengkulu', 'BGL'),
(10, 'Lampung', 'BDL');

-- --------------------------------------------------------

--
-- Table structure for table `reservation`
--

CREATE TABLE `reservation` (
  `id` int(10) NOT NULL,
  `reservation_code` varchar(255) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `reservation_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `seat_code` varchar(10) NOT NULL,
  `rute_id` int(11) NOT NULL,
  `status` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `reservation`
--

INSERT INTO `reservation` (`id`, `reservation_code`, `customer_id`, `reservation_date`, `seat_code`, `rute_id`, `status`) VALUES
(1, 'TOM28021', 1, '2018-02-28 01:50:54', '015', 6, 0),
(2, 'TOM28022', 2, '2018-02-28 01:50:54', '030', 6, 0),
(3, 'TOM28023', 3, '2018-02-28 02:10:04', '014', 6, 0),
(4, 'TOM28024', 4, '2018-02-28 02:52:27', '014', 5, 0),
(5, 'TOM28025', 5, '2018-02-28 02:52:27', '015', 5, 0);

-- --------------------------------------------------------

--
-- Table structure for table `rute`
--

CREATE TABLE `rute` (
  `id` int(11) NOT NULL,
  `depart_at` datetime NOT NULL,
  `rute_from` varchar(50) NOT NULL,
  `rute_to` varchar(50) NOT NULL,
  `arrival` datetime NOT NULL,
  `price` varchar(13) NOT NULL,
  `id_transportation` varchar(13) NOT NULL,
  `creat_date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `rute`
--

INSERT INTO `rute` (`id`, `depart_at`, `rute_from`, `rute_to`, `arrival`, `price`, `id_transportation`, `creat_date`) VALUES
(7, '2019-07-05 22:00:00', '3', '1', '2019-07-05 23:00:00', '650000', '1', '2019-07-03 20:49:05'),
(8, '2019-07-05 22:00:00', '3', '2', '2019-07-03 23:00:00', '675000', '1', '2019-07-03 20:49:53'),
(9, '2019-07-05 21:00:00', '3', '5', '2019-07-03 22:00:00', '750000', '1', '2019-07-03 20:50:26'),
(10, '2019-07-05 21:00:00', '3', '6', '2019-07-05 22:00:00', '680000', '1', '2019-07-03 20:50:53'),
(11, '2019-07-05 21:00:00', '3', '10', '2019-07-03 22:00:00', '550000', '1', '2019-07-03 20:51:26'),
(12, '2019-07-05 21:00:00', '3', '7', '2019-07-05 22:00:00', '700000', '1', '2019-07-03 20:51:55'),
(13, '2019-07-05 21:00:00', '3', '4', '2019-07-05 22:00:00', '670000', '1', '2019-07-03 20:52:18'),
(14, '2019-07-05 20:52:00', '3', '8', '2019-07-05 22:00:00', '640000', '1', '2019-07-03 20:52:47'),
(15, '2019-07-05 20:53:00', '3', '11', '2019-07-05 22:00:00', '730000', '1', '2019-07-03 20:53:16'),
(16, '2019-07-05 20:53:00', '3', '1', '2019-07-05 22:00:00', '550000', '2', '2019-07-03 20:53:54'),
(17, '2019-07-05 20:54:00', '3', '2', '2019-07-05 22:00:00', '580000', '2', '2019-07-03 20:54:15'),
(18, '2019-07-05 20:54:00', '3', '5', '2019-07-05 22:00:00', '695000', '2', '2019-07-03 20:54:39'),
(19, '2019-07-05 20:54:00', '3', '6', '2019-07-05 22:00:00', '575000', '2', '2019-07-03 20:55:04'),
(20, '2019-07-05 20:55:00', '3', '10', '2019-07-05 22:00:00', '510000', '2', '2019-07-03 20:55:27'),
(21, '2019-07-05 20:55:00', '3', '7', '2019-07-05 22:00:00', '720000', '2', '2019-07-03 20:55:46'),
(22, '2019-07-05 20:56:00', '3', '4', '2019-07-05 22:00:00', '630000', '2', '2019-07-03 20:56:29'),
(23, '2019-07-05 20:56:00', '3', '8', '2019-07-05 22:00:00', '835000', '2', '2019-07-03 20:56:49'),
(24, '2019-07-05 20:56:00', '3', '11', '2019-07-05 22:00:00', '845000', '2', '2019-07-03 20:57:10'),
(25, '2019-07-05 20:57:00', '3', '9', '2019-07-05 22:00:00', '750000', '2', '2019-07-03 20:57:52'),
(26, '2019-07-05 20:58:00', '3', '1', '2019-07-05 22:00:00', '525000', '3', '2019-07-03 20:58:18'),
(27, '2019-07-05 20:58:00', '3', '2', '2019-07-05 22:00:00', '535000', '3', '2019-07-03 20:58:37'),
(28, '2019-07-05 20:58:00', '3', '5', '2019-07-05 22:00:00', '725000', '3', '2019-07-03 20:58:58'),
(29, '2019-07-05 20:59:00', '3', '6', '2019-07-05 22:00:00', '535000', '3', '2019-07-03 20:59:27'),
(30, '2019-07-05 20:59:00', '3', '10', '2019-07-05 22:00:00', '515000', '3', '2019-07-03 20:59:50'),
(31, '2019-07-05 21:00:00', '3', '7', '2019-07-05 22:00:00', '725000', '3', '2019-07-03 21:00:08'),
(32, '2019-07-05 21:00:00', '3', '4', '2019-07-05 22:00:00', '685000', '3', '2019-07-03 21:00:29'),
(33, '2019-07-05 21:01:00', '3', '8', '2019-07-05 22:00:00', '825000', '3', '2019-07-03 21:01:21'),
(34, '2019-07-05 21:01:00', '3', '11', '2019-07-05 22:00:00', '835000', '3', '2019-07-03 21:01:41'),
(35, '2019-07-05 21:01:00', '3', '9', '2019-07-05 22:00:00', '835000', '3', '2019-07-03 21:02:03'),
(36, '2019-07-05 21:02:00', '3', '1', '2019-07-05 22:00:00', '510000', '4', '2019-07-03 21:02:49'),
(37, '2019-07-05 21:03:00', '3', '2', '2019-07-05 22:00:00', '530000', '4', '2019-07-03 21:03:09'),
(38, '2019-07-05 21:03:00', '3', '5', '2019-07-05 22:00:00', '715000', '4', '2019-07-03 21:03:27'),
(39, '2019-07-05 21:03:00', '3', '6', '2019-07-05 22:00:00', '543000', '4', '2019-07-03 21:03:50'),
(40, '2019-07-05 21:04:00', '3', '10', '2019-07-05 22:00:00', '415000', '4', '2019-07-03 21:04:12'),
(41, '2019-07-05 21:04:00', '3', '7', '2019-07-05 22:00:00', '635000', '4', '2019-07-03 21:04:37'),
(42, '2019-07-05 21:04:00', '3', '4', '2019-07-05 21:04:00', '545000', '4', '2019-07-03 21:05:04'),
(43, '2019-07-05 21:05:00', '3', '8', '2019-07-05 22:00:00', '725000', '4', '2019-07-03 21:05:27'),
(44, '2019-07-05 21:05:00', '3', '11', '2019-07-05 22:00:00', '735000', '4', '2019-07-03 21:05:44'),
(45, '2019-07-05 21:05:00', '3', '9', '2019-07-05 22:00:00', '745000', '4', '2019-07-03 21:06:09'),
(46, '2019-07-06 21:14:00', '3', '1', '2019-07-06 22:00:00', '525000', '1', '2019-07-03 21:14:21'),
(47, '2019-07-05 21:14:00', '3', '2', '2019-07-05 22:00:00', '535000', '1', '2019-07-03 21:14:39'),
(48, '2019-07-06 21:14:00', '3', '5', '2019-07-06 22:00:00', '735000', '1', '2019-07-03 21:15:09'),
(49, '2019-07-06 21:15:00', '3', '6', '2019-07-06 22:00:00', '585000', '1', '2019-07-03 21:15:30'),
(50, '2019-07-06 21:15:00', '3', '10', '2019-07-06 22:00:00', '524000', '1', '2019-07-03 21:15:59'),
(51, '2019-07-06 21:16:00', '3', '7', '2019-07-06 22:00:00', '685000', '1', '2019-07-03 21:16:41'),
(52, '2019-07-06 21:17:00', '3', '4', '2019-07-06 22:00:00', '563000', '1', '2019-07-03 21:17:08'),
(53, '2019-07-06 21:17:00', '3', '8', '2019-07-06 22:00:00', '810000', '1', '2019-07-03 21:17:39'),
(54, '2019-07-06 21:18:00', '3', '11', '2019-07-03 22:00:00', '824000', '1', '2019-07-03 21:18:20'),
(55, '2019-07-06 21:18:00', '3', '9', '2019-07-06 22:00:00', '845000', '1', '2019-07-03 21:19:08'),
(56, '2019-07-06 21:20:00', '3', '1', '2019-07-06 22:00:00', '525000', '2', '2019-07-03 21:20:20'),
(57, '2019-07-06 21:20:00', '3', '2', '2019-07-06 22:00:00', '535000', '2', '2019-07-03 21:20:39'),
(58, '2019-07-06 21:20:00', '3', '5', '2019-07-06 22:00:00', '735000', '2', '2019-07-03 21:21:04'),
(59, '2019-07-06 21:21:00', '3', '6', '2019-07-06 22:00:00', '454000', '2', '2019-07-03 21:21:23'),
(60, '2019-07-06 21:21:00', '3', '10', '2019-07-06 22:00:00', '575000', '2', '2019-07-03 21:21:46'),
(61, '2019-07-06 21:21:00', '3', '7', '2019-07-06 21:22:00', '685000', '2', '2019-07-03 21:22:05'),
(62, '2019-07-06 21:22:00', '3', '4', '2019-07-06 21:22:00', '635000', '2', '2019-07-03 21:22:45'),
(63, '2019-07-06 21:22:00', '3', '8', '2019-07-06 22:00:00', '710000', '2', '2019-07-03 21:23:03'),
(64, '2019-07-06 21:23:00', '3', '11', '2019-07-06 22:00:00', '730000', '2', '2019-07-03 21:23:27'),
(65, '2019-07-06 21:24:00', '3', '9', '2019-07-06 22:00:00', '735000', '2', '2019-07-03 21:24:18'),
(66, '2019-07-06 21:24:00', '3', '1', '2019-07-06 22:00:00', '525000', '3', '2019-07-03 21:24:56'),
(67, '2019-07-06 21:25:00', '3', '2', '2019-07-06 21:25:00', '535000', '3', '2019-07-03 21:25:12'),
(68, '2019-07-06 21:25:00', '3', '5', '2019-07-06 22:00:00', '715000', '3', '2019-07-03 21:25:31'),
(69, '2019-07-06 21:25:00', '6', '6', '2019-07-06 22:00:00', '585000', '3', '2019-07-03 21:25:52'),
(70, '2019-07-06 21:26:00', '3', '10', '2019-07-06 22:00:00', '515000', '3', '2019-07-03 21:26:14'),
(71, '2019-07-06 21:26:00', '3', '7', '2019-07-06 22:00:00', '675000', '3', '2019-07-03 21:26:44'),
(72, '2019-07-06 21:27:00', '3', '4', '2019-07-06 22:00:00', '645000', '3', '2019-07-03 21:27:15'),
(73, '2019-07-06 21:27:00', '3', '8', '2019-07-06 22:00:00', '710000', '3', '2019-07-03 21:27:41'),
(74, '2019-07-06 21:27:00', '3', '11', '2019-07-06 22:00:00', '715000', '3', '2019-07-03 21:28:01'),
(75, '2019-07-06 21:28:00', '3', '9', '2019-07-06 22:00:00', '720000', '3', '2019-07-03 21:28:23'),
(76, '2019-07-06 21:28:00', '3', '1', '2019-07-06 22:00:00', '525000', '4', '2019-07-03 21:28:53'),
(77, '2019-07-06 21:29:00', '3', '2', '2019-07-06 22:00:00', '535000', '4', '2019-07-03 21:29:08'),
(78, '2019-07-06 21:29:00', '3', '5', '2019-07-06 22:00:00', '715000', '4', '2019-07-03 21:29:25'),
(79, '2019-07-06 21:29:00', '3', '6', '2019-07-06 22:00:00', '535000', '4', '2019-07-03 21:29:50'),
(80, '2019-07-06 21:30:00', '3', '10', '2019-07-03 22:00:00', '525000', '4', '2019-07-03 21:30:29'),
(81, '2019-07-06 21:30:00', '3', '7', '2019-07-06 22:00:00', '685000', '4', '2019-07-03 21:30:59'),
(82, '2019-07-06 21:31:00', '3', '4', '2019-07-06 22:00:00', '585000', '4', '2019-07-03 21:31:20'),
(83, '2019-07-06 21:32:00', '3', '8', '2019-07-06 22:00:00', '715000', '4', '2019-07-03 21:32:28'),
(84, '2019-07-06 21:32:00', '3', '11', '2019-07-06 22:00:00', '720000', '4', '2019-07-03 21:32:48'),
(85, '2019-07-06 21:33:00', '3', '9', '2019-07-03 22:00:00', '720000', '4', '2019-07-03 21:33:25');

-- --------------------------------------------------------

--
-- Table structure for table `transportation`
--

CREATE TABLE `transportation` (
  `id` int(11) NOT NULL,
  `img` varchar(100) NOT NULL,
  `name` varchar(255) NOT NULL,
  `code` varchar(13) NOT NULL,
  `description` text NOT NULL,
  `seat_qty` int(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `transportation`
--

INSERT INTO `transportation` (`id`, `img`, `name`, `code`, `description`, `seat_qty`) VALUES
(1, 'gi.png', 'Garuda Indonesia', 'GIA', 'Ini adalah pesawat perfect', 90),
(2, 'la.png', 'Lion Air', 'LNI', 'pesawat singa', 90),
(3, 'Logo+Citilink.png', 'CITILINK', 'CTV', 'best plane 2k18', 90),
(4, 'batik-air.png', 'Batik Air', 'BTK', 'Pesawat berbatik', 90);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `email` varchar(255) NOT NULL,
  `username` varchar(32) NOT NULL,
  `telepon` varchar(20) NOT NULL,
  `jenkel` varchar(10) NOT NULL,
  `password` varchar(64) NOT NULL,
  `level` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `nama`, `email`, `username`, `telepon`, `jenkel`, `password`, `level`) VALUES
(1, 'Admin', 'admin@travelmate.com', 'admin', '081245698753', 'L', '21232f297a57a5a743894a0e4a801fc3', 1),
(8, 'Aditya Yudha', 'adit@travelmate.com', 'adit', '081245697584', 'L', '486b6c6b267bc61677367eb6b6458764', 1),
(9, 'Irfan Mahela', 'irfan@travelmate.com', 'irfan', '081245697956', 'L', '24b90bc48a67ac676228385a7c71a119', 1),
(10, 'Haidir Ali', 'haidir@travelmate.com', 'haidir', '081245698546', 'L', '46aa60a7ee9b6189dba3f0b63249efb2', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `airport`
--
ALTER TABLE `airport`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `destination`
--
ALTER TABLE `destination`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `reservation`
--
ALTER TABLE `reservation`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `reservation_code` (`reservation_code`);

--
-- Indexes for table `rute`
--
ALTER TABLE `rute`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `transportation`
--
ALTER TABLE `transportation`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `airport`
--
ALTER TABLE `airport`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `customer`
--
ALTER TABLE `customer`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `destination`
--
ALTER TABLE `destination`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `reservation`
--
ALTER TABLE `reservation`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `rute`
--
ALTER TABLE `rute`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=86;

--
-- AUTO_INCREMENT for table `transportation`
--
ALTER TABLE `transportation`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
