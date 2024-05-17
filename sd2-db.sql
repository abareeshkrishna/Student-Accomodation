-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: db
-- Generation Time: May 02, 2024 at 07:02 PM
-- Server version: 8.2.0
-- PHP Version: 8.2.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sd2-db`
--

-- --------------------------------------------------------

--
-- Table structure for table `applied_jobs`
--

CREATE TABLE `applied_properties` (
  `id` int NOT NULL,
  `property_id` int DEFAULT NULL,
  `user_id` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `applied_properties`
--

INSERT INTO `applied_properties` (`id`, `property_id`, `user_id`) VALUES
(1, 1, 5),
(2, 3, 5),
(3, 2, 5),
(4, 1, 5),
(5, 1, 5),
(6, 5, 5),
(7, 1, 7);

-- --------------------------------------------------------

--
-- Table structure for table `Agencies`
--

CREATE TABLE `Agencies` (
  `id` int NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `Agencies`
--

INSERT INTO `Agencies` (`id`, `email`, `password`) VALUES
(1, 'n@gmail.com', ''),
(2, 'a@gmail.com', ''),
(3, 'b@hotmail.com', ''),
(4, 'r@email.com', ''),
(5, 'ravi@gmail.com', 'tgfdyterrst'),
(6, 'root@admin.com', 'gfdgfdgdgffdfd'),
(7, 'sd@gmail.com', 'ysdrty6e5t');

-- --------------------------------------------------------

--
-- Table structure for table `property_listings`
--

CREATE TABLE `property_listings` (
  `property_id` bigint UNSIGNED NOT NULL,
  `title` varchar(100) NOT NULL,
  `description` text NOT NULL,
  `agency_id` int DEFAULT NULL,
  `location` varchar(100) DEFAULT NULL,
  `rent` decimal(10,2) DEFAULT NULL,
  `posted_date` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `property_listings`
--

INSERT INTO `property_listings` (`property_id`, `title`, `description`, `agency_id`, `location`, `rent`, `posted_date`) VALUES
(1, '1bhk', 'good', 1, 'London', 900.00, '2024-03-20 09:00:00'),
(2, '2bhk', 'good.', 2, 'San Francisco', 1100.00, '2024-03-20 10:00:00'),
(3, '3bhk', 'good.', 3, 'New York', 1300.00, '2024-03-20 11:00:00'),
(4, 'villa', 'good.', 4, 'Los Angeles', 1500.00, '2024-03-20 12:00:00'),
(5, 'boxroom', 'good.', 5, 'Chicago', 700.00, '2024-03-20 13:00:00'),
(6, '2sharing', 'good.', 6, 'Boston', 650.00, '2024-03-20 14:00:00'),
(7, '4sharing', 'good.', 7, 'Austin', 550.00, '2024-03-20 15:00:00'),
(8, '6sharing', 'good.', 8, 'birmingham', 450.00, '2024-03-20 16:00:00'),
(9, 'economic', 'good.', 9, 'manchester', 500.00, '2024-03-20 17:00:00'),
(10, 'cozy', 'good.', 10, 'Houston', 1200.00, '2024-03-20 18:00:00'),
(11, 'good', 'good', 8, 's', 350.00, '2024-05-02 00:00:00'),
(12, 'en-suite', 'good', 6, 'hi', 850.00, '2024-05-02 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `Users`
--

CREATE TABLE `Users` (
  `id` int NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `Users`
--

INSERT INTO `Users` (`id`, `email`, `password`) VALUES
(1, 'n@gmail.com', ''),
(2, 'a@gmail.com', ''),
(3, 'b@hotmail.com', ''),
(4, 'r@email.com', ''),
(5, 'ravi@gmail.com', 'tgfdyterrst'),
(6, 'root@admin.com', 'gfdgfdgdgffdfd'),
(7, 'sd@gmail.com', 'ysdrty6e5t');
--
-- Indexes for dumped tables
--

--
-- Indexes for table `applied_properties`
--
ALTER TABLE `applied_properties`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `Agencies`
--
ALTER TABLE `Agencies`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `property_listings`
--
ALTER TABLE `property_listings`
  ADD PRIMARY KEY (`property_id`),
  ADD UNIQUE KEY `property_id` (`property_id`);

--
-- Indexes for table `Users`
--
ALTER TABLE `Users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `applied_properties`
--
ALTER TABLE `applied_properties`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `Agencies`
--
ALTER TABLE `Agencies`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `property_listings`
--
ALTER TABLE `property_listings`
  MODIFY `property_id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `Users`
--
ALTER TABLE `Users`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
