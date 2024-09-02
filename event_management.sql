-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Sep 02, 2024 at 01:16 PM
-- Server version: 8.0.30
-- PHP Version: 8.3.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `event_management`
--

-- --------------------------------------------------------

--
-- Table structure for table `events`
--

CREATE TABLE `events` (
  `id` int NOT NULL,
  `name` varchar(255) NOT NULL,
  `date` date NOT NULL,
  `start_time` time NOT NULL,
  `end_time` time NOT NULL,
  `location` varchar(255) NOT NULL,
  `description` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `events`
--

INSERT INTO `events` (`id`, `name`, `date`, `start_time`, `end_time`, `location`, `description`) VALUES
(22, 'Team Meeting 20', '2020-09-01', '10:00:00', '01:00:00', 'Conference Room 20', 'Monthly team meeting to discuss project progress update new.'),
(25, 'Marraige Ceremony', '2020-09-01', '11:00:00', '12:00:00', 'Conference Room 5', 'Monthly team meeting to discuss project progress.'),
(26, 'Marraige Ceremony', '2024-09-01', '13:00:00', '02:00:00', 'Conference Room 5', 'Monthly team meeting to discuss project progress.'),
(27, 'Marraige Ceremony', '2024-09-01', '13:00:00', '02:00:00', 'Conference Room 5', 'Monthly team meeting to discuss project progress.'),
(30, 'Marraige Ceremony', '2024-09-01', '13:00:00', '02:00:00', 'Conference Room 5', 'Monthly team meeting to discuss project progress.'),
(31, 'Marraige asd Ceremony', '2024-10-01', '14:00:00', '02:00:00', 'Conference Room 5', 'Monthly team meeting to discuss project progress.'),
(32, 'moja', '2020-09-01', '10:00:00', '01:00:00', 'Conference Room 07', 'Monthly team meeting to discuss project progress update new.'),
(33, 'Marraige asd Ceremony', '2024-10-01', '14:00:00', '02:00:00', 'Conference Room 5', 'Monthly team meeting to discuss project progress.'),
(35, 'Marraige asd Ceremony', '2024-10-01', '14:00:00', '02:00:00', 'Conference Room 5', 'Monthly team meeting to discuss project progress.'),
(36, 'Marraige asd Ceremony adsa', '2024-10-01', '14:00:00', '02:00:00', 'Conference Room 5', 'Monthly team meeting to discuss project progress.'),
(37, 'Marraige asd Ceremony adsa', '2024-10-01', '10:00:00', '02:00:00', 'Conference Room 5', 'Monthly team meeting to discuss project progress.'),
(38, 'Marraige asd Ceremony adsa', '2024-10-01', '10:00:00', '02:00:00', 'Conference Room 5', 'Monthly team meeting to discuss project progress.'),
(39, 'Marraige asd Ceremony adsa', '2024-11-01', '10:00:00', '02:00:00', 'Conference Room 5', 'Monthly team meeting to discuss project progress.'),
(40, 'Marraige asd Ceremony adsa', '2024-11-01', '11:00:00', '12:00:00', 'Conference Room 5', 'Monthly team meeting to discuss project progress.'),
(41, 'Marraige asd Ceremony adsa', '2024-11-01', '13:00:00', '14:00:00', 'Conference Room 5', 'Monthly team meeting to discuss project progress.'),
(42, 'Marraige asd Ceremony adsa', '2024-11-01', '14:00:00', '15:00:00', 'Conference Room 5', 'Monthly team meeting to discuss project progress.'),
(43, 'Marraige asd Ceremony adsa', '2020-11-01', '14:00:00', '15:00:00', 'Conference Room 5', 'Monthly team meeting to discuss project progress.'),
(44, 'Marraige asd Ceremony adsa', '2020-11-01', '14:00:00', '15:00:00', 'Conference Room 5', 'Monthly team meeting to discuss project progress.'),
(45, 'Marraige asd Ceremony adsa', '2020-11-01', '14:00:00', '15:00:00', 'Conference Room 5', 'Monthly team meeting to discuss project progress.'),
(46, 'Marraige asd Ceremony adsa', '2020-11-01', '14:00:00', '15:00:00', 'Conference Room 5', 'Monthly team meeting to discuss project progress.'),
(47, 'Marraige asd Ceremony adsa', '2020-11-01', '14:00:00', '15:00:00', 'Conference Room 5', 'Monthly team meeting to discuss project progress.'),
(48, 'Marraige asd Ceremony adsa', '2020-11-01', '14:00:00', '15:00:00', 'Conference Room 5', 'Monthly team meeting to discuss project progress.'),
(49, 'Marraige asd Ceremony adsa', '2020-11-01', '14:00:00', '15:00:00', 'Conference Room 5', 'Monthly team meeting to discuss project progress.'),
(50, 'Marraige asd Ceremony adsa', '2020-11-01', '14:00:00', '15:00:00', 'Conference Room 5', 'Monthly team meeting to discuss project progress.'),
(51, 'Marraige asd Ceremony adsa', '2020-11-01', '14:00:00', '15:00:00', 'Conference Room 5', 'Monthly team meeting to discuss project progress.'),
(52, 'Marraige asd Ceremony adsa', '2020-11-01', '14:00:00', '15:00:00', 'Conference Room 5', 'Monthly team meeting to discuss project progress.'),
(53, 'Marraige asd Ceremony adsa', '2020-11-01', '14:00:00', '15:00:00', 'Conference Room 5', 'Monthly team meeting to discuss project progress.'),
(54, 'Marraige asd Ceremony adsa', '2020-11-01', '14:00:00', '15:00:00', 'Conference Room 5', 'Monthly team meeting to discuss project progress.'),
(55, 'Marraige asd Ceremony adsa', '2020-11-01', '14:00:00', '15:00:00', '', 'Monthly team meeting to discuss project progress.'),
(56, 'Marraige asd Ceremony adsa', '2020-11-01', '14:00:00', '15:00:00', '', 'Monthly team meeting to discuss project progress.'),
(57, 'Marraige asd Ceremony adsa', '2020-11-01', '14:00:00', '15:00:00', '', 'Monthly team meeting to discuss project progress.'),
(58, 'Marraige asd Ceremony adsa', '2020-11-01', '14:00:00', '15:00:00', '', 'Monthly team meeting to discuss project progress.'),
(59, 'Marraige asd Ceremony adsa', '2020-11-01', '14:00:00', '15:00:00', 'Conference Room 5', 'Monthly team meeting to discuss project progress.'),
(60, 'Marraige asd Ceremony adsa', '2020-11-01', '14:00:00', '15:00:00', 'Conference Room 5', 'Monthly team meeting to discuss project progress.'),
(61, 'Marraige asd Ceremony adsa', '2020-11-01', '14:00:00', '15:00:00', 'Conference Room 5', 'Monthly team meeting to discuss project progress.'),
(62, 'Marraige asd Ceremony adsa', '2020-11-01', '14:00:00', '15:00:00', 'Conference Room 5', 'Monthly team meeting to discuss project progress.'),
(63, 'Marraige asd Ceremony adsa', '2020-11-01', '14:00:00', '15:00:00', 'Conference Room 5', 'Monthly team meeting to discuss project progress.'),
(64, 'Marraige asd Ceremony adsa', '2020-11-01', '14:00:00', '15:00:00', 'Conference Room 5', 'Monthly team meeting to discuss project progress.'),
(65, 'Marraige asd Ceremony adsa', '2020-11-01', '14:00:00', '15:00:00', 'Conference Room 5', 'Monthly team meeting to discuss project progress.'),
(66, 'Marraige asd Ceremony adsa', '2020-11-01', '14:00:00', '15:00:00', 'Conference Room 5', 'Monthly team meeting to discuss project progress.'),
(67, 'Marraige asd Ceremony adsa', '2020-11-01', '10:00:00', '11:00:00', 'Conference Room 5', 'Monthly team meeting to discuss project progress.'),
(68, 'Marraige asd Ceremony adsa', '2020-11-01', '10:00:00', '11:00:00', 'Conference Room 5', 'Monthly team meeting to discuss project progress.'),
(69, 'Marraige asd Ceremony adsa', '2020-11-01', '10:00:00', '11:00:00', 'Conference Room 5', 'Monthly team meeting to discuss project progress.'),
(70, 'Marraige asd Ceremony adsa', '2020-11-01', '10:00:00', '11:00:00', 'Conference Room 5', 'Monthly team meeting to discuss project progress.'),
(71, 'Marraige asd Ceremony adsa', '2020-11-01', '10:00:00', '11:00:00', 'Conference Room 5', 'Monthly team meeting to discuss project progress.'),
(72, 'Marraige asd Ceremony adsa', '2020-11-01', '10:00:00', '11:00:00', 'Conference Room 5', 'Monthly team meeting to discuss project progress.'),
(73, 'Marraige asd Ceremony adsa', '2020-11-01', '10:00:00', '11:00:00', 'Conference Room 5', 'Monthly team meeting to discuss project progress.'),
(74, 'Marraige asd Ceremony adsa', '2020-11-01', '10:00:00', '11:00:00', 'Conference Room 5', 'Monthly team meeting to discuss project progress.'),
(75, 'Marraige asd Ceremony adsa', '2020-11-01', '10:00:00', '11:00:00', 'Conference Room 5', 'Monthly team meeting to discuss project progress.'),
(76, 'Marraige asd Ceremony adsa', '2020-11-01', '10:00:00', '11:00:00', 'Conference Room 5', 'Monthly team meeting to discuss project progress.'),
(77, 'Marraige asd Ceremony adsa', '2020-11-01', '10:00:00', '11:00:00', 'Conference Room 5', 'Monthly team meeting to discuss project progress.'),
(78, 'Marraige asd Ceremony adsa', '2020-11-01', '10:00:00', '11:00:00', 'Conference Room 5', 'Monthly team meeting to discuss project progress.'),
(79, '', '2020-11-01', '10:00:00', '11:00:00', 'Conference Room 5', 'Monthly team meeting to discuss project progress.'),
(80, '', '2020-11-01', '10:00:00', '11:00:00', 'Conference Room 5', 'Monthly team meeting to discuss project progress.'),
(81, '', '2020-11-01', '10:00:00', '11:00:00', 'Conference Room 5', 'Monthly team meeting to discuss project progress.'),
(82, 'Marraige asd Ceremony adsa', '2028-11-01', '10:00:00', '11:00:00', 'Conference Room 5', 'Monthly team meeting to discuss project progress.'),
(83, 'Marraige asd Ceremony adsa', '2028-11-01', '10:00:00', '11:00:00', 'Conference Room 5', 'Monthly team meeting to discuss project progress.'),
(84, 'Marraige asd Ceremony adsa', '2028-11-01', '10:00:00', '11:00:00', 'Conference Room 5', 'Monthly team meeting to discuss project progress.'),
(85, 'Marraige asd Ceremony adsa', '2028-11-01', '10:00:00', '11:00:00', 'Conference Room 5', 'Monthly team meeting to discuss project progress.'),
(86, 'Marraige asd Ceremony adsa', '2028-11-01', '10:00:00', '11:00:00', 'Conference Room 5', 'Monthly team meeting to discuss project progress.'),
(87, 'Marraige asd Ceremony adsa', '2028-11-01', '10:00:00', '11:00:00', 'Conference Room 5', 'Monthly team meeting to discuss project progress.'),
(88, 'Marraige asd Ceremony adsa', '2028-11-01', '10:00:00', '11:00:00', 'Conference Room 5', 'Monthly team meeting to discuss project progress.'),
(89, 'Marraige asd Ceremony adsa', '2028-11-01', '10:00:00', '11:00:00', 'Conference Room 5', 'Monthly team meeting to discuss project progress.'),
(90, 'Marraige asd Ceremony adsa', '2028-11-01', '10:00:00', '11:00:00', 'Conference Room 5', 'Monthly team meeting to discuss project progress.'),
(91, 'Marraige asd Ceremony adsa', '2028-11-01', '10:00:00', '11:00:00', 'Conference Room 5', 'Monthly team meeting to discuss project progress.'),
(92, 'Marraige asd Ceremony adsa', '2028-11-01', '10:00:00', '11:00:00', 'Conference Room 5', 'Monthly team meeting to discuss project progress.'),
(93, 'Marraige asd Ceremony adsa', '2028-11-01', '10:00:00', '11:00:00', 'Conference Room 5', 'Monthly team meeting to discuss project progress.'),
(94, 'Marraige asd Ceremony adsa', '2028-11-01', '10:00:00', '11:00:00', 'Conference Room 5', 'Monthly team meeting to discuss project progress.'),
(95, '', '2028-11-01', '10:00:00', '11:00:00', 'Conference Room 5', 'Monthly team meeting to discuss project progress.'),
(96, 'Marraige asd Ceremony adsa', '2028-11-01', '10:00:00', '11:00:00', 'Conference Room 5', 'Monthly team meeting to discuss project progress.'),
(97, 'Marraige asd Ceremony adsa', '2028-11-01', '10:00:00', '11:00:00', 'Conference Room 5', 'Monthly team meeting to discuss project progress.'),
(98, '', '2028-11-01', '10:00:00', '11:00:00', 'Conference Room 5', 'Monthly team meeting to discuss project progress.'),
(99, '', '2028-11-01', '10:00:00', '11:00:00', 'Conference Room 5', 'Monthly team meeting to discuss project progress.'),
(100, '', '2028-11-01', '10:00:00', '11:00:00', 'Conference Room 5', 'Monthly team meeting to discuss project progress.'),
(101, 'Marraige asd Ceremony adsa', '2028-11-01', '10:00:00', '11:00:00', 'Conference Room 5', 'Monthly team meeting to discuss project progress.'),
(102, '', '2028-11-01', '11:00:00', '12:00:00', 'Conference Room 5', 'Monthly team meeting to discuss project progress.'),
(103, '12', '2028-11-01', '12:00:00', '13:00:00', 'Conference Room 5', 'Monthly team meeting to discuss project progress.'),
(104, '12', '2028-11-01', '13:00:00', '14:00:00', 'Conference Room 5', 'Monthly team meeting to discuss project progress.'),
(105, 'siam@gmail', '2028-11-01', '14:00:00', '15:00:00', 'Conference Room 5', 'Monthly team meeting to discuss project progress.'),
(106, 'Waz Mahfil', '2024-09-01', '05:00:00', '01:00:00', 'Conference Room 07', 'Monthly team meeting to discuss project progress update new.'),
(107, 'Waz Mahfil', '2024-11-01', '15:00:00', '16:00:00', 'Conference Room 5', 'Monthly team meeting to discuss project progress.'),
(108, 'Waz Mahfil', '2024-11-01', '16:00:00', '17:00:00', 'Conference Room 5', 'Monthly team meeting to discuss project progress.'),
(109, 'Waz Mahfil', '2024-11-01', '17:00:00', '18:00:00', 'Conference Room 5', 'Monthly team meeting to discuss project progress.');

-- --------------------------------------------------------

--
-- Table structure for table `event_participants`
--

CREATE TABLE `event_participants` (
  `event_id` int NOT NULL,
  `participant_id` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `event_participants`
--

INSERT INTO `event_participants` (`event_id`, `participant_id`) VALUES
(27, 1),
(33, 1),
(27, 2),
(33, 2),
(25, 44),
(26, 44),
(27, 44),
(36, 44),
(37, 44),
(38, 44),
(39, 44),
(40, 44),
(41, 44),
(42, 44),
(43, 44),
(44, 44),
(45, 44),
(46, 44),
(47, 44),
(48, 44),
(49, 44),
(50, 44),
(51, 44),
(52, 44),
(53, 44),
(54, 44),
(55, 44),
(56, 44),
(57, 44),
(58, 44),
(61, 44),
(62, 44),
(63, 44),
(64, 44),
(65, 44),
(66, 44),
(67, 44),
(68, 44),
(69, 44),
(70, 44),
(71, 44),
(72, 44),
(73, 44),
(74, 44),
(75, 44),
(76, 44),
(77, 44),
(78, 44),
(79, 44),
(80, 44),
(81, 44),
(82, 44),
(83, 44),
(84, 44),
(85, 44),
(86, 44),
(87, 44),
(88, 44),
(89, 44),
(90, 44),
(91, 44),
(92, 44),
(93, 44),
(94, 44),
(96, 44),
(97, 44),
(98, 44),
(99, 44),
(100, 44),
(101, 44),
(102, 44),
(103, 44),
(104, 44),
(105, 44),
(106, 44),
(107, 44),
(108, 44),
(109, 44),
(25, 45),
(26, 45),
(27, 45),
(33, 45),
(35, 45),
(36, 45),
(37, 45),
(38, 45),
(39, 45),
(40, 45),
(41, 45),
(42, 45),
(43, 45),
(44, 45),
(45, 45),
(46, 45),
(47, 45),
(48, 45),
(49, 45),
(50, 45),
(51, 45),
(52, 45),
(53, 45),
(54, 45),
(55, 45),
(56, 45),
(57, 45),
(58, 45),
(59, 45),
(60, 45),
(61, 45),
(62, 45),
(63, 45),
(64, 45),
(65, 45),
(66, 45),
(67, 45),
(68, 45),
(69, 45),
(70, 45),
(71, 45),
(72, 45),
(73, 45),
(74, 45),
(75, 45),
(76, 45),
(77, 45),
(78, 45),
(79, 45),
(80, 45),
(81, 45),
(82, 45),
(83, 45),
(84, 45),
(85, 45),
(86, 45),
(87, 45),
(88, 45),
(89, 45),
(90, 45),
(91, 45),
(92, 45),
(93, 45),
(94, 45),
(96, 45),
(97, 45),
(98, 45),
(99, 45),
(100, 45),
(101, 45),
(102, 45),
(103, 45),
(104, 45),
(105, 45),
(106, 45),
(107, 45),
(108, 45),
(109, 45),
(59, 106),
(60, 106);

-- --------------------------------------------------------

--
-- Table structure for table `participants`
--

CREATE TABLE `participants` (
  `id` int NOT NULL,
  `email` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `participants`
--

INSERT INTO `participants` (`id`, `email`) VALUES
(106, '1@example.com'),
(1, 'alice@example.com'),
(45, 'babu@example.com'),
(2, 'bob@example.com'),
(44, 'siam@example.com');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `email` varchar(255) DEFAULT NULL,
  `role` enum('user','admin') DEFAULT 'user',
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `password`, `email`, `role`, `created_at`, `updated_at`) VALUES
(1, 'testuser', '$2a$10$cmmsFn8Ion5AjstwnLs1WOXWIS.Bc12BNlA/4XYWDgbZGfa7bQ7l6', 'siam@example.com', 'user', '2024-09-02 07:45:10', '2024-09-02 07:45:10'),
(2, 'sajid', '$2a$10$1szQR36FIkR7.oGZ.m7Da.Y7Vfv.dj98VDIK3DA1JB0AeFC308Rxy', 'sajid@example.com', 'user', '2024-09-02 11:38:35', '2024-09-02 11:38:35');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `events`
--
ALTER TABLE `events`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `event_participants`
--
ALTER TABLE `event_participants`
  ADD PRIMARY KEY (`event_id`,`participant_id`),
  ADD KEY `participant_id` (`participant_id`);

--
-- Indexes for table `participants`
--
ALTER TABLE `participants`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`),
  ADD UNIQUE KEY `email` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `events`
--
ALTER TABLE `events`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=110;

--
-- AUTO_INCREMENT for table `participants`
--
ALTER TABLE `participants`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=205;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `event_participants`
--
ALTER TABLE `event_participants`
  ADD CONSTRAINT `event_participants_ibfk_1` FOREIGN KEY (`event_id`) REFERENCES `events` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `event_participants_ibfk_2` FOREIGN KEY (`participant_id`) REFERENCES `participants` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
