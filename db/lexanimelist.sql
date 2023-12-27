-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 26, 2023 at 01:47 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `lexanimelist`
--

-- --------------------------------------------------------

--
-- Table structure for table `collection`
--

CREATE TABLE `collection` (
  `id` int(11) NOT NULL,
  `anime_mal_id` varchar(191) NOT NULL,
  `user_email` varchar(191) NOT NULL,
  `anime_image` varchar(191) DEFAULT NULL,
  `anime_title` varchar(191) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `collection`
--

INSERT INTO `collection` (`id`, `anime_mal_id`, `user_email`, `anime_image`, `anime_title`) VALUES
(22, '9253', 'errestlegends@gmail.com', 'https://cdn.myanimelist.net/images/anime/1935/127974.webp', 'Steins;Gate'),
(23, '5114', 'errestlegends@gmail.com', 'https://cdn.myanimelist.net/images/anime/1208/94745.webp', 'Fullmetal Alchemist: Brotherhood');

-- --------------------------------------------------------

--
-- Table structure for table `comment`
--

CREATE TABLE `comment` (
  `id` int(11) NOT NULL,
  `anime_mal_id` varchar(191) NOT NULL,
  `user_email` varchar(191) NOT NULL,
  `comment` varchar(191) NOT NULL,
  `username` varchar(191) NOT NULL,
  `anime_title` varchar(191) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `comment`
--

INSERT INTO `comment` (`id`, `anime_mal_id`, `user_email`, `comment`, `username`, `anime_title`) VALUES
(2, '9253', 'errestlegends@gmail.com', 'itu kaya erza njir yang rambut merah', 'Lexy Erresta Pangemanan', 'Steins;Gate'),
(3, '9253', 'errestlegends@gmail.com', 'ni komen ke-2', 'Lexy Erresta Pangemanan', 'Steins;Gate'),
(4, '9253', 'errestlegends@gmail.com', 'test komen ke-3\n', 'Lexy Erresta Pangemanan', 'Steins;Gate'),
(5, '9253', 'errestlegends@gmail.com', 'lah ini bisa langsung komen 4 muncul? :)', 'Lexy Erresta Pangemanan', 'Steins;Gate'),
(6, '9253', 'errestlegends@gmail.com', 'coba lagi', 'Lexy Erresta Pangemanan', 'Steins;Gate'),
(7, '9253', 'errestlegends@gmail.com', 'halo', 'Lexy Erresta Pangemanan', 'Steins;Gate'),
(8, '9253', 'errestlegends@gmail.com', 'iya', 'Lexy Erresta Pangemanan', 'Steins;Gate'),
(9, '41467', 'errestlegends@gmail.com', 'emang iya?', 'Lexy Erresta Pangemanan', 'Bleach: Sennen Kessen-hen'),
(10, '5114', 'errestlegends@gmail.com', 'dsfsf', 'Lexy Erresta Pangemanan', 'Fullmetal Alchemist: Brotherhood');

-- --------------------------------------------------------

--
-- Table structure for table `_prisma_migrations`
--

CREATE TABLE `_prisma_migrations` (
  `id` varchar(36) NOT NULL,
  `checksum` varchar(64) NOT NULL,
  `finished_at` datetime(3) DEFAULT NULL,
  `migration_name` varchar(255) NOT NULL,
  `logs` text DEFAULT NULL,
  `rolled_back_at` datetime(3) DEFAULT NULL,
  `started_at` datetime(3) NOT NULL DEFAULT current_timestamp(3),
  `applied_steps_count` int(10) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `_prisma_migrations`
--

INSERT INTO `_prisma_migrations` (`id`, `checksum`, `finished_at`, `migration_name`, `logs`, `rolled_back_at`, `started_at`, `applied_steps_count`) VALUES
('227b5fdb-6df6-452e-8ae9-e3269d83f6af', '9d61aa85465093071b08699549bbe552bac00e73f5515d7ecea78b08bdef01d7', '2023-12-20 22:46:24.814', '20231220224624_add_anime_title', NULL, NULL, '2023-12-20 22:46:24.806', 1),
('667c5c51-14ef-45a7-bdcd-c302650a20bd', 'a8d2589c6c772ccbe4d13f8a92407f9f7de19518fe4b057b4782af54e6fd9b48', '2023-12-20 03:28:30.338', '20231220032830_modify_collection_model', NULL, NULL, '2023-12-20 03:28:30.329', 1),
('69cf9a19-c9f0-4b9d-9567-8033711e9961', 'daead88296cabbc1630488a3a3ce19ec399cf6e1b114a96789f6084f19572974', '2023-12-16 12:44:46.156', '20231216124446_initialization', NULL, NULL, '2023-12-16 12:44:46.134', 1),
('c41473c0-ee50-42e5-9fb9-8d43d261a5d3', 'ab4588240afdd235e576a41d357514d078b39c32a3f156ac1e370a909e5b91e3', '2023-12-20 03:43:56.458', '20231220034356_comment_model', NULL, NULL, '2023-12-20 03:43:56.449', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `collection`
--
ALTER TABLE `collection`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `Collection_user_email_anime_mal_id_key` (`user_email`,`anime_mal_id`);

--
-- Indexes for table `comment`
--
ALTER TABLE `comment`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `_prisma_migrations`
--
ALTER TABLE `_prisma_migrations`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `collection`
--
ALTER TABLE `collection`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `comment`
--
ALTER TABLE `comment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
