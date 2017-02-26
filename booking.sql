-- phpMyAdmin SQL Dump
-- version 4.6.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 26, 2017 at 12:26 PM
-- Server version: 5.7.14
-- PHP Version: 7.0.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `booking`
--

-- --------------------------------------------------------

--
-- Table structure for table `booking_names`
--

CREATE TABLE `booking_names` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `start_date` datetime NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `booking_names`
--

INSERT INTO `booking_names` (`id`, `name`, `start_date`, `created_at`, `updated_at`) VALUES
(1, 'flight', '2017-02-24 00:00:00', '2017-02-23 23:00:00', '2017-02-23 23:00:00'),
(2, 'bus', '2017-02-28 00:00:00', '2017-02-23 23:00:00', '2017-02-23 23:00:00'),
(3, 'movie(cinema)', '2017-03-01 00:00:00', '2017-02-23 23:00:00', '2017-02-23 23:00:00'),
(4, 'play(theatre)', '2017-03-04 00:00:00', '2017-02-23 23:00:00', '2017-02-23 23:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `has_bookings`
--

CREATE TABLE `has_bookings` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `booking_id` int(11) NOT NULL,
  `notification` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `has_bookings`
--

INSERT INTO `has_bookings` (`id`, `user_id`, `booking_id`, `notification`, `created_at`, `updated_at`) VALUES
(7, 3, 2, '1d', '2017-02-25 15:31:35', '2017-02-25 15:31:35'),
(8, 1, 1, '2hr', '2017-02-25 15:57:31', '2017-02-25 15:57:31');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(7, '2017_02_23_223212_create_has_bookings_table', 1),
(8, '2017_02_23_223234_create_bookings_table', 1),
(9, '2017_02_23_223251_create_booking_names_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `admin` int(11) NOT NULL DEFAULT '0',
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `admin`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Mark', 'mark@gmail.com', '$2y$10$xKF4Zs4LJ5GRdRz3BBQ.DOkemnCOi745qAsTJJEav76DvMVd7cpRq', 0, 'vW107ykqQazWKfnN4w193A8UYuucBwADso7vDFAe26H8wuhWumnu13c9afxJ', '2017-02-24 09:24:59', '2017-02-24 09:24:59'),
(2, 'Marijan', 'mzinovski@gmail.com', '$2y$10$vrydmQc9AMrLB2GY8WdW8.N5uZTbjWiImBa29DBuSn8FH4mklTRQm', 1, '2OWlMrE2xBAycZwmKFXAnfw5txckUYflffmXHlkZzApTzVXBchpwZMSuSM4P', '2017-02-24 14:15:28', '2017-02-24 14:15:28'),
(3, 'Ana', 'ana@gmail.com', '$2y$10$ehbnV0.hr2TwBVYIWg6l6e0vX5I6KMCC9Xnd0Eu80VDdRDOw78eEi', 0, 'MXwaOrK3W3CDlrSrPlyu5MZztGisqZZh622U0lUBJiOWdCR84LFhogJBXpFC', '2017-02-25 15:30:11', '2017-02-25 15:30:11');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `booking_names`
--
ALTER TABLE `booking_names`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `has_bookings`
--
ALTER TABLE `has_bookings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `booking_names`
--
ALTER TABLE `booking_names`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `has_bookings`
--
ALTER TABLE `has_bookings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
