-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 25, 2020 at 08:10 PM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.4.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `baling`
--

-- --------------------------------------------------------

--
-- Table structure for table `berita_acara`
--

CREATE TABLE `berita_acara` (
  `id` int(11) NOT NULL,
  `agent` varchar(100) NOT NULL,
  `request_id` varchar(100) NOT NULL,
  `costumer` varchar(200) NOT NULL,
  `no_costumer` varchar(100) DEFAULT NULL,
  `no_kartu` varchar(100) NOT NULL,
  `no_rekening` varchar(100) DEFAULT NULL,
  `product` varchar(200) NOT NULL,
  `category` varchar(200) NOT NULL,
  `status` varchar(50) NOT NULL,
  `transaction_time` varchar(50) NOT NULL,
  `created_on` varchar(50) NOT NULL,
  `owner` varchar(100) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `berita_acara`
--

INSERT INTO `berita_acara` (`id`, `agent`, `request_id`, `costumer`, `no_costumer`, `no_kartu`, `no_rekening`, `product`, `category`, `status`, `transaction_time`, `created_on`, `owner`, `created_at`, `updated_at`) VALUES
(1, 'test', '1234', 'test', '1234', '1234', '1234', 'test product', 'test category', 'status', '09:00', '23/09/2020 23:05', 'test', '2020-09-25 07:30:30', '2020-09-23 09:10:50'),
(2, 'test', '1234', 'test', '1234', '12345', '12345', 'test product', 'test category', 'status', '09:00', '23/09/2020 23:05', 'test', '2020-09-25 10:00:54', '2020-09-25 10:00:54');

-- --------------------------------------------------------

--
-- Table structure for table `berita_acara_x`
--

CREATE TABLE `berita_acara_x` (
  `id` int(20) NOT NULL,
  `id_laporan` varchar(50) NOT NULL,
  `nama_cost` varchar(100) NOT NULL,
  `no_rekening` varchar(50) NOT NULL,
  `no_kartu` varchar(50) NOT NULL,
  `alasan` varchar(200) NOT NULL,
  `waktu_ubah` varchar(50) NOT NULL,
  `status_ubah` varchar(100) NOT NULL,
  `uid_ubah` varchar(50) NOT NULL,
  `saldo` varchar(100) NOT NULL,
  `uid` varchar(50) NOT NULL,
  `product` varchar(200) NOT NULL,
  `category` varchar(200) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `berita_acara_x`
--

INSERT INTO `berita_acara_x` (`id`, `id_laporan`, `nama_cost`, `no_rekening`, `no_kartu`, `alasan`, `waktu_ubah`, `status_ubah`, `uid_ubah`, `saldo`, `uid`, `product`, `category`, `created_at`, `updated_at`) VALUES
(1, '12345', 'test', '12345', '12345', 'test', '9:09', 'test to test', 'testuid', '9000', 'testuid', '', '', '2020-09-21 07:22:32', '2020-09-21 14:22:32'),
(2, '12345', 'test', '12345', '12345', 'test', '9:09', 'test to test', 'testuid', '9000', 'testuid', '', '', '2020-09-21 07:23:24', '2020-09-21 14:23:24'),
(3, '12345', 'test', '12345', '12345', 'test', '9:09', 'test to test', 'testuid', '9000', 'testuid', '', '', '2020-09-21 07:24:20', '2020-09-21 14:24:20'),
(4, '1234', 'test konsumen 1', '12345', '12345', 'test', '9:09', 'test to test', 'testuid', '9000', 'testuid', 'test product', 'test category', '2020-09-23 05:01:12', '2020-09-23 12:01:12');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'admin@admin.com', '$2y$10$kXq1PMJgpOlpziJfKKMtaOLc0HCPOUmsqWYF2Pwcp9il//WiYa4s6', 'LexcU7qKRE6O8FLXaCzrNhsFqm2NbdnZa7tlPDWRfUOjNEw89W37Rv08t7UQ', '2020-09-21 03:30:31', '2020-09-21 03:30:31');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `berita_acara`
--
ALTER TABLE `berita_acara`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `berita_acara_x`
--
ALTER TABLE `berita_acara_x`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `berita_acara`
--
ALTER TABLE `berita_acara`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `berita_acara_x`
--
ALTER TABLE `berita_acara_x`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
