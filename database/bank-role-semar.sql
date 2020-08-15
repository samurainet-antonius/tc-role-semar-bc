-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 15, 2020 at 10:43 AM
-- Server version: 10.1.26-MariaDB
-- PHP Version: 7.1.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `bank-role-semar`
--

-- --------------------------------------------------------

--
-- Table structure for table `module`
--

CREATE TABLE `module` (
  `id_module` int(11) NOT NULL,
  `nama_module` varchar(225) NOT NULL,
  `url_module` varchar(225) NOT NULL,
  `uuid` varchar(225) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `module`
--

INSERT INTO `module` (`id_module`, `nama_module`, `url_module`, `uuid`) VALUES
(1, 'produk', '{{base_url}}/produk', '52fb5bc8-deab-11ea-af1f-4cedfb2aff5f'),
(2, 'kategori', '{{base_url}}/kategori', '52fb8f18-deab-11ea-af1f-4cedfb2aff5f'),
(3, 'satuan produk', '{{base_url}}/satuan_produk', '52fb9101-deab-11ea-af1f-4cedfb2aff5f'),
(4, 'karyawan', '{{base_url}}/karyawan', '52fb92b1-deab-11ea-af1f-4cedfb2aff5f'),
(5, 'toko', '{{base_url}}/toko', '52fb9420-deab-11ea-af1f-4cedfb2aff5f'),
(6, 'supplier', '{{base_url}}/supplier', '52fb9550-deab-11ea-af1f-4cedfb2aff5f'),
(7, 'member', '{{base_url}}/member', '52fb9720-deab-11ea-af1f-4cedfb2aff5f');

--
-- Triggers `module`
--
DELIMITER $$
CREATE TRIGGER `generate_uuid_module` BEFORE INSERT ON `module` FOR EACH ROW SET new.uuid = uuid()
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `role`
--

CREATE TABLE `role` (
  `id_role` int(11) NOT NULL,
  `uuid_karyawan` varchar(225) NOT NULL,
  `uuid_module` varchar(225) NOT NULL,
  `show` enum('0','1') NOT NULL,
  `create` enum('0','1') NOT NULL DEFAULT '0',
  `update` enum('0','1') NOT NULL DEFAULT '0',
  `delete` enum('0','1') NOT NULL DEFAULT '0',
  `uuid` varchar(225) NOT NULL,
  `updated_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `role`
--

INSERT INTO `role` (`id_role`, `uuid_karyawan`, `uuid_module`, `show`, `create`, `update`, `delete`, `uuid`, `updated_at`) VALUES
(1, 'd16fead3-deab-11ea-af1f-4cedfb2aff5f', '52fb5bc8-deab-11ea-af1f-4cedfb2aff5f', '1', '0', '0', '0', '380da6ca-deac-11ea-af1f-4cedfb2aff5f', '2020-08-15 11:03:04'),
(2, 'd16fead3-deab-11ea-af1f-4cedfb2aff5f', '52fb8f18-deab-11ea-af1f-4cedfb2aff5f', '1', '0', '0', '0', '380e2aab-deac-11ea-af1f-4cedfb2aff5f', '2020-08-15 11:03:04'),
(3, 'd16fead3-deab-11ea-af1f-4cedfb2aff5f', '52fb9101-deab-11ea-af1f-4cedfb2aff5f', '1', '0', '0', '0', '380e2d5b-deac-11ea-af1f-4cedfb2aff5f', '2020-08-15 11:03:04');

--
-- Triggers `role`
--
DELIMITER $$
CREATE TRIGGER `generate_uuid_role` BEFORE INSERT ON `role` FOR EACH ROW SET new.uuid = uuid()
$$
DELIMITER ;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `module`
--
ALTER TABLE `module`
  ADD PRIMARY KEY (`id_module`);

--
-- Indexes for table `role`
--
ALTER TABLE `role`
  ADD PRIMARY KEY (`id_role`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `module`
--
ALTER TABLE `module`
  MODIFY `id_module` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `role`
--
ALTER TABLE `role`
  MODIFY `id_role` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
