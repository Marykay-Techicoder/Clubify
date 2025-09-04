-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 04, 2025 at 12:20 PM
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
-- Database: `cbtech`
--

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(255) NOT NULL,
  `full_name` varchar(100) NOT NULL,
  `role` enum('super_admin','admin') DEFAULT 'admin',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `phone` varchar(20) DEFAULT NULL,
  `bio` text DEFAULT NULL,
  `timezone` varchar(50) DEFAULT 'UTC',
  `notifications` tinyint(1) DEFAULT 1,
  `email_alerts` tinyint(1) DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`id`, `username`, `email`, `password`, `full_name`, `role`, `created_at`, `updated_at`, `phone`, `bio`, `timezone`, `notifications`, `email_alerts`) VALUES
(4, 'Maryk', 'akinyodemary4@gmail.com', '$2y$10$ROMT3QT6UhEdFqdOWjDzKezuQd7PRWVk/SWS3fc.rz64osj0Pq/8q', 'MARY AKINYODE', 'admin', '2025-07-15 18:22:03', '2025-07-15 18:22:03', NULL, NULL, 'UTC', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `admin_activity_logs`
--

CREATE TABLE `admin_activity_logs` (
  `id` int(11) NOT NULL,
  `admin_id` int(11) NOT NULL,
  `action` varchar(100) NOT NULL,
  `description` text DEFAULT NULL,
  `ip_address` varchar(45) DEFAULT NULL,
  `user_agent` text DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admin_activity_logs`
--

INSERT INTO `admin_activity_logs` (`id`, `admin_id`, `action`, `description`, `ip_address`, `user_agent`, `created_at`) VALUES
(5, 4, 'login', NULL, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/138.0.0.0 Safari/537.36 Edg/138.0.0.0', '2025-07-15 18:22:14'),
(6, 4, 'login', NULL, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/138.0.0.0 Safari/537.36 Edg/138.0.0.0', '2025-07-16 08:29:56'),
(7, 4, 'login', NULL, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/138.0.0.0 Safari/537.36 Edg/138.0.0.0', '2025-07-16 10:47:25'),
(8, 4, 'login', NULL, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/138.0.0.0 Safari/537.36 Edg/138.0.0.0', '2025-07-16 11:32:09'),
(9, 4, 'login', NULL, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/138.0.0.0 Safari/537.36 Edg/138.0.0.0', '2025-07-16 11:33:22'),
(10, 4, 'login', NULL, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/138.0.0.0 Safari/537.36 Edg/138.0.0.0', '2025-07-16 11:34:13'),
(11, 4, 'login', NULL, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/138.0.0.0 Safari/537.36 Edg/138.0.0.0', '2025-07-16 11:35:13'),
(12, 4, 'login', NULL, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/138.0.0.0 Safari/537.36 Edg/138.0.0.0', '2025-07-16 13:35:29'),
(13, 4, 'login', NULL, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/138.0.0.0 Safari/537.36 Edg/138.0.0.0', '2025-07-16 15:57:25'),
(14, 4, 'login', NULL, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/138.0.0.0 Safari/537.36 Edg/138.0.0.0', '2025-07-16 17:59:46'),
(15, 4, 'login', NULL, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/138.0.0.0 Safari/537.36 Edg/138.0.0.0', '2025-07-16 18:06:39'),
(16, 4, 'login', NULL, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/138.0.0.0 Safari/537.36 Edg/138.0.0.0', '2025-07-16 18:08:03'),
(17, 4, 'login', NULL, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/138.0.0.0 Safari/537.36 Edg/138.0.0.0', '2025-07-16 18:36:19'),
(18, 4, 'login', NULL, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/138.0.0.0 Safari/537.36 Edg/138.0.0.0', '2025-07-16 18:36:37'),
(19, 4, 'login', NULL, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/138.0.0.0 Safari/537.36 Edg/138.0.0.0', '2025-07-17 03:37:21'),
(20, 4, 'login', NULL, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/138.0.0.0 Safari/537.36 Edg/138.0.0.0', '2025-07-17 04:52:38'),
(21, 4, 'login', NULL, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/138.0.0.0 Safari/537.36 Edg/138.0.0.0', '2025-07-17 08:37:09'),
(22, 4, 'login', NULL, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/138.0.0.0 Safari/537.36 Edg/138.0.0.0', '2025-07-17 10:42:24');

-- --------------------------------------------------------

--
-- Table structure for table `exam_resume_keys`
--

CREATE TABLE `exam_resume_keys` (
  `id` int(11) NOT NULL,
  `subject_key` varchar(50) NOT NULL,
  `registration_number` varchar(50) NOT NULL,
  `resume_key` varchar(50) NOT NULL,
  `created_at` datetime DEFAULT current_timestamp(),
  `expires_at` datetime NOT NULL,
  `used` tinyint(1) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `exam_resume_keys`
--

INSERT INTO `exam_resume_keys` (`id`, `subject_key`, `registration_number`, `resume_key`, `created_at`, `expires_at`, `used`) VALUES
(1, '123A', 'LUC-NGA-002-ADM-1000', 'a0a6ee13d25c03bc', '2025-06-20 10:02:50', '2025-06-21 11:02:50', 1),
(2, '123A', 'LUC-NGA-002-ADM-100022', '734c0f09142f481d', '2025-06-20 12:58:50', '2025-06-21 13:58:50', 1),
(3, 'CSS122', 'LUC-NGA-002-ADM-1000772', '7c352250bd8a3f85', '2025-06-23 11:21:48', '2025-06-24 12:21:48', 1),
(8, 'CSS122', 'LUC-NGA-002-ADM-1000992', 'fa7a48209e7780cd', '2025-06-23 11:31:26', '2025-06-24 12:31:26', 1),
(9, '123A', 'LUC-NGA-002-ADM-100055', 'af239a2ff852ec33', '2025-06-23 12:13:26', '2025-06-24 13:13:26', 2),
(10, '123A', 'LUC-NGA-002-ADM-100044', '836198fc88574078', '2025-06-24 10:57:18', '2025-06-25 11:57:18', 0),
(11, 'php33', 'LUC-NGA-002-ADM-100044', '36cf9dc628414383', '2025-07-03 07:35:58', '2025-07-04 08:35:58', 0),
(12, 'CSS122', 'LUC-NGA-002-ADM-100044', '019207ffbd42f04c', '2025-07-05 21:24:06', '2025-07-06 22:24:06', 0),
(13, '123A', 'LUC-NGA-002-ADM-1000555', 'abe5bc684b9a96cf', '2025-07-08 12:46:06', '2025-07-09 13:46:06', 1),
(14, 'pop', 'LUC-NGA-002-ADM-1000555', '7b0301f81023a0eb', '2025-07-09 21:35:17', '2025-07-10 22:35:17', 2),
(15, 'JS2', 'LUC-NGA-002-ADM-1000555', '3016a58c5744feef', '2025-07-10 13:32:51', '2025-07-11 14:32:51', 2),
(16, 'JS2', 'LUC-NGA-002-ADM-100022', 'c8c23e6749adede8', '2025-07-10 13:44:33', '2025-07-11 14:44:33', 1),
(17, 'JS2', 'LUC-NGA-002-ADM-1000992', 'ac7fa8f300f5f36c', '2025-07-10 15:41:05', '2025-07-11 16:41:05', 0),
(18, 'JS2', 'ADM1000772', 'a3a9ea41dd6d97e6', '2025-07-12 10:47:03', '2025-07-13 11:47:03', 0),
(19, 'JS2', 'LUC-NGA-002-ADM-1000', '19e8c49c4ad22adc', '2025-07-12 20:58:42', '2025-07-13 21:58:42', 0),
(20, 'RM12', 'ADM1000772', '896a988d2f579ed2', '2025-07-14 06:07:16', '2025-07-15 07:07:16', 0),
(22, 'eng22', 'ADM1000772', '59701bf7bd34854c', '2025-07-15 19:28:07', '2025-07-16 20:28:07', 1),
(23, 'eng22', 'LUC-NGA-002-ADM-1000555', 'fd366af0a83b6757', '2025-07-15 19:57:34', '2025-07-16 20:57:34', 0),
(24, 'CSS122', 'LUC-NGA-002-ADM-1000555', 'ea5d427b7a60e46a', '2025-07-16 10:12:27', '2025-07-17 11:12:27', 0),
(25, 'pop', 'ADM1000772', '043911c3a0017abc', '2025-07-16 12:02:47', '2025-07-17 13:02:47', 0),
(26, 'eng22', 'LUC-NGA-002-ADM-1000', 'b12779041a1f5233', '2025-07-17 05:23:57', '2025-07-18 06:23:57', 1),
(27, 'eng22', 'LUC-NGA-002-ADM-100011', '8bba4a241289aecc', '2025-07-17 05:26:27', '2025-07-18 06:26:27', 0),
(28, 'eng22', 'LUC-NGA-002-ADM-1000772', '7dc1bfec493c6b94', '2025-07-17 05:51:00', '2025-07-18 07:03:56', 0),
(33, 'eng22', 'LUC-NGA-002-ADM-1000992', '4272f8d4759f84a0', '2025-07-17 06:04:30', '2025-07-18 07:05:00', 0),
(35, 'POP', 'LUC-NGA-002-ADM-100011', 'ed06813a3bbb3c71', '2025-07-17 13:36:32', '2025-07-18 14:36:32', 0),
(36, 'js2', 'LUC-NGA-002-ADM-100011', '785860193262619d', '2025-07-17 13:38:37', '2025-07-18 14:38:37', 0),
(37, 'pop', 'LUC-NGA-002-ADM-1000772', '7925f0094fac7f0d', '2025-07-17 13:41:54', '2025-07-18 14:41:54', 0);

-- --------------------------------------------------------

--
-- Table structure for table `lecturers`
--

CREATE TABLE `lecturers` (
  `id` int(11) NOT NULL,
  `full_name` varchar(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `status` enum('pending','approved','rejected') DEFAULT 'pending',
  `approved_by` int(11) DEFAULT NULL,
  `approved_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `profile_image` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `lecturers`
--

INSERT INTO `lecturers` (`id`, `full_name`, `username`, `email`, `password`, `status`, `approved_by`, `approved_at`, `updated_at`, `created_at`, `profile_image`) VALUES
(1, 'MARY AKINYODE', 'Marykay', 'akinyodemary4@gmail.com', '$2y$10$hd0oJ9LIagDMF0szM8jseeCcEbyJpCExmaJfPq1v8VLZTzJPAy5DC', 'approved', 3, '2025-07-12 03:27:18', '2025-07-12 03:27:18', '2025-05-19 21:08:05', NULL),
(2, 'Akinyode Mary.k', 'Engr. Marykay', 'marykay17.mk@gmail.com', '$2y$10$z3JDT.5Fmm4hA5wjDg926eYcAnsGpg5KsKGFFa8Ja0GhllfRBD.KO', 'pending', NULL, NULL, '2025-07-11 18:05:41', '2025-06-27 10:15:39', NULL),
(3, 'Deborah Okike', 'Deborah', 'debby4@gmail.com', '$2y$10$D0G5GFzEebu4gedVU2iIA.sPIkFyqF2FaaoNH.2K3Djo/HVPBuk6W', 'pending', NULL, NULL, '2025-07-11 18:05:41', '2025-07-10 14:17:33', NULL),
(4, 'Deborah', 'Debi', 'debby@gmail.com', '$2y$10$ON72fsms9Fy4vk2kxCmuTOq4gGWlja1BQT1h/y0NSJtC9ADqh7zE.', 'pending', NULL, NULL, '2025-07-11 18:05:41', '2025-07-10 14:20:49', NULL),
(5, 'Promise', 'prom', 'prom@gmail.com', '$2y$10$v2AcP7WGiPM4cHQGozE.T.KX/i83lrGWlPHpUy6Fte5YacTx9QHSG', 'pending', NULL, NULL, '2025-07-11 18:05:41', '2025-07-10 15:11:02', NULL),
(6, 'Omojo Gold', 'Gold', 'Gold4@gmail.com', '$2y$10$y55hro6LzFlzpPBUuI9VMuQWmAOJJ7XlPgvojj1/wIZ92SCtjGRPS', 'approved', 3, '2025-07-12 03:25:57', '2025-07-12 03:25:57', '2025-07-12 02:49:03', NULL),
(7, 'MARY AKINYODE', 'Mary', 'akinyodemary5@gmail.com', '$2y$10$yB/JgGHA7fw/eHft8IMXmubbgDAq5NQ6s53kAgJPnjPIxm12.OYZG', 'approved', 4, '2025-07-15 18:23:04', '2025-07-16 09:31:09', '2025-07-15 18:20:38', 'uploads/1752603638_40268_d958916e998b3067a13bc9d13bf4a29a-9_21_2023, 10_33_40 PM.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `resu`
--

CREATE TABLE `resu` (
  `id` int(11) NOT NULL,
  `student_id` int(11) DEFAULT NULL,
  `exam_name` varchar(255) DEFAULT NULL,
  `exam_date` date DEFAULT NULL,
  `score` decimal(5,2) DEFAULT NULL,
  `total_score` decimal(5,2) DEFAULT NULL,
  `comment` text DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `results`
--

CREATE TABLE `results` (
  `id` int(11) NOT NULL,
  `student_id` varchar(50) NOT NULL,
  `registration_number` varchar(100) NOT NULL,
  `first_name` varchar(100) DEFAULT NULL,
  `last_name` varchar(100) NOT NULL,
  `subject_id` int(11) NOT NULL,
  `subject_key` varchar(50) NOT NULL,
  `subject_name` varchar(255) DEFAULT NULL,
  `exam_date` varchar(255) NOT NULL,
  `score` decimal(5,2) DEFAULT 0.00,
  `total_marks` decimal(5,2) DEFAULT 0.00,
  `submitted_at` datetime DEFAULT current_timestamp(),
  `objective_score` decimal(5,2) DEFAULT 0.00,
  `theory_score` decimal(5,2) DEFAULT 0.00,
  `percentage` decimal(5,2) GENERATED ALWAYS AS (`score` / `total_marks` * 100) STORED,
  `questions_answered` int(11) DEFAULT 0,
  `total_questions` int(11) DEFAULT 0,
  `objective_answers` longtext DEFAULT NULL COMMENT 'JSON encoded objective answers',
  `theory_answers` longtext DEFAULT NULL COMMENT 'JSON encoded theory answers',
  `time_taken` int(11) DEFAULT NULL COMMENT 'Time taken in minutes',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `results`
--

INSERT INTO `results` (`id`, `student_id`, `registration_number`, `first_name`, `last_name`, `subject_id`, `subject_key`, `subject_name`, `exam_date`, `score`, `total_marks`, `submitted_at`, `objective_score`, `theory_score`, `questions_answered`, `total_questions`, `objective_answers`, `theory_answers`, `time_taken`, `created_at`, `updated_at`) VALUES
(6, '2', 'LUC-NGA-002-ADM-1000992', 'Deborah', 'Okike', 30, 'CSS122', 'CSS', '2025-06-23', 0.80, 10.00, '2025-06-23 12:31:35', 0.00, 0.80, 1, 1, NULL, NULL, NULL, '2025-07-11 09:55:13', '2025-07-11 09:55:13'),
(10, '5', 'LUC-NGA-002-ADM-100044', 'Mark', 'Daniel', 30, 'CSS122', 'CSS', '2025-07-05', 11.00, 10.00, '2025-07-05 22:25:10', 10.00, 1.00, 3, 3, NULL, NULL, NULL, '2025-07-11 09:55:13', '2025-07-11 09:55:13'),
(12, '7', 'LUC-NGA-002-ADM-1000555', 'MaryK', 'AKIN', 65, 'pop', 'PHP', '2025-07-09', 1.00, 5.00, '2025-07-09 22:37:17', 0.00, 1.00, 2, 2, NULL, NULL, NULL, '2025-07-11 09:55:13', '2025-07-11 09:55:13'),
(13, '7', 'LUC-NGA-002-ADM-1000555', 'MaryK', 'AKIN', 66, 'JS2', 'Java', '2025-07-10', 3.00, 5.00, '2025-07-10 14:33:01', 0.00, 3.00, 1, 1, NULL, NULL, NULL, '2025-07-11 09:55:13', '2025-07-11 09:55:13'),
(14, '4', 'LUC-NGA-002-ADM-100022', 'MK', 'KAY', 66, 'JS2', 'Java', '2025-07-10', 5.00, 5.00, '2025-07-10 14:45:05', 2.00, 3.00, 2, 2, NULL, NULL, NULL, '2025-07-11 09:55:13', '2025-07-11 09:55:13'),
(15, '2', 'LUC-NGA-002-ADM-1000992', 'Deborah', 'Okike', 66, 'JS2', 'Java', '2025-07-10', 5.00, 5.00, '2025-07-10 16:41:13', 2.00, 3.00, 2, 2, NULL, NULL, NULL, '2025-07-11 09:55:13', '2025-07-11 09:55:13'),
(16, '8', 'ADM1000772', 'Goodness', 'Olowe', 66, 'JS2', 'Java', '2025-07-12', 0.00, 5.00, '2025-07-12 11:47:15', 0.00, 0.00, 0, 2, '[]', '[]', 0, '2025-07-12 09:47:15', '2025-07-12 09:47:15'),
(17, '3', 'LUC-NGA-002-ADM-1000', 'Gold', 'Omojo', 66, 'JS2', 'Java', '2025-07-12', 0.00, 5.00, '2025-07-12 21:58:52', 0.00, 0.00, 0, 2, '[]', '[]', 0, '2025-07-12 19:58:52', '2025-07-12 19:58:52'),
(18, '8', 'ADM1000772', 'Goodness', 'Olowe', 56, 'RM12', 'RDBMS?', '2025-07-14', 0.00, 5.00, '2025-07-14 13:46:07', 0.00, 0.00, 1, 1, '[]', '[]', 399, '2025-07-14 11:46:07', '2025-07-14 11:46:07'),
(20, '8', 'ADM1000772', 'Goodness', 'Olowe', 67, 'eng22', 'English', '2025-07-15', 8.00, 10.00, '2025-07-15 20:29:26', 5.00, 3.00, 2, 2, '{\"107\":{\"question\":\"3+4\",\"student_answer\":\"C\",\"correct_answer\":\"C\",\"mark\":5,\"is_correct\":true,\"options\":{\"A\":\"4\",\"B\":\"5\",\"C\":\"7\",\"D\":\"4\"}}}', '{\"106\":{\"question\":\"what is English language?\",\"student_answer\":\"Is a language\",\"expected_answer\":\"a language\",\"keywords\":[\"a\",\"language\"],\"matched_keywords\":[\"a\",\"language\"],\"mark\":3,\"awarded_mark\":3,\"match_percentage\":100}}', 1, '2025-07-15 18:29:26', '2025-07-15 18:29:26'),
(21, '7', 'LUC-NGA-002-ADM-1000555', 'MaryK', 'AKIN', 67, 'eng22', 'English', '2025-07-15', 8.00, 10.00, '2025-07-15 20:59:16', 5.00, 3.00, 2, 2, '{\"107\":{\"question\":\"3+4\",\"student_answer\":\"C\",\"correct_answer\":\"C\",\"mark\":5,\"is_correct\":true,\"options\":{\"A\":\"4\",\"B\":\"5\",\"C\":\"7\",\"D\":\"4\"}}}', '{\"106\":{\"question\":\"what is English language?\",\"student_answer\":\"A language\",\"expected_answer\":\"a language\",\"keywords\":[\"a\",\"language\"],\"matched_keywords\":[\"a\",\"language\"],\"mark\":3,\"awarded_mark\":3,\"match_percentage\":100}}', 2, '2025-07-15 18:59:16', '2025-07-15 18:59:16'),
(22, '7', 'LUC-NGA-002-ADM-1000555', 'MaryK', 'AKIN', 30, 'CSS122', 'CSS', '2025-07-16', 1.00, 10.00, '2025-07-16 11:15:12', 0.00, 1.00, 1, 1, '[]', '{\"13\":{\"question\":\"what is css ?\",\"student_answer\":\"cascading style sheet\",\"expected_answer\":\"Cascading Style sheet\",\"keywords\":[\"cascading\",\"style\",\"sheet\"],\"matched_keywords\":[\"cascading\",\"style\",\"sheet\"],\"mark\":1,\"awarded_mark\":1,\"match_percentage\":100}}', 3, '2025-07-16 09:15:12', '2025-07-16 09:15:12'),
(23, '8', 'ADM1000772', 'Goodness', 'Olowe', 65, 'pop', 'PHP?', '2025-07-16', 1.80, 5.00, '2025-07-16 13:04:31', 0.00, 1.80, 2, 2, '[]', '{\"102\":{\"question\":\"qwfwe\",\"student_answer\":\"ssss\",\"expected_answer\":\"qt33\",\"keywords\":[\"q\"],\"matched_keywords\":[],\"mark\":4,\"awarded_mark\":0.8,\"match_percentage\":0},\"103\":{\"question\":\"What is php\",\"student_answer\":\"php\",\"expected_answer\":\"php\",\"keywords\":[\"p\",\"h\",\"p\"],\"matched_keywords\":[\"p\",\"h\",\"p\"],\"mark\":1,\"awarded_mark\":1,\"match_percentage\":100}}', 2, '2025-07-16 11:04:31', '2025-07-16 11:04:31'),
(24, '10', 'LUC-NGA-002-ADM-1000', 'Dave', 'Dan', 67, 'eng22', 'English', '2025-07-17', 8.80, 10.00, '2025-07-17 06:24:32', 7.00, 1.80, 3, 3, '{\"107\":{\"question\":\"3+4\",\"student_answer\":\"C\",\"correct_answer\":\"C\",\"mark\":5,\"is_correct\":true,\"options\":{\"A\":\"4\",\"B\":\"5\",\"C\":\"7\",\"D\":\"4\"}},\"108\":{\"question\":\"Is english good\",\"student_answer\":\"A\",\"correct_answer\":\"A\",\"mark\":2,\"is_correct\":true,\"options\":{\"A\":\"yes\",\"B\":\"no\",\"C\":\"idk\",\"D\":\"no\"}}}', '{\"106\":{\"question\":\"what is English language?\",\"student_answer\":\"is a langusge\",\"expected_answer\":\"a language\",\"keywords\":[\"a\",\"language\"],\"matched_keywords\":[\"a\"],\"mark\":3,\"awarded_mark\":1.7999999999999998,\"match_percentage\":50}}', 1, '2025-07-17 04:24:32', '2025-07-17 04:24:32'),
(25, '11', 'LUC-NGA-002-ADM-100011', 'David', 'Daniel', 67, 'eng22', 'English', '2025-07-17', 0.00, 10.00, '2025-07-17 06:28:57', 0.00, 0.00, 1, 3, '[]', '[]', 3, '2025-07-17 04:28:57', '2025-07-17 04:28:57'),
(26, '1', 'LUC-NGA-002-ADM-1000772', 'Mary', 'AKINYODE', 67, 'eng22', 'English', '2025-07-17', 0.00, 10.00, '2025-07-17 07:03:58', 0.00, 0.00, 1, 3, '[]', '[]', 13, '2025-07-17 05:03:58', '2025-07-17 05:03:58'),
(27, '2', 'LUC-NGA-002-ADM-1000992', 'Deborah', 'Okike', 67, 'eng22', 'English', '2025-07-17', 10.00, 10.00, '2025-07-17 07:05:32', 7.00, 3.00, 3, 3, '{\"107\":{\"question\":\"3+4\",\"student_answer\":\"C\",\"correct_answer\":\"C\",\"mark\":5,\"is_correct\":true,\"options\":{\"A\":\"4\",\"B\":\"5\",\"C\":\"7\",\"D\":\"4\"}},\"108\":{\"question\":\"Is english good\",\"student_answer\":\"A\",\"correct_answer\":\"A\",\"mark\":2,\"is_correct\":true,\"options\":{\"A\":\"yes\",\"B\":\"no\",\"C\":\"idk\",\"D\":\"no\"}}}', '{\"106\":{\"question\":\"what is English language?\",\"student_answer\":\"Language\",\"expected_answer\":\"a language\",\"keywords\":[\"a\",\"language\"],\"matched_keywords\":[\"a\",\"language\"],\"mark\":3,\"awarded_mark\":3,\"match_percentage\":100}}', 1, '2025-07-17 05:05:32', '2025-07-17 05:05:32'),
(28, '11', 'LUC-NGA-002-ADM-100011', 'David', 'Daniel', 66, 'js2', 'Java', '2025-07-17', 0.00, 5.00, '2025-07-17 14:38:41', 0.00, 0.00, 0, 1, '[]', '[]', 2, '2025-07-17 12:38:41', '2025-07-17 12:38:41'),
(29, '1', 'LUC-NGA-002-ADM-1000772', 'Mary', 'Akinyode', 65, 'pop', 'PHP?', '2025-07-17', 1.80, 5.00, '2025-07-17 14:42:07', 0.00, 1.80, 2, 2, '[]', '{\"102\":{\"question\":\"qwfwe\",\"student_answer\":\"nnn\",\"expected_answer\":\"qt33\",\"keywords\":[\"q\"],\"matched_keywords\":[],\"mark\":4,\"awarded_mark\":0.8,\"match_percentage\":0},\"103\":{\"question\":\"What is php\",\"student_answer\":\"php\",\"expected_answer\":\"php\",\"keywords\":[\"p\",\"h\",\"p\"],\"matched_keywords\":[\"p\",\"h\",\"p\"],\"mark\":1,\"awarded_mark\":1,\"match_percentage\":100}}', 0, '2025-07-17 12:42:07', '2025-07-17 12:42:07');

-- --------------------------------------------------------

--
-- Table structure for table `stud`
--

CREATE TABLE `stud` (
  `id` int(11) NOT NULL,
  `full_name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `registration_number` varchar(100) NOT NULL,
  `class` varchar(100) NOT NULL,
  `password` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `stud`
--

INSERT INTO `stud` (`id`, `full_name`, `email`, `registration_number`, `class`, `password`, `created_at`, `updated`) VALUES
(1, 'MARY AKINYODE', 'marykay@gmail.com', '123dddd', '3', '$2y$10$i38HBRzyj7ep5PqW8JeEIuql3vB3Kjb/7LG0Sk0PlgWIDvGKOkGGK', '2025-05-21 13:39:24', '2025-05-27 09:06:43'),
(33, 'MARY AKINYODE', 'mary@gmail.com', 'LUC-NGA-002-ADM-1000936', 'JSS 3', '$2y$10$UlWnhQG48k2KtvTPo7B1reFyNPl3fTx9ikJypt1A.NjMq1dQqKfeG', '2025-06-03 16:41:29', '2025-06-03 16:41:29'),
(34, 'MARY AKINYODE', 'mk@gmail.com', 'LUC-NGA-002-ADM-1000', 'SSS 3', '$2y$10$9PDhV9G2kwMKNnl7c6KLKu.pip7J7b/RT3cs97azVAiwVl3Blh88W', '2025-06-04 12:17:40', '2025-06-04 12:17:40'),
(35, 'MARY AKINYODE', '', '', '', '', '2025-06-04 14:11:07', '2025-06-04 14:11:07'),
(36, 'Deborah Okike', 'maryk@gmail.com', 'LUC-NGA-002-ADM-1000772', 'JSS 1', '$2y$10$qplnT8eXzZ4POIrIsmYrI.B52Y9WYbxl/RZEWYVxZNY7lfy9b6OPm', '2025-06-06 13:52:38', '2025-06-06 13:52:38');

-- --------------------------------------------------------

--
-- Table structure for table `students`
--

CREATE TABLE `students` (
  `id` int(11) NOT NULL,
  `first_name` varchar(100) NOT NULL,
  `last_name` varchar(100) NOT NULL,
  `registration_number` varchar(50) NOT NULL,
  `email` varchar(100) NOT NULL,
  `class` varchar(50) NOT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `updated` datetime DEFAULT NULL ON UPDATE current_timestamp(),
  `username` varchar(50) DEFAULT NULL,
  `profile_picture` varchar(255) DEFAULT NULL,
  `theme` varchar(20) DEFAULT 'indigo',
  `font` varchar(10) DEFAULT 'sans',
  `created_by_admin` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `students`
--

INSERT INTO `students` (`id`, `first_name`, `last_name`, `registration_number`, `email`, `class`, `created_at`, `updated`, `username`, `profile_picture`, `theme`, `font`, `created_by_admin`) VALUES
(1, 'Mary', 'AKINYODE', 'LUC-NGA-002-ADM-1000772', 'akinyodemary4@gmail.com', '3', '2025-06-11 13:15:28', NULL, NULL, NULL, 'light', 'sans', NULL),
(2, 'Deborah', 'Okike', 'LUC-NGA-002-ADM-1000992', 'marykay@gmail.com', 'SS1 2024', '2025-06-17 08:10:49', '2025-06-19 08:18:21', 'Marykay', 'uploads/profile_pictures/student_2_1750316603.jpg', 'blue-light', 'sans', NULL),
(8, 'Goodness', 'Olowe', 'ADM1000772', 'good@gmail.com', 'JSS1 1st Term', '2025-07-12 04:38:13', NULL, NULL, NULL, 'indigo', 'sans', NULL),
(10, 'Dave', 'Dan', 'LUC-NGA-002-ADM-1000', 'dd4@gmail.com', 'JSS2 2nd Term', '2025-07-17 05:23:15', NULL, NULL, NULL, 'indigo', 'sans', NULL),
(11, 'David', 'Daniel', 'LUC-NGA-002-ADM-100011', 'd@gmail.com', 'JSS3 3rd Term', '2025-07-17 05:26:08', NULL, NULL, NULL, 'indigo', 'sans', NULL),
(12, 'Dayo', 'Daniel', 'LUC-NGA-002-ADM-10002', 'dayo@gmail.com', 'SS2 3rd Term', '2025-07-17 13:04:41', NULL, NULL, NULL, 'indigo', 'sans', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `subjects`
--

CREATE TABLE `subjects` (
  `id` int(11) NOT NULL,
  `subject_name` varchar(100) DEFAULT NULL,
  `subject_key` varchar(50) DEFAULT NULL,
  `exam_timer` int(11) DEFAULT NULL,
  `total_marks` int(11) DEFAULT NULL,
  `lecturer` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `subjects`
--

INSERT INTO `subjects` (`id`, `subject_name`, `subject_key`, `exam_timer`, `total_marks`, `lecturer`) VALUES
(30, 'CSS', 'CSS122', 20, 10, 'Marykay'),
(35, 'Computer Programming', 'CP22', 20, 10, 'Engr. Marykay'),
(56, 'RDBMS?', 'RM12', 1, 5, 'Marykay'),
(65, 'PHP?', 'pop', 2, 5, 'Marykay'),
(66, 'Java', 'JS2', 3, 5, 'Marykay'),
(67, 'English', 'eng22', 2, 10, 'Marykay'),
(68, 'Javascript', 'JSS9', 2, 5, 'Marykay');

-- --------------------------------------------------------

--
-- Table structure for table `subject_quest`
--

CREATE TABLE `subject_quest` (
  `subject_id` int(11) NOT NULL,
  `lecturer` varchar(255) DEFAULT NULL,
  `subject_name` varchar(255) DEFAULT NULL,
  `subject_key` varchar(255) DEFAULT NULL,
  `question_type` enum('objective','theory') NOT NULL,
  `question` text NOT NULL,
  `mark` int(11) NOT NULL,
  `status` enum('saved','submitted') NOT NULL,
  `option_a` text DEFAULT NULL,
  `option_b` text DEFAULT NULL,
  `option_c` text DEFAULT NULL,
  `option_d` text DEFAULT NULL,
  `correct_option` enum('A','B','C','D') DEFAULT NULL,
  `expected_answer` text DEFAULT NULL,
  `keywords` text DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `subject_quest`
--

INSERT INTO `subject_quest` (`subject_id`, `lecturer`, `subject_name`, `subject_key`, `question_type`, `question`, `mark`, `status`, `option_a`, `option_b`, `option_c`, `option_d`, `correct_option`, `expected_answer`, `keywords`, `created_at`) VALUES
(10, 'Marykay', '10', '123A', 'objective', 'What is HTML', 2, '', 'Hypertext Markup Language', 'information', 'processed data', 'Hypertext Mark Up Language ', 'A', NULL, NULL, '2025-06-05 18:11:07'),
(13, 'Marykay', '8', 'CSS202', 'objective', 'IS CSS a programming language?', 2, 'saved', 'yes', 'no it is', 'no it is not', 'yes it is', 'C', NULL, NULL, '2025-06-08 23:33:17');

-- --------------------------------------------------------

--
-- Table structure for table `subject_questions`
--

CREATE TABLE `subject_questions` (
  `id` int(11) NOT NULL,
  `subject_id` int(11) NOT NULL,
  `subject_key` varchar(100) NOT NULL,
  `subject_name` varchar(100) NOT NULL,
  `question_type` enum('objective','theory') NOT NULL,
  `question` text NOT NULL,
  `option_a` varchar(255) DEFAULT NULL,
  `option_b` varchar(255) DEFAULT NULL,
  `option_c` varchar(255) DEFAULT NULL,
  `option_d` varchar(255) DEFAULT NULL,
  `correct_option` enum('A','B','C','D') DEFAULT NULL,
  `expected_answer` text DEFAULT NULL,
  `keywords` text DEFAULT NULL,
  `mark` int(11) DEFAULT 1,
  `status` enum('saved','submitted') DEFAULT 'saved',
  `lecturer` varchar(100) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `note` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `subject_questions`
--

INSERT INTO `subject_questions` (`id`, `subject_id`, `subject_key`, `subject_name`, `question_type`, `question`, `option_a`, `option_b`, `option_c`, `option_d`, `correct_option`, `expected_answer`, `keywords`, `mark`, `status`, `lecturer`, `created_at`, `updated_at`, `note`) VALUES
(13, 30, 'CSS122', 'CSS', 'theory', 'what is CSS', NULL, NULL, NULL, NULL, NULL, 'Cascading Style sheet', 'Cascading, Style, sheet', 1, 'submitted', 'Marykay', '2025-06-23 11:21:16', '2025-07-17 08:17:54', ''),
(93, 56, 'RM12', 'RDBMS', 'theory', 'WHAT IS RDBMS', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'submitted', '', '2025-07-09 12:52:44', '2025-07-09 14:02:12', NULL),
(98, 56, 'RDBMS?', '1', 'objective', 'Is RDMS a programming language', 'yes', 'no', 'it is a pl', 'idk', 'B', NULL, NULL, 1, 'submitted', 'Marykay', '2025-07-09 19:46:24', '2025-07-14 13:18:24', NULL),
(99, 56, 'RDBMS?', '1', 'theory', 'hhhh', NULL, NULL, NULL, NULL, NULL, 'hhhh', 'hhhh', 3, 'saved', 'Marykay', '2025-07-09 20:03:57', '2025-07-09 20:03:57', NULL),
(102, 65, 'pop', 'php', 'theory', 'qwfwe', NULL, NULL, NULL, NULL, NULL, 'qt33', 'q', 4, 'submitted', 'Marykay', '2025-07-09 21:32:34', '2025-07-09 20:34:57', NULL),
(103, 65, 'pop', 'PHP', 'theory', 'What is php', NULL, NULL, NULL, NULL, NULL, 'php', 'p,h,p', 1, 'submitted', 'Marykay', '2025-07-09 21:34:36', '2025-07-09 20:35:01', NULL),
(105, 66, 'JS2', 'Java', 'objective', 'is java a pl', 'yes', 'no', 'it is not', 'idk', 'A', NULL, NULL, 2, 'submitted', 'Marykay', '2025-07-10 13:43:33', '2025-07-10 12:44:44', NULL),
(106, 67, 'eng22', 'English', 'theory', 'what is English language?', NULL, NULL, NULL, NULL, NULL, 'a language', 'a, language', 3, 'submitted', 'Marykay', '2025-07-14 13:34:09', '2025-07-14 12:34:09', NULL),
(107, 67, 'eng22', 'English', 'objective', '3+4', '4', '5', '7', '4', 'C', NULL, NULL, 5, 'submitted', 'Marykay', '2025-07-15 19:26:53', '2025-07-15 18:27:07', NULL),
(108, 67, 'eng22', 'English', 'objective', 'Is english good', 'yes', 'no', 'idk', 'no', 'A', NULL, NULL, 2, 'submitted', 'Marykay', '2025-07-17 05:22:38', '2025-07-17 04:22:38', NULL),
(109, 68, 'JSS9', 'Javascript', 'theory', 'what is Javascript', NULL, NULL, NULL, NULL, NULL, 'javascript is a scripting language ', 'javascript, scripting, language ', 5, 'submitted', 'Marykay', '2025-07-17 11:31:18', '2025-07-17 10:31:18', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Indexes for table `admin_activity_logs`
--
ALTER TABLE `admin_activity_logs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_admin_id` (`admin_id`),
  ADD KEY `idx_action` (`action`),
  ADD KEY `idx_created_at` (`created_at`);

--
-- Indexes for table `exam_resume_keys`
--
ALTER TABLE `exam_resume_keys`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `subject_key` (`subject_key`,`registration_number`);

--
-- Indexes for table `lecturers`
--
ALTER TABLE `lecturers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `resu`
--
ALTER TABLE `resu`
  ADD PRIMARY KEY (`id`),
  ADD KEY `student_id` (`student_id`);

--
-- Indexes for table `results`
--
ALTER TABLE `results`
  ADD PRIMARY KEY (`id`),
  ADD KEY `subject_id` (`subject_id`);

--
-- Indexes for table `stud`
--
ALTER TABLE `stud`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`),
  ADD UNIQUE KEY `registration_number` (`registration_number`);

--
-- Indexes for table `students`
--
ALTER TABLE `students`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `registration_number` (`registration_number`),
  ADD UNIQUE KEY `email` (`email`),
  ADD KEY `created_by_admin` (`created_by_admin`);

--
-- Indexes for table `subjects`
--
ALTER TABLE `subjects`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `subject_quest`
--
ALTER TABLE `subject_quest`
  ADD PRIMARY KEY (`subject_id`);

--
-- Indexes for table `subject_questions`
--
ALTER TABLE `subject_questions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `subject_id` (`subject_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admins`
--
ALTER TABLE `admins`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `admin_activity_logs`
--
ALTER TABLE `admin_activity_logs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `exam_resume_keys`
--
ALTER TABLE `exam_resume_keys`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT for table `lecturers`
--
ALTER TABLE `lecturers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `resu`
--
ALTER TABLE `resu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `results`
--
ALTER TABLE `results`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `stud`
--
ALTER TABLE `stud`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT for table `students`
--
ALTER TABLE `students`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `subjects`
--
ALTER TABLE `subjects`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=69;

--
-- AUTO_INCREMENT for table `subject_quest`
--
ALTER TABLE `subject_quest`
  MODIFY `subject_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `subject_questions`
--
ALTER TABLE `subject_questions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=110;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `admin_activity_logs`
--
ALTER TABLE `admin_activity_logs`
  ADD CONSTRAINT `admin_activity_logs_ibfk_1` FOREIGN KEY (`admin_id`) REFERENCES `admins` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `resu`
--
ALTER TABLE `resu`
  ADD CONSTRAINT `resu_ibfk_1` FOREIGN KEY (`student_id`) REFERENCES `students` (`id`);

--
-- Constraints for table `results`
--
ALTER TABLE `results`
  ADD CONSTRAINT `results_ibfk_1` FOREIGN KEY (`subject_id`) REFERENCES `subjects` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `students`
--
ALTER TABLE `students`
  ADD CONSTRAINT `students_ibfk_1` FOREIGN KEY (`created_by_admin`) REFERENCES `admins` (`id`);

--
-- Constraints for table `subject_questions`
--
ALTER TABLE `subject_questions`
  ADD CONSTRAINT `subject_questions_ibfk_1` FOREIGN KEY (`subject_id`) REFERENCES `subjects` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
