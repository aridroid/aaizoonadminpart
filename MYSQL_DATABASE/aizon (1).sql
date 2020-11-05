-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 05, 2020 at 01:12 PM
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
-- Database: `aizon`
--

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`id`, `name`, `email`, `password`, `created_at`, `updated_at`) VALUES
(1, 'Soham', 'soham@gmail.com', '$2y$10$Z8Hd7ScSIzNjP4NtyQIjQ.Sgi/LsUXw.OkLFtKjJ7OgO1TflOPVuy', '2020-10-28 02:48:19', '2020-10-28 02:48:19');

-- --------------------------------------------------------

--
-- Table structure for table `book_appointment`
--

CREATE TABLE `book_appointment` (
  `appt_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `doctor_id` int(11) NOT NULL,
  `unique_pay_id` text NOT NULL COMMENT 'this is against most recent booking and most recent payment',
  `apptmt_date` date NOT NULL,
  `apptmt_time` varchar(100) NOT NULL,
  `appointment_at` time DEFAULT NULL,
  `booking_full_name` varchar(255) DEFAULT NULL,
  `booking_email` varchar(255) DEFAULT NULL,
  `booking_mobile` varchar(13) DEFAULT NULL,
  `booking_address` varchar(255) DEFAULT NULL,
  `notes` varchar(255) DEFAULT NULL,
  `is_emergency` enum('y','n') NOT NULL DEFAULT 'n',
  `booking_for` varchar(50) DEFAULT NULL,
  `health_issue` varchar(100) DEFAULT NULL,
  `age` varchar(10) DEFAULT NULL,
  `gender` enum('n','m','f') DEFAULT 'n' COMMENT 'n=>not available',
  `total` double(15,2) DEFAULT NULL,
  `subtotal` double(15,2) DEFAULT NULL,
  `is_deleted` enum('0','1') NOT NULL DEFAULT '0',
  `is_approved` enum('0','1') NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `book_appointment`
--

INSERT INTO `book_appointment` (`appt_id`, `user_id`, `doctor_id`, `unique_pay_id`, `apptmt_date`, `apptmt_time`, `appointment_at`, `booking_full_name`, `booking_email`, `booking_mobile`, `booking_address`, `notes`, `is_emergency`, `booking_for`, `health_issue`, `age`, `gender`, `total`, `subtotal`, `is_deleted`, `is_approved`, `created_at`, `updated_at`) VALUES
(1, 1, 18, 'UPIDUIDDID1596496618', '2020-07-20', '19:00:00', '10:30:00', 'Arindam Singha', 'test@tes.com', '+917896541236', 'Address is this', 'This is a test notes', 'n', NULL, NULL, NULL, 'n', 50.00, 59.00, '1', '1', '2020-08-03 17:46:58', '2020-10-15 15:58:44'),
(2, 2, 18, 'UPIDUIDDID1596496618', '2020-07-20', '19:00:00', NULL, 'Arindam Singha', 'test@tes.com', '+917896541236', 'Address is this', 'This is a test notes', 'n', NULL, NULL, NULL, 'n', 50.00, 59.00, '1', '0', '2020-08-03 17:46:58', '2020-08-03 17:46:58'),
(3, 1, 18, 'UPIDUIDDID1597008395', '2020-07-20', '00:00:00', NULL, 'Arindam Singha', 'test@tes.com', '+917896541236', 'Address is this', 'This is a test notes', 'n', NULL, NULL, NULL, 'n', 50.00, 59.00, '1', '0', '2020-08-09 15:56:35', '2020-08-09 15:56:35'),
(4, 1, 18, 'UPIDUIDDID1597008485', '2020-07-20', 'Morning', NULL, 'Arindam Singha', 'test@tes.com', '+917896541236', 'Address is this', 'This is a test notes', 'n', NULL, NULL, NULL, 'n', 50.00, 59.00, '1', '0', '2020-08-09 15:58:05', '2020-08-09 15:58:05'),
(5, 1, 18, 'UPIDUIDDID1597671460', '2020-09-20', 'Morning', NULL, 'Arindam Singha', 'test@tes.com', '+917896541236', 'Address is this', 'This is a test notes', 'n', NULL, NULL, NULL, 'n', 50.00, 59.00, '1', '0', '2020-08-17 08:07:40', '2020-08-17 08:07:40'),
(6, 1, 18, '', '2020-09-18', 'Morning', NULL, 'Arindam Singha', 'test@tes.com', '+917896541236', 'Address is this', 'This is a test notes', 'n', NULL, NULL, NULL, 'n', NULL, NULL, '1', '0', '2020-08-17 08:08:39', '2020-08-17 08:08:39'),
(7, 1, 18, 'UPIDUIDDID1597671672', '2020-09-11', 'Morning', NULL, 'Arindam Singha', 'test@tes.com', '+917896541236', 'Address is this', 'This is a test notes', 'n', NULL, NULL, NULL, 'n', 50.00, 59.00, '1', '0', '2020-08-17 08:11:12', '2020-08-17 08:11:12');

-- --------------------------------------------------------

--
-- Table structure for table `book_nurse_aaya_appointment`
--

CREATE TABLE `book_nurse_aaya_appointment` (
  `appt_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `aaya_nurse_id` int(11) NOT NULL,
  `unique_pay_id` text NOT NULL COMMENT 'this is against most recent booking and most recent payment',
  `apptmt_date` date NOT NULL,
  `apptmt_time` varchar(100) NOT NULL,
  `appointment_at` time DEFAULT NULL,
  `booking_full_name` varchar(255) DEFAULT NULL,
  `booking_email` varchar(255) DEFAULT NULL,
  `booking_mobile` varchar(13) DEFAULT NULL,
  `booking_address` varchar(255) DEFAULT NULL,
  `latitude` varchar(100) DEFAULT NULL,
  `longitude` varchar(100) DEFAULT NULL,
  `notes` varchar(255) DEFAULT NULL,
  `is_emergency` enum('y','n') NOT NULL DEFAULT 'n',
  `booking_for` varchar(50) DEFAULT NULL,
  `health_issue` varchar(100) DEFAULT NULL,
  `age` varchar(10) DEFAULT NULL,
  `gender` enum('n','m','f') DEFAULT 'n' COMMENT 'n=>not available',
  `total` double(15,2) DEFAULT NULL,
  `subtotal` double(15,2) DEFAULT NULL,
  `is_deleted` enum('0','1') NOT NULL DEFAULT '0',
  `is_approved` enum('0','1') NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `book_nurse_aaya_appointment`
--

INSERT INTO `book_nurse_aaya_appointment` (`appt_id`, `user_id`, `aaya_nurse_id`, `unique_pay_id`, `apptmt_date`, `apptmt_time`, `appointment_at`, `booking_full_name`, `booking_email`, `booking_mobile`, `booking_address`, `latitude`, `longitude`, `notes`, `is_emergency`, `booking_for`, `health_issue`, `age`, `gender`, `total`, `subtotal`, `is_deleted`, `is_approved`, `created_at`, `updated_at`) VALUES
(1, 1, 24, 'UPIDUIDDID241600257749', '2020-09-11', 'Morning', NULL, 'Arindam Singha', 'test@tes.com', '+917896541236', 'Address is this', NULL, NULL, 'This is a test notes', 'n', NULL, NULL, NULL, 'n', 50.00, 59.00, '0', '0', '2020-09-16 06:32:29', '2020-09-16 06:32:29'),
(2, 1, 24, 'UPIDUIDDID241603229709', '2020-12-11', 'Morning', NULL, 'Arindam Singha', 'test@tes.com', '+917896541236', 'Address is this', '85.74567', '85.12345', 'This is a test notes', 'n', NULL, NULL, NULL, 'n', 50.00, 59.00, '0', '0', '2020-10-20 16:05:09', '2020-10-20 16:05:09');

-- --------------------------------------------------------

--
-- Table structure for table `doctors_clinic_information`
--

CREATE TABLE `doctors_clinic_information` (
  `id` int(11) NOT NULL,
  `doctor_id` int(11) UNSIGNED NOT NULL,
  `clinic_name` varchar(200) DEFAULT NULL,
  `clinic_address` varchar(255) DEFAULT NULL,
  `pin_code` varchar(6) NOT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `doctors_clinic_information`
--

INSERT INTO `doctors_clinic_information` (`id`, `doctor_id`, `clinic_name`, `clinic_address`, `pin_code`, `created_at`, `updated_at`) VALUES
(1, 22, 'Clinic One', 'Clinic Two Address goes here', '700001', '2020-08-12 00:32:49', '2020-08-12 00:32:49'),
(2, 7, 'Clinic Two', 'Clinic Address goes here', '700003', '2020-08-12 00:32:49', '2020-08-12 00:32:49'),
(3, 7, 'Clinic Two', 'Clinic Address goes here', '700022', '2020-08-12 00:32:49', '2020-08-12 00:32:49'),
(4, 7, 'Clinic Two', 'Clinic Address goes here', '700021', '2020-08-12 00:32:49', '2020-08-12 00:32:49'),
(5, 22, 'Clinic One', 'Clinic Two Address goes here', '700008', '2020-08-28 10:08:04', '2020-08-28 10:08:04'),
(6, 22, 'Clinic Two', 'Clinic Address goes here', '700012', '2020-08-28 10:08:04', '2020-08-28 10:08:04'),
(7, 22, 'gsjskfndb', 'hdjsospbdb', '700049', '2020-08-28 21:42:43', '2020-08-28 21:42:43'),
(8, 22, 'lsbsbcskndv', 'gskbevkaovs', '700049', '2020-08-28 21:42:43', '2020-08-28 21:42:43'),
(9, 22, 'gsjskfndb', 'hdjsospbdb', '700049', '2020-08-29 14:08:35', '2020-08-29 14:08:35'),
(10, 22, 'lsbsbcskndv', 'gskbevkaovs', '700049', '2020-08-29 14:08:35', '2020-08-29 14:08:35'),
(11, 22, 'gsjskfndb', 'hdjsospbdb', '700049', '2020-08-29 14:11:55', '2020-08-29 14:11:55'),
(12, 22, 'lsbsbcskndv', 'gskbevkaovs', '700049', '2020-08-29 14:11:55', '2020-08-29 14:11:55'),
(13, 22, 'gsjskfndb', 'hdjsospbdb', '700049', '2020-08-29 15:09:15', '2020-08-29 15:09:15'),
(14, 22, 'lsbsbcskndv', 'gskbevkaovs', '700049', '2020-08-29 15:09:15', '2020-08-29 15:09:15'),
(15, 22, 'gsjskfndb', 'hdjsospbdb', '700049', '2020-09-03 18:39:50', '2020-09-03 18:39:50'),
(16, 22, 'gsjskfndb', 'hdjsospbdb', '700049', '2020-09-03 19:30:36', '2020-09-03 19:30:36'),
(17, 22, 'gsjskfndb', 'hdjsospbdb', '700049', '2020-09-03 19:32:50', '2020-09-03 19:32:50'),
(18, 22, 'gsjskfndb', 'hdjsospbdb', '700049', '2020-09-03 19:34:51', '2020-09-03 19:34:51'),
(19, 22, 'gsjskfndb', 'hdjsospbdb', '700049', '2020-09-03 19:36:02', '2020-09-03 19:36:02'),
(20, 22, 'gsjskfndb', 'hdjsospbdb', '700049', '2020-09-03 19:36:52', '2020-09-03 19:36:52'),
(21, 22, 'gsjskfndb', 'hdjsospbdb', '700049', '2020-09-03 19:37:30', '2020-09-03 19:37:30'),
(22, 22, 'gsjskfndb', 'hdjsospbdb', '700049', '2020-09-03 19:38:14', '2020-09-03 19:38:14'),
(23, 22, 'gsjskfndb', 'hdjsospbdb', '700049', '2020-09-03 19:40:08', '2020-09-03 19:40:08'),
(24, 22, 'gsjskfndb', 'hdjsospbdb', '700049', '2020-09-03 19:41:37', '2020-09-03 19:41:37'),
(25, 22, 'gsjskfndb', 'hdjsospbdb', '700049', '2020-09-03 19:44:30', '2020-09-03 19:44:30'),
(26, 22, 'gsjskfndb', 'hdjsospbdb', '700049', '2020-09-03 19:45:09', '2020-09-03 19:45:09'),
(27, 22, 'gsjskfndb', 'hdjsospbdb', '700049', '2020-09-03 19:47:46', '2020-09-03 19:47:46'),
(28, 22, 'gsjskfndb', 'hdjsospbdb', '700049', '2020-09-03 19:48:16', '2020-09-03 19:48:16'),
(29, 22, 'gsjskfndb', 'hdjsospbdb', '700049', '2020-09-03 19:50:48', '2020-09-03 19:50:48'),
(30, 30, 'gsjskfndb', 'hdjsospbdb', '700049', '2020-09-30 20:18:56', '2020-09-30 20:18:56'),
(31, 30, 'gsjskfndb', 'hdjsospbdb', '700049', '2020-09-30 20:24:13', '2020-09-30 20:24:13'),
(32, 30, 'gsjskfndb', 'hdjsospbdb', '700049', '2020-09-30 20:37:27', '2020-09-30 20:37:27'),
(33, 30, 'gsjskfndb', 'hdjsospbdb', '700049', '2020-09-30 20:37:39', '2020-09-30 20:37:39'),
(34, 30, 'gsjskfndb', 'hdjsospbdb', '700049', '2020-09-30 20:40:44', '2020-09-30 20:40:44'),
(35, 30, 'gsjskfndb', 'hdjsospbdb', '700049', '2020-09-30 20:42:52', '2020-09-30 20:42:52'),
(36, 30, 'gsjskfndb', 'hdjsospbdb', '700049', '2020-10-01 09:53:44', '2020-10-01 09:53:44'),
(37, 30, 'gsjskfndb', 'hdjsospbdb', '700049', '2020-10-01 09:53:44', '2020-10-01 09:53:44'),
(38, 30, 'lsbsbcskndv', 'gskbevkaovs', '700049', '2020-10-01 09:53:45', '2020-10-01 09:53:45'),
(39, 30, 'Appolo', 'Nimta', '700049', '2020-10-01 14:20:31', '2020-10-01 14:20:31');

-- --------------------------------------------------------

--
-- Table structure for table `doctors_profile`
--

CREATE TABLE `doctors_profile` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL COMMENT 'references id of users table',
  `date_of_birth` date DEFAULT NULL,
  `college_attended` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `qualification` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `specialist_in` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `doctor_fee` double(15,2) DEFAULT NULL,
  `is_preconsultation` enum('0','1') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `pre_consultation_fee` double(15,2) DEFAULT NULL,
  `bed` enum('y','n') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'n',
  `no_of_bed` int(11) DEFAULT NULL,
  `ventilator` enum('y','n') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'n',
  `blood_bank` enum('y','n') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'n',
  `emergency` enum('y','n') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'n',
  `ambulance` enum('y','n') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'n',
  `ambulance_contact` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `medical_license` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `experience` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_video_chat` enum('0','1') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `is_deleted` enum('0','1') COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_approved` enum('0','1') COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `doctors_profile`
--

INSERT INTO `doctors_profile` (`id`, `user_id`, `date_of_birth`, `college_attended`, `qualification`, `address`, `specialist_in`, `doctor_fee`, `is_preconsultation`, `pre_consultation_fee`, `bed`, `no_of_bed`, `ventilator`, `blood_bank`, `emergency`, `ambulance`, `ambulance_contact`, `medical_license`, `experience`, `is_video_chat`, `created_at`, `updated_at`, `is_deleted`, `is_approved`) VALUES
(1, 1, NULL, NULL, NULL, NULL, NULL, 100.50, '1', 500.00, 'n', NULL, 'n', 'n', 'n', 'n', NULL, NULL, NULL, '0', '2020-07-22 18:06:22', '2020-07-26 10:38:47', '1', '1'),
(2, 2, NULL, NULL, NULL, NULL, NULL, NULL, '0', NULL, 'n', NULL, 'n', 'n', 'n', 'n', NULL, NULL, NULL, '0', '2020-07-22 18:10:47', '2020-07-22 18:10:47', '0', '0'),
(3, 3, NULL, NULL, NULL, NULL, NULL, NULL, '0', NULL, 'n', NULL, 'n', 'n', 'n', 'n', NULL, NULL, NULL, '0', '2020-07-22 18:12:31', '2020-07-22 18:12:31', '0', '1'),
(4, 4, NULL, 'College is good', NULL, NULL, NULL, NULL, '0', NULL, 'n', NULL, 'n', 'n', 'n', 'n', NULL, NULL, NULL, '0', '2020-07-22 18:15:45', '2020-07-22 18:15:45', '0', '0'),
(5, 5, NULL, 'College is good', NULL, NULL, NULL, 500.00, '0', NULL, 'n', NULL, 'n', 'n', 'n', 'n', NULL, NULL, NULL, '0', '2020-07-22 18:17:06', '2020-07-22 18:17:06', '0', '0'),
(6, 6, NULL, NULL, NULL, NULL, NULL, 500.00, '0', NULL, 'n', NULL, 'n', 'n', 'n', 'n', NULL, NULL, NULL, '0', '2020-07-22 18:17:40', '2020-07-22 18:17:40', '0', '0'),
(7, 7, NULL, 'test college', 'MS AIIMS', NULL, 'Neurologist', 500.00, '0', NULL, 'n', NULL, 'n', 'n', 'n', 'n', NULL, NULL, NULL, '0', '2020-07-22 21:18:53', '2020-07-22 21:18:53', '1', '0'),
(9, 8, NULL, 'College is good', 'MS AIIMS', NULL, 'Ortho', 500.00, '0', NULL, 'n', NULL, 'n', 'n', 'n', 'n', NULL, NULL, NULL, '0', '2020-07-22 21:49:30', '2020-07-22 21:49:30', '0', '0'),
(10, 16, NULL, 'BRD Medical College', 'Aaj hi market mein aya hai', NULL, 'Kuchh nahin', 500.00, '1', 100.00, 'n', NULL, 'n', 'n', 'n', 'n', NULL, NULL, NULL, '0', '2020-07-27 17:44:16', '2020-07-27 17:44:16', '0', '0'),
(11, 18, NULL, 'New College', 'Newly', NULL, 'Haan', 500.00, '0', NULL, 'n', NULL, 'n', 'n', 'n', 'n', NULL, NULL, NULL, '0', '2020-07-27 17:48:56', '2020-07-27 17:48:56', '0', '0'),
(12, 22, NULL, NULL, NULL, 'Nimta', NULL, NULL, '0', NULL, 'y', NULL, 'y', 'y', 'y', 'y', 'WB26AP1111', NULL, NULL, '0', '2020-08-09 17:34:15', '2020-08-28 13:54:17', '0', '0'),
(13, 30, '1990-02-15', NULL, NULL, 'Nimta', NULL, NULL, '0', NULL, 'y', NULL, 'y', 'y', 'y', 'y', 'WB26AP1111', NULL, NULL, '0', '2020-09-30 14:48:56', '2020-10-01 09:09:46', '0', '0');

-- --------------------------------------------------------

--
-- Table structure for table `doctors_schedule`
--

CREATE TABLE `doctors_schedule` (
  `id` int(11) NOT NULL,
  `doctor_id` int(11) NOT NULL COMMENT 'references id of users table',
  `day_week` varchar(50) DEFAULT NULL,
  `doctor_location` varchar(100) DEFAULT NULL,
  `shift` varchar(50) DEFAULT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `clinic_id` int(11) NOT NULL,
  `morning_shift` enum('y','n') NOT NULL DEFAULT 'n',
  `evening_shift` enum('y','n') NOT NULL DEFAULT 'n',
  `morning_from_time` varchar(100) DEFAULT NULL,
  `morning_to_time` varchar(100) DEFAULT NULL,
  `evening_from_time` varchar(100) DEFAULT NULL,
  `evening_to_time` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `doctors_schedule`
--

INSERT INTO `doctors_schedule` (`id`, `doctor_id`, `day_week`, `doctor_location`, `shift`, `created_at`, `updated_at`, `clinic_id`, `morning_shift`, `evening_shift`, `morning_from_time`, `morning_to_time`, `evening_from_time`, `evening_to_time`) VALUES
(1, 30, 'Monday', NULL, NULL, '2020-10-07 20:43:57', '2020-10-07 20:44:24', 30, 'y', 'n', '10:30:00', '14:00:00', '17:00:00', '19:00:00'),
(2, 30, 'Tuesday', NULL, NULL, '2020-10-07 20:43:57', '2020-10-07 20:44:24', 30, 'y', 'y', '09:30:00', '15:00:00', '17:00:00', '19:00:00'),
(3, 30, 'Wednesday', NULL, NULL, '2020-10-07 20:43:57', '2020-10-07 20:43:57', 30, 'y', 'y', '10:30:00', '13:00:00', '17:00:00', '19:00:00'),
(4, 30, 'Thursday', NULL, NULL, '2020-10-07 20:43:57', '2020-10-07 20:43:57', 30, 'y', 'y', '10:30:00', '13:00:00', '17:00:00', '19:00:00'),
(5, 30, 'Friday', NULL, NULL, '2020-10-07 20:43:57', '2020-10-07 20:43:57', 30, 'y', 'y', '10:30:00', '13:00:00', '17:00:00', '19:00:00'),
(6, 30, 'Saturday', NULL, NULL, '2020-10-07 20:43:57', '2020-10-07 20:43:57', 30, 'y', 'y', '10:30:00', '13:00:00', '17:00:00', '19:00:00'),
(7, 30, 'Sunday', NULL, NULL, '2020-10-07 20:43:58', '2020-10-07 20:43:58', 30, 'y', 'n', '10:30:00', '13:00:00', '17:00:00', '19:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `doctors_unavailablity`
--

CREATE TABLE `doctors_unavailablity` (
  `availability_id` int(10) UNSIGNED NOT NULL,
  `doctor_id` int(11) NOT NULL,
  `from_date` date NOT NULL,
  `to_date` date NOT NULL,
  `reason_unavailablity` varchar(225) NOT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `doctors_unavailablity`
--

INSERT INTO `doctors_unavailablity` (`availability_id`, `doctor_id`, `from_date`, `to_date`, `reason_unavailablity`, `created_at`, `updated_at`) VALUES
(1, 22, '2020-07-29', '2020-07-31', 'Holidays', '2020-07-26 20:36:33', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `doctor_receptionist`
--

CREATE TABLE `doctor_receptionist` (
  `doc_recpnst_id` int(11) NOT NULL,
  `doc_id` int(11) NOT NULL,
  `recpnst_id` int(11) NOT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `doctor_receptionist`
--

INSERT INTO `doctor_receptionist` (`doc_recpnst_id`, `doc_id`, `recpnst_id`, `created_at`, `updated_at`) VALUES
(1, 30, 32, '2020-09-24 16:34:37', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `doctor_verification`
--

CREATE TABLE `doctor_verification` (
  `id` int(11) NOT NULL,
  `doc_id` bigint(20) UNSIGNED NOT NULL,
  `path` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `doctor_verification`
--

INSERT INTO `doctor_verification` (`id`, `doc_id`, `path`) VALUES
(4, 1, 'img/WBP.png');

-- --------------------------------------------------------

--
-- Table structure for table `files`
--

CREATE TABLE `files` (
  `file_id` int(11) NOT NULL,
  `appt_id` int(11) DEFAULT NULL,
  `file_upload_id` int(11) NOT NULL COMMENT 'fk of files_upload',
  `file_type` enum('0','1','2','3') NOT NULL DEFAULT '0' COMMENT '1=> invoice, 2=> prescription, 3=> lab_report',
  `file_name` text NOT NULL,
  `file_path` text NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `files`
--

INSERT INTO `files` (`file_id`, `appt_id`, `file_upload_id`, `file_type`, `file_name`, `file_path`, `created_at`, `updated_at`) VALUES
(1, 1, 1, '2', '1602568645.12278755_930472823655732_616183700277320627_n.jpg', '/uploads/prescription/1602568645.12278755_930472823655732_616183700277320627_n.jpg', '2020-10-13 05:57:25', '2020-10-13 05:57:25'),
(2, 1, 2, '2', '1602570415.Filter.PNG', '/uploads/prescription/1602570415.Filter.PNG', '2020-10-13 06:26:55', '2020-10-13 06:26:55');

-- --------------------------------------------------------

--
-- Table structure for table `files_upload`
--

CREATE TABLE `files_upload` (
  `file_upload_id` int(11) NOT NULL,
  `uploaded_for_patient_id` int(11) NOT NULL COMMENT 'File belongs to',
  `uploaded_by_id` int(11) NOT NULL COMMENT 'file uploaded by',
  `created_at` datetime NOT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `files_upload`
--

INSERT INTO `files_upload` (`file_upload_id`, `uploaded_for_patient_id`, `uploaded_by_id`, `created_at`, `updated_at`) VALUES
(1, 1, 1, '2020-10-13 05:57:25', '2020-10-13 05:57:25'),
(2, 1, 18, '2020-10-13 06:26:55', '2020-10-13 06:26:55');

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
(1, '2020_10_22_161044_create_admins_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `nurse_aaya_clinic_information`
--

CREATE TABLE `nurse_aaya_clinic_information` (
  `id` int(11) NOT NULL,
  `nurse_aaya_id` int(11) UNSIGNED NOT NULL,
  `clinic_name` varchar(200) DEFAULT NULL,
  `clinic_address` varchar(255) DEFAULT NULL,
  `pin_code` varchar(6) NOT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `nurse_aaya_clinic_information`
--

INSERT INTO `nurse_aaya_clinic_information` (`id`, `nurse_aaya_id`, `clinic_name`, `clinic_address`, `pin_code`, `created_at`, `updated_at`) VALUES
(1, 24, 'gsjskfndb', 'hdjsospbdb', '700049', '2020-09-06 20:52:25', '2020-09-06 20:52:25'),
(2, 25, 'gsjskfndb', 'hdjsospbdb', '700049', '2020-09-06 20:52:25', '2020-09-06 20:52:25');

-- --------------------------------------------------------

--
-- Table structure for table `nurse_aaya_profile`
--

CREATE TABLE `nurse_aaya_profile` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL COMMENT 'references id of users table',
  `date_of_birth` date DEFAULT NULL,
  `qualification` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address_1` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `aaya_fee` double(15,2) DEFAULT NULL,
  `is_preconsultation` enum('0','1') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `pre_consultation_fee` double(15,2) DEFAULT NULL,
  `medical_license` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `experience` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `is_deleted` enum('0','1') COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_approved` enum('0','1') COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `nurse_aaya_profile`
--

INSERT INTO `nurse_aaya_profile` (`id`, `user_id`, `date_of_birth`, `qualification`, `address`, `address_1`, `aaya_fee`, `is_preconsultation`, `pre_consultation_fee`, `medical_license`, `experience`, `created_at`, `updated_at`, `is_deleted`, `is_approved`) VALUES
(1, 24, NULL, NULL, 'Nimta', 'Address_1', 200.00, '0', NULL, NULL, NULL, '2020-09-06 15:17:30', '2020-09-19 04:21:42', '1', '0'),
(2, 25, '1987-02-15', NULL, 'Nimta', 'Address_1', NULL, '0', NULL, NULL, NULL, '2020-09-06 15:17:30', '2020-09-30 13:49:16', '1', '0');

-- --------------------------------------------------------

--
-- Table structure for table `nurse_aaya_schedule`
--

CREATE TABLE `nurse_aaya_schedule` (
  `id` int(11) NOT NULL,
  `nurse_aaya_id` int(11) NOT NULL COMMENT 'references id of users table',
  `day_week` varchar(50) DEFAULT NULL,
  `doctor_location` varchar(100) DEFAULT NULL,
  `shift` varchar(50) DEFAULT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `clinic_id` int(11) NOT NULL,
  `morning_shift` enum('y','n') NOT NULL DEFAULT 'n',
  `evening_shift` enum('y','n') NOT NULL DEFAULT 'n',
  `morning_from_time` time DEFAULT NULL,
  `morning_to_time` time DEFAULT NULL,
  `evening_from_time` time DEFAULT NULL,
  `evening_to_time` time DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `nurse_aaya_schedule`
--

INSERT INTO `nurse_aaya_schedule` (`id`, `nurse_aaya_id`, `day_week`, `doctor_location`, `shift`, `created_at`, `updated_at`, `clinic_id`, `morning_shift`, `evening_shift`, `morning_from_time`, `morning_to_time`, `evening_from_time`, `evening_to_time`) VALUES
(1, 24, 'Monday', NULL, NULL, '2020-09-06 20:52:25', '2020-09-06 20:52:25', 1, 'y', 'n', '10:30:00', '13:00:00', '17:00:00', '19:00:00'),
(2, 24, 'Tuesday', NULL, NULL, '2020-09-06 20:52:25', '2020-09-06 20:52:25', 1, 'y', 'y', '10:30:00', '13:00:00', '17:00:00', '19:00:00'),
(3, 24, 'Wednesday', NULL, NULL, '2020-09-06 20:52:25', '2020-09-06 20:52:25', 1, 'y', 'y', '10:30:00', '13:00:00', '17:00:00', '19:00:00'),
(4, 24, 'Thursday', NULL, NULL, '2020-09-06 20:52:25', '2020-09-06 20:52:25', 1, 'y', 'y', '10:30:00', '13:00:00', '17:00:00', '19:00:00'),
(5, 24, 'Friday', NULL, NULL, '2020-09-06 20:52:25', '2020-09-06 20:52:25', 1, 'y', 'y', '10:30:00', '13:00:00', '17:00:00', '19:00:00'),
(6, 24, 'Saturday', NULL, NULL, '2020-09-06 20:52:25', '2020-09-06 20:52:25', 1, 'y', 'y', '10:30:00', '13:00:00', '17:00:00', '19:00:00'),
(7, 24, 'Sunday', NULL, NULL, '2020-09-06 20:52:25', '2020-09-06 20:52:25', 1, 'y', 'n', '10:30:00', '13:00:00', '17:00:00', '19:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_access_tokens`
--

CREATE TABLE `oauth_access_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_access_tokens`
--

INSERT INTO `oauth_access_tokens` (`id`, `user_id`, `client_id`, `name`, `scopes`, `revoked`, `created_at`, `updated_at`, `expires_at`) VALUES
('0a190e98fc40e8e2a69d46def3963d7aab98630d1492c163756128ce2e79c83fc6aecb14ddbc1d12', 1, 1, 'foodDeliveryApp', '[]', 0, '2020-06-20 08:02:55', '2020-06-20 08:02:55', '2021-06-20 13:32:55'),
('894094b415904bd539cbedaafd514ff124b465de3f1841e675b5c5a4dc3bfacf0b1e4455b1e0fc9a', 2, 1, 'foodDeliveryApp', '[]', 0, '2020-06-21 03:30:21', '2020-06-21 03:30:21', '2021-06-21 09:00:21'),
('13ff4734deb9dcbc0b5e8ebfe533512d3b7cd0f064d075eb78cd57a6fa508999d726122187b748af', 3, 1, 'foodDeliveryApp', '[]', 0, '2020-06-21 03:34:01', '2020-06-21 03:34:01', '2021-06-21 09:04:01'),
('6246d184ceaed1d194a94974a034485ba9f391b0c3113b00606dbee78211aec0c3e7bf4914d3c2af', 4, 1, 'foodDeliveryApp', '[]', 0, '2020-06-21 04:06:13', '2020-06-21 04:06:13', '2021-06-21 09:36:13'),
('0cb3d4844f8c39ccf258baac929bc46aece99c808f494742d0c585148e2d3e0b0fcdb02bbc3fda78', 5, 1, 'foodDeliveryApp', '[]', 0, '2020-06-21 04:08:54', '2020-06-21 04:08:54', '2021-06-21 09:38:54'),
('558c81f7a702d49df04462fa4c7bc6b7ea7315bc8ab7ffbe856691376b4fbcd6097fe7cd52bb3134', 11, 1, 'foodDeliveryApp', '[]', 0, '2020-06-21 04:37:06', '2020-06-21 04:37:06', '2021-06-21 10:07:06'),
('85c1c7ee35d276f7388c3a5fcd372d0fd6c2a1674cac0be44730ef47ead0578c0d57a40271b7506a', 12, 1, 'foodDeliveryApp', '[]', 0, '2020-06-21 04:37:43', '2020-06-21 04:37:43', '2021-06-21 10:07:43'),
('53bdbc2e1f3fc0e092856f5048ea2d9c16a22252a0f375292fe46f272b622ce90ac2b6b1a2443096', 1, 1, 'foodDeliveryApp', '[]', 0, '2020-06-27 16:32:26', '2020-06-27 16:32:26', '2021-06-27 22:02:26'),
('8adcece817c34818a4b4e19d22fbdd212ea6a12b81060e1aaf1dba5227f3ce6b62cf49338ff2f981', 10, 1, 'foodDeliveryApp', '[]', 0, '2020-07-06 15:02:11', '2020-07-06 15:02:11', '2021-07-06 20:32:11'),
('20652f5508676de267b45052c50ba969a9070ed234760056f5fb757bf7703923bc5118aee11ab2ee', 11, 1, 'foodDeliveryApp', '[]', 0, '2020-07-06 15:05:28', '2020-07-06 15:05:28', '2021-07-06 20:35:28'),
('05b83dffd19a4786742e7e3a11c82ccbffefaa355cef09b10281b59d977da8ab694201286b69a6d0', 11, 1, 'foodDeliveryApp', '[]', 0, '2020-07-06 15:05:28', '2020-07-06 15:05:28', '2021-07-06 20:35:28'),
('ab71baf51bdff620fbd66fb563eb8d98afbd13047e7593c502e9f7f8c2b4ff90ba09b22cadfa87ea', 12, 1, 'foodDeliveryApp', '[]', 0, '2020-07-06 15:07:06', '2020-07-06 15:07:06', '2021-07-06 20:37:06'),
('14414c4adb6ea9451419c852bb5ec7e216c7abf564846a62bdc7ca83deb8c70f31c713e6529f85b9', 12, 1, 'foodDeliveryApp', '[]', 0, '2020-07-06 15:07:06', '2020-07-06 15:07:06', '2021-07-06 20:37:06'),
('e42a6a89bd68840c4c601cde33cee7a04d89c400ce97d46381bfd44065214f46350af3ae33de374c', 13, 1, 'foodDeliveryApp', '[]', 0, '2020-07-06 15:11:14', '2020-07-06 15:11:14', '2021-07-06 20:41:14'),
('9da482447bd33bdf1744c8f510923dc8808aa54a427a07c914540f24a22c5943c9a36a8be5a1463f', 13, 1, 'foodDeliveryApp', '[]', 0, '2020-07-06 15:11:14', '2020-07-06 15:11:14', '2021-07-06 20:41:14'),
('e8a4743882e311b61d3fcb665d1590fbf446739e7f33be4403925a329c4294a27453cb7562f27f4c', 14, 1, 'foodDeliveryApp', '[]', 0, '2020-07-06 15:12:35', '2020-07-06 15:12:35', '2021-07-06 20:42:35'),
('0f24f05e723c96521b7d3a52ec2413310774238bfda63a40b54696ae20639de571b1338ea2cd5574', 14, 1, 'foodDeliveryApp', '[]', 0, '2020-07-06 15:12:35', '2020-07-06 15:12:35', '2021-07-06 20:42:35'),
('ee6609427a91dc996fecc6ba820469986a1a4f3f1b22933e90c9c87087c10c747f6f6b53a36ff746', 15, 1, 'foodDeliveryApp', '[]', 0, '2020-07-06 15:13:37', '2020-07-06 15:13:37', '2021-07-06 20:43:37'),
('4899bdfddd984d8cbb244c4418587295b7e77c9a7d60556b249662bda62a688a294c452a9500414b', 16, 1, 'foodDeliveryApp', '[]', 0, '2020-07-06 15:14:29', '2020-07-06 15:14:29', '2021-07-06 20:44:29'),
('d745736c9f837bec956b0bb390b6e029f29d813169a11ef73e1cfa20bddf214ee527a600bfc1c2c9', 1, 1, 'foodDeliveryApp', '[]', 0, '2020-07-10 13:02:15', '2020-07-10 13:02:15', '2021-07-10 18:32:15'),
('c2ac91d7874b6c83ad574d370d2d777a10a01f17b99e72a6e7505ef2003e5832d93a5b0d9a3b186d', 1, 1, 'foodDeliveryApp', '[]', 0, '2020-07-15 14:17:19', '2020-07-15 14:17:19', '2021-07-15 19:47:19'),
('909a69187f63a24a8c25b801a2ed39cd8ebaa0e6747950033b4486422b297f81809128ebd5c346b6', 1, 1, 'foodDeliveryApp', '[]', 0, '2020-07-15 15:26:24', '2020-07-15 15:26:24', '2021-07-15 20:56:24'),
('9b7a4f770781939f54c74dd1d926d9525dedaf869e2af548b2d4a12cae50f68ee62a8491cf09347d', 1, 1, 'foodDeliveryApp', '[]', 0, '2020-07-16 07:47:08', '2020-07-16 07:47:08', '2021-07-16 13:17:08'),
('25ec52b5c04e10958cfd7b7b1e99f0d60fbf425772f354545cbd033d84c92b6408e994ada17e252b', 1, 1, 'foodDeliveryApp', '[]', 0, '2020-07-16 07:48:30', '2020-07-16 07:48:30', '2021-07-16 13:18:30'),
('b20c308f1add5877a0a60e70164cc9694bb972ea1eb5cc569cd004c5f1929913e126f05cf0365b14', 1, 1, 'foodDeliveryApp', '[]', 0, '2020-07-16 14:46:23', '2020-07-16 14:46:23', '2021-07-16 20:16:23'),
('6f85f8dc6a018124e0fb03d66299ea5dadbe1c030cd0df457da84173d99e6df603a3c19d153fd82d', 1, 1, 'foodDeliveryApp', '[]', 0, '2020-07-16 14:52:54', '2020-07-16 14:52:54', '2021-07-16 20:22:54'),
('ba83ea023b9c0b422ab0ca2b850dac179c8b7b65fac070918f0295e6b99279bc6eb5d990c7446fdb', 1, 1, 'foodDeliveryApp', '[]', 0, '2020-07-16 16:24:45', '2020-07-16 16:24:45', '2021-07-16 21:54:45'),
('31bc43f48bd2e9a010d4e7115234f768b9e8d693acd516ea8f38d48ed77f621668ba702c732118ac', 1, 1, 'foodDeliveryApp', '[]', 0, '2020-07-17 08:10:53', '2020-07-17 08:10:53', '2021-07-17 13:40:53'),
('429c212a5a2c63f9b5c50a3ea3cd9cd20a956dea4b08f5daf952ae63853c39bb158b048b286c84a2', 17, 1, 'foodDeliveryApp', '[]', 0, '2020-08-02 17:40:46', '2020-08-02 17:40:46', '2021-08-02 23:10:46'),
('3d2d644a99201fa15b2027b03f806d2e8dbd890d5610aedef45494982143c0b65f8d70759e765e2b', 19, 1, 'foodDeliveryApp', '[]', 0, '2020-08-02 17:44:47', '2020-08-02 17:44:47', '2021-08-02 23:14:47'),
('9fc5e2df7469a1b68c1b062d1109ec330720cc85eec9e00436d9f739604462fd41d0d5a6553db2d1', 20, 1, 'foodDeliveryApp', '[]', 0, '2020-08-02 17:48:41', '2020-08-02 17:48:41', '2021-08-02 23:18:41'),
('b2338fc882a67c8d0e6418013e6c053d6e4a91108ccd29b1f0be55be00fa319d2f9d9eba5af93c4b', 22, 1, 'foodDeliveryApp', '[]', 0, '2020-08-02 17:50:21', '2020-08-02 17:50:21', '2021-08-02 23:20:21'),
('d45a7144a5f3feda4cd19c43c0adc952264946dacd98dd6337dde310e45c235462dce72e518387c2', 17, 1, 'foodDeliveryApp', '[]', 0, '2020-08-02 17:52:37', '2020-08-02 17:52:37', '2021-08-02 23:22:37'),
('1224bb001b40cc168c337a8d44a24abeb8a959ed4dd3ae5974129fe08a80d66ce08bc3c48eb02f69', 18, 1, 'foodDeliveryApp', '[]', 0, '2020-08-02 19:41:00', '2020-08-02 19:41:00', '2021-08-03 01:11:00'),
('0344042787adcd95cc950bbaba5c0e3f5e8875223e932b30706161ce3b4e7d844c3f6ddd82dabd7c', 19, 1, 'foodDeliveryApp', '[]', 0, '2020-08-02 20:22:07', '2020-08-02 20:22:07', '2021-08-03 01:52:07'),
('d739ead23a76ba1457a0b94a049c7c0de47a1685f0c546e245ab3b2ca788cd934bef5c8fe05cb110', 20, 1, 'foodDeliveryApp', '[]', 0, '2020-08-02 20:24:16', '2020-08-02 20:24:16', '2021-08-03 01:54:16'),
('e8f281e16ba212ebac33ea0ddfa9b3fb1ecd4a764a1d3da22907bda97156297981b4eb9f1f5ee038', 21, 1, 'foodDeliveryApp', '[]', 0, '2020-08-04 08:34:15', '2020-08-04 08:34:15', '2021-08-04 14:04:15'),
('0127c0a76f0d3ea057d008442358f7de6c915e3d1e2a626b6aff3cda00ac78a641641b1e2947f2f0', 22, 1, 'foodDeliveryApp', '[]', 0, '2020-08-04 17:03:23', '2020-08-04 17:03:23', '2021-08-04 22:33:23'),
('f7674f9a28dbde3db8c7c3a8f3a0a865d0b78050d880b54a9ea5a9b9d9f9ddd6261aa3c56ea1c210', 22, 1, 'foodDeliveryApp', '[]', 0, '2020-08-05 09:26:01', '2020-08-05 09:26:01', '2021-08-05 14:56:01'),
('35373978f225ba2996a9421afd49afbb0cb192896750989b3ccee7d2737f3d888e105c8e6110dba2', 23, 1, 'foodDeliveryApp', '[]', 0, '2020-08-05 15:47:57', '2020-08-05 15:47:57', '2021-08-05 21:17:57'),
('07b9b8dc4ecee0d04e63b09cda7fbc6901e1b7a1185c7bd0010526d42b1ac87c933bd54c288f1f16', 23, 1, 'foodDeliveryApp', '[]', 0, '2020-08-05 15:48:30', '2020-08-05 15:48:30', '2021-08-05 21:18:30'),
('d9043b944a86e09dc49c56406dae95aed1f1e726b8659e40cddcd9d09f7f6c687924d5668345417e', 23, 1, 'foodDeliveryApp', '[]', 0, '2020-08-05 15:48:42', '2020-08-05 15:48:42', '2021-08-05 21:18:42'),
('8a575315f82fa5d291e34910b86c43ba2287a22b6168a7cc8435e4d241d889633a8af0420a86340a', 23, 1, 'foodDeliveryApp', '[]', 0, '2020-08-05 16:02:00', '2020-08-05 16:02:00', '2021-08-05 21:32:00'),
('6e8ec99ab05f2790274356119c29d3c7db377760274868713326657a63d7f138dc07a4e2a5a84beb', 22, 1, 'foodDeliveryApp', '[]', 0, '2020-08-06 17:41:32', '2020-08-06 17:41:32', '2021-08-06 23:11:32'),
('f18541e65536c09d2c12b31e8fc216ca1ff755cab4645e5cf889059c276dd2c329c90986c35d466e', 22, 1, 'foodDeliveryApp', '[]', 0, '2020-08-11 16:00:13', '2020-08-11 16:00:13', '2021-08-11 21:30:13'),
('3e2294f27f8550f18afd585f71c9f8adbd1e7e363cc003e6af45b31b5673686b6f92814e48913545', 22, 1, 'foodDeliveryApp', '[]', 0, '2020-08-11 16:04:17', '2020-08-11 16:04:17', '2021-08-11 21:34:17'),
('4d21f72f28b4098d7420c1b4b91bd13ab74930e2a4f58852824f757648383bbbef3a216765a28823', 22, 1, 'foodDeliveryApp', '[]', 0, '2020-08-11 16:13:18', '2020-08-11 16:13:18', '2021-08-11 21:43:18'),
('98bbab1dd14d6ef061b17c3e8e4a8d7f8090bcef34d88610ba5e8bbe2ed7954bb9d6f55b3e64d320', 22, 1, 'foodDeliveryApp', '[]', 0, '2020-08-11 17:02:49', '2020-08-11 17:02:49', '2021-08-11 22:32:49'),
('ced55405067f61e6a79d5038ff6dae954d248a7df469dd9a089cc7f06f29504f0eec5d3e0ecdb5ed', 22, 1, 'foodDeliveryApp', '[]', 0, '2020-08-11 17:40:05', '2020-08-11 17:40:05', '2021-08-11 23:10:05'),
('1694161c889d3fd7d264a597c48c587d50cb7a9041179ec742033a81ae37150fc9fe20bfa4dede28', 22, 1, 'foodDeliveryApp', '[]', 0, '2020-08-12 04:11:56', '2020-08-12 04:11:56', '2021-08-12 09:41:56'),
('78479cd509c486d5378cdb28df85f0a4e45edf499dcf3351cd5f483384e1b11022bef0f81471ef6c', 1, 1, 'foodDeliveryApp', '[]', 0, '2020-08-12 06:47:02', '2020-08-12 06:47:02', '2021-08-12 12:17:02'),
('ccd13478caaa7e6407a06b121a242e34729d2c4a4d6a7ba4a9fdedbb21874e06b968ec1ee65df65d', 22, 1, 'foodDeliveryApp', '[]', 0, '2020-08-12 17:00:16', '2020-08-12 17:00:16', '2021-08-12 22:30:16'),
('165e1ad1a44ac029e13da01ff847dc51b8abf4a42d9ecd47b971abf5d52c0ec3a38bc93888d87720', 22, 1, 'foodDeliveryApp', '[]', 0, '2020-08-12 17:04:54', '2020-08-12 17:04:54', '2021-08-12 22:34:54'),
('af97cf76af504edc945d304b89bdf37229eea825aba4e1edc89419e9d63e9e540540e716b893e777', 22, 1, 'foodDeliveryApp', '[]', 0, '2020-08-27 17:28:43', '2020-08-27 17:28:43', '2021-08-27 22:58:43'),
('183cc0365a24bcc41e935503d9a22f2b63dacbbc432e79e29e0f576bca8b1f1873fad944056c61b4', 22, 1, 'foodDeliveryApp', '[]', 0, '2020-09-01 08:00:33', '2020-09-01 08:00:33', '2021-09-01 13:30:33'),
('a5834d4e73775c51db88cf5a5ba15e9f3318be4fc915abdb4e8db3627a4557995179ec80612628cc', 22, 1, 'foodDeliveryApp', '[]', 0, '2020-09-01 08:02:34', '2020-09-01 08:02:34', '2021-09-01 13:32:34'),
('26af9e540837afb4625b098d70a584f94efbfaca4b474005dfa9187e4835d2d149a0a51f7cde094d', 22, 1, 'foodDeliveryApp', '[]', 0, '2020-09-01 10:29:33', '2020-09-01 10:29:33', '2021-09-01 15:59:33'),
('7dad491ff3c374d81361bfaccf3d0505c214f70c82d64e29d9ffee5279552cd4240571e464489e89', 22, 1, 'foodDeliveryApp', '[]', 0, '2020-09-01 10:34:50', '2020-09-01 10:34:50', '2021-09-01 16:04:50'),
('b5930a1574f7dfc04fb797dc9fbf62fbce68854d36ba5b59f786cf30e8efae33c42c972d69c597c7', 22, 1, 'foodDeliveryApp', '[]', 0, '2020-09-01 10:49:09', '2020-09-01 10:49:09', '2021-09-01 16:19:09'),
('04386885736163ef10f49d40d71d610768dea7567d55ceedf72918a0401b3d47d7727df168c98232', 24, 1, 'foodDeliveryApp', '[]', 0, '2020-09-06 15:13:10', '2020-09-06 15:13:10', '2021-09-06 20:43:10'),
('e21d96db2e2c2045e04545048a63aa7e583adb83fc72ebedf699af0f35460db228c1634aa5ed979f', 1, 1, 'foodDeliveryApp', '[]', 0, '2020-09-16 06:05:15', '2020-09-16 06:05:15', '2021-09-16 11:35:15'),
('9671af9f3afb83dff53ebf118913db57b9dc364dbe20de04555bc53d5e23c3caa3501793b9bd4e8e', 24, 1, 'foodDeliveryApp', '[]', 0, '2020-09-20 02:00:34', '2020-09-20 02:00:34', '2021-09-20 07:30:34'),
('d4123173870abf57152cc2b65d0e8d46f4474f556f7235d04e86f8eccc9b222912b99bebc7fb19bd', 26, 1, 'foodDeliveryApp', '[]', 0, '2020-09-22 12:23:28', '2020-09-22 12:23:28', '2021-09-22 17:53:28'),
('42f4026a526df8fef8bf4bcc43ffe2e4fb38de300571cd264ab4eaf6c6012dea3ffa7bad025c8c23', 27, 1, 'aazioonweb', '[]', 0, '2020-09-22 12:38:12', '2020-09-22 12:38:12', '2021-09-22 18:08:12'),
('128913fe01ca76cd8bda56bf719dd9ed6feb095bbbe43c4dd5ff9ff0c266eb4a1ca03019726c91c6', 28, 1, 'aazioonweb', '[]', 0, '2020-09-22 13:20:39', '2020-09-22 13:20:39', '2021-09-22 18:50:39'),
('b41c97ee2f3d1a69fff57346e857e430931d07ce608edff4c0c024cf6d5401e8230a20d1bbad8a2f', 29, 1, 'aazioonweb', '[]', 0, '2020-09-23 15:21:59', '2020-09-23 15:21:59', '2021-09-23 20:51:59'),
('849096b90d05c1d423e342a9e20a9d746a6e2347f30beb9065f0a246c2c66f8bc31af410fbc84fc3', 30, 1, 'aazioonweb', '[]', 0, '2020-09-23 15:22:48', '2020-09-23 15:22:48', '2021-09-23 20:52:48'),
('424087bd7c25fb155773c708caecd3b5963e56a18c0367e02f7f56ddca01e9e39ec253dd256247d5', 30, 1, 'aazioonweb', '[]', 0, '2020-09-24 05:41:40', '2020-09-24 05:41:40', '2021-09-24 11:11:40'),
('0d3a64e42d6a15e2f5c2492e85a9ac58003dfabf7251955c733327b9e0b70716c7eb0b91b268eb21', 25, 1, 'aazioonweb', '[]', 0, '2020-09-30 13:47:48', '2020-09-30 13:47:48', '2021-09-30 19:17:48'),
('595a75a2b279860a081f166a108e0a10558ce411481b445095ce32df47efb9da34b3f1501ba55d41', 25, 1, 'aazioonweb', '[]', 0, '2020-09-30 14:12:31', '2020-09-30 14:12:31', '2021-09-30 19:42:31'),
('3fa8f6e7eb9942980146a14c407614eb55cba666f92ce0eb23692a89a095fc657d4153627b8202ce', 30, 1, 'aazioonweb', '[]', 0, '2020-09-30 14:42:39', '2020-09-30 14:42:39', '2021-09-30 20:12:39'),
('dac07c0ec7de24c3e0676f9c59eeac5a1a8de25869fefe8340d50c7ac449cda97f90e7bbf575e706', 27, 1, 'aazioonweb', '[]', 0, '2020-10-11 03:55:42', '2020-10-11 03:55:42', '2021-10-11 09:25:42'),
('fa04953026cd0a11e3504dbf3bc9a603c819270db45efd77687af610940cf3b3eccca24040ddb1f0', 27, 1, 'aazioonweb', '[]', 0, '2020-10-13 00:17:35', '2020-10-13 00:17:35', '2021-10-13 05:47:35'),
('22de2e6205f11709d2d97cf4ba48fe13c1955fe1afff7c998c0f819a7339dac2c37ca9dfdacfc2e8', 1, 1, 'aazioonweb', '[]', 0, '2020-10-13 00:21:33', '2020-10-13 00:21:33', '2021-10-13 05:51:33'),
('2a95e3ea56ba07a677c1539f733658fc7192d2046b41d56a26c773c5378ac97703226ab18ff8325a', 30, 1, 'aazioonweb', '[]', 0, '2020-10-13 00:36:57', '2020-10-13 00:36:57', '2021-10-13 06:06:57'),
('b43c5b1636d0c3ed54ca2f39dfdd3db407f59fa7880040848eeb360f5035a3b3efeb9381629e6e1e', 18, 1, 'aazioonweb', '[]', 0, '2020-10-13 00:45:27', '2020-10-13 00:45:27', '2021-10-13 06:15:27'),
('a95667d729c65d4b4e263f12ea80af605a2958cc3622aed60caa148bc0e2b7a6cfa422e4949c7101', 23, 1, 'aazioonweb', '[]', 0, '2020-10-16 12:22:20', '2020-10-16 12:22:20', '2021-10-16 17:52:20'),
('5b19ff09d98e21c2bf6744592d455351a44a30803fe045080ec3fbe5b2a03b07b3c651700dfa0c58', 30, 1, 'aazioonweb', '[]', 0, '2020-10-16 16:02:14', '2020-10-16 16:02:14', '2021-10-16 21:32:14'),
('04d376449d484df628cc78acd9529559663ebebf932229b68e27c864c57e108cbf2a0bc2b2c0f938', 18, 1, 'aazioonweb', '[]', 0, '2020-10-16 16:04:02', '2020-10-16 16:04:02', '2021-10-16 21:34:02');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_auth_codes`
--

CREATE TABLE `oauth_auth_codes` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `oauth_clients`
--

CREATE TABLE `oauth_clients` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `secret` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `provider` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `redirect` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `personal_access_client` tinyint(1) NOT NULL,
  `password_client` tinyint(1) NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_clients`
--

INSERT INTO `oauth_clients` (`id`, `user_id`, `name`, `secret`, `provider`, `redirect`, `personal_access_client`, `password_client`, `revoked`, `created_at`, `updated_at`) VALUES
(1, NULL, 'FoodDelivery Personal Access Client', 'VeM0hIOShscVvkAszM1kDKkyEwUZUFJk31TZU9B6', NULL, 'http://localhost', 1, 0, 0, '2020-06-20 07:00:03', '2020-06-20 07:00:03'),
(2, NULL, 'FoodDelivery Password Grant Client', 'PDfJ5TfF2vkvjYmsJDOHFVIV67WLHu2MAfEQgNS1', 'users', 'http://localhost', 0, 1, 0, '2020-06-20 07:00:03', '2020-06-20 07:00:03');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_personal_access_clients`
--

CREATE TABLE `oauth_personal_access_clients` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_personal_access_clients`
--

INSERT INTO `oauth_personal_access_clients` (`id`, `client_id`, `created_at`, `updated_at`) VALUES
(1, 1, '2020-06-20 07:00:03', '2020-06-20 07:00:03');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_refresh_tokens`
--

CREATE TABLE `oauth_refresh_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `access_token_id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `pincodes`
--

CREATE TABLE `pincodes` (
  `country` text NOT NULL,
  `pin_code` text DEFAULT NULL,
  `place_name` text DEFAULT NULL,
  `state_name` text DEFAULT NULL,
  `state_num` text DEFAULT NULL,
  `area` text DEFAULT NULL,
  `location_address` text DEFAULT NULL,
  `latitude` text DEFAULT NULL,
  `longitude` text DEFAULT NULL,
  `acc_code` text DEFAULT NULL,
  `more` text DEFAULT NULL,
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `admins_email_unique` (`email`);

--
-- Indexes for table `doctor_verification`
--
ALTER TABLE `doctor_verification`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admins`
--
ALTER TABLE `admins`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `doctor_verification`
--
ALTER TABLE `doctor_verification`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
