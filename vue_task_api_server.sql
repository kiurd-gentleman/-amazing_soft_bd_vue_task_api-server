-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 08, 2021 at 11:30 PM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `vue_task_api_server`
--

-- --------------------------------------------------------

--
-- Table structure for table `airlines_classes`
--

CREATE TABLE `airlines_classes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `airlines_classes`
--

INSERT INTO `airlines_classes` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Business', NULL, NULL),
(2, 'Economy', NULL, NULL),
(3, 'primium Economy', NULL, NULL),
(4, 'First Class', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2021_06_08_074738_create_airlines_classes_table', 1),
(5, '2021_06_08_074815_create_planes_table', 1),
(6, '2021_06_08_074843_create_plane_tickets_table', 1);

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
-- Table structure for table `planes`
--

CREATE TABLE `planes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `planes`
--

INSERT INTO `planes` (`id`, `name`, `image`, `created_at`, `updated_at`) VALUES
(1, 'Turkish Airkines', '1623184838.jpg', NULL, NULL),
(2, 'Sun Express', '1623184838.jpg', NULL, NULL),
(3, 'US Bangla', '1623184838.jpg', '2021-06-08 14:40:38', '2021-06-08 14:40:38');

-- --------------------------------------------------------

--
-- Table structure for table `plane_tickets`
--

CREATE TABLE `plane_tickets` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `class_id` int(11) DEFAULT NULL,
  `journey_plane_id` int(11) DEFAULT NULL,
  `journey_date` date DEFAULT NULL,
  `journey_from_time` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `journey_to_time` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `journey_price` int(11) DEFAULT NULL,
  `return_plane_id` int(11) DEFAULT NULL,
  `return_date` date DEFAULT NULL,
  `return_from_time` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `return_to_time` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `return_price` int(11) DEFAULT NULL,
  `total_price` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `plane_tickets`
--

INSERT INTO `plane_tickets` (`id`, `class_id`, `journey_plane_id`, `journey_date`, `journey_from_time`, `journey_to_time`, `journey_price`, `return_plane_id`, `return_date`, `return_from_time`, `return_to_time`, `return_price`, `total_price`, `created_at`, `updated_at`) VALUES
(1, 1, 2, '2021-06-02', '06:30', '13:00', 4000, 2, '2021-06-17', '03:00', '13:00', 4000, 8000, '2021-06-08 19:53:20', NULL),
(2, 1, 1, '2021-06-08', '15:00', '20:00', 4500, 2, '2021-06-17', '03:00', '14:00', 4500, 9000, NULL, NULL),
(3, 3, 1, '2021-06-02', '06:30', '13:00', 6000, 2, '2021-06-17', '03:00', '13:00', 4000, 8000, NULL, NULL),
(4, 1, 1, '2021-06-08', '15:00', '20:00', 5000, 2, '2021-06-17', '03:00', '14:00', 5000, 10000, NULL, NULL),
(5, 4, 1, '2021-06-02', '06:30', '13:00', 6000, 2, '2021-06-17', '03:00', '13:00', 4000, 10000, NULL, NULL),
(6, 3, 1, '2021-06-08', '15:00', '20:00', 6500, 2, '2021-06-17', '03:00', '14:00', 6500, 13000, NULL, NULL),
(7, 4, 1, '2021-06-02', '14:20', '20:00', 3000, 2, '2021-06-17', '22.00', '23.00', 5000, 8000, '2021-06-08 13:50:31', '2021-06-08 13:50:31');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `airlines_classes`
--
ALTER TABLE `airlines_classes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

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
-- Indexes for table `planes`
--
ALTER TABLE `planes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `plane_tickets`
--
ALTER TABLE `plane_tickets`
  ADD PRIMARY KEY (`id`);

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
-- AUTO_INCREMENT for table `airlines_classes`
--
ALTER TABLE `airlines_classes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `planes`
--
ALTER TABLE `planes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `plane_tickets`
--
ALTER TABLE `plane_tickets`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
