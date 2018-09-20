-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Sep 20, 2018 at 02:04 PM
-- Server version: 10.1.10-MariaDB
-- PHP Version: 7.0.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sms_edu4next`
--

-- --------------------------------------------------------

--
-- Table structure for table `accountants`
--

CREATE TABLE `accountants` (
  `id` int(11) UNSIGNED NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `password` varchar(100) DEFAULT NULL,
  `address` text,
  `dob` date DEFAULT NULL,
  `designation` varchar(50) DEFAULT NULL,
  `sex` varchar(10) DEFAULT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `image` varchar(50) DEFAULT NULL,
  `is_active` varchar(10) NOT NULL DEFAULT 'no',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `accountants`
--

INSERT INTO `accountants` (`id`, `name`, `email`, `password`, `address`, `dob`, `designation`, `sex`, `phone`, `image`, `is_active`, `created_at`) VALUES
(1, 'accountant1', 'acc@acc.com', NULL, 'dfgdfg,sfse,sfef,efwe', '2018-01-02', NULL, 'Male', '7777777777', 'uploads/student_images/no_image.png', 'no', '2018-01-07 03:01:59');

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `username` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `role` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `password` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `verification_code` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `is_active` varchar(255) COLLATE utf8_unicode_ci DEFAULT 'no',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `username`, `role`, `email`, `password`, `verification_code`, `is_active`, `created_at`, `updated_at`) VALUES
(1, 'Admin', 'admin', 'admin@admin.com', '21232f297a57a5a743894a0e4a801fc3', '', 'yes', '2018-01-06 12:07:54', '0000-00-00 00:00:00'),
(2, 'ali', 'admin', 'ali.allowz96@gmail.com', '190fc770572767dbb553efdf9c19b781', '', 'yes', '2018-01-08 08:16:27', '0000-00-00 00:00:00'),
(3, 'Admin', 'admin', 'gauravation@gmail.com', 'e6e061838856bf47e1de730719fb2609', '', 'yes', '2018-08-02 09:40:49', '0000-00-00 00:00:00'),
(4, 'Admin', 'admin', 'admin@admin.com', 'e57eed453c0baa0a65e82a53bff441cc', '', 'yes', '2018-08-03 08:13:17', '0000-00-00 00:00:00'),
(24, NULL, 'admin', 'test@test.com', 'e57eed453c0baa0a65e82a53bff441cc', '', 'no', '2018-08-16 11:51:15', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `attendence_type`
--

CREATE TABLE `attendence_type` (
  `id` int(11) NOT NULL,
  `type` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `key_value` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `is_active` varchar(255) COLLATE utf8_unicode_ci DEFAULT 'no',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `attendence_type`
--

INSERT INTO `attendence_type` (`id`, `type`, `key_value`, `is_active`, `created_at`, `updated_at`) VALUES
(1, 'Present', '<b class="text text-success">P</b>', 'yes', '2016-06-23 23:41:37', '0000-00-00 00:00:00'),
(2, 'Late with excuse', '<b class="text text-warning">E</b>', 'yes', '2016-10-11 17:05:44', '0000-00-00 00:00:00'),
(3, 'Late', '<b class="text text-warning">L</b>', 'yes', '2016-06-23 23:42:28', '0000-00-00 00:00:00'),
(4, 'Absent', '<b class="text text-danger">A</b>', 'yes', '2016-10-11 17:05:40', '0000-00-00 00:00:00'),
(5, 'Holiday', 'H', 'yes', '2016-10-11 17:05:01', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `books`
--

CREATE TABLE `books` (
  `id` int(11) NOT NULL,
  `book_title` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `book_no` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `isbn_no` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `subject` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `rack_no` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `publish` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `author` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `qty` int(11) DEFAULT NULL,
  `perunitcost` float(10,2) DEFAULT NULL,
  `postdate` date DEFAULT NULL,
  `description` text COLLATE utf8_unicode_ci,
  `available` varchar(10) COLLATE utf8_unicode_ci DEFAULT 'yes',
  `is_active` varchar(255) COLLATE utf8_unicode_ci DEFAULT 'no',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `books`
--

INSERT INTO `books` (`id`, `book_title`, `book_no`, `isbn_no`, `subject`, `rack_no`, `publish`, `author`, `qty`, `perunitcost`, `postdate`, `description`, `available`, `is_active`, `created_at`, `updated_at`) VALUES
(1, 'Computer Network(Practical)', 'CSE//10', '', 'Computer Network', '05', '', 'R.S.Awasthi', 10, 100.00, '2018-08-09', '', 'yes', 'no', '2018-08-29 09:44:50', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `book_issues`
--

CREATE TABLE `book_issues` (
  `id` int(11) UNSIGNED NOT NULL,
  `book_id` int(11) DEFAULT NULL,
  `return_date` date DEFAULT NULL,
  `issue_date` date DEFAULT NULL,
  `is_returned` int(11) DEFAULT '0',
  `member_id` int(11) DEFAULT NULL,
  `is_active` varchar(10) NOT NULL DEFAULT 'no',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `book_issues`
--

INSERT INTO `book_issues` (`id`, `book_id`, `return_date`, `issue_date`, `is_returned`, `member_id`, `is_active`, `created_at`) VALUES
(1, 1, '2018-08-30', '2018-08-29', 0, 6, 'no', '2018-08-29 09:45:19');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(11) NOT NULL,
  `category` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `is_active` varchar(255) COLLATE utf8_unicode_ci DEFAULT 'no',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `category`, `is_active`, `created_at`, `updated_at`) VALUES
(1, 'SC', 'no', '2018-01-16 11:19:49', '0000-00-00 00:00:00'),
(2, 'General', 'no', '2018-01-16 11:20:04', '0000-00-00 00:00:00'),
(3, 'OBC', 'no', '2018-01-26 15:18:21', '0000-00-00 00:00:00'),
(5, 'admin', 'no', '2018-08-05 14:19:22', '0000-00-00 00:00:00'),
(6, 'admin', 'no', '2018-08-05 14:19:28', '0000-00-00 00:00:00'),
(7, 'Super Admin', 'no', '2018-08-29 09:38:20', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `classes`
--

CREATE TABLE `classes` (
  `id` int(11) NOT NULL,
  `class` varchar(60) COLLATE utf8_unicode_ci DEFAULT NULL,
  `is_active` varchar(255) COLLATE utf8_unicode_ci DEFAULT 'no',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `classes`
--

INSERT INTO `classes` (`id`, `class`, `is_active`, `created_at`, `updated_at`) VALUES
(1, 'ME-1st''Year', 'no', '2018-09-08 07:57:15', '0000-00-00 00:00:00'),
(2, 'CIVIL-1st''Year', 'no', '2018-09-08 07:59:35', '0000-00-00 00:00:00'),
(3, 'EC-1st''Year', 'no', '2018-09-08 07:57:38', '0000-00-00 00:00:00'),
(4, 'EN-1st''Year', 'no', '2018-09-08 07:58:02', '0000-00-00 00:00:00'),
(5, 'IT-1st''Year', 'no', '2018-09-08 08:00:07', '0000-00-00 00:00:00'),
(6, 'CS-1st''Year', 'no', '2018-08-29 08:46:01', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `class_sections`
--

CREATE TABLE `class_sections` (
  `id` int(11) NOT NULL,
  `class_id` int(11) DEFAULT NULL,
  `section_id` int(11) DEFAULT NULL,
  `is_active` varchar(255) COLLATE utf8_unicode_ci DEFAULT 'no',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `class_sections`
--

INSERT INTO `class_sections` (`id`, `class_id`, `section_id`, `is_active`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 'no', '2018-01-07 02:49:14', '0000-00-00 00:00:00'),
(5, 5, 3, 'no', '2018-08-27 12:37:29', '0000-00-00 00:00:00'),
(6, 6, 4, 'no', '2018-08-29 08:46:01', '0000-00-00 00:00:00'),
(7, 3, 2, 'no', '2018-09-08 07:57:38', '0000-00-00 00:00:00'),
(9, 4, 5, 'no', '2018-09-08 07:58:19', '0000-00-00 00:00:00'),
(10, 2, 6, 'no', '2018-09-08 07:59:35', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `contents`
--

CREATE TABLE `contents` (
  `id` int(11) NOT NULL,
  `title` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `type` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `is_public` varchar(10) COLLATE utf8_unicode_ci DEFAULT 'No',
  `class_id` int(11) DEFAULT NULL,
  `file` varchar(250) COLLATE utf8_unicode_ci DEFAULT NULL,
  `note` text COLLATE utf8_unicode_ci,
  `is_active` varchar(255) COLLATE utf8_unicode_ci DEFAULT 'no',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `email_config`
--

CREATE TABLE `email_config` (
  `id` int(11) UNSIGNED NOT NULL,
  `email_type` varchar(100) DEFAULT NULL,
  `smtp_server` varchar(100) DEFAULT NULL,
  `smtp_port` varchar(100) DEFAULT NULL,
  `smtp_username` varchar(100) DEFAULT NULL,
  `smtp_password` varchar(100) DEFAULT NULL,
  `ssl_tls` varchar(100) DEFAULT NULL,
  `is_active` varchar(10) NOT NULL DEFAULT 'no',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `email_config`
--

INSERT INTO `email_config` (`id`, `email_type`, `smtp_server`, `smtp_port`, `smtp_username`, `smtp_password`, `ssl_tls`, `is_active`, `created_at`) VALUES
(1, 'sendmail', '', '', '', '', '', 'yes', '2018-01-10 09:09:01');

-- --------------------------------------------------------

--
-- Table structure for table `employee_csv`
--

CREATE TABLE `employee_csv` (
  `id` int(11) NOT NULL,
  `emptype` varchar(250) NOT NULL,
  `name` varchar(250) NOT NULL,
  `employee_code` varchar(250) NOT NULL,
  `birthday` varchar(250) NOT NULL,
  `gender` char(250) NOT NULL,
  `religion` char(250) NOT NULL,
  `cast` char(250) NOT NULL,
  `blood_group` varchar(250) NOT NULL,
  `present_address` varchar(250) NOT NULL,
  `permanent_address` varchar(250) NOT NULL,
  `subject` char(250) NOT NULL,
  `father_name` char(250) NOT NULL,
  `father_mobile_number` varchar(50) NOT NULL,
  `teacher_email` varchar(250) NOT NULL,
  `phone` varchar(50) NOT NULL,
  `email` varchar(250) NOT NULL,
  `password` varchar(250) NOT NULL,
  `academic_year` varchar(250) NOT NULL,
  `department` varchar(250) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `employee_csv`
--

INSERT INTO `employee_csv` (`id`, `emptype`, `name`, `employee_code`, `birthday`, `gender`, `religion`, `cast`, `blood_group`, `present_address`, `permanent_address`, `subject`, `father_name`, `father_mobile_number`, `teacher_email`, `phone`, `email`, `password`, `academic_year`, `department`, `created_at`, `updated_at`) VALUES
(74, 'Teacher', 'Srinivas21', 'TAMT00023', '6/28/1985', 'Male', 'Hindu', 'NA', 'AB+', 'Nidigattu,Bheemili Mandal,West Godavari District,AP', 'Nidigattu,Bheemili Mandal,West Godavari District,AP', 'Telugu', 'Mohana Reddy', '9966236524', 'srinivas@elitelinkin.com', '123456789', 'srinivas@elitelinkin.com', '12345', '', '', '2018-08-14 12:35:20', '0000-00-00 00:00:00'),
(75, 'Peon', 'Sandhya22', 'TAMT00024', '6/27/1985', 'Female', 'Hindu', 'NA', 'B+', 'Nidigattu,Bheemili Mandal,West Godavari District,AP', 'Nidigattu,Bheemili Mandal,West Godavari District,AP', 'Telugu', 'Mohana Reddy', '9966236525', 'srinivas1@elitelinkin.com', '123456789', 'srinivas1@elitelinkin.com', '12345', '', '', '2018-08-14 12:35:20', '0000-00-00 00:00:00'),
(76, 'Accountant', 'Ramu23', 'TAMT00024', '6/27/1985', 'Female', 'Hindu', 'NA', 'B+', 'Nidigattu,Bheemili Mandal,West Godavari District,AP', 'Nidigattu,Bheemili Mandal,West Godavari District,AP', 'Telugu', 'Mohana Reddy', '9966236525', 'srinivas1@elitelinkin.com', '123456789', 'srinivas1@elitelinkin.com', '12345', '2018', 'ECE', '2018-08-14 12:35:20', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `exams`
--

CREATE TABLE `exams` (
  `id` int(11) NOT NULL,
  `name` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sesion_id` int(11) NOT NULL,
  `note` text COLLATE utf8_unicode_ci,
  `is_active` varchar(255) COLLATE utf8_unicode_ci DEFAULT 'no',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `exams`
--

INSERT INTO `exams` (`id`, `name`, `sesion_id`, `note`, `is_active`, `created_at`, `updated_at`) VALUES
(1, 'Mid-term', 0, '', 'no', '2018-01-14 08:05:36', '0000-00-00 00:00:00'),
(2, 'Half-Yearly Exam', 0, '', 'no', '2018-08-29 10:03:55', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `exam_results`
--

CREATE TABLE `exam_results` (
  `id` int(11) NOT NULL,
  `attendence` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `exam_schedule_id` int(11) DEFAULT NULL,
  `student_id` int(11) DEFAULT NULL,
  `get_marks` float(10,2) DEFAULT NULL,
  `note` text COLLATE utf8_unicode_ci,
  `is_active` varchar(255) COLLATE utf8_unicode_ci DEFAULT 'no',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `exam_results`
--

INSERT INTO `exam_results` (`id`, `attendence`, `exam_schedule_id`, `student_id`, `get_marks`, `note`, `is_active`, `created_at`, `updated_at`) VALUES
(1, 'pre', 1, 1, 85.00, NULL, 'no', '2018-01-27 17:08:40', '0000-00-00 00:00:00'),
(2, 'pre', 3, 1, 72.00, NULL, 'no', '2018-01-27 17:08:40', '0000-00-00 00:00:00'),
(3, 'pre', 2, 1, 96.00, NULL, 'no', '2018-01-27 17:08:40', '0000-00-00 00:00:00'),
(4, 'ABS', 1, 3, 0.00, NULL, 'no', '2018-01-27 17:13:25', '0000-00-00 00:00:00'),
(5, 'pre', 3, 3, 90.00, NULL, 'no', '2018-01-27 17:13:25', '0000-00-00 00:00:00'),
(6, 'pre', 2, 3, 200.00, NULL, 'no', '2018-01-27 17:13:25', '0000-00-00 00:00:00'),
(7, 'pre', 4, 12, 45.00, NULL, 'no', '2018-08-29 10:16:05', '0000-00-00 00:00:00'),
(8, 'pre', 5, 12, 30.00, NULL, 'no', '2018-08-29 10:16:05', '0000-00-00 00:00:00'),
(9, 'pre', 6, 12, 47.00, NULL, 'no', '2018-08-29 10:16:05', '0000-00-00 00:00:00'),
(10, 'pre', 7, 12, 39.00, NULL, 'no', '2018-08-29 10:16:05', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `exam_schedules`
--

CREATE TABLE `exam_schedules` (
  `id` int(11) NOT NULL,
  `session_id` int(11) NOT NULL,
  `exam_id` int(11) DEFAULT NULL,
  `teacher_subject_id` int(11) DEFAULT NULL,
  `date_of_exam` date DEFAULT NULL,
  `start_to` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `end_from` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `room_no` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `full_marks` int(11) DEFAULT NULL,
  `passing_marks` int(11) DEFAULT NULL,
  `note` text COLLATE utf8_unicode_ci,
  `is_active` varchar(255) COLLATE utf8_unicode_ci DEFAULT 'no',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `exam_schedules`
--

INSERT INTO `exam_schedules` (`id`, `session_id`, `exam_id`, `teacher_subject_id`, `date_of_exam`, `start_to`, `end_from`, `room_no`, `full_marks`, `passing_marks`, `note`, `is_active`, `created_at`, `updated_at`) VALUES
(1, 11, 1, 1, '2018-01-30', '12:00 AM', '10:00 PM', '101', 100, 35, NULL, 'no', '2018-01-26 16:44:35', '0000-00-00 00:00:00'),
(2, 11, 1, 6, '2018-01-31', '12:00 AM', '10:00 PM', '101', 100, 35, NULL, 'no', '2018-01-26 16:44:35', '0000-00-00 00:00:00'),
(3, 11, 1, 2, '2018-02-01', '12:00 AM', '10:00 PM', '101', 100, 35, NULL, 'no', '2018-01-26 16:44:35', '0000-00-00 00:00:00'),
(4, 11, 2, 9, '2018-08-31', '10:15 AM', '12:15 PM', 'ECE-401', 100, 30, NULL, 'no', '2018-08-29 10:14:11', '0000-00-00 00:00:00'),
(5, 11, 2, 10, '2018-09-03', '01:00 PM', '03:00 PM', 'ECE-401', 100, 30, NULL, 'no', '2018-08-29 10:14:11', '0000-00-00 00:00:00'),
(6, 11, 2, 11, '2018-09-06', '12:15 PM', '01:15 PM', 'ME:LAB-01', 50, 17, NULL, 'no', '2018-08-29 10:14:11', '0000-00-00 00:00:00'),
(7, 11, 2, 12, '2018-09-10', '10:00 AM', '11:00 AM', 'CSE:LAB-01', 50, 17, NULL, 'no', '2018-08-29 10:14:11', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `expenses`
--

CREATE TABLE `expenses` (
  `id` int(11) NOT NULL,
  `exp_head_id` int(11) DEFAULT NULL,
  `name` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `date` date DEFAULT NULL,
  `amount` float(10,2) DEFAULT NULL,
  `documents` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `note` text COLLATE utf8_unicode_ci,
  `is_active` varchar(255) COLLATE utf8_unicode_ci DEFAULT 'yes',
  `is_deleted` varchar(255) COLLATE utf8_unicode_ci DEFAULT 'no',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `expense_head`
--

CREATE TABLE `expense_head` (
  `id` int(11) NOT NULL,
  `exp_category` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8_unicode_ci,
  `is_active` varchar(255) COLLATE utf8_unicode_ci DEFAULT 'yes',
  `is_deleted` varchar(255) COLLATE utf8_unicode_ci DEFAULT 'no',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `feecategory`
--

CREATE TABLE `feecategory` (
  `id` int(11) NOT NULL,
  `category` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `is_active` varchar(255) COLLATE utf8_unicode_ci DEFAULT 'no',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `feemasters`
--

CREATE TABLE `feemasters` (
  `id` int(11) NOT NULL,
  `session_id` int(11) DEFAULT NULL,
  `feetype_id` int(11) NOT NULL,
  `class_id` int(11) DEFAULT NULL,
  `amount` float(10,2) DEFAULT NULL,
  `description` text COLLATE utf8_unicode_ci,
  `is_active` varchar(255) COLLATE utf8_unicode_ci DEFAULT 'no',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `fees_discounts`
--

CREATE TABLE `fees_discounts` (
  `id` int(11) NOT NULL,
  `session_id` int(11) DEFAULT NULL,
  `name` varchar(100) DEFAULT NULL,
  `code` varchar(100) DEFAULT NULL,
  `amount` decimal(10,2) DEFAULT NULL,
  `description` text,
  `is_active` varchar(10) NOT NULL DEFAULT 'no',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `fees_discounts`
--

INSERT INTO `fees_discounts` (`id`, `session_id`, `name`, `code`, `amount`, `description`, `is_active`, `created_at`) VALUES
(1, 11, 'SIBLING Discount', '1002', '200.00', NULL, 'no', '2018-08-02 11:01:46');

-- --------------------------------------------------------

--
-- Table structure for table `feetype`
--

CREATE TABLE `feetype` (
  `id` int(11) NOT NULL,
  `feecategory_id` int(11) DEFAULT NULL,
  `type` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `code` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `is_active` varchar(255) COLLATE utf8_unicode_ci DEFAULT 'no',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `description` text COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `feetype`
--

INSERT INTO `feetype` (`id`, `feecategory_id`, `type`, `code`, `is_active`, `created_at`, `updated_at`, `description`) VALUES
(8, NULL, 'Tution Fee', 'TF', 'no', '2018-01-20 07:16:45', '0000-00-00 00:00:00', 'TF'),
(9, NULL, 'Bus Fee', 'BF', 'no', '2018-01-20 07:17:00', '0000-00-00 00:00:00', 'BF'),
(10, NULL, 'Demo', 'demo1', 'no', '2018-08-02 10:06:37', '0000-00-00 00:00:00', ''),
(11, NULL, 'Lab Fee', 'LF', 'no', '2018-08-29 09:56:22', '0000-00-00 00:00:00', ''),
(12, NULL, 'cs lab practical', 'clp', 'no', '2018-09-02 14:29:51', '0000-00-00 00:00:00', '');

-- --------------------------------------------------------

--
-- Table structure for table `fee_groups`
--

CREATE TABLE `fee_groups` (
  `id` int(11) NOT NULL,
  `name` varchar(200) DEFAULT NULL,
  `description` text,
  `is_active` varchar(10) NOT NULL DEFAULT 'no',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `fee_groups`
--

INSERT INTO `fee_groups` (`id`, `name`, `description`, `is_active`, `created_at`) VALUES
(12, 'Group1', 'grp1', 'no', '2018-01-20 07:17:21'),
(13, 'Addmision Fee', 'Addmision Fee', 'no', '2018-08-02 09:52:00'),
(14, 'Mothly', 'Mothly', 'no', '2018-08-02 09:52:16'),
(15, 'Dress', 'Dress', 'no', '2018-08-02 09:52:24'),
(16, 'Lybrairy', 'Lybrairy', 'no', '2018-08-02 09:52:33'),
(17, 'Bus', 'bus', 'no', '2018-08-02 09:52:42'),
(18, 'demo', 'demo', 'no', '2018-08-02 10:05:42'),
(19, 'Lab group', '', 'no', '2018-08-29 09:56:38'),
(20, 'practical charge', '', 'no', '2018-09-02 14:29:30');

-- --------------------------------------------------------

--
-- Table structure for table `fee_groups_feetype`
--

CREATE TABLE `fee_groups_feetype` (
  `id` int(11) NOT NULL,
  `fee_session_group_id` int(11) DEFAULT NULL,
  `fee_groups_id` int(11) DEFAULT NULL,
  `feetype_id` int(11) DEFAULT NULL,
  `session_id` int(11) DEFAULT NULL,
  `due_date` date DEFAULT NULL,
  `amount` decimal(10,2) DEFAULT NULL,
  `is_active` varchar(10) NOT NULL DEFAULT 'no',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `fee_groups_feetype`
--

INSERT INTO `fee_groups_feetype` (`id`, `fee_session_group_id`, `fee_groups_id`, `feetype_id`, `session_id`, `due_date`, `amount`, `is_active`, `created_at`) VALUES
(9, 6, 12, 8, 11, '2018-01-31', '2000.00', 'no', '2018-01-20 07:17:44'),
(10, 6, 12, 9, 11, '2018-01-31', '800.00', 'no', '2018-01-20 07:18:00'),
(11, 7, 13, 8, 11, '2018-08-13', '2000.00', 'no', '2018-08-02 09:53:27'),
(12, 8, 14, 8, 11, '1970-01-01', '1500.00', 'no', '2018-08-02 09:54:14'),
(13, 9, 15, 8, 11, '1970-01-01', '500.00', 'no', '2018-08-02 09:54:27'),
(14, 7, 13, 8, 11, '2018-07-18', '200000.00', 'no', '2018-08-27 12:40:13'),
(15, 10, 19, 11, 11, '2018-08-08', '5810.00', 'no', '2018-08-29 09:56:58'),
(16, 11, 20, 12, 11, '2018-09-10', '1999.00', 'no', '2018-09-02 14:30:14');

-- --------------------------------------------------------

--
-- Table structure for table `fee_receipt_no`
--

CREATE TABLE `fee_receipt_no` (
  `id` int(11) NOT NULL,
  `payment` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `fee_session_groups`
--

CREATE TABLE `fee_session_groups` (
  `id` int(11) NOT NULL,
  `fee_groups_id` int(11) DEFAULT NULL,
  `session_id` int(11) DEFAULT NULL,
  `is_active` varchar(10) NOT NULL DEFAULT 'no',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `fee_session_groups`
--

INSERT INTO `fee_session_groups` (`id`, `fee_groups_id`, `session_id`, `is_active`, `created_at`) VALUES
(6, 12, 11, 'no', '2018-01-20 07:17:44'),
(7, 13, 11, 'no', '2018-08-02 09:53:27'),
(8, 14, 11, 'no', '2018-08-02 09:54:14'),
(9, 15, 11, 'no', '2018-08-02 09:54:27'),
(10, 19, 11, 'no', '2018-08-29 09:56:58'),
(11, 20, 11, 'no', '2018-09-02 14:30:14');

-- --------------------------------------------------------

--
-- Table structure for table `grades`
--

CREATE TABLE `grades` (
  `id` int(11) NOT NULL,
  `name` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `point` float(10,1) DEFAULT NULL,
  `mark_from` float(10,2) DEFAULT NULL,
  `mark_upto` float(10,2) DEFAULT NULL,
  `description` text COLLATE utf8_unicode_ci,
  `is_active` varchar(255) COLLATE utf8_unicode_ci DEFAULT 'no',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `grades`
--

INSERT INTO `grades` (`id`, `name`, `point`, `mark_from`, `mark_upto`, `description`, `is_active`, `created_at`, `updated_at`) VALUES
(1, 'A', NULL, 85.00, 100.00, 'jai', 'no', '2018-01-27 17:09:32', '0000-00-00 00:00:00'),
(2, 'B', NULL, 75.00, 85.00, '', 'no', '2018-08-10 13:20:39', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `hostel`
--

CREATE TABLE `hostel` (
  `id` int(11) NOT NULL,
  `hostel_name` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `type` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `address` text COLLATE utf8_unicode_ci,
  `intake` int(11) DEFAULT NULL,
  `description` text COLLATE utf8_unicode_ci,
  `is_active` varchar(255) COLLATE utf8_unicode_ci DEFAULT 'no',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `hostel`
--

INSERT INTO `hostel` (`id`, `hostel_name`, `type`, `address`, `intake`, `description`, `is_active`, `created_at`, `updated_at`) VALUES
(1, 'Gaur', 'Boys', 'Gymkhana', 0, '', 'no', '2018-08-10 12:50:09', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `hostel_rooms`
--

CREATE TABLE `hostel_rooms` (
  `id` int(11) NOT NULL,
  `hostel_id` int(11) DEFAULT NULL,
  `room_type_id` int(11) DEFAULT NULL,
  `room_no` varchar(200) DEFAULT NULL,
  `no_of_bed` int(11) DEFAULT NULL,
  `cost_per_bed` float(10,2) DEFAULT '0.00',
  `title` varchar(200) DEFAULT NULL,
  `description` text,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `hostel_rooms`
--

INSERT INTO `hostel_rooms` (`id`, `hostel_id`, `room_type_id`, `room_no`, `no_of_bed`, `cost_per_bed`, `title`, `description`, `created_at`, `updated_at`) VALUES
(1, 1, 1, '13A', 1, 6700.00, NULL, '', '2018-08-10 12:50:54', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `income`
--

CREATE TABLE `income` (
  `id` int(11) NOT NULL,
  `inc_head_id` varchar(11) DEFAULT NULL,
  `name` varchar(50) DEFAULT NULL,
  `date` date DEFAULT NULL,
  `amount` float DEFAULT NULL,
  `note` text,
  `is_active` varchar(255) DEFAULT 'yes',
  `is_deleted` varchar(255) DEFAULT 'no',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `documents` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `income`
--

INSERT INTO `income` (`id`, `inc_head_id`, `name`, `date`, `amount`, `note`, `is_active`, `is_deleted`, `created_at`, `updated_at`, `documents`) VALUES
(1, '1', 'admission', '2018-11-14', 5000, '', 'yes', 'no', '2018-01-08 08:08:43', '0000-00-00 00:00:00', NULL),
(2, '1', 'XYZ', '2018-01-24', 2500, 'test', 'yes', 'no', '2018-01-14 07:36:46', '0000-00-00 00:00:00', NULL),
(3, '1', 'sasaasasas', '2018-08-27', 0, 'asasas', 'yes', 'no', '2018-08-05 14:23:19', '0000-00-00 00:00:00', NULL),
(4, '1', 'asasa', '2018-08-20', 1121210000000, '', 'yes', 'no', '2018-08-05 14:23:57', '0000-00-00 00:00:00', NULL),
(5, '1', 'asas', '2018-09-04', 1011, '12', 'yes', 'no', '2018-08-05 14:24:57', '0000-00-00 00:00:00', NULL),
(6, '1', 'qwqwqw', '2018-08-20', 0, '', 'yes', 'no', '2018-08-05 14:25:27', '0000-00-00 00:00:00', NULL),
(7, '1', 'asasaasa', '2018-08-28', 0, 'asassas', 'yes', 'no', '2018-08-05 14:26:20', '0000-00-00 00:00:00', 'uploads/school_income/7.txt'),
(8, '2', 'DBMSSSSSS', '2018-08-06', 484848000, '', 'yes', 'no', '2018-08-27 12:41:53', '0000-00-00 00:00:00', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `income_head`
--

CREATE TABLE `income_head` (
  `id` int(255) NOT NULL,
  `income_category` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `is_active` varchar(255) NOT NULL DEFAULT 'yes',
  `is_deleted` varchar(255) NOT NULL DEFAULT 'no',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `income_head`
--

INSERT INTO `income_head` (`id`, `income_category`, `description`, `is_active`, `is_deleted`, `created_at`, `updated_at`) VALUES
(1, 'school 1', '', 'yes', 'no', '2018-01-08 08:08:11', '0000-00-00 00:00:00'),
(2, 'asas', 'aasa', 'yes', 'no', '2018-08-27 12:42:12', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `item`
--

CREATE TABLE `item` (
  `id` int(11) NOT NULL,
  `item_category_id` int(11) DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `item_photo` varchar(225) DEFAULT NULL,
  `description` text NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `item_store_id` int(11) DEFAULT NULL,
  `item_supplier_id` int(11) DEFAULT NULL,
  `quantity` int(100) NOT NULL,
  `date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `item_category`
--

CREATE TABLE `item_category` (
  `id` int(255) NOT NULL,
  `item_category` varchar(255) NOT NULL,
  `is_active` varchar(255) NOT NULL DEFAULT 'yes',
  `description` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `item_issue`
--

CREATE TABLE `item_issue` (
  `id` int(11) NOT NULL,
  `issue_type` varchar(15) DEFAULT NULL,
  `issue_to` varchar(100) DEFAULT NULL,
  `issue_by` varchar(100) DEFAULT NULL,
  `issue_date` date DEFAULT NULL,
  `return_date` date DEFAULT NULL,
  `item_category_id` int(11) DEFAULT NULL,
  `item_id` int(11) DEFAULT NULL,
  `quantity` int(10) NOT NULL,
  `note` text NOT NULL,
  `is_returned` int(2) NOT NULL DEFAULT '1',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `is_active` varchar(10) DEFAULT 'no'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `item_stock`
--

CREATE TABLE `item_stock` (
  `id` int(11) NOT NULL,
  `item_id` int(11) DEFAULT NULL,
  `supplier_id` int(11) DEFAULT NULL,
  `symbol` varchar(10) NOT NULL DEFAULT '+',
  `store_id` int(11) DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL,
  `date` date NOT NULL,
  `attachment` varchar(250) DEFAULT NULL,
  `description` text NOT NULL,
  `is_active` varchar(10) DEFAULT 'yes',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `item_store`
--

CREATE TABLE `item_store` (
  `id` int(255) NOT NULL,
  `item_store` varchar(255) NOT NULL,
  `code` varchar(255) NOT NULL,
  `description` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `item_supplier`
--

CREATE TABLE `item_supplier` (
  `id` int(255) NOT NULL,
  `item_supplier` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `contact_person_name` varchar(255) NOT NULL,
  `contact_person_phone` varchar(255) NOT NULL,
  `contact_person_email` varchar(255) NOT NULL,
  `description` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `languages`
--

CREATE TABLE `languages` (
  `id` int(11) NOT NULL,
  `language` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `is_deleted` varchar(10) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'yes',
  `is_active` varchar(255) COLLATE utf8_unicode_ci DEFAULT 'no',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `languages`
--

INSERT INTO `languages` (`id`, `language`, `is_deleted`, `is_active`, `created_at`, `updated_at`) VALUES
(1, 'Azerbaijan', 'no', 'no', '2017-04-06 10:38:33', '0000-00-00 00:00:00'),
(2, 'Albanian', 'no', 'no', '2017-04-06 10:38:33', '0000-00-00 00:00:00'),
(3, 'Amharic', 'no', 'no', '2017-04-06 10:38:33', '0000-00-00 00:00:00'),
(4, 'English', 'no', 'no', '2017-04-06 10:38:33', '0000-00-00 00:00:00'),
(5, 'Arabic', 'no', 'no', '2017-04-06 10:38:33', '0000-00-00 00:00:00'),
(7, 'Afrikaans', 'no', 'no', '2017-04-06 10:38:33', '0000-00-00 00:00:00'),
(8, 'Basque', 'no', 'no', '2017-04-06 10:38:33', '0000-00-00 00:00:00'),
(11, 'Bengali', 'no', 'no', '2017-04-06 10:38:33', '0000-00-00 00:00:00'),
(13, 'Bosnian', 'no', 'no', '2017-04-06 10:38:33', '0000-00-00 00:00:00'),
(14, 'Welsh', 'no', 'no', '2017-04-06 10:38:33', '0000-00-00 00:00:00'),
(15, 'Hungarian', 'no', 'no', '2017-04-06 10:38:33', '0000-00-00 00:00:00'),
(16, 'Vietnamese', 'no', 'no', '2017-04-06 10:38:33', '0000-00-00 00:00:00'),
(17, 'Haitian (Creole)', 'no', 'no', '2017-04-06 10:38:33', '0000-00-00 00:00:00'),
(18, 'Galician', 'no', 'no', '2017-04-06 10:38:33', '0000-00-00 00:00:00'),
(19, 'Dutch', 'no', 'no', '2017-04-06 10:38:33', '0000-00-00 00:00:00'),
(21, 'Greek', 'no', 'no', '2017-04-06 10:38:33', '0000-00-00 00:00:00'),
(22, 'Georgian', 'no', 'no', '2017-04-06 10:38:33', '0000-00-00 00:00:00'),
(23, 'Gujarati', 'no', 'no', '2017-04-06 10:38:33', '0000-00-00 00:00:00'),
(24, 'Danish', 'no', 'no', '2017-04-06 10:38:33', '0000-00-00 00:00:00'),
(25, 'Hebrew', 'no', 'no', '2017-04-06 10:38:33', '0000-00-00 00:00:00'),
(26, 'Yiddish', 'no', 'no', '2017-04-06 10:38:33', '0000-00-00 00:00:00'),
(27, 'Indonesian', 'no', 'no', '2017-04-06 10:38:33', '0000-00-00 00:00:00'),
(28, 'Irish', 'no', 'no', '2017-04-06 10:38:33', '0000-00-00 00:00:00'),
(29, 'Italian', 'no', 'no', '2017-04-06 10:38:33', '0000-00-00 00:00:00'),
(30, 'Icelandic', 'no', 'no', '2017-04-06 10:38:33', '0000-00-00 00:00:00'),
(31, 'Spanish', 'no', 'no', '2017-04-06 10:38:33', '0000-00-00 00:00:00'),
(33, 'Kannada', 'no', 'no', '2017-04-06 10:38:33', '0000-00-00 00:00:00'),
(34, 'Catalan', 'no', 'no', '2017-04-06 10:38:33', '0000-00-00 00:00:00'),
(36, 'Chinese', 'no', 'no', '2017-04-06 10:38:33', '0000-00-00 00:00:00'),
(37, 'Korean', 'no', 'no', '2017-04-06 10:38:33', '0000-00-00 00:00:00'),
(38, 'Xhosa', 'no', 'no', '2017-04-06 10:38:33', '0000-00-00 00:00:00'),
(39, 'Latin', 'no', 'no', '2017-04-06 10:38:33', '0000-00-00 00:00:00'),
(40, 'Latvian', 'no', 'no', '2017-04-06 10:38:33', '0000-00-00 00:00:00'),
(41, 'Lithuanian', 'no', 'no', '2017-04-06 10:38:33', '0000-00-00 00:00:00'),
(43, 'Malagasy', 'no', 'no', '2017-04-06 10:38:33', '0000-00-00 00:00:00'),
(44, 'Malay', 'no', 'no', '2017-04-06 10:38:33', '0000-00-00 00:00:00'),
(45, 'Malayalam', 'no', 'no', '2017-04-06 10:38:33', '0000-00-00 00:00:00'),
(46, 'Maltese', 'no', 'no', '2017-04-06 10:38:33', '0000-00-00 00:00:00'),
(47, 'Macedonian', 'no', 'no', '2017-04-06 10:38:33', '0000-00-00 00:00:00'),
(48, 'Maori', 'no', 'no', '2017-04-06 10:38:33', '0000-00-00 00:00:00'),
(49, 'Marathi', 'no', 'no', '2017-04-06 10:38:33', '0000-00-00 00:00:00'),
(51, 'Mongolian', 'no', 'no', '2017-04-06 10:38:33', '0000-00-00 00:00:00'),
(52, 'German', 'no', 'no', '2017-04-06 10:38:33', '0000-00-00 00:00:00'),
(53, 'Nepali', 'no', 'no', '2017-04-06 10:38:33', '0000-00-00 00:00:00'),
(54, 'Norwegian', 'no', 'no', '2017-04-06 10:38:33', '0000-00-00 00:00:00'),
(55, 'Punjabi', 'no', 'no', '2017-04-06 10:38:33', '0000-00-00 00:00:00'),
(57, 'Persian', 'no', 'no', '2017-04-06 10:38:33', '0000-00-00 00:00:00'),
(59, 'Portuguese', 'no', 'no', '2017-04-06 10:38:33', '0000-00-00 00:00:00'),
(60, 'Romanian', 'no', 'no', '2017-04-06 10:38:33', '0000-00-00 00:00:00'),
(61, 'Russian', 'no', 'no', '2017-04-06 10:38:33', '0000-00-00 00:00:00'),
(62, 'Cebuano', 'no', 'no', '2017-04-06 10:38:33', '0000-00-00 00:00:00'),
(64, 'Sinhala', 'no', 'no', '2017-04-06 10:38:33', '0000-00-00 00:00:00'),
(65, 'Slovakian', 'no', 'no', '2017-04-06 10:38:33', '0000-00-00 00:00:00'),
(66, 'Slovenian', 'no', 'no', '2017-04-06 10:38:33', '0000-00-00 00:00:00'),
(67, 'Swahili', 'no', 'no', '2017-04-06 10:38:33', '0000-00-00 00:00:00'),
(68, 'Sundanese', 'no', 'no', '2017-04-06 10:38:33', '0000-00-00 00:00:00'),
(70, 'Thai', 'no', 'no', '2017-04-06 10:38:33', '0000-00-00 00:00:00'),
(71, 'Tagalog', 'no', 'no', '2017-04-06 10:38:33', '0000-00-00 00:00:00'),
(72, 'Tamil', 'no', 'no', '2017-04-06 10:38:33', '0000-00-00 00:00:00'),
(74, 'Telugu', 'no', 'no', '2017-04-06 10:38:33', '0000-00-00 00:00:00'),
(75, 'Turkish', 'no', 'no', '2017-04-06 10:38:33', '0000-00-00 00:00:00'),
(77, 'Uzbek', 'no', 'no', '2017-04-06 10:38:33', '0000-00-00 00:00:00'),
(79, 'Urdu', 'no', 'no', '2017-04-06 10:38:33', '0000-00-00 00:00:00'),
(80, 'Finnish', 'no', 'no', '2017-04-06 10:38:33', '0000-00-00 00:00:00'),
(81, 'French', 'no', 'no', '2017-04-06 10:38:33', '0000-00-00 00:00:00'),
(82, 'Hindi', 'no', 'no', '2017-04-06 10:38:33', '0000-00-00 00:00:00'),
(84, 'Czech', 'no', 'no', '2017-04-06 10:38:33', '0000-00-00 00:00:00'),
(85, 'Swedish', 'no', 'no', '2017-04-06 10:38:33', '0000-00-00 00:00:00'),
(86, 'Scottish', 'no', 'no', '2017-04-06 10:38:33', '0000-00-00 00:00:00'),
(87, 'Estonian', 'no', 'no', '2017-04-06 10:38:33', '0000-00-00 00:00:00'),
(88, 'Esperanto', 'no', 'no', '2017-04-06 10:38:33', '0000-00-00 00:00:00'),
(89, 'Javanese', 'no', 'no', '2017-04-06 10:38:33', '0000-00-00 00:00:00'),
(90, 'Japanese', 'no', 'no', '2017-04-06 10:38:33', '0000-00-00 00:00:00'),
(91, 'english', 'yes', 'no', '2018-08-06 12:49:58', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `lang_keys`
--

CREATE TABLE `lang_keys` (
  `id` int(11) NOT NULL,
  `key` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `is_active` varchar(255) COLLATE utf8_unicode_ci DEFAULT 'no',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `lang_keys`
--

INSERT INTO `lang_keys` (`id`, `key`, `is_active`, `created_at`, `updated_at`) VALUES
(1, 'session', 'no', '2016-03-09 16:24:39', '0000-00-00 00:00:00'),
(2, 'school_name', 'no', '2016-03-09 16:34:28', '0000-00-00 00:00:00'),
(3, 'email', 'no', '2016-03-09 16:34:48', '0000-00-00 00:00:00'),
(6, 'roll_no', 'no', '2001-12-30 09:59:30', '0000-00-00 00:00:00'),
(7, 'first_name', 'no', '2001-12-30 09:59:30', '0000-00-00 00:00:00'),
(8, 'last_name', 'no', '2001-12-30 09:59:30', '0000-00-00 00:00:00'),
(9, 'class', 'no', '2001-12-30 09:59:30', '0000-00-00 00:00:00'),
(10, 'section', 'no', '2001-12-30 09:59:30', '0000-00-00 00:00:00'),
(11, 'admission_date', 'no', '2017-04-02 01:07:35', '0000-00-00 00:00:00'),
(12, 'mobile_no', 'no', '2001-12-30 09:59:30', '0000-00-00 00:00:00'),
(13, 'date_of_birth', 'no', '2001-12-30 09:59:30', '0000-00-00 00:00:00'),
(15, 'religion', 'no', '2001-12-30 09:59:30', '0000-00-00 00:00:00'),
(16, 'category', 'no', '2001-12-30 09:59:30', '0000-00-00 00:00:00'),
(17, 'current_address', 'no', '2001-12-30 09:59:30', '0000-00-00 00:00:00'),
(18, 'permanent_address', 'no', '2001-12-30 09:59:30', '0000-00-00 00:00:00'),
(23, 'bank_account_no', 'no', '2001-12-30 09:59:30', '0000-00-00 00:00:00'),
(24, 'bank_name', 'no', '2001-12-30 09:59:30', '0000-00-00 00:00:00'),
(25, 'ifsc_code', 'no', '2001-12-30 09:59:30', '0000-00-00 00:00:00'),
(27, 'guardian_name', 'no', '2001-12-30 09:59:30', '0000-00-00 00:00:00'),
(28, 'guardian_relation', 'no', '2016-03-12 19:13:05', '0000-00-00 00:00:00'),
(29, 'guardian_phone', 'no', '2001-12-30 09:59:30', '0000-00-00 00:00:00'),
(30, 'guardian_address', 'no', '2001-12-30 09:59:30', '0000-00-00 00:00:00'),
(31, 'select_image', 'no', '2001-12-30 09:59:30', '0000-00-00 00:00:00'),
(32, 'import_excel', 'no', '2001-12-30 10:03:11', '0000-00-00 00:00:00'),
(33, 'export_format', 'no', '2001-12-30 10:03:11', '0000-00-00 00:00:00'),
(34, 'generate_pdf', 'no', '2001-12-30 10:03:11', '0000-00-00 00:00:00'),
(35, 'add_fees', 'no', '2016-06-24 13:34:31', '0000-00-00 00:00:00'),
(37, 'search', 'no', '2016-03-12 19:17:08', '0000-00-00 00:00:00'),
(39, 'fee_category', 'no', '2016-03-12 19:29:03', '0000-00-00 00:00:00'),
(40, 'fee_type', 'no', '2016-03-12 19:29:03', '0000-00-00 00:00:00'),
(43, 'add_fees_master', 'no', '2016-03-12 19:30:10', '0000-00-00 00:00:00'),
(44, 'fees_master_list', 'no', '2016-03-12 19:30:10', '0000-00-00 00:00:00'),
(45, 'add_fees_type', 'no', '2016-03-12 19:31:38', '0000-00-00 00:00:00'),
(46, 'fees_type_list', 'no', '2016-03-12 19:31:38', '0000-00-00 00:00:00'),
(48, 'edit', 'no', '2016-03-12 19:33:10', '0000-00-00 00:00:00'),
(50, 'category_list', 'no', '2016-03-12 19:34:32', '0000-00-00 00:00:00'),
(51, 'add_category', 'no', '2016-03-12 19:34:32', '0000-00-00 00:00:00'),
(52, 'session_list', 'no', '2016-03-12 19:35:15', '0000-00-00 00:00:00'),
(53, 'add_session', 'no', '2016-03-12 19:35:15', '0000-00-00 00:00:00'),
(54, 'class_list', 'no', '2016-03-12 19:35:53', '0000-00-00 00:00:00'),
(56, 'section_list', 'no', '2016-03-12 19:36:20', '0000-00-00 00:00:00'),
(57, 'add_section', 'no', '2016-03-12 19:36:20', '0000-00-00 00:00:00'),
(61, 'student', 'no', '2016-03-12 19:38:08', '0000-00-00 00:00:00'),
(63, 'language_list', 'no', '2016-03-12 19:39:44', '0000-00-00 00:00:00'),
(64, 'add_another_language', 'no', '2016-03-12 19:39:44', '0000-00-00 00:00:00'),
(65, 'created_at', 'no', '2016-03-12 20:15:20', '0000-00-00 00:00:00'),
(66, 'save', 'no', '2001-12-30 09:51:24', '0000-00-00 00:00:00'),
(68, 'select_logo', 'no', '2001-12-30 10:17:56', '0000-00-00 00:00:00'),
(69, 'school_logo', 'no', '2001-12-30 10:19:33', '0000-00-00 00:00:00'),
(70, 'manage', 'no', '2001-12-30 10:19:33', '0000-00-00 00:00:00'),
(72, 'edit_logo', 'no', '2001-12-30 10:23:28', '0000-00-00 00:00:00'),
(73, 'phone', 'no', '2001-12-30 10:30:49', '0000-00-00 00:00:00'),
(74, 'user_name', 'no', '2001-12-30 10:38:51', '0000-00-00 00:00:00'),
(76, 'sms_configuration', 'no', '2001-12-30 10:43:00', '0000-00-00 00:00:00'),
(77, 'sms_gateway_url', 'no', '2016-10-26 21:19:35', '0000-00-00 00:00:00'),
(78, 'status', 'no', '2001-12-30 10:43:52', '0000-00-00 00:00:00'),
(79, 'action', 'no', '2001-12-30 10:44:03', '0000-00-00 00:00:00'),
(80, 'change_status', 'no', '2001-12-30 10:45:19', '0000-00-00 00:00:00'),
(82, 'report', 'no', '2001-12-30 10:56:58', '0000-00-00 00:00:00'),
(84, 'select_criteria', 'no', '2001-12-30 10:57:36', '0000-00-00 00:00:00'),
(85, 'reset', 'no', '2001-12-30 10:58:39', '0000-00-00 00:00:00'),
(86, 'invoice_no', 'no', '2001-12-30 11:00:59', '0000-00-00 00:00:00'),
(87, 'fine', 'no', '2001-12-30 11:00:59', '0000-00-00 00:00:00'),
(88, 'type', 'no', '2001-12-30 11:01:20', '0000-00-00 00:00:00'),
(89, 'amount', 'no', '2001-12-30 11:01:20', '0000-00-00 00:00:00'),
(90, 'total', 'no', '2001-12-30 11:01:26', '0000-00-00 00:00:00'),
(91, 'discount', 'no', '2001-12-30 11:01:36', '0000-00-00 00:00:00'),
(92, 'balance_description', 'no', '2001-12-30 11:02:55', '0000-00-00 00:00:00'),
(94, 'no_search_record_found', 'no', '2001-12-30 11:06:37', '0000-00-00 00:00:00'),
(101, 'description', 'no', '2001-12-30 11:13:49', '0000-00-00 00:00:00'),
(102, 'fees_subtotal', 'no', '2001-12-30 11:14:34', '0000-00-00 00:00:00'),
(104, 'receipt_no', 'no', '2001-12-30 11:17:56', '0000-00-00 00:00:00'),
(106, 'grand_total', 'no', '2001-12-30 11:19:14', '0000-00-00 00:00:00'),
(107, 'deposit', 'no', '2001-12-30 11:26:50', '0000-00-00 00:00:00'),
(108, 'balance', 'no', '2001-12-30 11:26:50', '0000-00-00 00:00:00'),
(115, 'fee_master', 'no', '2001-12-30 13:06:09', '0000-00-00 00:00:00'),
(116, 'classes', 'no', '2001-12-30 13:06:44', '0000-00-00 00:00:00'),
(117, 'collection', 'no', '2001-12-30 13:07:14', '0000-00-00 00:00:00'),
(121, 'current_password', 'no', '2001-12-31 04:59:11', '0000-00-00 00:00:00'),
(122, 'new_password', 'no', '2001-12-31 04:59:11', '0000-00-00 00:00:00'),
(123, 'confirm_password', 'no', '2016-09-15 10:29:51', '0000-00-00 00:00:00'),
(125, 'date', 'no', '2016-04-07 16:17:39', '0000-00-00 00:00:00'),
(137, 'add_new_sms_configuration', 'no', '2001-12-31 06:39:13', '0000-00-00 00:00:00'),
(141, 'cancel', 'no', '2016-03-27 02:50:39', '0000-00-00 00:00:00'),
(142, 'exam_name', 'no', '2016-03-27 04:16:34', '0000-00-00 00:00:00'),
(143, 'subject_name', 'no', '2016-03-29 19:05:15', '0000-00-00 00:00:00'),
(144, 'subject_code', 'no', '2016-03-29 19:05:15', '0000-00-00 00:00:00'),
(145, 'grade_name', 'no', '2016-03-29 23:21:20', '0000-00-00 00:00:00'),
(147, 'percent', 'no', '2016-03-29 23:21:41', '0000-00-00 00:00:00'),
(149, 'percent_to', 'no', '2016-03-29 23:22:00', '0000-00-00 00:00:00'),
(150, 'note', 'no', '2016-03-29 23:22:00', '0000-00-00 00:00:00'),
(151, 'school_code', 'no', '2016-10-25 15:12:26', '0000-00-00 00:00:00'),
(152, 'sign_in', 'no', '2016-04-07 08:27:27', '0000-00-00 00:00:00'),
(153, 'name', 'no', '2016-04-07 16:16:19', '0000-00-00 00:00:00'),
(155, 'transport_fees', 'no', '2016-04-12 16:56:04', '0000-00-00 00:00:00'),
(156, 'fees_discount', 'no', '2016-04-12 17:33:36', '0000-00-00 00:00:00'),
(157, 'father_name', 'no', '2016-04-13 01:52:14', '0000-00-00 00:00:00'),
(158, 'father_phone', 'no', '2016-04-13 01:52:14', '0000-00-00 00:00:00'),
(159, 'father_occupation', 'no', '2016-04-13 01:52:45', '0000-00-00 00:00:00'),
(160, 'mother_name', 'no', '2016-04-13 01:52:45', '0000-00-00 00:00:00'),
(161, 'mother_phone', 'no', '2016-04-13 01:56:08', '0000-00-00 00:00:00'),
(162, 'mother_occupation', 'no', '2016-04-13 01:56:08', '0000-00-00 00:00:00'),
(163, 'guardian_occupation', 'no', '2016-04-13 02:09:51', '0000-00-00 00:00:00'),
(164, 'address', 'no', '2016-04-14 11:32:42', '0000-00-00 00:00:00'),
(165, 'language', 'no', '2016-04-14 11:33:38', '0000-00-00 00:00:00'),
(166, 'teacher_name', 'no', '2016-04-19 10:55:06', '0000-00-00 00:00:00'),
(167, 'password', 'no', '2016-04-19 10:55:06', '0000-00-00 00:00:00'),
(168, 'cast', 'no', '2016-04-19 11:26:10', '0000-00-00 00:00:00'),
(169, 'id', 'no', '2016-04-19 13:04:10', '0000-00-00 00:00:00'),
(170, 'admission_no', 'no', '2016-04-22 23:02:46', '0000-00-00 00:00:00'),
(171, 'enrollment_no', 'no', '2016-04-22 23:20:48', '0000-00-00 00:00:00'),
(180, 'total_paid_fees', 'no', '2016-04-23 00:09:01', '0000-00-00 00:00:00'),
(181, 'admission_discount', 'no', '2016-04-23 00:09:41', '0000-00-00 00:00:00'),
(182, 'total_balance', 'no', '2016-04-23 00:09:41', '0000-00-00 00:00:00'),
(183, 'student_name', 'no', '2016-04-24 02:37:56', '0000-00-00 00:00:00'),
(184, 'fees', 'no', '2016-04-24 02:44:06', '0000-00-00 00:00:00'),
(185, 'rte', 'no', '2016-04-24 04:43:46', '0000-00-00 00:00:00'),
(186, 'gender', 'no', '2016-04-24 13:17:59', '0000-00-00 00:00:00'),
(187, 'teacher_photo', 'no', '2016-04-29 04:56:01', '0000-00-00 00:00:00'),
(188, 'isbn', 'no', '2016-05-02 03:07:51', '0000-00-00 00:00:00'),
(189, 'publisher', 'no', '2016-10-23 08:28:28', '0000-00-00 00:00:00'),
(190, 'author', 'no', '2016-05-02 03:08:19', '0000-00-00 00:00:00'),
(191, 'qty', 'no', '2016-05-02 03:08:19', '0000-00-00 00:00:00'),
(192, 'bookprice', 'no', '2016-10-18 05:11:54', '0000-00-00 00:00:00'),
(193, 'postdate', 'no', '2016-05-02 03:08:38', '0000-00-00 00:00:00'),
(197, 'intake', 'no', '2016-05-05 01:06:45', '0000-00-00 00:00:00'),
(199, 'book_title', 'no', '2016-05-05 04:59:27', '0000-00-00 00:00:00'),
(201, 'no_of_vehicle', 'no', '2016-05-09 23:20:40', '0000-00-00 00:00:00'),
(202, 'fare', 'no', '2016-05-09 23:20:48', '0000-00-00 00:00:00'),
(203, 'content_type', 'no', '2016-05-10 12:24:51', '0000-00-00 00:00:00'),
(205, 'upload_date', 'no', '2016-05-10 12:25:21', '0000-00-00 00:00:00'),
(206, 'expenses', 'no', '2016-05-10 22:14:03', '0000-00-00 00:00:00'),
(207, 'student_information', 'no', '2016-05-10 22:24:31', '0000-00-00 00:00:00'),
(208, 'fees_collection', 'no', '2016-05-10 22:35:29', '0000-00-00 00:00:00'),
(210, 'examinations', 'no', '2016-05-10 23:03:55', '0000-00-00 00:00:00'),
(211, 'academics', 'no', '2016-05-10 23:17:28', '0000-00-00 00:00:00'),
(212, 'download_center', 'no', '2016-05-10 23:17:28', '0000-00-00 00:00:00'),
(214, 'library', 'no', '2016-05-10 23:34:05', '0000-00-00 00:00:00'),
(215, 'system_settings', 'no', '2016-05-10 23:38:32', '0000-00-00 00:00:00'),
(216, 'reports', 'no', '2016-05-10 23:51:38', '0000-00-00 00:00:00'),
(217, 'subject', 'no', '2016-05-13 03:22:44', '0000-00-00 00:00:00'),
(218, 'rack_no', 'no', '2016-05-13 03:22:44', '0000-00-00 00:00:00'),
(220, 'hostel', 'no', '2016-05-13 06:42:27', '0000-00-00 00:00:00'),
(221, 'hostel_name', 'no', '2016-05-13 06:48:07', '0000-00-00 00:00:00'),
(222, 'transport', 'no', '2016-05-13 06:51:25', '0000-00-00 00:00:00'),
(223, 'route_title', 'no', '2016-05-13 06:57:39', '0000-00-00 00:00:00'),
(225, 'date_to', 'no', '2016-05-13 09:36:18', '0000-00-00 00:00:00'),
(227, 'basic_information', 'no', '2016-05-13 09:57:25', '0000-00-00 00:00:00'),
(228, 'add', 'no', '2016-05-13 10:00:46', '0000-00-00 00:00:00'),
(229, 'list', 'no', '2016-05-13 10:03:14', '0000-00-00 00:00:00'),
(230, 'result', 'no', '2016-05-13 10:06:46', '0000-00-00 00:00:00'),
(231, 'pass', 'no', '2016-05-13 10:07:34', '0000-00-00 00:00:00'),
(232, 'fail', 'no', '2016-05-13 10:07:34', '0000-00-00 00:00:00'),
(233, 'continue', 'no', '2016-05-17 14:42:00', '0000-00-00 00:00:00'),
(234, 'leave', 'no', '2016-05-13 10:08:28', '0000-00-00 00:00:00'),
(235, 'exam_list', 'no', '2016-05-17 12:47:56', '0000-00-00 00:00:00'),
(236, 'exam', 'no', '2016-05-17 12:50:35', '0000-00-00 00:00:00'),
(237, 'start_time', 'no', '2016-05-17 12:55:08', '0000-00-00 00:00:00'),
(238, 'end_time', 'no', '2016-05-17 12:55:08', '0000-00-00 00:00:00'),
(239, 'room', 'no', '2016-05-17 12:55:08', '0000-00-00 00:00:00'),
(240, 'full_mark', 'no', '2016-05-17 12:55:08', '0000-00-00 00:00:00'),
(241, 'passing_marks', 'no', '2016-05-17 12:55:08', '0000-00-00 00:00:00'),
(242, 'room_no', 'no', '2016-05-17 13:05:25', '0000-00-00 00:00:00'),
(245, 'promote', 'no', '2016-05-17 14:03:52', '0000-00-00 00:00:00'),
(246, 'content_title', 'no', '2016-05-18 21:50:20', '0000-00-00 00:00:00'),
(251, 'teacher_list', 'no', '2016-05-21 04:29:17', '0000-00-00 00:00:00'),
(252, 'compose_new_message', 'no', '2016-05-25 03:22:49', '0000-00-00 00:00:00'),
(253, 'notice', 'no', '2016-05-25 03:26:56', '0000-00-00 00:00:00'),
(254, 'notice_date', 'no', '2016-05-25 03:27:53', '0000-00-00 00:00:00'),
(255, 'publish_on', 'no', '2016-05-25 03:28:56', '0000-00-00 00:00:00'),
(256, 'message_to', 'no', '2016-05-25 03:30:54', '0000-00-00 00:00:00'),
(257, 'parent', 'no', '2016-05-25 03:33:55', '0000-00-00 00:00:00'),
(258, 'teacher', 'no', '2016-05-25 03:34:21', '0000-00-00 00:00:00'),
(259, 'no_record_found', 'no', '2016-05-25 03:47:21', '0000-00-00 00:00:00'),
(260, 'teacher_detail', 'no', '2016-05-25 05:22:21', '0000-00-00 00:00:00'),
(261, 'subject_list', 'no', '2016-05-25 06:03:17', '0000-00-00 00:00:00'),
(263, 'create_category', 'no', '2016-05-25 11:59:13', '0000-00-00 00:00:00'),
(264, 'title', 'no', '2016-05-26 01:01:44', '0000-00-00 00:00:00'),
(265, 'message', 'no', '2016-05-26 01:02:36', '0000-00-00 00:00:00'),
(266, 'send', 'no', '2016-05-26 01:43:32', '0000-00-00 00:00:00'),
(267, 'previous_school_details', 'no', '2016-05-26 05:53:02', '0000-00-00 00:00:00'),
(268, 'upload_documents', 'no', '2016-05-26 05:54:00', '0000-00-00 00:00:00'),
(270, 'miscellaneous_details', 'no', '2016-05-26 05:58:10', '0000-00-00 00:00:00'),
(272, 'edit_notification', 'no', '2016-05-26 07:22:03', '0000-00-00 00:00:00'),
(273, 'guardian_details', 'no', '2016-05-26 07:36:45', '0000-00-00 00:00:00'),
(274, 'payment_id', 'no', '2016-05-26 07:40:03', '0000-00-00 00:00:00'),
(275, 'change_password', 'no', '2016-05-26 07:45:33', '0000-00-00 00:00:00'),
(278, 'notifications', 'no', '2016-05-30 03:42:06', '0000-00-00 00:00:00'),
(279, 'visible_to_all', 'no', '2016-05-30 04:05:26', '0000-00-00 00:00:00'),
(280, 'visibility', 'no', '2016-05-30 04:06:16', '0000-00-00 00:00:00'),
(284, 'communicate', 'no', '2016-05-30 04:19:53', '0000-00-00 00:00:00'),
(285, 'notice_board', 'no', '2016-05-30 04:21:47', '0000-00-00 00:00:00'),
(286, 'publish_date', 'no', '2016-05-30 05:01:41', '0000-00-00 00:00:00'),
(287, 'father', 'no', '2016-06-01 03:21:38', '0000-00-00 00:00:00'),
(288, 'mother', 'no', '2016-06-01 03:21:47', '0000-00-00 00:00:00'),
(290, 'not_scheduled', 'no', '2016-06-07 13:50:48', '0000-00-00 00:00:00'),
(291, 'import_student', 'no', '2016-06-10 03:56:51', '0000-00-00 00:00:00'),
(292, 'dl_sample_import', 'no', '2016-06-10 04:03:13', '0000-00-00 00:00:00'),
(293, 'select_csv_file', 'no', '2016-06-10 04:10:49', '0000-00-00 00:00:00'),
(294, 'date_format', 'no', '2016-06-22 03:49:07', '0000-00-00 00:00:00'),
(295, 'currency', 'no', '2016-06-22 03:49:28', '0000-00-00 00:00:00'),
(296, 'currency_symbol', 'no', '2016-06-22 03:49:28', '0000-00-00 00:00:00'),
(297, 'profile', 'no', '2016-06-22 18:46:28', '0000-00-00 00:00:00'),
(298, 'save_attendance', 'no', '2016-06-22 18:56:58', '0000-00-00 00:00:00'),
(299, 'full_marks', 'no', '2016-06-24 06:10:24', '0000-00-00 00:00:00'),
(300, 'obtain_marks', 'no', '2016-06-24 06:10:24', '0000-00-00 00:00:00'),
(301, 'total_marks', 'no', '2016-06-24 06:18:37', '0000-00-00 00:00:00'),
(302, 'current', 'no', '2016-07-12 02:26:07', '0000-00-00 00:00:00'),
(303, 'admission', 'no', '2016-07-21 07:40:45', '0000-00-00 00:00:00'),
(305, 'sibling', 'no', '2016-08-07 02:32:13', '0000-00-00 00:00:00'),
(306, 'details', 'no', '2016-08-07 02:39:19', '0000-00-00 00:00:00'),
(309, 'identification', 'no', '2016-08-07 02:43:16', '0000-00-00 00:00:00'),
(310, 'no', 'no', '2016-08-07 02:45:33', '0000-00-00 00:00:00'),
(311, 'delete', 'no', '2016-08-07 03:28:55', '0000-00-00 00:00:00'),
(312, 'documents', 'no', '2016-08-07 03:33:52', '0000-00-00 00:00:00'),
(313, 'payment', 'no', '2016-08-07 03:36:56', '0000-00-00 00:00:00'),
(317, 'no_transaction_found', 'no', '2016-08-10 08:32:10', '0000-00-00 00:00:00'),
(318, 'transport_fees_details', 'no', '2016-08-10 08:35:57', '0000-00-00 00:00:00'),
(319, 'collect_fees', 'no', '2016-08-10 08:45:47', '0000-00-00 00:00:00'),
(320, 'balance_details', 'no', '2016-08-10 08:48:55', '0000-00-00 00:00:00'),
(321, 'download_pdf', 'no', '2016-08-10 09:05:40', '0000-00-00 00:00:00'),
(322, 'student_fees_report', 'no', '2016-08-10 09:23:18', '0000-00-00 00:00:00'),
(323, 'total_fees', 'no', '2016-08-10 09:26:53', '0000-00-00 00:00:00'),
(324, 'paid_fees', 'no', '2016-08-10 09:26:53', '0000-00-00 00:00:00'),
(325, 'student_detail', 'no', '2016-08-10 09:42:55', '0000-00-00 00:00:00'),
(327, 'gross_fees', 'no', '2016-08-10 09:45:26', '0000-00-00 00:00:00'),
(328, 'balance_fees', 'no', '2016-08-10 09:48:31', '0000-00-00 00:00:00'),
(329, 'print_selected', 'no', '2016-08-10 09:50:32', '0000-00-00 00:00:00'),
(330, 'collect_transport_fees', 'no', '2016-08-10 10:03:34', '0000-00-00 00:00:00'),
(331, 'no_transport_fees_found', 'no', '2016-08-10 10:05:30', '0000-00-00 00:00:00'),
(332, 'total_transport_fees', 'no', '2016-08-10 10:15:54', '0000-00-00 00:00:00'),
(333, 'class_section', 'no', '2016-08-10 10:19:24', '0000-00-00 00:00:00'),
(335, 'other_discount', 'no', '2016-08-10 10:38:43', '0000-00-00 00:00:00'),
(336, 'search_transaction', 'no', '2016-10-18 05:19:17', '0000-00-00 00:00:00'),
(337, 'fees_collection_details', 'no', '2016-08-10 10:48:09', '0000-00-00 00:00:00'),
(338, 'expense_id', 'no', '2016-08-10 10:54:24', '0000-00-00 00:00:00'),
(339, 'expense_head', 'no', '2016-08-10 10:51:43', '0000-00-00 00:00:00'),
(340, 'expense_detail', 'no', '2016-08-10 10:55:17', '0000-00-00 00:00:00'),
(341, 'add_expense', 'no', '2016-08-10 11:28:20', '0000-00-00 00:00:00'),
(342, 'edit_expense', 'no', '2016-08-10 11:33:33', '0000-00-00 00:00:00'),
(343, 'expense_list', 'no', '2016-08-10 11:37:48', '0000-00-00 00:00:00'),
(344, 'expense_head_list', 'no', '2016-08-10 11:45:58', '0000-00-00 00:00:00'),
(345, 'edit_expense_head', 'no', '2016-08-10 11:49:02', '0000-00-00 00:00:00'),
(347, 'add_expense_head', 'no', '2016-08-10 11:55:17', '0000-00-00 00:00:00'),
(348, 'attendance_already_submitted_you_can_edit_record', 'no', '2017-04-02 01:16:00', '0000-00-00 00:00:00'),
(349, 'attendance_already_submitted_as_holiday', 'no', '2017-04-02 01:16:00', '0000-00-00 00:00:00'),
(350, 'you_can_edit_record', 'no', '2016-08-10 23:11:54', '0000-00-00 00:00:00'),
(351, 'attendance_saved_successfully', 'no', '2017-04-02 01:16:00', '0000-00-00 00:00:00'),
(352, 'holiday', 'no', '2016-08-10 23:18:21', '0000-00-00 00:00:00'),
(353, 'mark_as_holiday', 'no', '2016-08-10 23:22:15', '0000-00-00 00:00:00'),
(354, 'no_attendance_prepare', 'no', '2016-08-10 23:42:18', '0000-00-00 00:00:00'),
(355, 'add_exam', 'no', '2016-08-11 00:09:04', '0000-00-00 00:00:00'),
(356, 'view_status', 'no', '2016-08-11 00:10:56', '0000-00-00 00:00:00'),
(357, 'marks_register_prepared', 'no', '2016-08-11 00:16:51', '0000-00-00 00:00:00'),
(358, 'exam_scheduled', 'no', '2016-08-11 00:16:51', '0000-00-00 00:00:00'),
(359, 'submit', 'no', '2016-08-11 00:30:47', '0000-00-00 00:00:00'),
(360, 'edit_grade', 'no', '2016-08-11 00:34:55', '0000-00-00 00:00:00'),
(361, 'add_grade', 'no', '2016-08-11 00:34:55', '0000-00-00 00:00:00'),
(362, 'percent_upto', 'no', '2016-08-11 00:36:04', '0000-00-00 00:00:00'),
(363, 'percent_from', 'no', '2016-08-11 00:36:04', '0000-00-00 00:00:00'),
(364, 'grade_list', 'no', '2016-08-11 00:39:49', '0000-00-00 00:00:00'),
(366, 'assign_subject', 'no', '2016-08-11 01:02:21', '0000-00-00 00:00:00'),
(368, 'edit_teacher', 'no', '2016-08-11 01:05:57', '0000-00-00 00:00:00'),
(369, 'add_teacher', 'no', '2016-08-11 01:22:14', '0000-00-00 00:00:00'),
(370, 'add_subject', 'no', '2016-08-11 01:30:48', '0000-00-00 00:00:00'),
(374, 'edit_subject', 'no', '2016-08-11 01:43:33', '0000-00-00 00:00:00'),
(375, 'edit_class', 'no', '2016-08-11 01:43:50', '0000-00-00 00:00:00'),
(377, 'edit_section', 'no', '2016-08-11 01:54:27', '0000-00-00 00:00:00'),
(378, 'upload_content', 'no', '2016-08-11 02:06:54', '0000-00-00 00:00:00'),
(380, 'content_list', 'no', '2016-08-11 02:30:03', '0000-00-00 00:00:00'),
(382, 'available_for_all_classes', 'no', '2016-10-23 07:26:48', '0000-00-00 00:00:00'),
(384, 'content_file', 'no', '2016-08-12 09:09:02', '0000-00-00 00:00:00'),
(385, 'available_for', 'no', '2016-08-12 09:09:02', '0000-00-00 00:00:00'),
(386, 'my_children', 'no', '2016-09-17 01:06:30', '0000-00-00 00:00:00'),
(387, 'assignment_list', 'no', '2016-08-12 09:15:21', '0000-00-00 00:00:00'),
(388, 'study_material_list', 'no', '2016-08-12 09:15:21', '0000-00-00 00:00:00'),
(389, 'syllabus_list', 'no', '2016-08-12 09:15:21', '0000-00-00 00:00:00'),
(390, 'other_download_list', 'no', '2016-08-12 09:15:21', '0000-00-00 00:00:00'),
(391, 'book_details', 'no', '2016-08-12 09:34:18', '0000-00-00 00:00:00'),
(392, 'edit_book', 'no', '2016-08-12 09:34:18', '0000-00-00 00:00:00'),
(393, 'book_list', 'no', '2016-08-12 09:36:33', '0000-00-00 00:00:00'),
(394, 'route_list', 'no', '2016-08-12 09:48:15', '0000-00-00 00:00:00'),
(395, 'create_route', 'no', '2016-08-12 09:48:15', '0000-00-00 00:00:00'),
(396, 'edit_route', 'no', '2016-08-12 09:48:15', '0000-00-00 00:00:00'),
(397, 'add_hostel', 'no', '2016-08-12 10:05:23', '0000-00-00 00:00:00'),
(398, 'edit_hostel', 'no', '2016-08-12 10:05:23', '0000-00-00 00:00:00'),
(399, 'hostel_list', 'no', '2016-08-12 10:05:23', '0000-00-00 00:00:00'),
(400, 'print', 'no', '2016-08-12 10:08:26', '0000-00-00 00:00:00'),
(401, 'room_type', 'no', '2016-08-12 10:13:23', '0000-00-00 00:00:00'),
(402, 'add_room_type', 'no', '2016-08-12 10:13:23', '0000-00-00 00:00:00'),
(403, 'room_type_list', 'no', '2016-08-12 10:13:23', '0000-00-00 00:00:00'),
(404, 'edit_room_type', 'no', '2016-08-12 10:13:23', '0000-00-00 00:00:00'),
(406, 'edit_message', 'no', '2016-08-12 10:28:45', '0000-00-00 00:00:00'),
(407, 'select', 'no', '2016-08-12 10:32:17', '0000-00-00 00:00:00'),
(408, 'general_settings', 'no', '2016-08-12 11:03:50', '0000-00-00 00:00:00'),
(410, 'session_start_month', 'no', '2016-08-12 11:04:48', '0000-00-00 00:00:00'),
(411, 'edit_session', 'no', '2016-08-12 11:17:13', '0000-00-00 00:00:00'),
(414, 'paypal_setting', 'no', '2016-08-12 11:50:26', '0000-00-00 00:00:00'),
(415, 'paypal_username', 'no', '2016-08-12 11:50:26', '0000-00-00 00:00:00'),
(416, 'paypal_password', 'no', '2016-08-12 11:50:26', '0000-00-00 00:00:00'),
(417, 'paypal_signature', 'no', '2016-08-12 11:50:26', '0000-00-00 00:00:00'),
(418, 'paypal_email', 'no', '2016-08-12 11:50:26', '0000-00-00 00:00:00'),
(419, 'off', 'no', '2016-08-12 11:50:43', '0000-00-00 00:00:00'),
(420, 'on', 'no', '2016-08-12 11:50:43', '0000-00-00 00:00:00'),
(421, 'backup_history', 'no', '2016-08-12 11:59:15', '0000-00-00 00:00:00'),
(422, 'create_backup', 'no', '2016-08-12 11:59:15', '0000-00-00 00:00:00'),
(423, 'backup_files', 'no', '2016-10-25 15:47:36', '0000-00-00 00:00:00'),
(424, 'upload_from_local_directory', 'no', '2016-08-12 12:03:51', '0000-00-00 00:00:00'),
(427, 'restore', 'no', '2016-08-12 17:04:46', '0000-00-00 00:00:00'),
(429, 'class_fees_detail', 'no', '2016-08-12 17:37:20', '0000-00-00 00:00:00'),
(430, 'no_fees_found', 'no', '2016-08-12 17:38:56', '0000-00-00 00:00:00'),
(431, 'monthly_fees_collection', 'no', '2016-08-12 17:43:22', '0000-00-00 00:00:00'),
(432, 'monthly_expenses', 'no', '2016-08-12 17:43:22', '0000-00-00 00:00:00'),
(433, 'teachers', 'no', '2016-08-12 17:43:22', '0000-00-00 00:00:00'),
(434, 'students', 'no', '2016-08-12 17:43:22', '0000-00-00 00:00:00'),
(436, 'login_details', 'no', '2016-08-12 17:57:20', '0000-00-00 00:00:00'),
(437, 'academic_fees_detail', 'no', '2016-08-12 18:33:38', '0000-00-00 00:00:00'),
(438, 'document_list', 'no', '2016-08-12 18:42:01', '0000-00-00 00:00:00'),
(439, 'exam_timetable', 'no', '2016-08-12 19:00:36', '0000-00-00 00:00:00'),
(440, 'promote_in_session', 'no', '2016-08-12 19:51:51', '0000-00-00 00:00:00'),
(441, 'promote_students_in_next_session', 'no', '2016-08-12 19:51:51', '0000-00-00 00:00:00'),
(442, 'next_session_status', 'no', '2016-08-12 19:55:11', '0000-00-00 00:00:00'),
(443, 'no_result_prepare', 'no', '2016-08-12 12:26:40', '0000-00-00 00:00:00'),
(444, 'parent_guardian_detail', 'no', '2016-08-12 12:59:14', '0000-00-00 00:00:00'),
(445, 'add_more_details', 'no', '2016-08-12 13:01:21', '0000-00-00 00:00:00'),
(446, 'if_permanent_address_is_current_address', 'no', '2016-10-05 16:58:39', '0000-00-00 00:00:00'),
(447, 'address_details', 'no', '2016-08-12 13:07:38', '0000-00-00 00:00:00'),
(449, 'add_image', 'no', '2016-08-12 13:25:27', '0000-00-00 00:00:00'),
(450, 'payment_id_detail', 'no', '2016-08-12 13:33:44', '0000-00-00 00:00:00'),
(451, 'section_name', 'no', '2016-08-12 14:03:59', '0000-00-00 00:00:00'),
(452, 'fees_type', 'no', '2016-08-12 14:32:20', '0000-00-00 00:00:00'),
(453, 'edit_hostel_room', 'no', '2016-08-16 07:07:57', '0000-00-00 00:00:00'),
(454, 'room_no_name', 'no', '2016-08-16 07:11:43', '0000-00-00 00:00:00'),
(455, 'no_of_bed', 'no', '2016-08-16 07:11:43', '0000-00-00 00:00:00'),
(456, 'cost_per_bed', 'no', '2016-08-16 07:11:43', '0000-00-00 00:00:00'),
(457, 'hostel_room_list', 'no', '2016-08-16 07:11:43', '0000-00-00 00:00:00'),
(458, 'add_hostel_room', 'no', '2016-08-16 07:16:48', '0000-00-00 00:00:00'),
(459, 'mark_register', 'no', '2016-08-16 07:21:56', '0000-00-00 00:00:00'),
(462, 'fill_mark', 'no', '2016-08-16 07:32:20', '0000-00-00 00:00:00'),
(463, 'post_new_message', 'no', '2016-08-16 07:35:16', '0000-00-00 00:00:00'),
(464, 'by_date', 'no', '2016-08-16 07:41:44', '0000-00-00 00:00:00'),
(465, 'edit_category', 'no', '2016-08-16 07:50:25', '0000-00-00 00:00:00'),
(466, 'exam_not_allotted', 'no', '2016-10-23 07:23:46', '0000-00-00 00:00:00'),
(467, 'edit_exam', 'no', '2016-08-16 08:01:50', '0000-00-00 00:00:00'),
(468, 'add_class', 'no', '2016-08-16 08:06:27', '0000-00-00 00:00:00'),
(469, 'teacher_subject', 'no', '2016-08-16 09:48:06', '0000-00-00 00:00:00'),
(470, 'dd', 'no', '2016-08-16 23:05:12', '0000-00-00 00:00:00'),
(471, 'cash', 'no', '2016-08-16 23:05:12', '0000-00-00 00:00:00'),
(472, 'cheque', 'no', '2016-08-16 23:05:12', '0000-00-00 00:00:00'),
(473, 'revert', 'no', '2016-08-16 23:40:47', '0000-00-00 00:00:00'),
(474, 'view', 'no', '2016-08-17 01:16:56', '0000-00-00 00:00:00'),
(475, 'no_exam_prepare', 'no', '2016-10-23 08:00:25', '0000-00-00 00:00:00'),
(476, 'sms_setting', 'no', '2016-08-22 08:45:46', '0000-00-00 00:00:00'),
(477, 'smart_school', 'no', '2016-08-24 23:41:16', '0000-00-00 00:00:00'),
(478, 'user_login', 'no', '2016-08-25 00:16:22', '0000-00-00 00:00:00'),
(479, 'library_book', 'no', '2016-09-06 19:10:41', '0000-00-00 00:00:00'),
(480, 'transport_routes', 'no', '2016-09-06 19:14:00', '0000-00-00 00:00:00'),
(481, 'hostel_rooms', 'no', '2016-09-06 19:17:22', '0000-00-00 00:00:00'),
(482, 'exam_schedule', 'no', '2016-09-06 19:27:03', '0000-00-00 00:00:00'),
(483, 'subjects', 'no', '2016-09-06 19:35:20', '0000-00-00 00:00:00'),
(484, 'national_identification_no', 'no', '2016-09-15 04:00:04', '0000-00-00 00:00:00'),
(485, 'local_identification_no', 'no', '2016-09-15 04:01:16', '0000-00-00 00:00:00'),
(486, 'my_profile', 'no', '2016-09-15 08:44:58', '0000-00-00 00:00:00'),
(487, 'mode', 'no', '2016-09-15 08:47:39', '0000-00-00 00:00:00'),
(488, 'url', 'no', '2016-09-15 11:24:06', '0000-00-00 00:00:00'),
(489, 'month', 'no', '2016-09-15 11:37:30', '0000-00-00 00:00:00'),
(490, 'upload', 'no', '2016-09-15 11:46:34', '0000-00-00 00:00:00'),
(491, 'day', 'no', '2016-10-24 00:02:31', '0000-00-00 00:00:00'),
(492, 'class_timetable', 'no', '2016-10-05 16:40:38', '0000-00-00 00:00:00'),
(493, 'if_guardian_address_is_current_address', 'no', '2016-10-07 17:12:51', '0000-00-00 00:00:00'),
(494, 'admin_login', 'no', '2016-10-17 21:08:26', '0000-00-00 00:00:00'),
(495, 'date_from', 'no', '2016-10-19 06:07:28', '0000-00-00 00:00:00'),
(496, 'other', 'no', '2016-10-25 15:01:08', '0000-00-00 00:00:00'),
(497, 'search_by_keyword', 'no', '2016-10-25 15:55:46', '0000-00-00 00:00:00'),
(499, 'add_book', 'no', '2016-10-31 11:52:54', '0000-00-00 00:00:00'),
(500, 'edit_vehicle_on_route', 'no', '2017-04-01 23:39:09', '0000-00-00 00:00:00'),
(501, 'assign_vehicle_on_route', 'no', '2017-04-01 23:39:09', '0000-00-00 00:00:00'),
(502, 'vehicle_route_list', 'no', '2017-04-01 23:39:09', '0000-00-00 00:00:00'),
(503, 'route', 'no', '2017-04-01 23:39:09', '0000-00-00 00:00:00'),
(504, 'vehicle_routes', 'no', '2017-04-01 23:39:09', '0000-00-00 00:00:00'),
(505, 'edit_vehicle', 'no', '2017-04-01 23:39:09', '0000-00-00 00:00:00'),
(506, 'vehicle', 'no', '2017-04-01 23:39:09', '0000-00-00 00:00:00'),
(507, 'vehicle_list', 'no', '2017-04-01 23:39:09', '0000-00-00 00:00:00'),
(508, 'add_vehicle', 'no', '2017-04-01 23:39:09', '0000-00-00 00:00:00'),
(509, 'driver_contact', 'no', '2017-04-01 23:39:09', '0000-00-00 00:00:00'),
(510, 'driver_license', 'no', '2017-04-01 23:39:09', '0000-00-00 00:00:00'),
(511, 'driver_name', 'no', '2017-04-01 23:39:09', '0000-00-00 00:00:00'),
(512, 'vehicle_no', 'no', '2017-04-01 23:39:09', '0000-00-00 00:00:00'),
(513, 'vehicle_model', 'no', '2017-04-01 23:39:09', '0000-00-00 00:00:00'),
(514, 'logout', 'no', '2017-04-01 23:39:09', '0000-00-00 00:00:00'),
(515, 'year_made', 'no', '2017-04-01 23:39:09', '0000-00-00 00:00:00'),
(516, 'attendance', 'no', '2017-04-01 23:39:09', '0000-00-00 00:00:00'),
(517, 'show', 'no', '2017-04-01 23:39:09', '0000-00-00 00:00:00'),
(519, 'add_timetable', 'no', '2017-04-01 23:39:09', '0000-00-00 00:00:00'),
(520, 'edit_setting', 'no', '2017-04-01 23:39:09', '0000-00-00 00:00:00'),
(521, 'subject_type', 'no', '2017-04-01 23:39:09', '0000-00-00 00:00:00'),
(522, 'view_detail', 'no', '2017-04-01 23:39:09', '0000-00-00 00:00:00'),
(523, 'exam_status', 'no', '2017-04-01 23:39:09', '0000-00-00 00:00:00'),
(524, 'books', 'no', '2017-04-01 23:39:09', '0000-00-00 00:00:00'),
(525, 'report_card', 'no', '2017-04-01 23:39:09', '0000-00-00 00:00:00'),
(526, 'library_books', 'no', '2017-04-01 23:39:09', '0000-00-00 00:00:00'),
(527, 'no_vehicle_allotted_to_this_route', 'no', '2017-04-02 01:16:00', '0000-00-00 00:00:00'),
(528, 'Add/Edit', 'no', '2017-04-01 23:39:09', '0000-00-00 00:00:00'),
(529, 'language_rtl_text_mode', 'no', '2017-04-01 23:39:09', '0000-00-00 00:00:00'),
(530, 'clickatell_username', 'no', '2017-04-01 23:39:09', '0000-00-00 00:00:00'),
(531, 'clickatell_password', 'no', '2017-04-01 23:39:09', '0000-00-00 00:00:00'),
(532, 'clickatell_api_id', 'no', '2017-04-01 23:39:09', '0000-00-00 00:00:00'),
(533, 'clickatell_sms_gateway', 'no', '2017-04-01 23:39:09', '0000-00-00 00:00:00'),
(534, 'twilio_sms_gateway', 'no', '2017-04-01 23:39:09', '0000-00-00 00:00:00'),
(535, 'custom_sms_gateway', 'no', '2017-04-01 23:39:09', '0000-00-00 00:00:00'),
(536, 'twilio_account_sid', 'no', '2017-04-01 23:39:09', '0000-00-00 00:00:00'),
(537, 'authentication_token', 'no', '2017-04-01 23:39:09', '0000-00-00 00:00:00'),
(538, 'registered_phone_number', 'no', '2017-04-01 23:39:09', '0000-00-00 00:00:00'),
(539, 'username', 'no', '2017-04-01 23:39:09', '0000-00-00 00:00:00'),
(540, 'gateway_name', 'no', '2017-04-01 23:39:09', '0000-00-00 00:00:00'),
(541, 'theory', 'no', '2017-04-01 23:39:09', '0000-00-00 00:00:00'),
(542, 'practical', 'no', '2017-04-01 23:39:09', '0000-00-00 00:00:00'),
(543, 'present', 'no', '2017-04-01 23:39:09', '0000-00-00 00:00:00'),
(544, 'paid', 'no', '2017-04-01 23:39:09', '0000-00-00 00:00:00'),
(545, 'yes', 'no', '2017-04-01 23:39:09', '0000-00-00 00:00:00'),
(546, 'if_guardian_is', 'no', '2017-04-01 23:39:09', '0000-00-00 00:00:00'),
(547, 'current_session', 'no', '2017-04-01 23:39:09', '0000-00-00 00:00:00'),
(548, 'quick_links', 'no', '2017-04-01 23:39:09', '0000-00-00 00:00:00'),
(549, 'student_details', 'no', '2017-04-01 23:39:09', '0000-00-00 00:00:00'),
(550, 'student_admission', 'no', '2017-04-01 23:39:09', '0000-00-00 00:00:00'),
(551, 'student_categories', 'no', '2017-04-01 23:39:09', '0000-00-00 00:00:00'),
(552, 'promote_students', 'no', '2017-04-01 23:39:09', '0000-00-00 00:00:00'),
(554, 'fees_master', 'no', '2017-04-01 23:39:09', '0000-00-00 00:00:00'),
(555, 'search_fees_payment', 'no', '2017-04-01 23:39:09', '0000-00-00 00:00:00'),
(556, 'search_due_fees', 'no', '2017-04-01 23:39:09', '0000-00-00 00:00:00'),
(557, 'fees_statement', 'no', '2017-04-01 23:39:09', '0000-00-00 00:00:00'),
(558, 'balance_fees_report', 'no', '2017-04-01 23:39:09', '0000-00-00 00:00:00'),
(559, 'search_expense', 'no', '2017-04-01 23:39:09', '0000-00-00 00:00:00'),
(560, 'student_attendance', 'no', '2017-04-01 23:39:09', '0000-00-00 00:00:00'),
(561, 'attendance_by_date', 'no', '2017-04-01 23:39:09', '0000-00-00 00:00:00'),
(562, 'attendance_report', 'no', '2017-04-01 23:39:09', '0000-00-00 00:00:00'),
(563, 'marks_register', 'no', '2017-04-01 23:39:09', '0000-00-00 00:00:00'),
(564, 'marks_grade', 'no', '2017-04-01 23:39:09', '0000-00-00 00:00:00'),
(565, 'assign_subjects', 'no', '2017-04-01 23:39:09', '0000-00-00 00:00:00'),
(566, 'sections', 'no', '2017-04-01 23:39:09', '0000-00-00 00:00:00'),
(567, 'assignments', 'no', '2017-04-01 23:39:09', '0000-00-00 00:00:00'),
(568, 'study_material', 'no', '2017-04-01 23:39:09', '0000-00-00 00:00:00'),
(569, 'routes', 'no', '2017-04-01 23:39:09', '0000-00-00 00:00:00'),
(570, 'vehicles', 'no', '2017-04-01 23:39:09', '0000-00-00 00:00:00'),
(571, 'assign_vehicle', 'no', '2017-04-01 23:39:09', '0000-00-00 00:00:00'),
(572, 'send_message', 'no', '2017-04-01 23:39:09', '0000-00-00 00:00:00'),
(573, 'student_report', 'no', '2017-04-01 23:39:09', '0000-00-00 00:00:00'),
(574, 'transaction_report', 'no', '2017-04-01 23:39:09', '0000-00-00 00:00:00'),
(575, 'exam_marks_report', 'no', '2017-04-01 23:39:09', '0000-00-00 00:00:00'),
(576, 'session_setting', 'no', '2017-04-01 23:39:09', '0000-00-00 00:00:00'),
(577, 'backup / restore', 'no', '2017-04-01 23:39:09', '0000-00-00 00:00:00'),
(578, 'languages', 'no', '2017-04-01 23:39:09', '0000-00-00 00:00:00'),
(579, 'grade', 'no', '2017-04-01 23:39:09', '0000-00-00 00:00:00'),
(580, 'percentage', 'no', '2017-04-01 23:39:09', '0000-00-00 00:00:00'),
(581, 'fees_collection_&_expenses_for_session', 'no', '2017-04-01 23:39:09', '0000-00-00 00:00:00'),
(582, 'fees_receipt', 'no', '2017-04-01 23:39:09', '0000-00-00 00:00:00'),
(583, 'fees_category', 'no', '2017-04-01 23:39:09', '0000-00-00 00:00:00'),
(584, 'fees_collection_&_expenses_for', 'no', '2017-04-01 23:39:09', '0000-00-00 00:00:00'),
(585, 'library_-_books', 'no', '2017-04-01 23:39:09', '0000-00-00 00:00:00'),
(586, 'transport_-_routes', 'no', '2017-04-01 23:39:09', '0000-00-00 00:00:00'),
(587, 'hostel_-_rooms', 'no', '2017-04-01 23:39:09', '0000-00-00 00:00:00'),
(588, 'search_by_name,_roll_no,_enroll_no,_national_identification_no,_local_identification_no_etc..', 'no', '2017-04-01 23:39:09', '0000-00-00 00:00:00'),
(589, 'user_type', 'no', '2017-04-01 23:39:09', '0000-00-00 00:00:00'),
(590, 'login_url', 'no', '2017-04-01 23:39:09', '0000-00-00 00:00:00'),
(591, 'search_student', 'no', '2017-04-01 23:39:09', '0000-00-00 00:00:00'),
(592, 'student_lists', 'no', '2017-04-01 23:39:09', '0000-00-00 00:00:00'),
(593, 'detailed_view', 'no', '2017-04-01 23:39:09', '0000-00-00 00:00:00'),
(595, 'active', 'no', '2017-04-01 23:39:09', '0000-00-00 00:00:00'),
(596, 'syllabus', 'no', '2017-04-01 23:39:09', '0000-00-00 00:00:00'),
(597, 'other_downloads', 'no', '2017-04-01 23:39:09', '0000-00-00 00:00:00'),
(598, 'download', 'no', '2017-04-01 23:39:09', '0000-00-00 00:00:00'),
(599, 'unpaid', 'no', '2017-04-01 23:39:09', '0000-00-00 00:00:00'),
(600, 'enter_room_no', 'no', '2017-04-01 23:39:09', '0000-00-00 00:00:00'),
(601, 'male', 'no', '2017-04-01 23:39:09', '0000-00-00 00:00:00'),
(602, 'female', 'no', '2017-04-01 23:39:09', '0000-00-00 00:00:00'),
(603, 'expense_result', 'no', '2017-04-01 23:39:09', '0000-00-00 00:00:00'),
(604, 'view_schedule', 'no', '2017-04-01 23:39:09', '0000-00-00 00:00:00'),
(605, 'pdf', 'no', '2017-04-01 23:39:09', '0000-00-00 00:00:00'),
(606, 'not', 'no', '2017-04-01 23:39:09', '0000-00-00 00:00:00'),
(607, 'scheduled', 'no', '2017-04-01 23:39:09', '0000-00-00 00:00:00'),
(609, 'transaction_from', 'no', '2017-04-01 23:39:09', '0000-00-00 00:00:00'),
(610, 'to', 'no', '2017-04-01 23:39:09', '0000-00-00 00:00:00'),
(611, 'enabled', 'no', '2017-04-01 23:39:09', '0000-00-00 00:00:00'),
(612, 'disabled', 'no', '2017-04-01 23:39:09', '0000-00-00 00:00:00'),
(613, 'add_language', 'no', '2017-04-01 23:39:09', '0000-00-00 00:00:00'),
(614, 'no_description', 'no', '2017-04-01 23:39:09', '0000-00-00 00:00:00'),
(615, 'fees_category_list', 'no', '2017-04-01 23:39:09', '0000-00-00 00:00:00'),
(616, 'add_fee_category', 'no', '2017-04-01 23:39:09', '0000-00-00 00:00:00'),
(617, 'edit_fee_category', 'no', '2017-04-01 23:39:09', '0000-00-00 00:00:00'),
(618, 'late_with_excuse', 'no', '2017-04-01 23:39:09', '0000-00-00 00:00:00'),
(619, 'late', 'no', '2017-04-01 23:39:09', '0000-00-00 00:00:00'),
(620, 'absent', 'no', '2017-04-01 23:39:09', '0000-00-00 00:00:00'),
(621, 'issue_book', 'no', '2017-05-19 17:03:58', '0000-00-00 00:00:00'),
(622, 'member_type', 'no', '2017-05-19 17:03:58', '0000-00-00 00:00:00'),
(623, 'issue', 'no', '2017-05-19 17:03:58', '0000-00-00 00:00:00'),
(624, 'book', 'no', '2017-05-19 17:03:58', '0000-00-00 00:00:00'),
(625, 'members', 'no', '2017-05-19 17:03:58', '0000-00-00 00:00:00'),
(626, 'library_card_no', 'no', '2017-05-19 17:03:58', '0000-00-00 00:00:00'),
(627, 'return_date', 'no', '2017-05-19 17:03:58', '0000-00-00 00:00:00'),
(628, 'member_id', 'no', '2017-05-19 17:03:58', '0000-00-00 00:00:00'),
(629, 'book_issued', 'no', '2017-05-19 17:03:58', '0000-00-00 00:00:00'),
(630, 'timezone', 'no', '2017-05-19 17:03:58', '0000-00-00 00:00:00'),
(631, 'accountants', 'no', '2017-05-19 17:03:58', '0000-00-00 00:00:00'),
(632, 'librarians', 'no', '2017-05-19 17:03:58', '0000-00-00 00:00:00'),
(633, 'add_librarian', 'no', '2017-05-19 17:03:58', '0000-00-00 00:00:00'),
(634, 'librarian_photo', 'no', '2017-05-19 17:03:58', '0000-00-00 00:00:00'),
(635, 'librarian_list', 'no', '2017-05-19 17:03:58', '0000-00-00 00:00:00'),
(636, 'edit_librarian', 'no', '2017-05-19 17:03:58', '0000-00-00 00:00:00'),
(637, 'current_username', 'no', '2017-05-19 17:03:58', '0000-00-00 00:00:00'),
(638, 'new_username', 'no', '2017-05-19 17:03:58', '0000-00-00 00:00:00'),
(639, 'confirm_username', 'no', '2017-05-19 17:03:58', '0000-00-00 00:00:00'),
(640, 'change_username', 'no', '2017-05-19 17:03:58', '0000-00-00 00:00:00'),
(641, 'add_accountant', 'no', '2017-05-19 17:03:58', '0000-00-00 00:00:00'),
(642, 'accountant_list', 'no', '2017-05-19 17:03:58', '0000-00-00 00:00:00'),
(643, 'accountant_photo', 'no', '2017-05-19 17:03:58', '0000-00-00 00:00:00'),
(644, 'edit_accountant', 'no', '2017-05-19 17:03:58', '0000-00-00 00:00:00'),
(645, 'book_no', 'no', '2017-05-19 17:03:58', '0000-00-00 00:00:00'),
(646, 'users', 'no', '2017-05-19 17:03:58', '0000-00-00 00:00:00'),
(647, 'isbn_no', 'no', '2017-05-19 17:03:58', '0000-00-00 00:00:00'),
(648, 'issue_return', 'no', '2017-05-19 17:03:58', '0000-00-00 00:00:00'),
(649, 'add_student', 'no', '2017-05-19 17:03:58', '0000-00-00 00:00:00'),
(650, 'books_issue_return', 'no', '2017-05-19 17:03:58', '0000-00-00 00:00:00'),
(651, 'member_list', 'no', '2017-05-29 18:11:22', '0000-00-00 00:00:00'),
(652, 'issue_date', 'no', '2017-05-29 18:11:22', '0000-00-00 00:00:00'),
(653, 'surrender_membership', 'no', '2017-05-29 18:11:22', '0000-00-00 00:00:00'),
(654, 'fees_group', 'no', '2017-08-02 13:49:55', '0000-00-00 00:00:00'),
(655, 'add_fees_group', 'no', '2017-08-02 13:49:55', '0000-00-00 00:00:00'),
(656, 'fees_group_list', 'no', '2017-08-02 13:49:55', '0000-00-00 00:00:00'),
(657, 'due_date', 'no', '2017-08-02 13:49:55', '0000-00-00 00:00:00'),
(658, 'fees_code', 'no', '2017-08-02 13:49:55', '0000-00-00 00:00:00'),
(659, 'fees_discount', 'no', '2017-08-02 13:49:55', '0000-00-00 00:00:00'),
(660, 'edit_fees_discount', 'no', '2017-08-02 13:49:55', '0000-00-00 00:00:00'),
(661, 'discount_code', 'no', '2017-08-02 13:49:55', '0000-00-00 00:00:00'),
(662, 'fees_discount_list', 'no', '2017-08-02 13:49:55', '0000-00-00 00:00:00'),
(663, 'add_fees_discount', 'no', '2017-08-02 13:49:55', '0000-00-00 00:00:00'),
(664, 'all', 'no', '2017-08-02 13:49:55', '0000-00-00 00:00:00'),
(665, 'assign_fees_discount', 'no', '2017-08-02 13:49:55', '0000-00-00 00:00:00'),
(666, 'partial', 'no', '2017-08-02 13:49:55', '0000-00-00 00:00:00'),
(667, 'applied', 'no', '2017-08-02 13:49:55', '0000-00-00 00:00:00'),
(668, 'student_fees', 'no', '2017-08-02 13:49:55', '0000-00-00 00:00:00'),
(669, 'confirmation', 'no', '2017-08-02 13:49:55', '0000-00-00 00:00:00'),
(670, 'assign / view', 'no', '2017-08-02 13:49:55', '0000-00-00 00:00:00'),
(671, 'edit_fees_group', 'no', '2017-08-02 13:49:55', '0000-00-00 00:00:00'),
(672, 'edit_fees_type', 'no', '2017-08-02 13:49:55', '0000-00-00 00:00:00'),
(673, 'edit_fees_master', 'no', '2017-08-02 13:49:55', '0000-00-00 00:00:00'),
(674, 'apply_discount', 'no', '2017-08-02 13:49:55', '0000-00-00 00:00:00'),
(675, 'discount_of', 'no', '2017-08-02 13:49:55', '0000-00-00 00:00:00'),
(676, 'add_member', 'no', '2017-08-02 13:49:55', '0000-00-00 00:00:00'),
(677, 'email_setting', 'no', '2017-08-02 13:49:55', '0000-00-00 00:00:00'),
(678, 'email_engine', 'no', '2017-08-02 13:49:55', '0000-00-00 00:00:00'),
(679, 'smtp_username', 'no', '2017-08-02 13:49:55', '0000-00-00 00:00:00'),
(680, 'smtp_password', 'no', '2017-08-02 13:49:55', '0000-00-00 00:00:00'),
(681, 'smtp_server', 'no', '2017-08-02 13:49:55', '0000-00-00 00:00:00'),
(682, 'smtp_port', 'no', '2017-08-02 13:49:55', '0000-00-00 00:00:00'),
(683, 'smtp_security', 'no', '2017-08-02 13:49:55', '0000-00-00 00:00:00'),
(684, 'assigned', 'no', '2017-08-02 13:49:55', '0000-00-00 00:00:00'),
(685, 'admin_users', 'no', '2017-08-02 13:49:55', '0000-00-00 00:00:00'),
(686, 'add_admin_user', 'no', '2017-08-02 13:49:55', '0000-00-00 00:00:00'),
(687, 'admin_name', 'no', '2017-08-02 13:49:55', '0000-00-00 00:00:00'),
(688, 'admin_email', 'no', '2017-08-02 13:49:55', '0000-00-00 00:00:00'),
(689, 'admin_password', 'no', '2017-08-02 13:49:55', '0000-00-00 00:00:00'),
(690, 'forgot_password', 'no', '2017-08-02 13:49:55', '0000-00-00 00:00:00'),
(691, 'assign_fees_group', 'no', '2017-08-02 13:49:55', '0000-00-00 00:00:00'),
(692, 'accountant', 'no', '2017-12-14 01:32:16', '0000-00-00 00:00:00'),
(693, 'add_income', 'no', '2017-12-14 01:32:16', '0000-00-00 00:00:00'),
(694, 'add_item_store', 'no', '2017-12-14 01:32:16', '0000-00-00 00:00:00'),
(695, 'admin', 'no', '2017-12-14 01:32:16', '0000-00-00 00:00:00'),
(696, 'attach_document', 'no', '2017-12-14 01:32:16', '0000-00-00 00:00:00'),
(697, 'confirm_return', 'no', '2017-12-14 01:32:16', '0000-00-00 00:00:00'),
(698, 'contact_person_email', 'no', '2017-12-14 01:32:16', '0000-00-00 00:00:00'),
(699, 'contact_person_name', 'no', '2017-12-14 01:32:16', '0000-00-00 00:00:00'),
(700, 'edit_income_head', 'no', '2017-12-14 01:32:16', '0000-00-00 00:00:00'),
(701, 'edit_item_store', 'no', '2017-12-14 01:32:16', '0000-00-00 00:00:00'),
(702, 'edit_item_category', 'no', '2017-12-14 01:32:16', '0000-00-00 00:00:00'),
(703, 'group', 'no', '2017-12-14 01:32:16', '0000-00-00 00:00:00'),
(704, 'guardians', 'no', '2017-12-14 01:32:16', '0000-00-00 00:00:00'),
(705, 'income_head_list', 'no', '2017-12-14 01:32:16', '0000-00-00 00:00:00'),
(706, 'income_head', 'no', '2017-12-14 01:32:16', '0000-00-00 00:00:00'),
(707, 'income', 'no', '2017-12-14 01:32:16', '0000-00-00 00:00:00'),
(708, 'individual', 'no', '2017-12-14 01:32:16', '0000-00-00 00:00:00'),
(709, 'inventory', 'no', '2017-12-14 01:32:16', '0000-00-00 00:00:00'),
(710, 'issue_by', 'no', '2017-12-14 01:32:16', '0000-00-00 00:00:00'),
(711, 'issue_to', 'no', '2017-12-14 01:32:16', '0000-00-00 00:00:00'),
(712, 'issue_item', 'no', '2017-12-14 01:32:16', '0000-00-00 00:00:00'),
(713, 'item_store', 'no', '2017-12-14 01:32:16', '0000-00-00 00:00:00'),
(714, 'item_category', 'no', '2017-12-14 01:32:16', '0000-00-00 00:00:00'),
(715, 'item', 'no', '2017-12-14 01:32:16', '0000-00-00 00:00:00'),
(716, 'item_stock_list', 'no', '2017-12-14 01:32:16', '0000-00-00 00:00:00'),
(717, 'item_store_code', 'no', '2017-12-14 01:32:16', '0000-00-00 00:00:00'),
(718, 'item_store_name', 'no', '2017-12-14 01:32:16', '0000-00-00 00:00:00'),
(719, 'item_supplier_list', 'no', '2017-12-14 01:32:16', '0000-00-00 00:00:00'),
(720, 'librarian', 'no', '2017-12-14 01:32:16', '0000-00-00 00:00:00'),
(721, 'quantity', 'no', '2017-12-14 01:32:16', '0000-00-00 00:00:00'),
(722, 'reset_password', 'no', '2017-12-14 01:32:16', '0000-00-00 00:00:00'),
(723, 'return', 'no', '2017-12-14 01:32:16', '0000-00-00 00:00:00'),
(724, 'returned', 'no', '2017-12-14 01:32:16', '0000-00-00 00:00:00'),
(725, 'search_income', 'no', '2017-12-14 01:32:16', '0000-00-00 00:00:00'),
(726, 'sms', 'no', '2017-12-14 01:32:16', '0000-00-00 00:00:00'),
(727, 'store', 'no', '2017-12-14 01:32:16', '0000-00-00 00:00:00'),
(728, 'supplier', 'no', '2017-12-14 01:32:16', '0000-00-00 00:00:00'),
(729, 'add_item_category', 'no', '2017-12-14 01:32:16', '0000-00-00 00:00:00'),
(730, 'add_item', 'no', '2017-12-14 01:32:16', '0000-00-00 00:00:00'),
(731, 'add_item_stock', 'no', '2017-12-14 01:32:16', '0000-00-00 00:00:00'),
(732, 'add_item_supplier', 'no', '2017-12-14 01:32:16', '0000-00-00 00:00:00'),
(733, 'available_quantity', 'no', '2017-12-14 01:32:16', '0000-00-00 00:00:00'),
(734, 'contact_person_phone', 'no', '2017-12-14 01:32:16', '0000-00-00 00:00:00'),
(735, 'edit_item_supplier', 'no', '2017-12-14 01:32:16', '0000-00-00 00:00:00'),
(736, 'edit_item', 'no', '2017-12-14 01:32:16', '0000-00-00 00:00:00'),
(737, 'edit_income', 'no', '2017-12-14 01:32:16', '0000-00-00 00:00:00'),
(738, 'expense_details', 'no', '2017-12-14 01:32:16', '0000-00-00 00:00:00'),
(739, 'income_details', 'no', '2017-12-14 01:32:16', '0000-00-00 00:00:00'),
(740, 'income_id', 'no', '2017-12-14 01:32:16', '0000-00-00 00:00:00'),
(741, 'income_result', 'no', '2017-12-14 01:32:16', '0000-00-00 00:00:00'),
(742, 'issued_by', 'no', '2017-12-14 01:32:16', '0000-00-00 00:00:00'),
(743, 'item_category_list', 'no', '2017-12-14 01:32:16', '0000-00-00 00:00:00'),
(744, 'item_list', 'no', '2017-12-14 01:32:16', '0000-00-00 00:00:00'),
(745, 'item_store_list', 'no', '2017-12-14 01:32:16', '0000-00-00 00:00:00'),
(746, 'item_supplier', 'no', '2017-12-14 01:32:16', '0000-00-00 00:00:00'),
(747, 'contact_person', 'no', '2017-12-14 01:32:16', '0000-00-00 00:00:00'),
(748, 'send_through', 'no', '2017-12-14 01:32:16', '0000-00-00 00:00:00'),
(749, 'auth_Key', 'no', '2017-12-14 01:32:16', '0000-00-00 00:00:00'),
(750, 'current_theme', 'no', '2017-12-14 01:32:16', '0000-00-00 00:00:00'),
(751, 'guardian_email', 'no', '2017-12-14 01:32:16', '0000-00-00 00:00:00'),
(752, 'hash_key', 'no', '2017-12-14 01:32:16', '0000-00-00 00:00:00'),
(753, 'income_list', 'no', '2017-12-14 01:32:16', '0000-00-00 00:00:00'),
(754, 'income_result', 'no', '2017-12-14 01:32:16', '0000-00-00 00:00:00'),
(755, 'income_search', 'no', '2017-12-14 01:32:16', '0000-00-00 00:00:00'),
(756, 'MSG_91', 'no', '2017-12-14 01:32:16', '0000-00-00 00:00:00'),
(757, 'notification_setting', 'no', '2017-12-14 01:32:16', '0000-00-00 00:00:00'),
(758, 'sender_id', 'no', '2017-12-14 01:32:16', '0000-00-00 00:00:00'),
(759, 'SMS_country', 'no', '2017-12-14 01:32:16', '0000-00-00 00:00:00'),
(760, 'Text_Local', 'no', '2017-12-14 01:32:16', '0000-00-00 00:00:00'),
(761, 'user_log', 'no', '2017-12-14 01:32:16', '0000-00-00 00:00:00'),
(762, 'send_email_/_sms', 'no', '2017-12-14 01:32:16', '0000-00-00 00:00:00'),
(763, 'email_/_sms', 'no', '2017-12-14 01:32:16', '0000-00-00 00:00:00'),
(764, 'email_/_sms_log', 'no', '2017-12-14 01:32:16', '0000-00-00 00:00:00'),
(765, 'payment_methods', 'no', '2017-12-14 01:32:16', '0000-00-00 00:00:00'),
(766, 'all_users', 'no', '2017-12-14 01:32:16', '0000-00-00 00:00:00'),
(767, 'stripe_api_secret_key', 'no', '2017-12-14 01:32:16', '0000-00-00 00:00:00'),
(768, 'stripe_publishable_key', 'no', '2017-12-14 01:32:16', '0000-00-00 00:00:00'),
(769, 'payu_money_key', 'no', '2017-12-14 01:32:16', '0000-00-00 00:00:00'),
(770, 'payu_money_salt', 'no', '2017-12-14 01:32:16', '0000-00-00 00:00:00'),
(771, 'merchant_id', 'no', '2017-12-14 12:24:50', '0000-00-00 00:00:00'),
(772, 'working_key', 'no', '2017-12-14 01:32:16', '0000-00-00 00:00:00'),
(773, 'select_payment_gateway', 'no', '2017-12-14 01:32:16', '0000-00-00 00:00:00'),
(774, 'exam_result', 'no', '2017-12-14 01:32:16', '0000-00-00 00:00:00'),
(775, 'fees_submission', 'no', '2017-12-14 01:32:16', '0000-00-00 00:00:00'),
(776, 'absent_student', 'no', '2017-12-14 01:32:16', '0000-00-00 00:00:00'),
(777, 'login_credential', 'no', '2017-12-14 01:32:16', '0000-00-00 00:00:00'),
(778, 'role', 'no', '2017-12-14 01:32:16', '0000-00-00 00:00:00'),
(779, 'ip_address', 'no', '2017-12-14 01:32:16', '0000-00-00 00:00:00'),
(780, 'login_time', 'no', '2017-12-14 01:32:16', '0000-00-00 00:00:00'),
(781, 'user_agent', 'no', '2017-12-14 01:32:16', '0000-00-00 00:00:00'),
(782, 'click_to_return', 'no', '2017-12-14 01:32:16', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `lang_pharses`
--

CREATE TABLE `lang_pharses` (
  `id` int(11) NOT NULL,
  `lang_id` int(11) DEFAULT NULL,
  `key_id` int(11) DEFAULT NULL,
  `pharses` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `text` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `is_active` varchar(255) COLLATE utf8_unicode_ci DEFAULT 'no',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `lang_pharses`
--

INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES
(997, 4, 620, 'Absent', NULL, 'no', '2017-04-06 10:48:39', '0000-00-00 00:00:00'),
(998, 4, 437, 'Academic Fees Detail', NULL, 'no', '2017-04-06 10:48:39', '0000-00-00 00:00:00'),
(999, 4, 211, 'Academics', NULL, 'no', '2017-04-06 10:48:39', '0000-00-00 00:00:00'),
(1000, 4, 79, 'Action', NULL, 'no', '2017-04-06 10:48:39', '0000-00-00 00:00:00'),
(1001, 4, 595, 'Active', NULL, 'no', '2017-04-06 10:48:39', '0000-00-00 00:00:00'),
(1002, 4, 228, 'Add', NULL, 'no', '2017-04-06 10:48:39', '0000-00-00 00:00:00'),
(1003, 4, 64, 'Add Another Language', NULL, 'no', '2017-04-06 10:48:39', '0000-00-00 00:00:00'),
(1004, 4, 499, 'Add Book', NULL, 'no', '2017-04-06 10:48:39', '0000-00-00 00:00:00'),
(1005, 4, 51, 'Add Category', NULL, 'no', '2017-04-06 10:48:39', '0000-00-00 00:00:00'),
(1006, 4, 468, 'Add Class', NULL, 'no', '2017-04-06 10:48:39', '0000-00-00 00:00:00'),
(1007, 4, 355, 'Add Exam', NULL, 'no', '2017-04-06 10:48:39', '0000-00-00 00:00:00'),
(1008, 4, 341, 'Add Expense', NULL, 'no', '2017-04-06 10:48:39', '0000-00-00 00:00:00'),
(1009, 4, 347, 'Add Expense Head', NULL, 'no', '2017-04-06 10:48:39', '0000-00-00 00:00:00'),
(1010, 4, 616, 'Add Fee Category', NULL, 'no', '2017-04-06 10:48:39', '0000-00-00 00:00:00'),
(1011, 4, 35, 'Add Fees', NULL, 'no', '2017-04-06 10:48:39', '0000-00-00 00:00:00'),
(1012, 4, 43, 'Add Fees Master', NULL, 'no', '2017-04-06 10:48:39', '0000-00-00 00:00:00'),
(1013, 4, 45, 'Add Fees Type', NULL, 'no', '2017-04-06 10:48:39', '0000-00-00 00:00:00'),
(1014, 4, 361, 'Add Grade', NULL, 'no', '2017-04-06 10:48:39', '0000-00-00 00:00:00'),
(1015, 4, 397, 'Add Hostel', NULL, 'no', '2017-04-06 10:48:39', '0000-00-00 00:00:00'),
(1016, 4, 458, 'Add Hostel Room', NULL, 'no', '2017-04-06 10:48:39', '0000-00-00 00:00:00'),
(1017, 4, 449, 'Add Image', NULL, 'no', '2017-04-06 10:48:39', '0000-00-00 00:00:00'),
(1018, 4, 613, 'Add Language', NULL, 'no', '2017-04-06 10:48:39', '0000-00-00 00:00:00'),
(1019, 4, 445, 'Add More Details', NULL, 'no', '2017-04-06 10:48:39', '0000-00-00 00:00:00'),
(1020, 4, 137, 'Add New SMS Configuration', NULL, 'no', '2017-04-10 08:40:03', '0000-00-00 00:00:00'),
(1021, 4, 402, 'Add Room Type', NULL, 'no', '2017-04-06 10:48:39', '0000-00-00 00:00:00'),
(1022, 4, 57, 'Add Section', NULL, 'no', '2017-04-06 10:48:39', '0000-00-00 00:00:00'),
(1023, 4, 53, 'Add Session', NULL, 'no', '2017-04-06 10:48:39', '0000-00-00 00:00:00'),
(1024, 4, 370, 'Add Subject', NULL, 'no', '2017-04-06 10:48:39', '0000-00-00 00:00:00'),
(1025, 4, 369, 'Add Teacher', NULL, 'no', '2017-04-06 10:48:39', '0000-00-00 00:00:00'),
(1026, 4, 519, 'Add Timetable', NULL, 'no', '2017-04-06 10:48:39', '0000-00-00 00:00:00'),
(1027, 4, 508, 'Add Vehicle', NULL, 'no', '2017-04-06 10:48:39', '0000-00-00 00:00:00'),
(1028, 4, 528, 'Add/Edit', NULL, 'no', '2017-04-10 08:40:22', '0000-00-00 00:00:00'),
(1029, 4, 164, 'Address', NULL, 'no', '2017-04-06 10:48:39', '0000-00-00 00:00:00'),
(1030, 4, 447, 'Address Details', NULL, 'no', '2017-04-06 10:48:39', '0000-00-00 00:00:00'),
(1031, 4, 494, 'Admin Login', NULL, 'no', '2017-04-06 10:48:39', '0000-00-00 00:00:00'),
(1032, 4, 303, 'Admission', NULL, 'no', '2017-04-06 10:48:39', '0000-00-00 00:00:00'),
(1033, 4, 11, 'Admission Date', NULL, 'no', '2017-04-06 10:48:39', '0000-00-00 00:00:00'),
(1034, 4, 181, 'Admission Discount', NULL, 'no', '2017-04-06 10:48:39', '0000-00-00 00:00:00'),
(1035, 4, 170, 'Admission Number', NULL, 'no', '2017-05-20 02:40:16', '0000-00-00 00:00:00'),
(1036, 4, 89, 'Amount', NULL, 'no', '2017-04-06 10:48:39', '0000-00-00 00:00:00'),
(1038, 4, 366, 'Assign Subject', NULL, 'no', '2017-04-06 10:48:39', '0000-00-00 00:00:00'),
(1039, 4, 565, 'Assign Subjects', NULL, 'no', '2017-04-06 10:48:39', '0000-00-00 00:00:00'),
(1040, 4, 571, 'Assign Vehicle', NULL, 'no', '2017-04-06 10:48:39', '0000-00-00 00:00:00'),
(1041, 4, 501, 'Assign Vehicle On Route', NULL, 'no', '2017-04-06 10:48:39', '0000-00-00 00:00:00'),
(1042, 4, 387, 'Assignment List', NULL, 'no', '2017-04-06 10:48:39', '0000-00-00 00:00:00'),
(1043, 4, 567, 'Assignments', NULL, 'no', '2017-04-06 10:48:39', '0000-00-00 00:00:00'),
(1044, 4, 516, 'Attendance', NULL, 'no', '2017-04-06 10:48:39', '0000-00-00 00:00:00'),
(1045, 4, 349, 'Attendance Already Submitted As Holiday', NULL, 'no', '2017-04-06 10:48:39', '0000-00-00 00:00:00'),
(1046, 4, 348, 'Attendance Already Submitted You Can Edit Record', NULL, 'no', '2017-04-06 10:48:39', '0000-00-00 00:00:00'),
(1047, 4, 561, 'Attendance By Date', NULL, 'no', '2017-04-06 10:48:39', '0000-00-00 00:00:00'),
(1048, 4, 562, 'Attendance Report', NULL, 'no', '2017-04-06 10:48:39', '0000-00-00 00:00:00'),
(1049, 4, 351, 'Attendance Saved Successfully', NULL, 'no', '2017-04-06 10:48:39', '0000-00-00 00:00:00'),
(1050, 4, 537, 'Authentication Token', NULL, 'no', '2017-04-06 10:48:39', '0000-00-00 00:00:00'),
(1051, 4, 190, 'Author', NULL, 'no', '2017-04-06 10:48:39', '0000-00-00 00:00:00'),
(1052, 4, 385, 'Available For', NULL, 'no', '2017-04-06 10:48:39', '0000-00-00 00:00:00'),
(1053, 4, 382, 'Available For All Classes', NULL, 'no', '2017-04-06 10:48:39', '0000-00-00 00:00:00'),
(1054, 4, 577, 'Backup / Restore', NULL, 'no', '2017-04-06 10:48:39', '0000-00-00 00:00:00'),
(1055, 4, 423, 'Backup Files', NULL, 'no', '2017-04-06 10:48:39', '0000-00-00 00:00:00'),
(1056, 4, 421, 'Backup History', NULL, 'no', '2017-04-06 10:48:39', '0000-00-00 00:00:00'),
(1057, 4, 108, 'Balance', NULL, 'no', '2017-04-06 10:48:39', '0000-00-00 00:00:00'),
(1058, 4, 92, 'Balance Description', NULL, 'no', '2017-04-06 10:48:39', '0000-00-00 00:00:00'),
(1059, 4, 320, 'Balance Details', NULL, 'no', '2017-04-06 10:48:39', '0000-00-00 00:00:00'),
(1060, 4, 328, 'Balance Fees', NULL, 'no', '2017-04-06 10:48:39', '0000-00-00 00:00:00'),
(1061, 4, 558, 'Balance Fees Report', NULL, 'no', '2017-04-06 10:48:39', '0000-00-00 00:00:00'),
(1062, 4, 23, 'Bank Account Number', NULL, 'no', '2017-05-20 02:40:30', '0000-00-00 00:00:00'),
(1063, 4, 24, 'Bank Name', NULL, 'no', '2017-04-06 10:48:39', '0000-00-00 00:00:00'),
(1064, 4, 227, 'Basic Information', NULL, 'no', '2017-04-06 10:48:39', '0000-00-00 00:00:00'),
(1065, 4, 391, 'Book Details', NULL, 'no', '2017-04-06 10:48:39', '0000-00-00 00:00:00'),
(1066, 4, 393, 'Book List', NULL, 'no', '2017-04-06 10:48:39', '0000-00-00 00:00:00'),
(1067, 4, 199, 'Book Title', NULL, 'no', '2017-04-06 10:48:39', '0000-00-00 00:00:00'),
(1068, 4, 192, 'Book Price', NULL, 'no', '2017-04-10 08:43:06', '0000-00-00 00:00:00'),
(1069, 4, 524, 'Books', NULL, 'no', '2017-04-06 10:48:39', '0000-00-00 00:00:00'),
(1070, 4, 464, 'By Date', NULL, 'no', '2017-04-06 10:48:39', '0000-00-00 00:00:00'),
(1071, 4, 141, 'Cancel', NULL, 'no', '2017-04-06 10:48:39', '0000-00-00 00:00:00'),
(1072, 4, 471, 'Cash', NULL, 'no', '2017-04-06 10:48:39', '0000-00-00 00:00:00'),
(1073, 4, 168, 'Cast', NULL, 'no', '2017-04-06 10:48:39', '0000-00-00 00:00:00'),
(1074, 4, 16, 'Category', NULL, 'no', '2017-04-06 10:48:39', '0000-00-00 00:00:00'),
(1075, 4, 50, 'Category List', NULL, 'no', '2017-04-06 10:48:39', '0000-00-00 00:00:00'),
(1076, 4, 275, 'Change Password', NULL, 'no', '2017-04-06 10:48:39', '0000-00-00 00:00:00'),
(1077, 4, 80, 'Change Status', NULL, 'no', '2017-04-06 10:48:39', '0000-00-00 00:00:00'),
(1078, 4, 472, 'Cheque', NULL, 'no', '2017-04-06 10:48:39', '0000-00-00 00:00:00'),
(1079, 4, 9, 'Class', NULL, 'no', '2017-04-06 10:48:39', '0000-00-00 00:00:00'),
(1080, 4, 429, 'Class Fees Detail', NULL, 'no', '2017-04-06 10:48:39', '0000-00-00 00:00:00'),
(1081, 4, 54, 'Class List', NULL, 'no', '2017-04-06 10:48:39', '0000-00-00 00:00:00'),
(1082, 4, 333, 'Class Section', NULL, 'no', '2017-04-06 10:48:39', '0000-00-00 00:00:00'),
(1083, 4, 492, 'Class Timetable', NULL, 'no', '2017-04-06 10:48:39', '0000-00-00 00:00:00'),
(1084, 4, 116, 'Classes', NULL, 'no', '2017-04-06 10:48:39', '0000-00-00 00:00:00'),
(1085, 4, 532, 'Clickatell Api Id', NULL, 'no', '2017-04-06 10:48:39', '0000-00-00 00:00:00'),
(1086, 4, 531, 'Clickatell Password', NULL, 'no', '2017-04-06 10:48:39', '0000-00-00 00:00:00'),
(1087, 4, 533, 'Clickatell SMS Gateway', NULL, 'no', '2017-04-10 08:44:20', '0000-00-00 00:00:00'),
(1088, 4, 530, 'Clickatell Username', NULL, 'no', '2017-04-06 10:48:39', '0000-00-00 00:00:00'),
(1089, 4, 319, 'Collect Fees', NULL, 'no', '2017-04-06 10:48:39', '0000-00-00 00:00:00'),
(1090, 4, 330, 'Collect Transport Fees', NULL, 'no', '2017-04-06 10:48:39', '0000-00-00 00:00:00'),
(1091, 4, 117, 'Collection', NULL, 'no', '2017-04-06 10:48:39', '0000-00-00 00:00:00'),
(1092, 4, 284, 'Communicate', NULL, 'no', '2017-04-06 10:48:39', '0000-00-00 00:00:00'),
(1093, 4, 252, 'Compose New Message', NULL, 'no', '2017-04-06 10:48:39', '0000-00-00 00:00:00'),
(1094, 4, 123, 'Confirm Password', NULL, 'no', '2017-04-06 10:48:39', '0000-00-00 00:00:00'),
(1095, 4, 384, 'Content File', NULL, 'no', '2017-04-06 10:48:39', '0000-00-00 00:00:00'),
(1096, 4, 380, 'Content List', NULL, 'no', '2017-04-06 10:48:39', '0000-00-00 00:00:00'),
(1097, 4, 246, 'Content Title', NULL, 'no', '2017-04-06 10:48:39', '0000-00-00 00:00:00'),
(1098, 4, 203, 'Content Type', NULL, 'no', '2017-04-06 10:48:39', '0000-00-00 00:00:00'),
(1099, 4, 233, 'Continue', NULL, 'no', '2017-04-06 10:48:39', '0000-00-00 00:00:00'),
(1100, 4, 456, 'Cost Per Bed', NULL, 'no', '2017-04-06 10:48:39', '0000-00-00 00:00:00'),
(1101, 4, 422, 'Create Backup', NULL, 'no', '2017-04-06 10:48:39', '0000-00-00 00:00:00'),
(1102, 4, 263, 'Create Category', NULL, 'no', '2017-04-06 10:48:39', '0000-00-00 00:00:00'),
(1103, 4, 395, 'Create Route', NULL, 'no', '2017-04-06 10:48:39', '0000-00-00 00:00:00'),
(1104, 4, 65, 'Created At', NULL, 'no', '2017-04-06 10:48:39', '0000-00-00 00:00:00'),
(1105, 4, 295, 'Currency', NULL, 'no', '2017-04-06 10:48:39', '0000-00-00 00:00:00'),
(1106, 4, 296, 'Currency Symbol', NULL, 'no', '2017-04-06 10:48:39', '0000-00-00 00:00:00'),
(1107, 4, 302, 'Current', NULL, 'no', '2017-04-06 10:48:39', '0000-00-00 00:00:00'),
(1108, 4, 17, 'Current Address', NULL, 'no', '2017-04-06 10:48:39', '0000-00-00 00:00:00'),
(1109, 4, 121, 'Current Password', NULL, 'no', '2017-04-06 10:48:39', '0000-00-00 00:00:00'),
(1110, 4, 547, 'Current Session', NULL, 'no', '2017-04-06 10:48:39', '0000-00-00 00:00:00'),
(1111, 4, 535, 'Custom SMS Gateway', NULL, 'no', '2017-04-10 08:45:00', '0000-00-00 00:00:00'),
(1112, 4, 125, 'Date', NULL, 'no', '2017-04-06 10:48:39', '0000-00-00 00:00:00'),
(1113, 4, 294, 'Date Format', NULL, 'no', '2017-04-06 10:48:39', '0000-00-00 00:00:00'),
(1114, 4, 495, 'Date From', NULL, 'no', '2017-04-06 10:48:39', '0000-00-00 00:00:00'),
(1115, 4, 13, 'Date Of Birth', NULL, 'no', '2017-04-06 10:48:39', '0000-00-00 00:00:00'),
(1116, 4, 225, 'Date To', NULL, 'no', '2017-04-06 10:48:39', '0000-00-00 00:00:00'),
(1117, 4, 491, 'Day', NULL, 'no', '2017-04-06 10:48:39', '0000-00-00 00:00:00'),
(1118, 4, 470, 'DD', NULL, 'no', '2017-04-10 08:45:12', '0000-00-00 00:00:00'),
(1120, 4, 311, 'Delete', NULL, 'no', '2017-04-06 10:48:39', '0000-00-00 00:00:00'),
(1121, 4, 107, 'Deposit', NULL, 'no', '2017-04-06 10:48:39', '0000-00-00 00:00:00'),
(1122, 4, 101, 'Description', NULL, 'no', '2017-04-06 10:48:39', '0000-00-00 00:00:00'),
(1123, 4, 593, 'Detailed View', NULL, 'no', '2017-04-06 10:48:39', '0000-00-00 00:00:00'),
(1124, 4, 306, 'Details', NULL, 'no', '2017-04-06 10:48:39', '0000-00-00 00:00:00'),
(1125, 4, 612, 'Disabled', NULL, 'no', '2017-04-06 10:48:39', '0000-00-00 00:00:00'),
(1126, 4, 91, 'Discount', NULL, 'no', '2017-04-06 10:48:39', '0000-00-00 00:00:00'),
(1127, 4, 292, 'Download Sample Import File', NULL, 'no', '2017-04-10 08:46:06', '0000-00-00 00:00:00'),
(1128, 4, 438, 'Document List', NULL, 'no', '2017-04-06 10:48:39', '0000-00-00 00:00:00'),
(1129, 4, 312, 'Documents', NULL, 'no', '2017-04-06 10:48:39', '0000-00-00 00:00:00'),
(1130, 4, 598, 'Download', NULL, 'no', '2017-04-06 10:48:39', '0000-00-00 00:00:00'),
(1131, 4, 212, 'Download Center', NULL, 'no', '2017-04-06 10:48:39', '0000-00-00 00:00:00'),
(1132, 4, 321, 'Download PDF', NULL, 'no', '2017-04-10 08:46:23', '0000-00-00 00:00:00'),
(1133, 4, 509, 'Driver Contact', NULL, 'no', '2017-04-06 10:48:39', '0000-00-00 00:00:00'),
(1134, 4, 510, 'Driver License', NULL, 'no', '2017-04-06 10:48:39', '0000-00-00 00:00:00'),
(1135, 4, 511, 'Driver Name', NULL, 'no', '2017-04-06 10:48:39', '0000-00-00 00:00:00'),
(1136, 4, 48, 'Edit', NULL, 'no', '2017-04-06 10:48:39', '0000-00-00 00:00:00'),
(1137, 4, 392, 'Edit Book', NULL, 'no', '2017-04-06 10:48:39', '0000-00-00 00:00:00'),
(1138, 4, 465, 'Edit Category', NULL, 'no', '2017-04-06 10:48:39', '0000-00-00 00:00:00'),
(1139, 4, 375, 'Edit Class', NULL, 'no', '2017-04-06 10:48:39', '0000-00-00 00:00:00'),
(1140, 4, 467, 'Edit Exam', NULL, 'no', '2017-04-06 10:48:39', '0000-00-00 00:00:00'),
(1141, 4, 342, 'Edit Expense', NULL, 'no', '2017-04-06 10:48:39', '0000-00-00 00:00:00'),
(1142, 4, 345, 'Edit Expense Head', NULL, 'no', '2017-04-06 10:48:39', '0000-00-00 00:00:00'),
(1143, 4, 617, 'Edit Fee Category', NULL, 'no', '2017-04-06 10:48:39', '0000-00-00 00:00:00'),
(1144, 4, 360, 'Edit Grade', NULL, 'no', '2017-04-06 10:48:39', '0000-00-00 00:00:00'),
(1145, 4, 398, 'Edit Hostel', NULL, 'no', '2017-04-06 10:48:39', '0000-00-00 00:00:00'),
(1146, 4, 453, 'Edit Hostel Room', NULL, 'no', '2017-04-06 10:48:39', '0000-00-00 00:00:00'),
(1147, 4, 72, 'Edit Logo', NULL, 'no', '2017-04-06 10:48:39', '0000-00-00 00:00:00'),
(1148, 4, 406, 'Edit Message', NULL, 'no', '2017-04-06 10:48:39', '0000-00-00 00:00:00'),
(1149, 4, 272, 'Edit Notification', NULL, 'no', '2017-04-06 10:48:39', '0000-00-00 00:00:00'),
(1150, 4, 404, 'Edit Room Type', NULL, 'no', '2017-04-06 10:48:39', '0000-00-00 00:00:00'),
(1151, 4, 396, 'Edit Route', NULL, 'no', '2017-04-06 10:48:39', '0000-00-00 00:00:00'),
(1152, 4, 377, 'Edit Section', NULL, 'no', '2017-04-06 10:48:39', '0000-00-00 00:00:00'),
(1153, 4, 411, 'Edit Session', NULL, 'no', '2017-04-06 10:48:39', '0000-00-00 00:00:00'),
(1154, 4, 520, 'Edit Setting', NULL, 'no', '2017-04-06 10:48:39', '0000-00-00 00:00:00'),
(1155, 4, 374, 'Edit Subject', NULL, 'no', '2017-04-06 10:48:39', '0000-00-00 00:00:00'),
(1156, 4, 368, 'Edit Teacher', NULL, 'no', '2017-04-06 10:48:39', '0000-00-00 00:00:00'),
(1157, 4, 505, 'Edit Vehicle', NULL, 'no', '2017-04-06 10:48:39', '0000-00-00 00:00:00'),
(1158, 4, 500, 'Edit Vehicle On Route', NULL, 'no', '2017-04-06 10:48:39', '0000-00-00 00:00:00'),
(1159, 4, 3, 'Email', NULL, 'no', '2017-04-06 10:48:39', '0000-00-00 00:00:00'),
(1160, 4, 611, 'Enabled', NULL, 'no', '2017-04-06 10:48:39', '0000-00-00 00:00:00'),
(1161, 4, 238, 'End Time', NULL, 'no', '2017-04-06 10:48:39', '0000-00-00 00:00:00'),
(1162, 4, 171, 'Enrollment Number', NULL, 'no', '2017-05-20 02:40:51', '0000-00-00 00:00:00'),
(1163, 4, 600, 'Enter Room Number', NULL, 'no', '2017-05-20 02:41:06', '0000-00-00 00:00:00'),
(1164, 4, 236, 'Exam', NULL, 'no', '2017-04-06 10:48:39', '0000-00-00 00:00:00'),
(1165, 4, 235, 'Exam List', NULL, 'no', '2017-04-06 10:48:39', '0000-00-00 00:00:00'),
(1166, 4, 575, 'Exam Marks Report', NULL, 'no', '2017-04-06 10:48:39', '0000-00-00 00:00:00'),
(1167, 4, 142, 'Exam Name', NULL, 'no', '2017-04-06 10:48:39', '0000-00-00 00:00:00'),
(1168, 4, 466, 'Exam Not Allotted', NULL, 'no', '2017-04-06 10:48:39', '0000-00-00 00:00:00'),
(1169, 4, 482, 'Exam Schedule', NULL, 'no', '2017-04-06 10:48:39', '0000-00-00 00:00:00'),
(1170, 4, 358, 'Exam Scheduled', NULL, 'no', '2017-04-06 10:48:39', '0000-00-00 00:00:00'),
(1171, 4, 523, 'Exam Status', NULL, 'no', '2017-04-06 10:48:39', '0000-00-00 00:00:00'),
(1172, 4, 439, 'Exam Timetable', NULL, 'no', '2017-04-06 10:48:39', '0000-00-00 00:00:00'),
(1173, 4, 210, 'Examinations', NULL, 'no', '2017-04-06 10:48:39', '0000-00-00 00:00:00'),
(1174, 4, 340, 'Expense Detail', NULL, 'no', '2017-04-06 10:48:39', '0000-00-00 00:00:00'),
(1175, 4, 339, 'Expense Head', NULL, 'no', '2017-04-06 10:48:39', '0000-00-00 00:00:00'),
(1176, 4, 344, 'Expense Head List', NULL, 'no', '2017-04-06 10:48:39', '0000-00-00 00:00:00'),
(1177, 4, 338, 'Expense Id', NULL, 'no', '2017-04-06 10:48:39', '0000-00-00 00:00:00'),
(1178, 4, 343, 'Expense List', NULL, 'no', '2017-04-06 10:48:39', '0000-00-00 00:00:00'),
(1179, 4, 603, 'Expense Result', NULL, 'no', '2017-04-06 10:48:39', '0000-00-00 00:00:00'),
(1180, 4, 206, 'Expenses', NULL, 'no', '2017-04-06 10:48:39', '0000-00-00 00:00:00'),
(1181, 4, 33, 'Export Format', NULL, 'no', '2017-04-06 10:48:39', '0000-00-00 00:00:00'),
(1182, 4, 232, 'Fail', NULL, 'no', '2017-04-06 10:48:39', '0000-00-00 00:00:00'),
(1183, 4, 202, 'Fare', NULL, 'no', '2017-04-06 10:48:39', '0000-00-00 00:00:00'),
(1184, 4, 287, 'Father', NULL, 'no', '2017-04-06 10:48:39', '0000-00-00 00:00:00'),
(1185, 4, 157, 'Father Name', NULL, 'no', '2017-04-06 10:48:39', '0000-00-00 00:00:00'),
(1186, 4, 159, 'Father Occupation', NULL, 'no', '2017-04-06 10:48:39', '0000-00-00 00:00:00'),
(1187, 4, 158, 'Father Phone', NULL, 'no', '2017-04-06 10:48:39', '0000-00-00 00:00:00'),
(1188, 4, 39, 'Fee Category', NULL, 'no', '2017-04-06 10:48:39', '0000-00-00 00:00:00'),
(1189, 4, 115, 'Fees Master', NULL, 'no', '2017-04-10 08:48:52', '0000-00-00 00:00:00'),
(1190, 4, 40, 'Fees Type', NULL, 'no', '2017-04-10 08:48:56', '0000-00-00 00:00:00'),
(1191, 4, 184, 'Fees', NULL, 'no', '2017-04-06 10:48:39', '0000-00-00 00:00:00'),
(1192, 4, 583, 'Fees Category', NULL, 'no', '2017-04-06 10:48:39', '0000-00-00 00:00:00'),
(1193, 4, 615, 'Fees Category List', NULL, 'no', '2017-04-06 10:48:39', '0000-00-00 00:00:00'),
(1195, 4, 208, 'Fees Collection', NULL, 'no', '2017-04-06 10:48:39', '0000-00-00 00:00:00'),
(1196, 4, 584, 'Fees Collection & Expenses For', NULL, 'no', '2017-04-06 10:48:39', '0000-00-00 00:00:00'),
(1197, 4, 581, 'Fees Collection & Expenses For Session', NULL, 'no', '2017-04-06 10:48:39', '0000-00-00 00:00:00'),
(1198, 4, 337, 'Fees Collection Details', NULL, 'no', '2017-04-06 10:48:39', '0000-00-00 00:00:00'),
(1199, 4, 156, 'Fees Discount', NULL, 'no', '2017-04-06 10:48:39', '0000-00-00 00:00:00'),
(1200, 4, 554, 'Fees Master', NULL, 'no', '2017-04-06 10:48:39', '0000-00-00 00:00:00'),
(1201, 4, 44, 'Fees Master List', NULL, 'no', '2017-04-06 10:48:39', '0000-00-00 00:00:00'),
(1202, 4, 582, 'Fees Receipt', NULL, 'no', '2017-04-06 10:48:39', '0000-00-00 00:00:00'),
(1203, 4, 557, 'Fees Statement', NULL, 'no', '2017-04-06 10:48:39', '0000-00-00 00:00:00'),
(1204, 4, 102, 'Fees Subtotal', NULL, 'no', '2017-04-06 10:48:39', '0000-00-00 00:00:00'),
(1205, 4, 452, 'Fees Type', NULL, 'no', '2017-04-06 10:48:39', '0000-00-00 00:00:00'),
(1206, 4, 46, 'Fees Type List', NULL, 'no', '2017-04-06 10:48:39', '0000-00-00 00:00:00'),
(1207, 4, 602, 'Female', NULL, 'no', '2017-04-06 10:48:39', '0000-00-00 00:00:00'),
(1208, 4, 462, 'Fill Marks', NULL, 'no', '2017-12-09 00:47:41', '0000-00-00 00:00:00'),
(1209, 4, 87, 'Fine', NULL, 'no', '2017-04-06 10:48:39', '0000-00-00 00:00:00'),
(1210, 4, 7, 'First Name', NULL, 'no', '2017-04-06 10:48:39', '0000-00-00 00:00:00'),
(1211, 4, 240, 'Full Marks', NULL, 'no', '2017-12-09 00:48:08', '0000-00-00 00:00:00'),
(1212, 4, 299, 'Full Marks', NULL, 'no', '2017-04-06 10:48:39', '0000-00-00 00:00:00'),
(1213, 4, 540, 'Gateway Name', NULL, 'no', '2017-04-06 10:48:39', '0000-00-00 00:00:00'),
(1214, 4, 186, 'Gender', NULL, 'no', '2017-04-06 10:48:39', '0000-00-00 00:00:00'),
(1215, 4, 408, 'General Setting', NULL, 'no', '2017-12-14 13:46:34', '0000-00-00 00:00:00'),
(1216, 4, 34, 'Generate PDF', NULL, 'no', '2017-04-10 08:50:09', '0000-00-00 00:00:00'),
(1217, 4, 579, 'Grade', NULL, 'no', '2017-04-06 10:48:39', '0000-00-00 00:00:00'),
(1218, 4, 364, 'Grade List', NULL, 'no', '2017-04-06 10:48:39', '0000-00-00 00:00:00'),
(1219, 4, 145, 'Grade Name', NULL, 'no', '2017-04-06 10:48:39', '0000-00-00 00:00:00'),
(1220, 4, 106, 'Grand Total', NULL, 'no', '2017-04-06 10:48:39', '0000-00-00 00:00:00'),
(1221, 4, 327, 'Gross Fees', NULL, 'no', '2017-04-06 10:48:39', '0000-00-00 00:00:00'),
(1222, 4, 30, 'Guardian Address', NULL, 'no', '2017-04-06 10:48:39', '0000-00-00 00:00:00'),
(1223, 4, 273, 'Guardian Details', NULL, 'no', '2017-04-06 10:48:39', '0000-00-00 00:00:00'),
(1224, 4, 27, 'Guardian Name', NULL, 'no', '2017-04-06 10:48:39', '0000-00-00 00:00:00'),
(1225, 4, 163, 'Guardian Occupation', NULL, 'no', '2017-04-06 10:48:39', '0000-00-00 00:00:00'),
(1226, 4, 29, 'Guardian Phone', NULL, 'no', '2017-04-06 10:48:39', '0000-00-00 00:00:00'),
(1227, 4, 28, 'Guardian Relation', NULL, 'no', '2017-04-06 10:48:39', '0000-00-00 00:00:00'),
(1228, 4, 352, 'Holiday', NULL, 'no', '2017-04-06 10:48:39', '0000-00-00 00:00:00'),
(1229, 4, 220, 'Hostel', NULL, 'no', '2017-04-06 10:48:39', '0000-00-00 00:00:00'),
(1230, 4, 587, 'Hostel - Rooms', NULL, 'no', '2017-04-06 10:48:39', '0000-00-00 00:00:00'),
(1231, 4, 399, 'Hostel List', NULL, 'no', '2017-04-06 10:48:39', '0000-00-00 00:00:00'),
(1232, 4, 221, 'Hostel Name', NULL, 'no', '2017-04-06 10:48:39', '0000-00-00 00:00:00'),
(1233, 4, 457, 'Hostel Room List', NULL, 'no', '2017-04-06 10:48:39', '0000-00-00 00:00:00'),
(1234, 4, 481, 'Hostel Rooms', NULL, 'no', '2017-04-06 10:48:39', '0000-00-00 00:00:00'),
(1235, 4, 169, 'Id', NULL, 'no', '2017-04-06 10:48:39', '0000-00-00 00:00:00'),
(1236, 4, 309, 'Identification', NULL, 'no', '2017-04-06 10:48:39', '0000-00-00 00:00:00'),
(1237, 4, 493, 'If Guardian Address is Current Address', NULL, 'no', '2017-04-10 08:50:50', '0000-00-00 00:00:00'),
(1238, 4, 546, 'If Guardian Is', NULL, 'no', '2017-04-06 10:48:39', '0000-00-00 00:00:00'),
(1239, 4, 446, 'If Permanent Address is Current Address', NULL, 'no', '2017-04-10 08:50:57', '0000-00-00 00:00:00'),
(1240, 4, 25, 'IFSC Code', NULL, 'no', '2017-04-10 08:51:18', '0000-00-00 00:00:00'),
(1241, 4, 32, 'Import Excel', NULL, 'no', '2017-04-06 10:48:39', '0000-00-00 00:00:00'),
(1242, 4, 291, 'Import Student', NULL, 'no', '2017-04-06 10:48:39', '0000-00-00 00:00:00'),
(1243, 4, 197, 'Intake', NULL, 'no', '2017-04-06 10:48:39', '0000-00-00 00:00:00'),
(1244, 4, 86, 'Invoice Number', NULL, 'no', '2017-05-20 02:41:26', '0000-00-00 00:00:00'),
(1245, 4, 188, 'ISBN', NULL, 'no', '2017-04-10 08:51:32', '0000-00-00 00:00:00'),
(1246, 4, 165, 'Language', NULL, 'no', '2017-04-06 10:48:39', '0000-00-00 00:00:00'),
(1247, 4, 63, 'Language List', NULL, 'no', '2017-04-06 10:48:39', '0000-00-00 00:00:00'),
(1248, 4, 529, 'Language RTL Text Mode', NULL, 'no', '2017-04-10 08:51:53', '0000-00-00 00:00:00'),
(1249, 4, 578, 'Languages', NULL, 'no', '2017-04-06 10:48:39', '0000-00-00 00:00:00'),
(1250, 4, 8, 'Last Name', NULL, 'no', '2017-04-06 10:48:39', '0000-00-00 00:00:00'),
(1251, 4, 619, 'Late', NULL, 'no', '2017-04-06 10:48:39', '0000-00-00 00:00:00'),
(1252, 4, 618, 'Late With Excuse', NULL, 'no', '2017-04-06 10:48:39', '0000-00-00 00:00:00'),
(1253, 4, 234, 'Leave', NULL, 'no', '2017-04-06 10:48:39', '0000-00-00 00:00:00'),
(1254, 4, 214, 'Library', NULL, 'no', '2017-04-06 10:48:39', '0000-00-00 00:00:00'),
(1255, 4, 585, 'Library - Books', NULL, 'no', '2017-04-06 10:48:39', '0000-00-00 00:00:00'),
(1256, 4, 479, 'Library Book', NULL, 'no', '2017-04-06 10:48:39', '0000-00-00 00:00:00'),
(1257, 4, 526, 'Library Books', NULL, 'no', '2017-04-06 10:48:39', '0000-00-00 00:00:00'),
(1258, 4, 229, 'List', NULL, 'no', '2017-04-06 10:48:39', '0000-00-00 00:00:00'),
(1259, 4, 485, 'Local Identification Number', NULL, 'no', '2017-05-20 02:41:34', '0000-00-00 00:00:00'),
(1260, 4, 436, 'Login Details', NULL, 'no', '2017-04-06 10:48:39', '0000-00-00 00:00:00'),
(1261, 4, 590, 'Login Url', NULL, 'no', '2017-04-06 10:48:39', '0000-00-00 00:00:00'),
(1262, 4, 514, 'Logout', NULL, 'no', '2017-04-06 10:48:39', '0000-00-00 00:00:00'),
(1263, 4, 601, 'Male', NULL, 'no', '2017-04-06 10:48:39', '0000-00-00 00:00:00'),
(1264, 4, 70, 'Manage', NULL, 'no', '2017-04-06 10:48:39', '0000-00-00 00:00:00'),
(1265, 4, 353, 'Mark As Holiday', NULL, 'no', '2017-04-06 10:48:39', '0000-00-00 00:00:00'),
(1266, 4, 459, 'Marks Register', NULL, 'no', '2017-12-09 00:48:46', '0000-00-00 00:00:00'),
(1267, 4, 564, 'Marks Grade', NULL, 'no', '2017-04-06 10:48:39', '0000-00-00 00:00:00'),
(1268, 4, 563, 'Marks Register', NULL, 'no', '2017-04-06 10:48:39', '0000-00-00 00:00:00'),
(1269, 4, 357, 'Marks Register Prepared', NULL, 'no', '2017-04-06 10:48:39', '0000-00-00 00:00:00'),
(1270, 4, 265, 'Message', NULL, 'no', '2017-04-06 10:48:39', '0000-00-00 00:00:00'),
(1271, 4, 256, 'Message To', NULL, 'no', '2017-04-06 10:48:39', '0000-00-00 00:00:00'),
(1272, 4, 270, 'Miscellaneous Details', NULL, 'no', '2017-04-06 10:48:39', '0000-00-00 00:00:00'),
(1273, 4, 12, 'Mobile Number', NULL, 'no', '2017-05-20 02:41:39', '0000-00-00 00:00:00'),
(1274, 4, 487, 'Mode', NULL, 'no', '2017-04-06 10:48:39', '0000-00-00 00:00:00'),
(1275, 4, 489, 'Month', NULL, 'no', '2017-04-06 10:48:39', '0000-00-00 00:00:00'),
(1276, 4, 432, 'Monthly Expenses', NULL, 'no', '2017-04-06 10:48:39', '0000-00-00 00:00:00'),
(1277, 4, 431, 'Monthly Fees Collection', NULL, 'no', '2017-04-06 10:48:39', '0000-00-00 00:00:00'),
(1278, 4, 288, 'Mother', NULL, 'no', '2017-04-06 10:48:39', '0000-00-00 00:00:00'),
(1279, 4, 160, 'Mother Name', NULL, 'no', '2017-04-06 10:48:39', '0000-00-00 00:00:00'),
(1280, 4, 162, 'Mother Occupation', NULL, 'no', '2017-04-06 10:48:39', '0000-00-00 00:00:00'),
(1281, 4, 161, 'Mother Phone', NULL, 'no', '2017-04-06 10:48:39', '0000-00-00 00:00:00'),
(1282, 4, 386, 'My Children', NULL, 'no', '2017-04-06 10:48:39', '0000-00-00 00:00:00'),
(1283, 4, 486, 'My Profile', NULL, 'no', '2017-04-06 10:48:39', '0000-00-00 00:00:00'),
(1284, 4, 153, 'Name', NULL, 'no', '2017-04-06 10:48:39', '0000-00-00 00:00:00'),
(1285, 4, 484, 'National Identification Number', NULL, 'no', '2017-09-11 04:09:06', '0000-00-00 00:00:00'),
(1286, 4, 122, 'New Password', NULL, 'no', '2017-04-06 10:48:39', '0000-00-00 00:00:00'),
(1287, 4, 442, 'Next Session Status', NULL, 'no', '2017-04-06 10:48:39', '0000-00-00 00:00:00'),
(1288, 4, 310, 'No', NULL, 'no', '2017-04-06 10:48:39', '0000-00-00 00:00:00'),
(1289, 4, 354, 'No Attendance Prepared', NULL, 'no', '2017-04-10 08:53:26', '0000-00-00 00:00:00'),
(1290, 4, 614, 'No Description', NULL, 'no', '2017-04-06 10:48:39', '0000-00-00 00:00:00'),
(1291, 4, 475, 'No Exam Prepared', NULL, 'no', '2017-04-10 08:53:35', '0000-00-00 00:00:00'),
(1292, 4, 430, 'No Fees Found', NULL, 'no', '2017-04-06 10:48:39', '0000-00-00 00:00:00'),
(1293, 4, 455, 'Number Of Bed', NULL, 'no', '2017-05-19 22:43:42', '0000-00-00 00:00:00'),
(1294, 4, 201, 'Number Of Vehicle', NULL, 'no', '2017-05-19 22:43:54', '0000-00-00 00:00:00'),
(1295, 4, 259, 'No Record Found', NULL, 'no', '2017-04-06 10:48:39', '0000-00-00 00:00:00'),
(1296, 4, 443, 'No Result Prepared', NULL, 'no', '2017-04-10 08:53:47', '0000-00-00 00:00:00'),
(1297, 4, 94, 'No Search Record Found', NULL, 'no', '2017-04-06 10:48:39', '0000-00-00 00:00:00'),
(1298, 4, 317, 'No Transaction Found', NULL, 'no', '2017-04-06 10:48:39', '0000-00-00 00:00:00'),
(1299, 4, 331, 'No Transport Fees Found', NULL, 'no', '2017-04-06 10:48:39', '0000-00-00 00:00:00'),
(1300, 4, 527, 'No vehicle allotted to this route', NULL, 'no', '2017-04-10 08:54:28', '0000-00-00 00:00:00'),
(1301, 4, 606, 'Not', NULL, 'no', '2017-04-06 10:48:39', '0000-00-00 00:00:00'),
(1302, 4, 290, 'Not Scheduled', NULL, 'no', '2017-04-06 10:48:39', '0000-00-00 00:00:00'),
(1303, 4, 150, 'Note', NULL, 'no', '2017-04-06 10:48:39', '0000-00-00 00:00:00'),
(1304, 4, 253, 'Notice', NULL, 'no', '2017-04-06 10:48:39', '0000-00-00 00:00:00'),
(1305, 4, 285, 'Notice Board', NULL, 'no', '2017-04-06 10:48:39', '0000-00-00 00:00:00'),
(1306, 4, 254, 'Notice Date', NULL, 'no', '2017-04-06 10:48:39', '0000-00-00 00:00:00'),
(1307, 4, 278, 'Notifications', NULL, 'no', '2017-04-06 10:48:39', '0000-00-00 00:00:00'),
(1308, 4, 300, 'Obtain Marks', NULL, 'no', '2017-04-06 10:48:39', '0000-00-00 00:00:00'),
(1309, 4, 419, 'Off', NULL, 'no', '2017-04-06 10:48:39', '0000-00-00 00:00:00'),
(1310, 4, 420, 'On', NULL, 'no', '2017-04-06 10:48:39', '0000-00-00 00:00:00'),
(1311, 4, 496, 'Other', NULL, 'no', '2017-04-06 10:48:39', '0000-00-00 00:00:00'),
(1312, 4, 335, 'Other Discount', NULL, 'no', '2017-04-06 10:48:39', '0000-00-00 00:00:00'),
(1313, 4, 390, 'Other Download List', NULL, 'no', '2017-04-06 10:48:39', '0000-00-00 00:00:00'),
(1314, 4, 597, 'Other Downloads', NULL, 'no', '2017-04-06 10:48:39', '0000-00-00 00:00:00'),
(1315, 4, 544, 'Paid', NULL, 'no', '2017-04-06 10:48:39', '0000-00-00 00:00:00'),
(1316, 4, 324, 'Paid Fees', NULL, 'no', '2017-04-06 10:48:39', '0000-00-00 00:00:00'),
(1317, 4, 257, 'Parent', NULL, 'no', '2017-04-06 10:48:39', '0000-00-00 00:00:00'),
(1318, 4, 444, 'Parent Guardian Detail', NULL, 'no', '2017-04-06 10:48:39', '0000-00-00 00:00:00'),
(1319, 4, 231, 'Pass', NULL, 'no', '2017-04-06 10:48:39', '0000-00-00 00:00:00'),
(1320, 4, 241, 'Passing Marks', NULL, 'no', '2017-04-06 10:48:39', '0000-00-00 00:00:00'),
(1321, 4, 167, 'Password', NULL, 'no', '2017-04-06 10:48:39', '0000-00-00 00:00:00'),
(1322, 4, 313, 'Payment', NULL, 'no', '2017-04-06 10:48:39', '0000-00-00 00:00:00'),
(1323, 4, 274, 'Payment Id', NULL, 'no', '2017-04-06 10:48:39', '0000-00-00 00:00:00'),
(1324, 4, 450, 'Payment Id Detail', NULL, 'no', '2017-04-06 10:48:39', '0000-00-00 00:00:00'),
(1325, 4, 418, 'Paypal Email', NULL, 'no', '2017-04-06 10:48:39', '0000-00-00 00:00:00'),
(1326, 4, 416, 'Paypal Password', NULL, 'no', '2017-04-06 10:48:39', '0000-00-00 00:00:00'),
(1327, 4, 414, 'Paypal Setting', NULL, 'no', '2017-04-06 10:48:39', '0000-00-00 00:00:00'),
(1328, 4, 417, 'Paypal Signature', NULL, 'no', '2017-04-06 10:48:39', '0000-00-00 00:00:00'),
(1329, 4, 415, 'Paypal Username', NULL, 'no', '2017-04-06 10:48:39', '0000-00-00 00:00:00'),
(1330, 4, 605, 'PDF', NULL, 'no', '2017-04-10 08:55:16', '0000-00-00 00:00:00'),
(1331, 4, 147, 'Percent', NULL, 'no', '2017-04-06 10:48:39', '0000-00-00 00:00:00'),
(1332, 4, 363, 'Percent From', NULL, 'no', '2017-04-06 10:48:39', '0000-00-00 00:00:00'),
(1333, 4, 149, 'Percent To', NULL, 'no', '2017-04-06 10:48:39', '0000-00-00 00:00:00'),
(1334, 4, 362, 'Percent Upto', NULL, 'no', '2017-04-06 10:48:39', '0000-00-00 00:00:00'),
(1335, 4, 580, 'Percentage', NULL, 'no', '2017-04-06 10:48:39', '0000-00-00 00:00:00'),
(1336, 4, 18, 'Permanent Address', NULL, 'no', '2017-04-06 10:48:39', '0000-00-00 00:00:00'),
(1337, 4, 73, 'Phone', NULL, 'no', '2017-04-06 10:48:39', '0000-00-00 00:00:00'),
(1339, 4, 463, 'Post New Message', NULL, 'no', '2017-04-06 10:48:39', '0000-00-00 00:00:00'),
(1340, 4, 193, 'Post Date', NULL, 'no', '2017-04-10 08:55:57', '0000-00-00 00:00:00'),
(1341, 4, 542, 'Practical', NULL, 'no', '2017-04-06 10:48:39', '0000-00-00 00:00:00'),
(1342, 4, 543, 'Present', NULL, 'no', '2017-04-06 10:48:39', '0000-00-00 00:00:00'),
(1343, 4, 267, 'Previous School Details', NULL, 'no', '2017-04-06 10:48:39', '0000-00-00 00:00:00'),
(1344, 4, 400, 'Print', NULL, 'no', '2017-04-06 10:48:39', '0000-00-00 00:00:00'),
(1345, 4, 329, 'Print Selected', NULL, 'no', '2017-04-06 10:48:39', '0000-00-00 00:00:00'),
(1346, 4, 297, 'Profile', NULL, 'no', '2017-04-06 10:48:39', '0000-00-00 00:00:00'),
(1347, 4, 245, 'Promote', NULL, 'no', '2017-04-06 10:48:39', '0000-00-00 00:00:00'),
(1348, 4, 440, 'Promote In Session', NULL, 'no', '2017-04-06 10:48:39', '0000-00-00 00:00:00'),
(1349, 4, 552, 'Promote Students', NULL, 'no', '2017-04-06 10:48:39', '0000-00-00 00:00:00'),
(1350, 4, 441, 'Promote Students In Next Session', NULL, 'no', '2017-04-06 10:48:39', '0000-00-00 00:00:00'),
(1351, 4, 286, 'Publish Date', NULL, 'no', '2017-04-06 10:48:39', '0000-00-00 00:00:00'),
(1352, 4, 255, 'Publish On', NULL, 'no', '2017-04-06 10:48:39', '0000-00-00 00:00:00'),
(1353, 4, 189, 'Publisher', NULL, 'no', '2017-04-06 10:48:39', '0000-00-00 00:00:00'),
(1354, 4, 191, 'Qty', NULL, 'no', '2017-04-06 10:48:39', '0000-00-00 00:00:00'),
(1355, 4, 548, 'Quick Links', NULL, 'no', '2017-04-06 10:48:39', '0000-00-00 00:00:00'),
(1356, 4, 218, 'Rack Number', NULL, 'no', '2017-05-20 02:42:23', '0000-00-00 00:00:00'),
(1357, 4, 104, 'Receipt Number', NULL, 'no', '2017-05-20 02:42:19', '0000-00-00 00:00:00'),
(1358, 4, 538, 'Registered Phone Number', NULL, 'no', '2017-04-06 10:48:39', '0000-00-00 00:00:00'),
(1359, 4, 15, 'Religion', NULL, 'no', '2017-04-06 10:48:39', '0000-00-00 00:00:00'),
(1360, 4, 82, 'Report', NULL, 'no', '2017-04-06 10:48:39', '0000-00-00 00:00:00'),
(1361, 4, 525, 'Report Card', NULL, 'no', '2017-04-06 10:48:39', '0000-00-00 00:00:00'),
(1362, 4, 216, 'Reports', NULL, 'no', '2017-04-06 10:48:39', '0000-00-00 00:00:00'),
(1363, 4, 85, 'Reset', NULL, 'no', '2017-04-06 10:48:39', '0000-00-00 00:00:00'),
(1364, 4, 427, 'Restore', NULL, 'no', '2017-04-06 10:48:39', '0000-00-00 00:00:00'),
(1365, 4, 230, 'Result', NULL, 'no', '2017-04-06 10:48:39', '0000-00-00 00:00:00'),
(1366, 4, 473, 'Revert', NULL, 'no', '2017-04-06 10:48:39', '0000-00-00 00:00:00'),
(1367, 4, 6, 'Roll Number', NULL, 'no', '2017-05-20 02:42:27', '0000-00-00 00:00:00'),
(1368, 4, 239, 'Room', NULL, 'no', '2017-04-06 10:48:39', '0000-00-00 00:00:00'),
(1369, 4, 242, 'Room Number', NULL, 'no', '2017-05-20 02:42:33', '0000-00-00 00:00:00'),
(1370, 4, 454, 'Room Number / Name', NULL, 'no', '2017-05-19 22:45:35', '0000-00-00 00:00:00'),
(1371, 4, 401, 'Room Type', NULL, 'no', '2017-04-06 10:48:39', '0000-00-00 00:00:00'),
(1372, 4, 403, 'Room Type List', NULL, 'no', '2017-04-06 10:48:39', '0000-00-00 00:00:00'),
(1373, 4, 503, 'Route', NULL, 'no', '2017-04-06 10:48:39', '0000-00-00 00:00:00'),
(1374, 4, 394, 'Route List', NULL, 'no', '2017-04-06 10:48:39', '0000-00-00 00:00:00'),
(1375, 4, 223, 'Route Title', NULL, 'no', '2017-04-06 10:48:39', '0000-00-00 00:00:00'),
(1376, 4, 569, 'Routes', NULL, 'no', '2017-04-06 10:48:39', '0000-00-00 00:00:00'),
(1377, 4, 185, 'RTE', NULL, 'no', '2017-04-10 08:57:10', '0000-00-00 00:00:00'),
(1378, 4, 66, 'Save', NULL, 'no', '2017-04-06 10:48:39', '0000-00-00 00:00:00'),
(1379, 4, 298, 'Save Attendance', NULL, 'no', '2017-04-06 10:48:39', '0000-00-00 00:00:00'),
(1380, 4, 607, 'Scheduled', NULL, 'no', '2017-04-06 10:48:39', '0000-00-00 00:00:00'),
(1381, 4, 151, 'School Code', NULL, 'no', '2017-04-06 10:48:39', '0000-00-00 00:00:00'),
(1383, 4, 69, 'School Logo', NULL, 'no', '2017-04-06 10:48:39', '0000-00-00 00:00:00'),
(1384, 4, 2, 'School Name', NULL, 'no', '2017-04-06 10:48:39', '0000-00-00 00:00:00'),
(1385, 4, 37, 'Search', NULL, 'no', '2017-04-06 10:48:39', '0000-00-00 00:00:00'),
(1386, 4, 497, 'Search By Keyword', NULL, 'no', '2017-04-06 10:48:39', '0000-00-00 00:00:00'),
(1387, 4, 588, 'Search By Name, Roll Number, Enroll Number, National Id, Local Id Etc..', NULL, 'no', '2017-05-20 02:42:47', '0000-00-00 00:00:00'),
(1388, 4, 556, 'Search Due Fees', NULL, 'no', '2017-04-06 10:48:39', '0000-00-00 00:00:00'),
(1389, 4, 559, 'Search Expense', NULL, 'no', '2017-04-06 10:48:39', '0000-00-00 00:00:00'),
(1390, 4, 555, 'Search Fees Payment', NULL, 'no', '2017-04-06 10:48:39', '0000-00-00 00:00:00'),
(1391, 4, 591, 'Search Student', NULL, 'no', '2017-04-06 10:48:39', '0000-00-00 00:00:00'),
(1392, 4, 336, 'Search Transaction', NULL, 'no', '2017-04-06 10:48:39', '0000-00-00 00:00:00'),
(1393, 4, 10, 'Section', NULL, 'no', '2017-04-06 10:48:39', '0000-00-00 00:00:00'),
(1394, 4, 56, 'Section List', NULL, 'no', '2017-04-06 10:48:39', '0000-00-00 00:00:00'),
(1395, 4, 451, 'Section Name', NULL, 'no', '2017-04-06 10:48:39', '0000-00-00 00:00:00'),
(1396, 4, 566, 'Sections', NULL, 'no', '2017-04-06 10:48:39', '0000-00-00 00:00:00'),
(1397, 4, 407, 'Select', NULL, 'no', '2017-04-06 10:48:39', '0000-00-00 00:00:00'),
(1398, 4, 84, 'Select Criteria', NULL, 'no', '2017-04-06 10:48:39', '0000-00-00 00:00:00'),
(1399, 4, 293, 'Select CSV File', NULL, 'no', '2017-04-10 08:58:35', '0000-00-00 00:00:00'),
(1400, 4, 31, 'Select Image', NULL, 'no', '2017-04-06 10:48:39', '0000-00-00 00:00:00'),
(1401, 4, 68, 'Select Logo', NULL, 'no', '2017-04-06 10:48:39', '0000-00-00 00:00:00'),
(1402, 4, 266, 'Send', NULL, 'no', '2017-04-06 10:48:39', '0000-00-00 00:00:00'),
(1403, 4, 572, 'Send Message', NULL, 'no', '2017-04-06 10:48:39', '0000-00-00 00:00:00'),
(1404, 4, 1, 'Session', NULL, 'no', '2017-04-06 10:48:39', '0000-00-00 00:00:00'),
(1405, 4, 52, 'Session List', NULL, 'no', '2017-04-06 10:48:39', '0000-00-00 00:00:00'),
(1406, 4, 576, 'Session Setting', NULL, 'no', '2017-04-06 10:48:39', '0000-00-00 00:00:00'),
(1407, 4, 410, 'Session Start Month', NULL, 'no', '2017-04-06 10:48:39', '0000-00-00 00:00:00'),
(1408, 4, 517, 'Show', NULL, 'no', '2017-04-06 10:48:39', '0000-00-00 00:00:00'),
(1409, 4, 305, 'Sibling', NULL, 'no', '2017-04-06 10:48:39', '0000-00-00 00:00:00'),
(1411, 4, 152, 'Sign In', NULL, 'no', '2017-04-06 10:48:39', '0000-00-00 00:00:00'),
(1412, 4, 477, 'Smart School', NULL, 'no', '2017-04-06 10:48:39', '0000-00-00 00:00:00'),
(1413, 4, 76, 'SMS Configuration', NULL, 'no', '2017-04-10 08:59:11', '0000-00-00 00:00:00'),
(1414, 4, 77, 'SMS Gateway URL', NULL, 'no', '2017-05-19 22:47:13', '0000-00-00 00:00:00'),
(1415, 4, 476, 'SMS Setting', NULL, 'no', '2017-04-10 08:59:22', '0000-00-00 00:00:00'),
(1416, 4, 237, 'Start Time', NULL, 'no', '2017-04-06 10:48:39', '0000-00-00 00:00:00'),
(1417, 4, 78, 'Status', NULL, 'no', '2017-04-06 10:48:39', '0000-00-00 00:00:00'),
(1418, 4, 61, 'Student', NULL, 'no', '2017-04-06 10:48:39', '0000-00-00 00:00:00'),
(1419, 4, 550, 'Student Admission', NULL, 'no', '2017-04-06 10:48:39', '0000-00-00 00:00:00'),
(1420, 4, 560, 'Student Attendance', NULL, 'no', '2017-04-06 10:48:39', '0000-00-00 00:00:00'),
(1421, 4, 551, 'Student Categories', NULL, 'no', '2017-04-06 10:48:39', '0000-00-00 00:00:00'),
(1422, 4, 325, 'Student Detail', NULL, 'no', '2017-04-06 10:48:39', '0000-00-00 00:00:00'),
(1423, 4, 549, 'Student Details', NULL, 'no', '2017-04-06 10:48:39', '0000-00-00 00:00:00'),
(1424, 4, 322, 'Student Fees Report', NULL, 'no', '2017-04-06 10:48:39', '0000-00-00 00:00:00'),
(1425, 4, 207, 'Student Information', NULL, 'no', '2017-04-06 10:48:39', '0000-00-00 00:00:00'),
(1426, 4, 592, 'Students List', NULL, 'no', '2017-04-10 08:59:55', '0000-00-00 00:00:00'),
(1427, 4, 183, 'Student Name', NULL, 'no', '2017-04-06 10:48:39', '0000-00-00 00:00:00'),
(1428, 4, 573, 'Student Report', NULL, 'no', '2017-04-06 10:48:39', '0000-00-00 00:00:00'),
(1429, 4, 434, 'Students', NULL, 'no', '2017-04-06 10:48:39', '0000-00-00 00:00:00'),
(1430, 4, 568, 'Study Material', NULL, 'no', '2017-04-06 10:48:39', '0000-00-00 00:00:00'),
(1431, 4, 388, 'Study Material List', NULL, 'no', '2017-04-06 10:48:39', '0000-00-00 00:00:00'),
(1432, 4, 217, 'Subject', NULL, 'no', '2017-04-06 10:48:39', '0000-00-00 00:00:00'),
(1433, 4, 144, 'Subject Code', NULL, 'no', '2017-04-06 10:48:39', '0000-00-00 00:00:00'),
(1434, 4, 261, 'Subject List', NULL, 'no', '2017-04-06 10:48:39', '0000-00-00 00:00:00'),
(1435, 4, 143, 'Subject Name', NULL, 'no', '2017-04-06 10:48:39', '0000-00-00 00:00:00'),
(1436, 4, 521, 'Subject Type', NULL, 'no', '2017-04-06 10:48:39', '0000-00-00 00:00:00'),
(1437, 4, 483, 'Subjects', NULL, 'no', '2017-04-06 10:48:39', '0000-00-00 00:00:00'),
(1438, 4, 359, 'Submit', NULL, 'no', '2017-04-06 10:48:39', '0000-00-00 00:00:00'),
(1439, 4, 596, 'Syllabus', NULL, 'no', '2017-04-06 10:48:39', '0000-00-00 00:00:00'),
(1440, 4, 389, 'Syllabus List', NULL, 'no', '2017-04-06 10:48:39', '0000-00-00 00:00:00'),
(1441, 4, 215, 'System Settings', NULL, 'no', '2017-04-06 10:48:39', '0000-00-00 00:00:00'),
(1442, 4, 258, 'Teacher', NULL, 'no', '2018-08-13 10:33:13', '0000-00-00 00:00:00'),
(1443, 4, 260, 'Teacher Detail', NULL, 'no', '2017-04-06 10:48:39', '0000-00-00 00:00:00'),
(1444, 4, 251, 'Teacher List', NULL, 'no', '2017-04-06 10:48:39', '0000-00-00 00:00:00'),
(1445, 4, 166, 'Teacher Name', NULL, 'no', '2017-04-06 10:48:39', '0000-00-00 00:00:00'),
(1446, 4, 187, 'Teacher Photo', NULL, 'no', '2017-04-06 10:48:39', '0000-00-00 00:00:00'),
(1447, 4, 469, 'Teacher Subject', NULL, 'no', '2017-04-06 10:48:39', '0000-00-00 00:00:00'),
(1448, 4, 433, 'Teachers', NULL, 'no', '2017-04-06 10:48:39', '0000-00-00 00:00:00'),
(1449, 4, 541, 'Theory', NULL, 'no', '2017-04-06 10:48:39', '0000-00-00 00:00:00'),
(1450, 4, 264, 'Title', NULL, 'no', '2017-04-06 10:48:39', '0000-00-00 00:00:00'),
(1451, 4, 610, 'To', NULL, 'no', '2017-04-06 10:48:39', '0000-00-00 00:00:00'),
(1452, 4, 90, 'Total', NULL, 'no', '2017-04-06 10:48:39', '0000-00-00 00:00:00'),
(1453, 4, 182, 'Total Balance', NULL, 'no', '2017-04-06 10:48:39', '0000-00-00 00:00:00'),
(1454, 4, 323, 'Total Fees', NULL, 'no', '2017-04-06 10:48:39', '0000-00-00 00:00:00'),
(1455, 4, 301, 'Total Marks', NULL, 'no', '2017-04-06 10:48:39', '0000-00-00 00:00:00'),
(1456, 4, 180, 'Total Paid Fees', NULL, 'no', '2017-04-06 10:48:39', '0000-00-00 00:00:00'),
(1457, 4, 332, 'Total Transport Fees', NULL, 'no', '2017-04-06 10:48:39', '0000-00-00 00:00:00'),
(1458, 4, 609, 'Transaction From', NULL, 'no', '2017-04-06 10:48:39', '0000-00-00 00:00:00'),
(1459, 4, 574, 'Transaction Report', NULL, 'no', '2017-04-06 10:48:39', '0000-00-00 00:00:00'),
(1460, 4, 222, 'Transport', NULL, 'no', '2017-04-06 10:48:39', '0000-00-00 00:00:00'),
(1461, 4, 586, 'Transport - Routes', NULL, 'no', '2017-04-06 10:48:39', '0000-00-00 00:00:00'),
(1462, 4, 155, 'Transport Fees', NULL, 'no', '2017-04-06 10:48:39', '0000-00-00 00:00:00'),
(1463, 4, 318, 'Transport Fees Details', NULL, 'no', '2017-04-06 10:48:39', '0000-00-00 00:00:00'),
(1464, 4, 480, 'Transport Routes', NULL, 'no', '2017-04-06 10:48:39', '0000-00-00 00:00:00'),
(1465, 4, 536, 'Twilio Account SID', NULL, 'no', '2017-04-10 09:01:04', '0000-00-00 00:00:00'),
(1466, 4, 534, 'Twilio SMS Gateway', NULL, 'no', '2017-04-10 09:01:10', '0000-00-00 00:00:00'),
(1467, 4, 88, 'Type', NULL, 'no', '2017-04-06 10:48:39', '0000-00-00 00:00:00'),
(1468, 4, 599, 'Unpaid', NULL, 'no', '2017-04-06 10:48:39', '0000-00-00 00:00:00'),
(1469, 4, 490, 'Upload', NULL, 'no', '2017-04-06 10:48:39', '0000-00-00 00:00:00'),
(1470, 4, 378, 'Upload Content', NULL, 'no', '2017-04-06 10:48:39', '0000-00-00 00:00:00'),
(1471, 4, 205, 'Upload Date', NULL, 'no', '2017-04-06 10:48:39', '0000-00-00 00:00:00'),
(1472, 4, 268, 'Upload Documents', NULL, 'no', '2017-04-06 10:48:39', '0000-00-00 00:00:00'),
(1473, 4, 424, 'Upload From Local Directory', NULL, 'no', '2017-04-06 10:48:39', '0000-00-00 00:00:00'),
(1474, 4, 488, 'URL', NULL, 'no', '2017-04-10 09:01:27', '0000-00-00 00:00:00'),
(1475, 4, 478, 'User Login', NULL, 'no', '2017-04-06 10:48:39', '0000-00-00 00:00:00'),
(1476, 4, 74, 'User Name', NULL, 'no', '2017-04-06 10:48:39', '0000-00-00 00:00:00'),
(1477, 4, 589, 'User Type', NULL, 'no', '2017-04-06 10:48:39', '0000-00-00 00:00:00'),
(1478, 4, 539, 'Username', NULL, 'no', '2017-04-06 10:48:39', '0000-00-00 00:00:00'),
(1479, 4, 506, 'Vehicle', NULL, 'no', '2017-04-06 10:48:39', '0000-00-00 00:00:00'),
(1480, 4, 507, 'Vehicle List', NULL, 'no', '2017-04-06 10:48:39', '0000-00-00 00:00:00'),
(1481, 4, 513, 'Vehicle Model', NULL, 'no', '2017-04-06 10:48:39', '0000-00-00 00:00:00'),
(1482, 4, 512, 'Vehicle Number', NULL, 'no', '2017-05-20 02:42:56', '0000-00-00 00:00:00'),
(1483, 4, 502, 'Vehicle Route List', NULL, 'no', '2017-04-06 10:48:39', '0000-00-00 00:00:00'),
(1484, 4, 504, 'Vehicle Routes', NULL, 'no', '2017-04-06 10:48:39', '0000-00-00 00:00:00'),
(1485, 4, 570, 'Vehicles', NULL, 'no', '2017-04-06 10:48:39', '0000-00-00 00:00:00'),
(1486, 4, 474, 'View', NULL, 'no', '2017-04-06 10:48:39', '0000-00-00 00:00:00'),
(1487, 4, 522, 'View Detail', NULL, 'no', '2017-04-06 10:48:39', '0000-00-00 00:00:00'),
(1488, 4, 604, 'View Schedule', NULL, 'no', '2017-04-06 10:48:39', '0000-00-00 00:00:00'),
(1489, 4, 356, 'View Status', NULL, 'no', '2017-04-06 10:48:39', '0000-00-00 00:00:00'),
(1490, 4, 280, 'Visibility', NULL, 'no', '2017-04-06 10:48:39', '0000-00-00 00:00:00'),
(1491, 4, 279, 'Visible To All', NULL, 'no', '2017-04-06 10:48:39', '0000-00-00 00:00:00'),
(1492, 4, 515, 'Year Made', NULL, 'no', '2017-04-06 10:48:39', '0000-00-00 00:00:00'),
(1493, 4, 545, 'Yes', NULL, 'no', '2017-04-06 10:48:39', '0000-00-00 00:00:00'),
(1494, 4, 350, 'You Can Edit Record', NULL, 'no', '2017-04-06 10:48:39', '0000-00-00 00:00:00'),
(36671, 4, 642, 'Accountant List', NULL, 'no', '2017-05-19 22:33:47', '0000-00-00 00:00:00'),
(36672, 4, 643, 'Accountant Photo', NULL, 'no', '2017-05-19 22:33:56', '0000-00-00 00:00:00'),
(36673, 4, 631, 'Accountants', NULL, 'no', '2017-05-19 22:34:03', '0000-00-00 00:00:00'),
(36674, 4, 641, 'Add Accountant', NULL, 'no', '2017-05-19 22:34:14', '0000-00-00 00:00:00'),
(36675, 4, 633, 'Add Librarian', NULL, 'no', '2017-05-19 22:34:40', '0000-00-00 00:00:00'),
(36677, 4, 649, 'Add Student', NULL, 'no', '2017-05-19 22:35:41', '0000-00-00 00:00:00'),
(36678, 4, 624, 'Book', NULL, 'no', '2017-05-19 22:36:04', '0000-00-00 00:00:00'),
(36679, 4, 629, 'Book Issued', NULL, 'no', '2017-05-19 22:36:13', '0000-00-00 00:00:00'),
(36680, 4, 645, 'Book Number', NULL, 'no', '2017-05-19 22:36:30', '0000-00-00 00:00:00'),
(36681, 4, 650, 'Books Issue Retun', NULL, 'no', '2017-05-19 22:36:49', '0000-00-00 00:00:00'),
(36682, 4, 640, 'Change Username', NULL, 'no', '2017-05-19 22:37:05', '0000-00-00 00:00:00'),
(36683, 4, 639, 'Confirm Username', NULL, 'no', '2017-05-19 22:37:39', '0000-00-00 00:00:00'),
(36684, 4, 637, 'Current Username', NULL, 'no', '2017-05-19 22:38:06', '0000-00-00 00:00:00'),
(36685, 4, 644, 'Edit Accountant', NULL, 'no', '2017-05-19 22:38:44', '0000-00-00 00:00:00'),
(36686, 4, 636, 'Edit Librarian', NULL, 'no', '2017-05-19 22:39:30', '0000-00-00 00:00:00'),
(36687, 4, 647, 'ISBN Number', NULL, 'no', '2017-05-19 22:40:25', '0000-00-00 00:00:00'),
(36688, 4, 623, 'Issue', NULL, 'no', '2017-05-19 22:40:30', '0000-00-00 00:00:00'),
(36689, 4, 621, 'Issue Book', NULL, 'no', '2017-05-19 22:40:40', '0000-00-00 00:00:00'),
(36690, 4, 648, 'Issue Return', NULL, 'no', '2017-05-19 23:35:21', '0000-00-00 00:00:00'),
(36691, 4, 635, 'Librarian List', NULL, 'no', '2017-05-19 22:41:31', '0000-00-00 00:00:00'),
(36692, 4, 634, 'Librarian Photo', NULL, 'no', '2017-05-19 22:41:38', '0000-00-00 00:00:00'),
(36696, 4, 626, 'Library Card Number', NULL, 'no', '2017-05-19 22:42:23', '0000-00-00 00:00:00'),
(36697, 4, 628, 'Member Id', NULL, 'no', '2017-05-19 22:42:53', '0000-00-00 00:00:00'),
(36698, 4, 622, 'Member Type', NULL, 'no', '2017-05-19 22:43:01', '0000-00-00 00:00:00'),
(36699, 4, 625, 'Members', NULL, 'no', '2017-05-19 22:43:06', '0000-00-00 00:00:00'),
(36700, 4, 638, 'New Username', NULL, 'no', '2017-05-19 22:43:23', '0000-00-00 00:00:00'),
(36701, 4, 627, 'Return Date', NULL, 'no', '2017-05-19 22:45:06', '0000-00-00 00:00:00'),
(36702, 4, 630, 'Timezone', NULL, 'no', '2017-05-19 22:47:48', '0000-00-00 00:00:00'),
(36703, 4, 646, 'Users', NULL, 'no', '2017-05-19 22:48:21', '0000-00-00 00:00:00'),
(73979, 4, 653, 'Surrender Membership', NULL, 'no', '2017-05-29 12:56:46', '0000-00-00 00:00:00'),
(73980, 4, 651, 'Members List', NULL, 'no', '2017-05-29 12:57:05', '0000-00-00 00:00:00'),
(73981, 4, 651, 'Members List', NULL, 'no', '2017-05-29 12:57:18', '0000-00-00 00:00:00'),
(73982, 4, 652, 'Issue Date', NULL, 'no', '2017-05-29 12:57:35', '0000-00-00 00:00:00'),
(73983, 4, 686, 'Add Admin User', NULL, 'no', '2017-08-04 13:21:48', '0000-00-00 00:00:00'),
(73984, 4, 663, 'Add Fees Discount', NULL, 'no', '2017-08-04 13:22:03', '0000-00-00 00:00:00'),
(73985, 4, 663, 'Add Fees Discount', NULL, 'no', '2017-08-04 13:22:05', '0000-00-00 00:00:00'),
(73986, 4, 655, 'Add Fees Group', NULL, 'no', '2017-08-04 13:22:13', '0000-00-00 00:00:00'),
(73987, 4, 676, 'Add Member', NULL, 'no', '2017-08-04 13:22:26', '0000-00-00 00:00:00'),
(73988, 4, 688, 'Admin Email', NULL, 'no', '2017-08-04 13:22:39', '0000-00-00 00:00:00'),
(73989, 4, 687, 'Admin Name', NULL, 'no', '2017-08-04 13:22:47', '0000-00-00 00:00:00'),
(73990, 4, 689, 'Admin Password', NULL, 'no', '2017-08-04 13:22:57', '0000-00-00 00:00:00'),
(73991, 4, 685, 'Admin Users', NULL, 'no', '2017-08-04 13:23:04', '0000-00-00 00:00:00'),
(73992, 4, 664, 'All', NULL, 'no', '2017-08-04 13:23:10', '0000-00-00 00:00:00'),
(73993, 4, 667, 'Applied', NULL, 'no', '2017-08-04 13:23:20', '0000-00-00 00:00:00'),
(73994, 4, 674, 'Apply Discount', NULL, 'no', '2017-08-04 13:23:30', '0000-00-00 00:00:00'),
(73995, 4, 670, 'Assign / View', NULL, 'no', '2017-08-04 13:23:46', '0000-00-00 00:00:00'),
(73996, 4, 665, 'Assign Fees Discount', NULL, 'no', '2017-08-04 13:23:56', '0000-00-00 00:00:00'),
(73997, 4, 691, 'Assign Fees Group', NULL, 'no', '2017-08-04 13:24:20', '0000-00-00 00:00:00'),
(73998, 4, 684, 'Assigned', NULL, 'no', '2017-08-04 13:24:30', '0000-00-00 00:00:00'),
(73999, 4, 669, 'Confirmation', NULL, 'no', '2017-08-04 13:24:42', '0000-00-00 00:00:00'),
(74000, 4, 669, 'Confirmation', NULL, 'no', '2017-08-04 13:24:53', '0000-00-00 00:00:00'),
(74001, 4, 661, 'Discount Code', NULL, 'no', '2017-08-04 13:25:04', '0000-00-00 00:00:00'),
(74002, 4, 675, 'Discount of', NULL, 'no', '2017-08-04 13:25:19', '0000-00-00 00:00:00'),
(74003, 4, 657, 'Due Date', NULL, 'no', '2017-08-04 13:25:27', '0000-00-00 00:00:00'),
(74004, 4, 660, 'Edit Fees Discount', NULL, 'no', '2017-08-04 13:25:40', '0000-00-00 00:00:00'),
(74005, 4, 671, 'Edit Fees Group', NULL, 'no', '2017-08-04 13:25:48', '0000-00-00 00:00:00'),
(74006, 4, 673, 'Edit Fees Master', NULL, 'no', '2017-08-04 13:25:57', '0000-00-00 00:00:00'),
(74007, 4, 672, 'Edit Fees Type', NULL, 'no', '2017-08-04 13:26:09', '0000-00-00 00:00:00'),
(74008, 4, 678, 'Email Engine', NULL, 'no', '2017-08-04 13:26:20', '0000-00-00 00:00:00'),
(74009, 4, 677, 'Email Setting', NULL, 'no', '2017-08-04 13:26:32', '0000-00-00 00:00:00'),
(74010, 4, 658, 'Fees Code', NULL, 'no', '2017-08-04 13:26:42', '0000-00-00 00:00:00'),
(74011, 4, 659, 'Fees Discount', NULL, 'no', '2017-08-04 13:26:58', '0000-00-00 00:00:00'),
(74012, 4, 662, 'Fees Discount List', NULL, 'no', '2017-08-04 13:27:09', '0000-00-00 00:00:00'),
(74013, 4, 654, 'Fees Group', NULL, 'no', '2017-08-04 13:27:17', '0000-00-00 00:00:00'),
(74014, 4, 656, 'Fees Group List', NULL, 'no', '2017-08-04 13:27:25', '0000-00-00 00:00:00'),
(74015, 4, 690, 'Forgot Password', NULL, 'no', '2017-08-04 13:27:36', '0000-00-00 00:00:00'),
(74016, 4, 666, 'Partial', NULL, 'no', '2017-08-04 13:27:49', '0000-00-00 00:00:00'),
(74017, 4, 680, 'SMTP Password', NULL, 'no', '2017-08-04 13:28:04', '0000-00-00 00:00:00'),
(74018, 4, 682, 'SMTP Port', NULL, 'no', '2017-08-04 13:28:12', '0000-00-00 00:00:00'),
(74019, 4, 683, 'SMTP Security', NULL, 'no', '2017-08-04 13:28:27', '0000-00-00 00:00:00'),
(74020, 4, 681, 'SMTP Server', NULL, 'no', '2017-08-04 13:28:35', '0000-00-00 00:00:00'),
(74021, 4, 679, 'SMTP Username', NULL, 'no', '2017-08-04 13:28:43', '0000-00-00 00:00:00');
INSERT INTO `lang_pharses` (`id`, `lang_id`, `key_id`, `pharses`, `text`, `is_active`, `created_at`, `updated_at`) VALUES
(74022, 4, 668, 'Student Fees', NULL, 'no', '2017-08-04 13:28:51', '0000-00-00 00:00:00'),
(74023, 4, 692, 'Accountant', NULL, 'no', '2017-10-31 09:10:23', '0000-00-00 00:00:00'),
(74024, 4, 693, 'Add Income', NULL, 'no', '2017-10-31 09:10:40', '0000-00-00 00:00:00'),
(74025, 4, 732, 'Add Item Supplier', NULL, 'no', '2017-12-14 11:45:30', '0000-00-00 00:00:00'),
(74026, 4, 731, 'Add Item Stock', NULL, 'no', '2017-12-14 11:45:20', '0000-00-00 00:00:00'),
(74027, 4, 733, 'Available Quantity', NULL, 'no', '2017-12-14 11:49:22', '0000-00-00 00:00:00'),
(74028, 4, 694, 'Add Item Store', NULL, 'no', '2017-10-31 09:44:42', '0000-00-00 00:00:00'),
(74029, 4, 734, 'Contact Person Phone', NULL, 'no', '2017-10-31 09:44:52', '0000-00-00 00:00:00'),
(74030, 4, 695, 'Admin', NULL, 'no', '2017-10-31 09:45:16', '0000-00-00 00:00:00'),
(74031, 4, 696, 'Attach Docement', NULL, 'no', '2017-10-31 09:45:45', '0000-00-00 00:00:00'),
(74032, 4, 696, 'Attach Document', NULL, 'no', '2017-10-31 09:45:52', '0000-00-00 00:00:00'),
(74033, 4, 696, 'Attach Document', NULL, 'no', '2017-10-31 09:46:10', '0000-00-00 00:00:00'),
(74034, 4, 750, 'Current Theme', NULL, 'no', '2017-12-14 11:52:34', '0000-00-00 00:00:00'),
(74035, 4, 735, 'Edit Item Supplier', NULL, 'no', '2017-12-14 11:53:52', '0000-00-00 00:00:00'),
(74036, 4, 748, 'Send Through', NULL, 'no', '2017-12-14 12:33:14', '0000-00-00 00:00:00'),
(74037, 4, 698, 'Contact Person Email', NULL, 'no', '2017-10-31 09:47:12', '0000-00-00 00:00:00'),
(74038, 4, 699, 'Contact Person Name', NULL, 'no', '2017-10-31 09:47:26', '0000-00-00 00:00:00'),
(74039, 4, 736, 'Edit Item', NULL, 'no', '2017-12-14 11:53:35', '0000-00-00 00:00:00'),
(74040, 4, 751, 'Guardian Emal', NULL, 'no', '2017-12-14 11:59:33', '0000-00-00 00:00:00'),
(74041, 4, 700, 'Edit Income Head', NULL, 'no', '2017-10-31 09:48:04', '0000-00-00 00:00:00'),
(74042, 4, 738, 'Expense Details', NULL, 'no', '2017-12-14 11:57:52', '0000-00-00 00:00:00'),
(74043, 4, 702, 'Edit Item Category', NULL, 'no', '2017-10-31 09:48:20', '0000-00-00 00:00:00'),
(74044, 4, 701, 'Edit Item Store', NULL, 'no', '2017-10-31 09:48:29', '0000-00-00 00:00:00'),
(74045, 4, 737, 'Edit Income', NULL, 'no', '2017-12-14 11:54:17', '0000-00-00 00:00:00'),
(74046, 4, 703, 'Group', NULL, 'no', '2017-12-14 11:59:19', '0000-00-00 00:00:00'),
(74047, 4, 704, 'Guardians', NULL, 'no', '2017-12-14 11:59:53', '0000-00-00 00:00:00'),
(74048, 4, 752, 'Hash Key', NULL, 'no', '2017-12-14 12:00:04', '0000-00-00 00:00:00'),
(74049, 4, 705, 'Income Head List', NULL, 'no', '2017-12-14 12:01:36', '0000-00-00 00:00:00'),
(74050, 4, 753, 'Income List', NULL, 'no', '2017-12-14 12:02:19', '0000-00-00 00:00:00'),
(74051, 4, 708, 'Individual', NULL, 'no', '2017-12-14 12:03:41', '0000-00-00 00:00:00'),
(74052, 4, 740, 'Income Id', NULL, 'no', '2017-12-14 12:02:05', '0000-00-00 00:00:00'),
(74053, 4, 707, 'Income', NULL, 'no', '2017-12-14 12:01:27', '0000-00-00 00:00:00'),
(74054, 4, 706, 'Income Head', NULL, 'no', '2017-12-14 12:01:21', '0000-00-00 00:00:00'),
(74055, 4, 741, 'Income Result', NULL, 'no', '2017-12-14 12:02:50', '0000-00-00 00:00:00'),
(74056, 4, 754, 'Income Result', NULL, 'no', '2017-12-14 12:03:03', '0000-00-00 00:00:00'),
(74057, 4, 742, 'Issued By', NULL, 'no', '2017-12-14 12:15:24', '0000-00-00 00:00:00'),
(74058, 4, 755, 'Income Search', NULL, 'no', '2017-12-14 12:03:30', '0000-00-00 00:00:00'),
(74059, 4, 756, 'MSG91', NULL, 'no', '2017-12-14 12:25:55', '0000-00-00 00:00:00'),
(74060, 4, 709, 'Inventory', NULL, 'no', '2017-12-14 12:49:15', '0000-00-00 00:00:00'),
(74061, 4, 710, 'Issue By', NULL, 'no', '2017-12-14 12:04:36', '0000-00-00 00:00:00'),
(74062, 4, 765, 'Payment Methods', NULL, 'no', '2017-12-14 12:28:01', '0000-00-00 00:00:00'),
(74063, 4, 711, 'Issue To', NULL, 'no', '2017-12-14 12:04:55', '0000-00-00 00:00:00'),
(74064, 4, 713, 'Item Store', NULL, 'no', '2017-12-14 12:20:06', '0000-00-00 00:00:00'),
(74065, 4, 712, 'Issue Item', NULL, 'no', '2017-12-14 12:04:47', '0000-00-00 00:00:00'),
(74066, 4, 743, 'Item Category List', NULL, 'no', '2017-12-14 12:19:16', '0000-00-00 00:00:00'),
(74067, 4, 716, 'Item Stock List', NULL, 'no', '2017-12-14 12:19:00', '0000-00-00 00:00:00'),
(74068, 4, 715, 'Item', NULL, 'no', '2017-12-14 12:15:48', '0000-00-00 00:00:00'),
(74069, 4, 744, 'Item List', NULL, 'no', '2017-12-14 12:19:49', '0000-00-00 00:00:00'),
(74070, 4, 745, 'Item Store List', NULL, 'no', '2017-12-14 12:20:24', '0000-00-00 00:00:00'),
(74071, 4, 717, 'Item Stock Code', NULL, 'no', '2017-12-14 12:20:13', '0000-00-00 00:00:00'),
(74072, 4, 714, 'Item Category', NULL, 'no', '2017-12-14 12:19:39', '0000-00-00 00:00:00'),
(74073, 4, 718, 'Item Store Name', NULL, 'no', '2017-12-14 12:20:30', '0000-00-00 00:00:00'),
(74074, 4, 746, 'Item Supplier', NULL, 'no', '2017-12-14 12:20:41', '0000-00-00 00:00:00'),
(74075, 4, 719, 'Item Supplier List', NULL, 'no', '2017-12-14 12:21:00', '0000-00-00 00:00:00'),
(74076, 4, 747, 'Contact Person', NULL, 'no', '2017-12-14 11:50:53', '0000-00-00 00:00:00'),
(74077, 4, 720, 'Librarian', NULL, 'no', '2017-12-14 12:21:17', '0000-00-00 00:00:00'),
(74078, 4, 721, 'Quantity', NULL, 'no', '2017-12-14 12:29:46', '0000-00-00 00:00:00'),
(74079, 4, 632, 'Librarians', NULL, 'no', '2017-10-31 09:55:12', '0000-00-00 00:00:00'),
(74080, 4, 757, 'Notification Setting', NULL, 'no', '2017-12-14 12:27:15', '0000-00-00 00:00:00'),
(74081, 4, 757, 'Notification Setting', NULL, 'no', '2017-12-14 12:27:29', '0000-00-00 00:00:00'),
(74082, 4, 723, 'Return', NULL, 'no', '2017-12-14 12:31:11', '0000-00-00 00:00:00'),
(74083, 4, 724, 'Returned', NULL, 'no', '2017-12-14 12:31:23', '0000-00-00 00:00:00'),
(74084, 4, 725, 'Search Income', NULL, 'no', '2017-12-14 12:32:24', '0000-00-00 00:00:00'),
(74085, 4, 764, 'Email / SMS Log', NULL, 'no', '2017-12-14 11:56:52', '0000-00-00 00:00:00'),
(74086, 4, 763, 'Email / SMS', NULL, 'no', '2017-12-14 11:56:19', '0000-00-00 00:00:00'),
(74087, 4, 727, 'Store', NULL, 'no', '2017-12-14 12:34:11', '0000-00-00 00:00:00'),
(74088, 4, 749, 'Auth Key', NULL, 'no', '2017-12-14 11:48:27', '0000-00-00 00:00:00'),
(74089, 4, 759, 'SMS Country', NULL, 'no', '2017-12-14 12:33:50', '0000-00-00 00:00:00'),
(74090, 4, 728, 'Supplier', NULL, 'no', '2017-12-14 12:35:11', '0000-00-00 00:00:00'),
(74091, 4, 760, 'Test Local', NULL, 'no', '2017-12-14 12:35:44', '0000-00-00 00:00:00'),
(74092, 4, 730, 'Add Item', NULL, 'no', '2017-12-14 11:44:19', '0000-00-00 00:00:00'),
(74093, 4, 761, 'User Log', NULL, 'no', '2017-12-14 12:36:49', '0000-00-00 00:00:00'),
(74094, 4, 761, 'User Log', NULL, 'no', '2017-12-14 12:37:02', '0000-00-00 00:00:00'),
(74095, 4, 767, 'Stripe API Secret Key', NULL, 'no', '2017-12-14 12:34:28', '0000-00-00 00:00:00'),
(74096, 4, 762, 'Send Email / SMS', NULL, 'no', '2017-12-14 12:33:03', '0000-00-00 00:00:00'),
(74097, 4, 697, 'Confirm Return', NULL, 'no', '2017-10-31 10:01:22', '0000-00-00 00:00:00'),
(74098, 4, 739, 'Income Details', NULL, 'no', '2017-12-14 12:01:47', '0000-00-00 00:00:00'),
(74099, 4, 766, 'All Users', NULL, 'no', '2017-12-14 11:47:37', '0000-00-00 00:00:00'),
(74100, 4, 758, 'Sender ID', NULL, 'no', '2017-12-14 12:33:25', '0000-00-00 00:00:00'),
(74101, 4, 722, 'Reset Password', NULL, 'no', '2017-12-14 12:30:10', '0000-00-00 00:00:00'),
(74102, 4, 726, 'SMS', NULL, 'no', '2017-12-14 12:33:41', '0000-00-00 00:00:00'),
(74103, 4, 729, 'Add Item Category', NULL, 'no', '2017-12-14 11:44:42', '0000-00-00 00:00:00'),
(74104, 4, 768, 'Stripe Publishable Key', NULL, 'no', '2017-12-14 12:34:44', '0000-00-00 00:00:00'),
(74105, 4, 769, 'PayU Money Key', NULL, 'no', '2017-12-14 12:28:39', '0000-00-00 00:00:00'),
(74106, 4, 776, 'Absent Student', NULL, 'no', '2017-12-14 11:43:20', '0000-00-00 00:00:00'),
(74107, 4, 782, 'Click To Return', NULL, 'no', '2017-12-14 11:50:36', '0000-00-00 00:00:00'),
(74108, 4, 774, 'Exam Result', NULL, 'no', '2017-12-14 11:57:34', '0000-00-00 00:00:00'),
(74109, 4, 775, 'Fees Submission', NULL, 'no', '2017-12-14 11:58:38', '0000-00-00 00:00:00'),
(74110, 4, 779, 'IP Address', NULL, 'no', '2017-12-14 12:03:51', '0000-00-00 00:00:00'),
(74111, 4, 779, 'IP Address', NULL, 'no', '2017-12-14 12:04:16', '0000-00-00 00:00:00'),
(74112, 4, 777, 'Login Credential', NULL, 'no', '2017-12-14 12:21:47', '0000-00-00 00:00:00'),
(74113, 4, 780, 'Login Time', NULL, 'no', '2017-12-14 12:21:56', '0000-00-00 00:00:00'),
(74114, 4, 771, 'CCAvenue Merchant ID', NULL, 'no', '2017-12-14 12:54:55', '0000-00-00 00:00:00'),
(74115, 4, 770, 'PayU Money Salt', NULL, 'no', '2017-12-14 12:29:10', '0000-00-00 00:00:00'),
(74116, 4, 778, 'Role', NULL, 'no', '2017-12-14 12:31:40', '0000-00-00 00:00:00'),
(74117, 4, 773, 'Select Payment Gateway', NULL, 'no', '2017-12-14 12:32:49', '0000-00-00 00:00:00'),
(74118, 4, 781, 'User Agent', NULL, 'no', '2017-12-14 12:36:42', '0000-00-00 00:00:00'),
(74119, 4, 772, 'CCAvenue Working Key', NULL, 'no', '2017-12-14 12:55:13', '0000-00-00 00:00:00'),
(74120, 7, 258, 'teach', NULL, 'no', '2018-08-13 10:31:00', '0000-00-00 00:00:00'),
(74121, 7, 258, 'teach', NULL, 'no', '2018-08-13 10:31:02', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `libarary_members`
--

CREATE TABLE `libarary_members` (
  `id` int(11) UNSIGNED NOT NULL,
  `library_card_no` varchar(50) DEFAULT NULL,
  `member_type` varchar(50) DEFAULT NULL,
  `member_id` int(11) DEFAULT NULL,
  `is_active` varchar(10) NOT NULL DEFAULT 'no',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `libarary_members`
--

INSERT INTO `libarary_members` (`id`, `library_card_no`, `member_type`, `member_id`, `is_active`, `created_at`) VALUES
(1, '101', 'student', 1, 'no', '2018-01-10 08:56:06'),
(2, 'EMP-1001', 'teacher', 5, 'no', '2018-08-29 09:40:58'),
(3, 'EMP-1002', 'teacher', 6, 'no', '2018-08-29 09:41:08'),
(4, 'EMP-1003', 'teacher', 7, 'no', '2018-08-29 09:41:15'),
(5, 'EMP-1004', 'teacher', 8, 'no', '2018-08-29 09:41:22'),
(6, 'CSE-201', 'student', 12, 'no', '2018-08-29 09:42:41');

-- --------------------------------------------------------

--
-- Table structure for table `librarians`
--

CREATE TABLE `librarians` (
  `id` int(11) UNSIGNED NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `password` varchar(100) DEFAULT NULL,
  `address` text,
  `dob` date DEFAULT NULL,
  `designation` varchar(50) DEFAULT NULL,
  `sex` varchar(10) DEFAULT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `image` varchar(50) DEFAULT NULL,
  `is_active` varchar(10) NOT NULL DEFAULT 'no',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `librarians`
--

INSERT INTO `librarians` (`id`, `name`, `email`, `password`, `address`, `dob`, `designation`, `sex`, `phone`, `image`, `is_active`, `created_at`) VALUES
(2, 'Akhil Kumar', 'akhil@yahoo.com', NULL, 'Saharanpur', '1993-10-14', NULL, 'Male', '9171254865', 'uploads/librarian_images/2.png', 'no', '2018-08-29 09:40:17');

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE `login` (
  `id` int(11) NOT NULL,
  `uname` varchar(200) NOT NULL,
  `pass` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `login`
--

INSERT INTO `login` (`id`, `uname`, `pass`) VALUES
(1, 'ratan', '123456');

-- --------------------------------------------------------

--
-- Table structure for table `messages`
--

CREATE TABLE `messages` (
  `id` int(11) NOT NULL,
  `title` varchar(200) DEFAULT NULL,
  `message` text,
  `send_mail` varchar(10) DEFAULT '0',
  `send_sms` varchar(10) DEFAULT '0',
  `is_group` varchar(10) DEFAULT '0',
  `is_individual` varchar(10) DEFAULT '0',
  `is_class` int(10) NOT NULL DEFAULT '0',
  `group_list` text,
  `user_list` text,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `version` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`version`) VALUES
(124);

-- --------------------------------------------------------

--
-- Table structure for table `notification_setting`
--

CREATE TABLE `notification_setting` (
  `id` int(11) NOT NULL,
  `type` varchar(100) DEFAULT NULL,
  `is_mail` varchar(10) DEFAULT '0',
  `is_sms` varchar(10) DEFAULT '0',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `notification_setting`
--

INSERT INTO `notification_setting` (`id`, `type`, `is_mail`, `is_sms`, `created_at`) VALUES
(5, 'student_admission', '1', '0', '2017-12-09 17:28:44'),
(6, 'exam_result', '1', '0', '2017-12-09 17:28:45'),
(7, 'fee_submission', '1', '0', '2017-12-09 17:28:45'),
(8, 'absent_attendence', '1', '0', '2017-12-09 17:28:45'),
(9, 'login_credential', '1', '0', '2017-12-09 17:28:45');

-- --------------------------------------------------------

--
-- Table structure for table `payment_settings`
--

CREATE TABLE `payment_settings` (
  `id` int(11) NOT NULL,
  `payment_type` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `api_username` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `api_secret_key` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `salt` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `api_publishable_key` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `api_password` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `api_signature` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `api_email` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `paypal_demo` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `account_no` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `is_active` varchar(255) COLLATE utf8_unicode_ci DEFAULT 'no',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `read_notification`
--

CREATE TABLE `read_notification` (
  `id` int(11) NOT NULL,
  `student_id` int(11) DEFAULT NULL,
  `parent_id` int(10) NOT NULL,
  `notification_id` int(11) DEFAULT NULL,
  `is_active` varchar(255) COLLATE utf8_unicode_ci DEFAULT 'no',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `read_notification`
--

INSERT INTO `read_notification` (`id`, `student_id`, `parent_id`, `notification_id`, `is_active`, `created_at`, `updated_at`) VALUES
(1, NULL, 12, 2, 'no', '2018-08-30 08:06:12', '0000-00-00 00:00:00'),
(2, NULL, 12, 3, 'no', '2018-08-30 08:07:49', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `room_types`
--

CREATE TABLE `room_types` (
  `id` int(11) NOT NULL,
  `room_type` varchar(200) DEFAULT NULL,
  `description` text,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `room_types`
--

INSERT INTO `room_types` (`id`, `room_type`, `description`, `created_at`, `updated_at`) VALUES
(1, 'Normal', '', '2018-08-10 12:50:27', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `sch_settings`
--

CREATE TABLE `sch_settings` (
  `id` int(11) NOT NULL,
  `name` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `phone` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `address` text COLLATE utf8_unicode_ci,
  `lang_id` int(11) DEFAULT NULL,
  `dise_code` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `date_format` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `currency` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `currency_symbol` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `is_rtl` varchar(10) COLLATE utf8_unicode_ci DEFAULT 'disabled',
  `timezone` varchar(30) COLLATE utf8_unicode_ci DEFAULT 'UTC',
  `session_id` int(11) DEFAULT NULL,
  `start_month` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `image` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `theme` varchar(200) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'default.jpg',
  `is_active` varchar(255) COLLATE utf8_unicode_ci DEFAULT 'no',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `sch_settings`
--

INSERT INTO `sch_settings` (`id`, `name`, `email`, `phone`, `address`, `lang_id`, `dise_code`, `date_format`, `currency`, `currency_symbol`, `is_rtl`, `timezone`, `session_id`, `start_month`, `image`, `theme`, `is_active`, `created_at`, `updated_at`) VALUES
(1, 'Edu4Next', 'XXX', '000 000 0000', 'Delhi', 4, '000 000', 'm/d/Y', 'INR', 'Rs.', 'disabled', 'Asia/Kolkata', 11, '4', '1.png', 'red.jpg', 'no', '2018-08-16 11:59:27', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `sections`
--

CREATE TABLE `sections` (
  `id` int(11) NOT NULL,
  `section` varchar(60) COLLATE utf8_unicode_ci DEFAULT NULL,
  `is_active` varchar(255) COLLATE utf8_unicode_ci DEFAULT 'no',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `sections`
--

INSERT INTO `sections` (`id`, `section`, `is_active`, `created_at`, `updated_at`) VALUES
(1, 'A', 'no', '2018-09-08 07:56:01', '0000-00-00 00:00:00'),
(2, 'B', 'no', '2018-09-08 07:56:11', '0000-00-00 00:00:00'),
(3, 'AB', 'no', '2018-09-08 07:56:20', '0000-00-00 00:00:00'),
(4, 'C', 'no', '2018-08-29 08:45:26', '0000-00-00 00:00:00'),
(5, 'D', 'no', '2018-09-08 07:56:35', '0000-00-00 00:00:00'),
(6, 'E', 'no', '2018-09-08 07:56:46', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `send_notification`
--

CREATE TABLE `send_notification` (
  `id` int(11) NOT NULL,
  `title` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `publish_date` date DEFAULT NULL,
  `date` date DEFAULT NULL,
  `message` text COLLATE utf8_unicode_ci,
  `visible_student` varchar(10) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'no',
  `visible_teacher` varchar(10) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'no',
  `visible_parent` varchar(10) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'no',
  `created_by` varchar(60) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_id` int(11) DEFAULT NULL,
  `is_active` varchar(255) COLLATE utf8_unicode_ci DEFAULT 'no',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `send_notification`
--

INSERT INTO `send_notification` (`id`, `title`, `publish_date`, `date`, `message`, `visible_student`, `visible_teacher`, `visible_parent`, `created_by`, `created_id`, `is_active`, `created_at`, `updated_at`) VALUES
(2, 'Parents Teacher Meeting (PTM)', '2018-08-30', '2018-08-30', '<p>\r\n\r\nDear Parents,\r\n\r\n<br></p><p>\r\n\r\n</p><ul><li>On 11th Sep, 2018, there will be Parents Teacher Meeting (PTM) for classes Nur to IX from 08:00 am to 10:00 am.</li></ul><p> </p><ul><li>Summer Vacations for students of classes Nur to IX will be from 12th Sep, 2018 to 2nd Oct, 2018. School will be re-open on3rd Oct, 2018 for students.</li></ul><p> </p><ul><li>Regular classes will be conducted for students of X and XII on 11th Sep, 2018 (PTM Day) from 7:30 am to 1:20 pm and from 14th Sep, 2018 onwards classes will be from 7:30 am to 11:30 am.</li></ul><p> </p>\r\n\r\n<br><p></p>', 'Yes', 'Yes', 'Yes', 'admin', 1, 'no', '2018-08-30 08:06:01', '0000-00-00 00:00:00'),
(3, 'Security & Safety of your ward', '2018-08-30', '2018-08-30', '<p>\r\n\r\nDear Parents,\r\n\r\n<br></p><p>\r\n\r\n</p><p>Security & Safety of your ward is our prime concern and therefore, school is making all out sincere effort to ensure security & safety of your ward in the school and in school buses.</p><p>Since your ward is using Pvt. Owned/hired vehicles for the school to & from, therefore Govt. has issued some important guidelines in this regard. Accordingly our school has issued an advisory on 13.09.2018 (copy available on school website).</p><p>This time also Transport Deptt, Govt. of Delhi has issued directions for the Parents too to ensure that your ward is not using unsafe & illegal Cab/Vans.</p><p>Once again, you are requested to check and ensure that all the mandatory conditions are being followed by the Pvt. Owned/hired Cab/Vans. (Copy of directions are again attached herewith).</p><p>Kindly co-operate and help for the safety of your ward.</p>\r\n\r\n<br><p></p>', 'Yes', 'No', 'Yes', 'admin', 1, 'no', '2018-08-30 08:08:41', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `id` int(11) NOT NULL,
  `session` varchar(60) COLLATE utf8_unicode_ci DEFAULT NULL,
  `is_active` varchar(255) COLLATE utf8_unicode_ci DEFAULT 'no',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `sessions`
--

INSERT INTO `sessions` (`id`, `session`, `is_active`, `created_at`, `updated_at`) VALUES
(7, '2016-17', 'no', '2017-04-20 12:12:19', '0000-00-00 00:00:00'),
(11, '2017-18', 'no', '2017-04-20 12:11:37', '0000-00-00 00:00:00'),
(13, '2018-19', 'no', '2016-08-25 00:56:44', '0000-00-00 00:00:00'),
(14, '2019-20', 'no', '2016-08-25 00:56:55', '0000-00-00 00:00:00'),
(15, '2020-21', 'no', '2016-10-01 10:58:08', '0000-00-00 00:00:00'),
(16, '2021-22', 'no', '2016-10-01 10:58:20', '0000-00-00 00:00:00'),
(18, '2022-23', 'no', '2016-10-01 10:59:02', '0000-00-00 00:00:00'),
(19, '2023-24', 'no', '2016-10-01 10:59:10', '0000-00-00 00:00:00'),
(20, '2024-25', 'no', '2016-10-01 10:59:18', '0000-00-00 00:00:00'),
(21, '2025-26', 'no', '2016-10-01 11:00:10', '0000-00-00 00:00:00'),
(22, '2026-27', 'no', '2016-10-01 11:00:18', '0000-00-00 00:00:00'),
(23, '2027-28', 'no', '2016-10-01 11:00:24', '0000-00-00 00:00:00'),
(24, '2028-29', 'no', '2016-10-01 11:00:30', '0000-00-00 00:00:00'),
(25, '2029-30', 'no', '2016-10-01 11:00:37', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `sms_config`
--

CREATE TABLE `sms_config` (
  `id` int(11) NOT NULL,
  `type` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `api_id` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `authkey` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `senderid` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `contact` text COLLATE utf8_unicode_ci,
  `username` varchar(150) COLLATE utf8_unicode_ci DEFAULT NULL,
  `url` varchar(150) COLLATE utf8_unicode_ci DEFAULT NULL,
  `password` varchar(150) COLLATE utf8_unicode_ci DEFAULT NULL,
  `is_active` varchar(255) COLLATE utf8_unicode_ci DEFAULT 'disabled',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `sms_config`
--

INSERT INTO `sms_config` (`id`, `type`, `name`, `api_id`, `authkey`, `senderid`, `contact`, `username`, `url`, `password`, `is_active`, `created_at`, `updated_at`) VALUES
(1, 'msg_nineone', '', '', '', '', NULL, NULL, NULL, NULL, 'disabled', '2017-12-15 16:08:36', '0000-00-00 00:00:00'),
(2, 'clickatell', '', '', '', '', NULL, '', NULL, '', 'disabled', '2017-12-15 16:08:36', '0000-00-00 00:00:00'),
(3, 'smscountry', '', '', '', '', NULL, '', NULL, '', 'disabled', '2017-12-15 16:08:36', '0000-00-00 00:00:00'),
(4, 'text_local', '', '', '', '', NULL, '', NULL, '', 'disabled', '2017-12-15 16:08:36', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `students`
--

CREATE TABLE `students` (
  `id` int(11) NOT NULL,
  `admission_no` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `roll_no` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `admission_date` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `firstname` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `lastname` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `rte` varchar(20) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'No',
  `image` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `mobileno` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `state` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `city` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `pincode` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `religion` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `cast` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `dob` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `gender` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `current_address` text COLLATE utf8_unicode_ci,
  `permanent_address` text COLLATE utf8_unicode_ci,
  `category_id` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `adhar_no` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `samagra_id` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `bank_account_no` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `bank_name` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ifsc_code` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `guardian_is` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `father_name` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `father_phone` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `father_occupation` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `mother_name` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `mother_phone` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `mother_occupation` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `guardian_name` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `guardian_relation` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `guardian_phone` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `guardian_occupation` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  `guardian_address` text COLLATE utf8_unicode_ci,
  `guardian_email` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `is_active` varchar(255) COLLATE utf8_unicode_ci DEFAULT 'no',
  `previous_school` text COLLATE utf8_unicode_ci,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `students`
--

INSERT INTO `students` (`id`, `admission_no`, `roll_no`, `admission_date`, `firstname`, `lastname`, `rte`, `image`, `mobileno`, `email`, `state`, `city`, `pincode`, `religion`, `cast`, `dob`, `gender`, `current_address`, `permanent_address`, `category_id`, `adhar_no`, `samagra_id`, `bank_account_no`, `bank_name`, `ifsc_code`, `guardian_is`, `father_name`, `father_phone`, `father_occupation`, `mother_name`, `mother_phone`, `mother_occupation`, `guardian_name`, `guardian_relation`, `guardian_phone`, `guardian_occupation`, `guardian_address`, `guardian_email`, `is_active`, `previous_school`, `created_at`, `updated_at`) VALUES
(1, '101111111', '101324', '2018-01-07', 'Vinit', 'singh', 'No', 'uploads/student_images/1.jpg', '7777777777', 'student@student.com', NULL, NULL, NULL, 'indian', 'hindu', '2018-01-01', 'Male', 'DElhi', 'Mumbai', '', '', '', '', '', '', 'father', 'father', '9090909090', 'job', 'mother', '6666666666', 'house', 'father', 'Father', '8888888888', 'job', 'DElhi', 'father@father.com', 'no', '', '2018-08-29 08:44:37', '0000-00-00 00:00:00'),
(2, '010', '505000', '2018-01-08', 'ali', 'allowz', 'No', 'uploads/student_images/no_image.png', '0543755966', 'ali.allowz96@gmail.com', NULL, NULL, NULL, 'is', '?', '2018-01-24', 'Male', 'jeddah ', 'jeddah ', '', '', '', '', '', '', 'father', 'abdulhaleem', '0543755966', 'seller', 'wafaa', '0543755966', 'home', 'abdulhaleem', 'Father', '0543755966', 'seller', 'jeddah ', 'abdulhaleem@gmail.com', 'no', '', '2018-08-12 13:34:35', '0000-00-00 00:00:00'),
(3, '50001', '20013', '2018-01-21', 'Terro', 'Card', 'No', 'uploads/student_images/no_image.png', '9090909090', 'terro@card.com', NULL, NULL, NULL, 'Jain', 'Samaiya', '2017-06-22', 'Male', 'Bihar', 'MP', '1', '', '', '', '', '', 'father', 'father', '8888888888', 'job', 'mother', '6666666666', 'house', 'father', 'Father', '8888888888', 'job', 'jhb,as,asd', '', 'no', '', '2018-08-09 13:45:25', '0000-00-00 00:00:00'),
(4, '122334', '1', '2018-08-02', 'gaurav', 'daad', 'No', 'uploads/student_images/no_image.png', '1212121212', 'superadmin@gsms.com', NULL, NULL, NULL, 'dd', 'dd', '2018-08-15', 'Male', '', 'MP', '1', '', '', '', '', '', 'father', 'father', '95555555', 'job', 'mother', '6666666666', 'house', 'sfsfsd', 'Fathersfsf', '8888888888', 'job', 'Jai ho', 'sfsf@asds', 'no', '', '2018-08-14 11:01:56', '0000-00-00 00:00:00'),
(10, '505', '1121510011', '2018-08-16', 'Veer', 'singh', 'No', 'uploads/student_images/no_image.png', '7065352595', 'ratanveersingh39@gmail.com', NULL, NULL, NULL, 'Hindu', 'Khtriya', '1994-08-18', 'Male', '', 'UP', '2', '', '', '', '', '', 'other', 'Ram Singh', '55555555', 'Service', 'XXX', '7984561233', 'Service', 'Ramu', '', '123456798', '', '', '', 'no', '', '2018-08-18 12:30:01', '0000-00-00 00:00:00'),
(12, 'CS-101', '1121510025', '2018-07-11', 'Ratanveer', 'Singh', 'No', 'uploads/student_images/12.png', '7065352595', 'ratanveersingh39@gmail.com', NULL, NULL, NULL, 'Hindu', 'Khatriya', '1994-08-18', 'Male', 'C-LAL Okhla Phase 1 New Delhi', 'Village+Post: Rawatpar Amethiya, Police Station: Lar, Tehshil: Salempur, District: Deoria, State: Uttar Pradesh', '2', '', '', '', '', '', 'father', 'Virendra Kumar Singh', '9451125097', 'Service', 'Gayatri Devi', '9595862641', 'House Wife', 'Virendra Kumar Singh', 'Father', '9451125097', 'Service', '', '', 'no', '', '2018-08-29 09:37:58', '0000-00-00 00:00:00'),
(13, '5698', '2659846513', '2018-09-02', 'zxcvbn', 'n', 'No', 'uploads/student_images/no_image.png', '9474312965', 'vishal@yahoo.comgh', NULL, NULL, NULL, 'sdfs', 'sfsdf', '1999-05-11', 'Female', '', '', '3', '', '', '', '', '', 'father', 'vcxvcvb', '79798989', 'dfgdfg', 'xdfgdsf', '15535232', 'dfgdfgdf', 'vcxvcvb', 'Father', '79798989', 'dfgdfg', '', '', 'no', '', '2018-09-02 06:34:55', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `student_attendences`
--

CREATE TABLE `student_attendences` (
  `id` int(11) NOT NULL,
  `student_session_id` int(11) DEFAULT NULL,
  `date` date DEFAULT NULL,
  `attendence_type_id` int(11) DEFAULT NULL,
  `teacher_id` int(11) DEFAULT NULL,
  `is_active` varchar(255) COLLATE utf8_unicode_ci DEFAULT 'no',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `student_attendences`
--

INSERT INTO `student_attendences` (`id`, `student_session_id`, `date`, `attendence_type_id`, `teacher_id`, `is_active`, `created_at`, `updated_at`) VALUES
(17, 13, '2018-09-14', 1, 8, 'no', '2018-09-15 06:21:36', '0000-00-00 00:00:00'),
(18, 13, '2018-09-14', 1, 8, 'no', '2018-09-15 06:21:36', '0000-00-00 00:00:00'),
(19, 13, '2018-09-14', 1, 8, 'no', '2018-09-15 06:21:36', '0000-00-00 00:00:00'),
(20, 13, '2018-09-14', 1, 8, 'no', '2018-09-15 06:21:36', '0000-00-00 00:00:00'),
(21, 13, '2018-09-14', 1, 8, 'no', '2018-09-15 06:21:36', '0000-00-00 00:00:00'),
(22, 13, '2018-09-14', 1, 8, 'no', '2018-09-15 06:21:36', '0000-00-00 00:00:00'),
(23, 13, '2018-09-14', 1, 8, 'no', '2018-09-15 06:21:36', '0000-00-00 00:00:00'),
(24, 13, '2018-09-14', 1, 8, 'no', '2018-09-15 06:21:36', '0000-00-00 00:00:00'),
(25, 13, '2018-09-14', 1, 8, 'no', '2018-09-15 06:21:36', '0000-00-00 00:00:00'),
(26, 13, '2018-09-14', 1, 8, 'no', '2018-09-15 06:21:36', '0000-00-00 00:00:00'),
(27, 13, '2018-09-14', 1, 8, 'no', '2018-09-15 06:21:36', '0000-00-00 00:00:00'),
(28, 13, '2018-09-14', 1, 8, 'no', '2018-09-15 06:21:36', '0000-00-00 00:00:00'),
(29, 13, '2018-09-14', 1, 8, 'no', '2018-09-15 06:21:36', '0000-00-00 00:00:00'),
(30, 13, '2018-09-14', 1, 8, 'no', '2018-09-15 06:21:36', '0000-00-00 00:00:00'),
(31, 13, '2018-09-14', 1, 8, 'no', '2018-09-15 06:21:36', '0000-00-00 00:00:00'),
(32, 13, '2018-09-14', 1, 8, 'no', '2018-09-15 06:21:36', '0000-00-00 00:00:00'),
(33, 13, '2018-09-14', 1, 8, 'no', '2018-09-15 06:21:36', '0000-00-00 00:00:00'),
(34, 13, '2018-09-14', 1, 8, 'no', '2018-09-15 06:21:36', '0000-00-00 00:00:00'),
(35, 13, '2018-09-14', 1, 8, 'no', '2018-09-15 06:21:36', '0000-00-00 00:00:00'),
(36, 13, '2018-09-14', 1, 8, 'no', '2018-09-15 06:21:36', '0000-00-00 00:00:00'),
(37, 13, '2018-09-14', 1, 8, 'no', '2018-09-15 06:21:36', '0000-00-00 00:00:00'),
(38, 13, '2018-09-14', 1, 8, 'no', '2018-09-15 06:21:36', '0000-00-00 00:00:00'),
(39, 13, '2018-09-14', 1, 8, 'no', '2018-09-15 06:21:36', '0000-00-00 00:00:00'),
(40, 13, '2018-09-14', 1, 8, 'no', '2018-09-15 06:21:36', '0000-00-00 00:00:00'),
(41, 13, '2018-09-14', 1, 8, 'no', '2018-09-15 06:21:36', '0000-00-00 00:00:00'),
(42, 13, '2018-09-14', 1, 8, 'no', '2018-09-15 06:21:36', '0000-00-00 00:00:00'),
(43, 13, '2018-09-14', 1, 8, 'no', '2018-09-15 06:21:36', '0000-00-00 00:00:00'),
(44, 13, '2018-09-14', 1, 8, 'no', '2018-09-15 06:21:36', '0000-00-00 00:00:00'),
(45, 13, '2018-09-14', 1, 8, 'no', '2018-09-15 06:21:36', '0000-00-00 00:00:00'),
(46, 13, '2018-09-14', 1, 8, 'no', '2018-09-15 06:21:36', '0000-00-00 00:00:00'),
(47, 13, '2018-09-14', 1, 8, 'no', '2018-09-15 06:21:36', '0000-00-00 00:00:00'),
(48, 13, '2018-09-14', 1, 8, 'no', '2018-09-15 06:21:36', '0000-00-00 00:00:00'),
(49, 13, '2018-09-14', 1, 8, 'no', '2018-09-15 06:21:36', '0000-00-00 00:00:00'),
(50, 13, '2018-09-14', 1, 8, 'no', '2018-09-15 06:21:36', '0000-00-00 00:00:00'),
(51, 13, '2018-09-14', 1, 8, 'no', '2018-09-15 06:21:36', '0000-00-00 00:00:00'),
(52, 13, '2018-09-14', 1, 8, 'no', '2018-09-15 06:21:36', '0000-00-00 00:00:00'),
(53, 13, '2018-09-14', 1, 8, 'no', '2018-09-15 06:21:36', '0000-00-00 00:00:00'),
(54, 13, '2018-09-14', 1, 8, 'no', '2018-09-15 06:21:36', '0000-00-00 00:00:00'),
(55, 13, '2018-09-14', 1, 8, 'no', '2018-09-15 06:21:36', '0000-00-00 00:00:00'),
(56, 13, '2018-09-14', 1, 8, 'no', '2018-09-15 06:21:36', '0000-00-00 00:00:00'),
(57, 13, '2018-09-14', 1, 8, 'no', '2018-09-15 06:21:36', '0000-00-00 00:00:00'),
(58, 13, '2018-09-14', 1, 8, 'no', '2018-09-15 06:21:36', '0000-00-00 00:00:00'),
(59, 13, '2018-09-14', 1, 8, 'no', '2018-09-15 06:21:36', '0000-00-00 00:00:00'),
(60, 13, '2018-09-14', 1, 8, 'no', '2018-09-15 06:21:36', '0000-00-00 00:00:00'),
(61, 13, '2018-09-14', 1, 8, 'no', '2018-09-15 06:21:36', '0000-00-00 00:00:00'),
(62, 13, '2018-09-14', 1, 8, 'no', '2018-09-15 06:21:36', '0000-00-00 00:00:00'),
(63, 13, '2018-09-14', 1, 8, 'no', '2018-09-15 06:21:36', '0000-00-00 00:00:00'),
(64, 13, '2018-09-14', 1, 8, 'no', '2018-09-15 06:21:36', '0000-00-00 00:00:00'),
(65, 13, '2018-09-14', 1, 8, 'no', '2018-09-15 06:21:36', '0000-00-00 00:00:00'),
(66, 13, '2018-09-14', 1, 8, 'no', '2018-09-15 06:21:36', '0000-00-00 00:00:00'),
(67, 13, '2018-09-14', 1, 8, 'no', '2018-09-15 06:21:36', '0000-00-00 00:00:00'),
(68, 13, '2018-09-14', 1, 8, 'no', '2018-09-15 06:21:36', '0000-00-00 00:00:00'),
(69, 13, '2018-09-14', 1, 8, 'no', '2018-09-15 06:21:36', '0000-00-00 00:00:00'),
(70, 13, '2018-09-14', 1, 8, 'no', '2018-09-15 06:21:36', '0000-00-00 00:00:00'),
(71, 13, '2018-09-14', 1, 8, 'no', '2018-09-15 06:21:36', '0000-00-00 00:00:00'),
(72, 13, '2018-09-14', 1, 8, 'no', '2018-09-15 06:21:36', '0000-00-00 00:00:00'),
(73, 13, '2018-09-14', 1, 8, 'no', '2018-09-15 06:21:36', '0000-00-00 00:00:00'),
(74, 13, '2018-09-14', 1, 8, 'no', '2018-09-15 06:21:36', '0000-00-00 00:00:00'),
(75, 13, '2018-09-14', 1, 8, 'no', '2018-09-15 06:21:36', '0000-00-00 00:00:00'),
(76, 13, '2018-09-14', 1, 8, 'no', '2018-09-15 06:21:36', '0000-00-00 00:00:00'),
(77, 13, '2018-09-14', 1, 8, 'no', '2018-09-15 06:21:36', '0000-00-00 00:00:00'),
(152, 15, '2018-09-16', 3, 8, 'no', '2018-09-15 11:51:01', '0000-00-00 00:00:00'),
(153, 12, '2018-09-15', 4, 8, 'no', '2018-09-15 12:37:07', '0000-00-00 00:00:00'),
(154, 12, '2018-09-15', 4, 8, 'no', '2018-09-15 12:36:39', '0000-00-00 00:00:00'),
(155, 15, '2018-09-13', 2, 8, 'no', '2018-09-15 12:36:39', '0000-00-00 00:00:00'),
(156, 13, '2018-09-20', 2, NULL, 'no', '2018-09-20 08:45:20', '0000-00-00 00:00:00'),
(157, 15, '2018-09-20', 1, NULL, 'no', '2018-09-20 08:45:20', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `student_doc`
--

CREATE TABLE `student_doc` (
  `id` int(11) NOT NULL,
  `student_id` int(11) DEFAULT NULL,
  `title` varchar(200) DEFAULT NULL,
  `doc` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `student_fees`
--

CREATE TABLE `student_fees` (
  `id` int(11) NOT NULL,
  `student_session_id` int(11) DEFAULT NULL,
  `feemaster_id` int(11) DEFAULT NULL,
  `amount` float(10,2) DEFAULT NULL,
  `amount_discount` float(10,2) NOT NULL,
  `amount_fine` float(10,2) NOT NULL DEFAULT '0.00',
  `description` text COLLATE utf8_unicode_ci,
  `date` date DEFAULT '0000-00-00',
  `payment_mode` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `is_active` varchar(255) COLLATE utf8_unicode_ci DEFAULT 'no',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `student_fees_deposite`
--

CREATE TABLE `student_fees_deposite` (
  `id` int(11) NOT NULL,
  `student_fees_master_id` int(11) DEFAULT NULL,
  `fee_groups_feetype_id` int(11) DEFAULT NULL,
  `amount_detail` text,
  `is_active` varchar(10) NOT NULL DEFAULT 'no',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `student_fees_deposite`
--

INSERT INTO `student_fees_deposite` (`id`, `student_fees_master_id`, `fee_groups_feetype_id`, `amount_detail`, `is_active`, `created_at`) VALUES
(3, 2, 9, '{"2":{"amount":"500","date":"2018-08-02","amount_discount":"0","amount_fine":"0","description":" Collected By: Admin","payment_mode":"Cash","inv_no":2},"3":{"amount":"5000","date":"2018-08-10","amount_discount":"0","amount_fine":"0","description":" Collected By: accountant1","payment_mode":"Cash","inv_no":3}}', 'no', '2018-08-27 12:43:41'),
(4, 2, 10, '{"1":{"amount":"500","date":"2018-08-02","amount_discount":"0","amount_fine":"0","description":" Collected By: Admin","payment_mode":"Cash","inv_no":1},"2":{"amount":"3000","date":"2018-08-10","amount_discount":"0","amount_fine":"0","description":" Collected By: accountant1","payment_mode":"DD","inv_no":2}}', 'no', '2018-08-10 12:58:37'),
(5, 4, 11, '{"1":{"amount":"2000","date":"2018-08-02","amount_discount":"0","amount_fine":"0","description":" Collected By: Admin","payment_mode":"Cheque","inv_no":1}}', 'no', '2018-08-02 10:40:39'),
(6, 7, 13, '{"1":{"amount":"500","date":"2018-08-02","amount_discount":"0","amount_fine":"0","description":"jk Collected By: Admin","payment_mode":"Cash","inv_no":1}}', 'no', '2018-08-02 10:52:45'),
(7, 6, 13, '{"1":{"amount":"300","date":"2018-08-02","amount_discount":"0","amount_fine":"0","description":" Collected By: Admin","payment_mode":"Cash","inv_no":1},"2":{"amount":"150","date":"2018-08-02","amount_discount":"50","amount_fine":"50","description":" Collected By: Admin","payment_mode":"Cash","inv_no":2}}', 'no', '2018-08-02 11:27:45'),
(8, 4, 14, '{"1":{"amount":"200000","date":"2018-08-27","amount_discount":"0","amount_fine":"0","description":" Collected By: accountant1","payment_mode":"Cash","inv_no":1}}', 'no', '2018-08-27 12:47:08'),
(9, 8, 15, '{"1":{"amount":"900","date":"2018-08-29","amount_discount":"0","amount_fine":"0","description":" Collected By: Admin","payment_mode":"Cash","inv_no":1}}', 'no', '2018-08-29 10:00:26'),
(10, 9, 13, '{"1":{"amount":"500","date":"2018-08-29","amount_discount":"0","amount_fine":"0","description":" Collected By: Admin","payment_mode":"Cash","inv_no":1}}', 'no', '2018-08-29 10:02:29'),
(11, 10, 16, '{"1":{"amount":"199","date":"2018-09-02","amount_discount":"160","amount_fine":"0","description":" Collected By: Admin","payment_mode":"Cash","inv_no":1}}', 'no', '2018-09-02 14:31:45');

-- --------------------------------------------------------

--
-- Table structure for table `student_fees_discounts`
--

CREATE TABLE `student_fees_discounts` (
  `id` int(11) NOT NULL,
  `student_session_id` int(11) DEFAULT NULL,
  `fees_discount_id` int(11) DEFAULT NULL,
  `status` varchar(20) DEFAULT 'assigned',
  `payment_id` varchar(50) DEFAULT NULL,
  `description` text,
  `is_active` varchar(10) NOT NULL DEFAULT 'no',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `student_fees_discounts`
--

INSERT INTO `student_fees_discounts` (`id`, `student_session_id`, `fees_discount_id`, `status`, `payment_id`, `description`, `is_active`, `created_at`) VALUES
(1, 6, 1, 'assigned', '', 'hgh', 'no', '2018-08-02 11:09:12');

-- --------------------------------------------------------

--
-- Table structure for table `student_fees_master`
--

CREATE TABLE `student_fees_master` (
  `id` int(11) NOT NULL,
  `student_session_id` int(11) DEFAULT NULL,
  `fee_session_group_id` int(11) DEFAULT NULL,
  `is_active` varchar(10) NOT NULL DEFAULT 'no',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `student_fees_master`
--

INSERT INTO `student_fees_master` (`id`, `student_session_id`, `fee_session_group_id`, `is_active`, `created_at`) VALUES
(2, 1, 6, 'no', '2018-01-20 07:18:30'),
(3, 5, 7, 'no', '2018-08-02 10:39:15'),
(4, 6, 7, 'no', '2018-08-02 10:39:15'),
(5, 5, 9, 'no', '2018-08-02 10:49:20'),
(6, 6, 9, 'no', '2018-08-02 10:49:20'),
(7, 1, 9, 'no', '2018-08-02 10:50:20'),
(8, 13, 10, 'no', '2018-08-29 09:59:24'),
(9, 13, 9, 'no', '2018-08-29 10:01:47'),
(10, 2, 11, 'no', '2018-09-02 14:30:33');

-- --------------------------------------------------------

--
-- Table structure for table `student_session`
--

CREATE TABLE `student_session` (
  `id` int(11) NOT NULL,
  `session_id` int(11) DEFAULT NULL,
  `student_id` int(11) DEFAULT NULL,
  `class_id` int(11) DEFAULT NULL,
  `section_id` int(11) DEFAULT NULL,
  `route_id` int(11) NOT NULL,
  `vehroute_id` int(10) DEFAULT NULL,
  `transport_fees` float(10,2) NOT NULL DEFAULT '0.00',
  `fees_discount` float(10,2) NOT NULL DEFAULT '0.00',
  `is_active` varchar(255) COLLATE utf8_unicode_ci DEFAULT 'no',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `student_session`
--

INSERT INTO `student_session` (`id`, `session_id`, `student_id`, `class_id`, `section_id`, `route_id`, `vehroute_id`, `transport_fees`, `fees_discount`, `is_active`, `created_at`, `updated_at`) VALUES
(1, 11, 1, 1, 1, 0, 1, 0.00, 0.00, 'no', '2018-08-09 11:53:23', '0000-00-00 00:00:00'),
(2, 11, 2, 2, 1, 0, 0, 0.00, 0.00, 'no', '2018-01-12 05:30:43', '0000-00-00 00:00:00'),
(5, 11, 3, 1, 1, 0, 0, 0.00, 0.00, 'no', '2018-01-21 12:28:02', '0000-00-00 00:00:00'),
(6, 11, 4, 1, 1, 0, 0, 0.00, 0.00, 'no', '2018-08-02 09:50:36', '0000-00-00 00:00:00'),
(7, 11, 5, 2, 1, 0, NULL, 0.00, 0.00, 'no', '2018-08-07 07:06:28', '0000-00-00 00:00:00'),
(8, 11, 6, 3, 1, 0, NULL, 0.00, 0.00, 'no', '2018-08-07 08:34:47', '0000-00-00 00:00:00'),
(11, 11, 9, 2, 1, 0, NULL, 0.00, 0.00, 'no', '2018-08-08 09:31:28', '0000-00-00 00:00:00'),
(12, 11, 10, 3, 1, 0, 0, 0.00, 0.00, 'no', '2018-08-16 12:26:47', '0000-00-00 00:00:00'),
(13, 11, 12, 6, 4, 0, 3, 0.00, 0.00, 'no', '2018-09-20 07:56:32', '0000-00-00 00:00:00'),
(14, 11, 14, 6, 4, 0, 0, 0.00, 0.00, 'no', '2018-09-05 08:56:19', '0000-00-00 00:00:00'),
(15, 11, 13, 6, 4, 0, 2, 0.00, 0.00, 'no', '2018-09-20 10:44:32', '0000-00-00 00:00:00'),
(16, 11, 15, 6, 4, 0, 0, 0.00, 0.00, 'no', '2018-09-05 08:56:31', '0000-00-00 00:00:00'),
(17, 11, 16, 6, 4, 0, 0, 0.00, 0.00, 'no', '2018-09-05 09:48:44', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `student_sibling`
--

CREATE TABLE `student_sibling` (
  `id` int(11) NOT NULL,
  `student_id` int(11) DEFAULT NULL,
  `sibling_student_id` int(11) DEFAULT NULL,
  `is_active` varchar(255) COLLATE utf8_unicode_ci DEFAULT 'no',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `student_transport_fees`
--

CREATE TABLE `student_transport_fees` (
  `id` int(11) NOT NULL,
  `student_session_id` int(11) DEFAULT NULL,
  `amount` float(10,2) DEFAULT NULL,
  `amount_discount` float(10,2) NOT NULL,
  `amount_fine` float(10,2) NOT NULL DEFAULT '0.00',
  `description` text COLLATE utf8_unicode_ci,
  `date` date DEFAULT '0000-00-00',
  `is_active` varchar(255) COLLATE utf8_unicode_ci DEFAULT 'no',
  `payment_mode` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `subjects`
--

CREATE TABLE `subjects` (
  `id` int(11) NOT NULL,
  `name` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `code` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `type` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `is_active` varchar(255) COLLATE utf8_unicode_ci DEFAULT 'no',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `subjects`
--

INSERT INTO `subjects` (`id`, `name`, `code`, `type`, `is_active`, `created_at`, `updated_at`) VALUES
(1, 'maths', 'MAT01', 'Theory', 'no', '2018-01-16 02:42:27', '0000-00-00 00:00:00'),
(2, 'Bio', 'Bio', 'Theory', 'no', '2018-01-26 10:11:35', '0000-00-00 00:00:00'),
(3, 'DBMS', 'DB', 'Theory', 'no', '2018-08-27 12:38:19', '0000-00-00 00:00:00'),
(4, 'ITIL', 'IT', 'Theory', 'no', '2018-08-27 12:38:37', '0000-00-00 00:00:00'),
(5, 'Automata', 'AT', 'Theory', 'no', '2018-08-29 08:48:01', '0000-00-00 00:00:00'),
(6, 'Computer Network', 'CN', 'Practical', 'no', '2018-08-29 08:48:40', '0000-00-00 00:00:00'),
(7, 'Microprocesser', 'MP', 'Theory', 'no', '2018-08-29 08:49:34', '0000-00-00 00:00:00'),
(8, 'Manufacturing Science', 'ME', 'Practical', 'no', '2018-08-29 08:49:55', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `teacher`
--

CREATE TABLE `teacher` (
  `id` int(11) NOT NULL,
  `emptype` varchar(250) NOT NULL,
  `name` varchar(250) NOT NULL,
  `employee_code` varchar(250) NOT NULL,
  `birthday` varchar(250) NOT NULL,
  `gender` char(250) NOT NULL,
  `religion` char(250) NOT NULL,
  `cast` char(250) NOT NULL,
  `blood_group` varchar(250) NOT NULL,
  `present_address` varchar(250) NOT NULL,
  `permanent_address` varchar(250) NOT NULL,
  `subject` char(250) NOT NULL,
  `father_name` char(250) NOT NULL,
  `father_mobile_number` varchar(250) NOT NULL,
  `teacher_email` varchar(250) NOT NULL,
  `phone` varchar(250) NOT NULL,
  `email` varchar(250) NOT NULL,
  `password` varchar(250) NOT NULL,
  `academic_year` varchar(250) NOT NULL,
  `department` varchar(250) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `teacher`
--

INSERT INTO `teacher` (`id`, `emptype`, `name`, `employee_code`, `birthday`, `gender`, `religion`, `cast`, `blood_group`, `present_address`, `permanent_address`, `subject`, `father_name`, `father_mobile_number`, `teacher_email`, `phone`, `email`, `password`, `academic_year`, `department`, `created_at`, `updated_at`) VALUES
(15, 'teacher', 'Srinivas', 'TAMT00023', '6/26/1985', 'male', 'Hindu', 'NA', 'AB+', 'Nidigattu,Bheemili Mandal,West Godavari District,AP', 'Nidigattu,Bheemili Mandal,West Godavari District,AP', 'Telugu', 'Mohana Reddy', '9966236524', 'srinivas@elitelinkin.com', '123456789', 'srinivas@elitelinkin.com', '12345', '', '', '2018-08-09 07:37:02', '0000-00-00 00:00:00'),
(16, 'teacher', 'Sandhya', 'TAMT00024', '6/27/1985', 'female', 'Hindu', 'NA', 'B+', 'Nidigattu,Bheemili Mandal,West Godavari District,AP', 'Nidigattu,Bheemili Mandal,West Godavari District,AP', 'Telugu', 'Mohana Reddy', '9966236525', 'srinivas1@elitelinkin.com', '123456789', 'srinivas1@elitelinkin.com', '12345', '', '', '2018-08-09 07:37:02', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `teachers`
--

CREATE TABLE `teachers` (
  `id` int(11) NOT NULL,
  `name` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `password` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `address` text COLLATE utf8_unicode_ci,
  `dob` varchar(250) COLLATE utf8_unicode_ci DEFAULT NULL,
  `designation` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sex` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `phone` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `image` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `is_active` varchar(255) COLLATE utf8_unicode_ci DEFAULT 'no',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `teachers`
--

INSERT INTO `teachers` (`id`, `name`, `email`, `password`, `address`, `dob`, `designation`, `sex`, `phone`, `image`, `is_active`, `created_at`, `updated_at`) VALUES
(1, 'ratan', 'as@gmail.com', NULL, 'asd', '2018-08-29', NULL, 'Male', '7894561252', 'uploads/teacher_images/1.png', 'no', '2018-08-18 12:44:09', '0000-00-00 00:00:00'),
(2, 'ratanveer12', 'ratan@gmail.om', '123456', 'Delhi', '18/08/1994', 'NA', 'Male', '9540440745', NULL, 'no', '2018-08-18 13:01:40', '0000-00-00 00:00:00'),
(3, 'ratanveer12', 'ratan@gmail.om', '123456', 'Delhi', '18/08/1994', 'NA', 'Male', '9540440745', 'uploads/teacher_images/02.jpg', 'no', '2018-08-18 13:17:06', '0000-00-00 00:00:00'),
(4, 'ratanveer12', 'ratan@gmail.om', '123456', 'Delhi', '18/08/1994', 'NA', 'Male', '9540440745', 'uploads/teacher_images/6.jpg', 'no', '2018-08-18 13:18:30', '0000-00-00 00:00:00'),
(5, 'Vishal', 'vishal@yahoo.com', NULL, 'Ghaziabad', '1987-06-23', NULL, 'Male', '8125369545', 'uploads/teacher_images/5.jpg', 'no', '2018-08-29 08:47:37', '0000-00-00 00:00:00'),
(6, 'Aradhya', 'aradhya@yahoo.com', NULL, 'Sitapur', '1999-06-28', NULL, 'Male', '7845123265', 'uploads/teacher_images/6.jpg', 'no', '2018-08-29 08:51:16', '0000-00-00 00:00:00'),
(7, 'Shashank', 'shashank@rediffmail.com', NULL, 'Varanasi', '1992-07-08', NULL, 'Male', '9254125477', 'uploads/teacher_images/7.jpg', 'no', '2018-08-29 08:52:15', '0000-00-00 00:00:00'),
(8, 'Ajeet', 'ajeet@gmail.com', NULL, 'Gorakhpur', '1997-09-24', NULL, 'Male', '3154742589', 'uploads/teacher_images/8.png', 'no', '2018-08-29 08:53:26', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `teacher_subjects`
--

CREATE TABLE `teacher_subjects` (
  `id` int(11) NOT NULL,
  `session_id` int(11) DEFAULT NULL,
  `class_section_id` int(11) DEFAULT NULL,
  `subject_id` int(11) DEFAULT NULL,
  `teacher_id` int(11) DEFAULT NULL,
  `description` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `is_active` varchar(255) COLLATE utf8_unicode_ci DEFAULT 'no',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `teacher_subjects`
--

INSERT INTO `teacher_subjects` (`id`, `session_id`, `class_section_id`, `subject_id`, `teacher_id`, `description`, `is_active`, `created_at`, `updated_at`) VALUES
(1, 11, 1, 1, 1, NULL, 'no', '2018-01-16 02:42:52', '0000-00-00 00:00:00'),
(2, 11, 1, 2, 2, NULL, 'no', '2018-01-26 10:12:17', '0000-00-00 00:00:00'),
(3, 11, 1, 0, 0, NULL, 'no', '2018-01-16 02:42:52', '0000-00-00 00:00:00'),
(4, 11, 2, 1, 1, NULL, 'no', '2018-01-16 02:47:00', '0000-00-00 00:00:00'),
(5, 11, 2, 0, 0, NULL, 'no', '2018-01-16 02:47:00', '0000-00-00 00:00:00'),
(6, 11, 1, 1, 1, NULL, 'no', '2018-01-26 16:27:57', '0000-00-00 00:00:00'),
(7, 11, 5, 3, 8, NULL, 'no', '2018-09-09 09:32:44', '0000-00-00 00:00:00'),
(8, 11, 5, 4, 8, NULL, 'no', '2018-09-09 09:32:44', '0000-00-00 00:00:00'),
(9, 11, 6, 7, 5, NULL, 'no', '2018-08-29 08:50:24', '0000-00-00 00:00:00'),
(10, 11, 6, 5, 6, NULL, 'no', '2018-08-29 08:54:04', '0000-00-00 00:00:00'),
(11, 11, 6, 8, 8, NULL, 'no', '2018-08-29 08:54:04', '0000-00-00 00:00:00'),
(12, 11, 6, 6, 7, NULL, 'no', '2018-08-29 08:54:04', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `timetables`
--

CREATE TABLE `timetables` (
  `id` int(11) NOT NULL,
  `teacher_subject_id` int(20) DEFAULT NULL,
  `day_name` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `start_time` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `end_time` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `room_no` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `is_active` varchar(255) COLLATE utf8_unicode_ci DEFAULT 'no',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `timetables`
--

INSERT INTO `timetables` (`id`, `teacher_subject_id`, `day_name`, `start_time`, `end_time`, `room_no`, `is_active`, `created_at`, `updated_at`) VALUES
(15, 9, 'Monday', '09:30 AM', '10:15 AM', 'CSE-101', 'no', '2018-08-29 08:59:50', '0000-00-00 00:00:00'),
(16, 9, 'Tuesday', '09:30 AM', '10:15 AM', 'CSE-101', 'no', '2018-08-29 08:59:50', '0000-00-00 00:00:00'),
(17, 9, 'Wednesday', '11:00 AM', '11:45 AM', 'CSE-101', 'no', '2018-08-29 08:59:50', '0000-00-00 00:00:00'),
(18, 9, 'Thursday', '10:15 AM', '11:00 AM', 'CSE-101', 'no', '2018-08-29 08:59:50', '0000-00-00 00:00:00'),
(19, 9, 'Friday', '02:30 PM', '03:15 PM', 'CSE-101', 'no', '2018-08-29 08:59:50', '0000-00-00 00:00:00'),
(20, 9, 'Saturday', '01:45 PM', '02:30 PM', 'CSE-101', 'no', '2018-08-29 08:59:50', '0000-00-00 00:00:00'),
(21, 9, 'Sunday', '', '', '', 'no', '2018-08-29 08:59:50', '0000-00-00 00:00:00'),
(22, 10, 'Monday', '10:15 AM', '11:00 AM', 'CSE-101', 'no', '2018-08-29 09:05:05', '0000-00-00 00:00:00'),
(23, 10, 'Tuesday', '11:00 AM', '11:45 AM', 'CSE-101', 'no', '2018-08-29 09:05:06', '0000-00-00 00:00:00'),
(24, 10, 'Wednesday', '09:30 AM', '10:15 AM', 'CSE-101', 'no', '2018-08-29 09:05:06', '0000-00-00 00:00:00'),
(25, 10, 'Thursday', '11:45 AM', '12:30 PM', 'CSE-101', 'no', '2018-08-29 09:05:06', '0000-00-00 00:00:00'),
(26, 10, 'Friday', '12:30 PM', '01:15 PM', 'CSE-101', 'no', '2018-08-29 09:05:06', '0000-00-00 00:00:00'),
(27, 10, 'Saturday', '04:00 PM', '04:45 PM', 'CSE-101', 'no', '2018-08-29 09:05:06', '0000-00-00 00:00:00'),
(28, 10, 'Sunday', '', '', '', 'no', '2018-08-29 09:05:06', '0000-00-00 00:00:00'),
(29, 11, 'Monday', '11:00 AM', '11:45 AM', 'ME:LAB-1', 'no', '2018-08-29 09:11:02', '0000-00-00 00:00:00'),
(30, 11, 'Tuesday', '10:15 AM', '11:00 AM', 'ME:LAB-1', 'no', '2018-08-29 09:11:03', '0000-00-00 00:00:00'),
(31, 11, 'Wednesday', '02:30 PM', '03:15 PM', 'ME:LAB-1', 'no', '2018-08-29 09:11:03', '0000-00-00 00:00:00'),
(32, 11, 'Thursday', '04:00 PM', '04:45 PM', 'ME:LAB-1', 'no', '2018-08-29 09:11:03', '0000-00-00 00:00:00'),
(33, 11, 'Friday', '01:45 PM', '02:30 PM', 'ME:LAB-1', 'no', '2018-08-29 09:11:03', '0000-00-00 00:00:00'),
(34, 11, 'Saturday', '12:30 PM', '01:15 PM', 'ME:LAB-1', 'no', '2018-08-29 09:11:03', '0000-00-00 00:00:00'),
(35, 11, 'Sunday', '', '', '', 'no', '2018-08-29 09:11:03', '0000-00-00 00:00:00'),
(36, 12, 'Monday', '11:45 AM', '12:30 PM', 'CSE:LAB-1', 'no', '2018-08-29 09:33:01', '0000-00-00 00:00:00'),
(37, 12, 'Tuesday', '11:45 AM', '12:30 PM', 'CSE:LAB-1', 'no', '2018-08-29 09:33:01', '0000-00-00 00:00:00'),
(38, 12, 'Wednesday', '10:15 AM', '11:00 AM', 'CSE:LAB-1', 'no', '2018-08-29 09:33:01', '0000-00-00 00:00:00'),
(39, 12, 'Thursday', '09:30 AM', '10:15 AM', 'CSE:LAB-1', 'no', '2018-08-29 09:33:01', '0000-00-00 00:00:00'),
(40, 12, 'Friday', '11:00 AM', '11:45 AM', 'CSE:LAB-1', 'no', '2018-08-29 09:33:01', '0000-00-00 00:00:00'),
(41, 12, 'Saturday', '02:30 PM', '03:15 PM', 'CSE:LAB-1', 'no', '2018-08-29 09:33:01', '0000-00-00 00:00:00'),
(42, 12, 'Sunday', '', '', '', 'no', '2018-08-29 09:33:01', '0000-00-00 00:00:00'),
(43, 1, 'Monday', '09:30 AM', '10:15 AM', 'CSqwq', 'no', '2018-08-31 09:01:03', '0000-00-00 00:00:00'),
(44, 1, 'Tuesday', '11:00 AM', '10:15 AM', 'sada', 'no', '2018-08-31 09:01:03', '0000-00-00 00:00:00'),
(45, 1, 'Wednesday', '09:30 AM', '10:15 AM', 'asdas', 'no', '2018-08-31 09:01:03', '0000-00-00 00:00:00'),
(46, 1, 'Thursday', '09:30 AM', '11:00 AM', 'asdas', 'no', '2018-08-31 09:01:03', '0000-00-00 00:00:00'),
(47, 1, 'Friday', '', '', '', 'no', '2018-08-31 09:01:03', '0000-00-00 00:00:00'),
(48, 1, 'Saturday', '01:45 PM', '02:00 AM', 'sda', 'no', '2018-08-31 09:01:03', '0000-00-00 00:00:00'),
(49, 1, 'Sunday', '', '', '', 'no', '2018-08-31 09:01:04', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `transport_route`
--

CREATE TABLE `transport_route` (
  `id` int(11) NOT NULL,
  `route_title` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `no_of_vehicle` int(11) DEFAULT NULL,
  `fare` float(10,2) DEFAULT NULL,
  `note` text COLLATE utf8_unicode_ci,
  `is_active` varchar(255) COLLATE utf8_unicode_ci DEFAULT 'no',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `transport_route`
--

INSERT INTO `transport_route` (`id`, `route_title`, `no_of_vehicle`, `fare`, `note`, `is_active`, `created_at`, `updated_at`) VALUES
(4, 'Deoria-Gorakhpur', NULL, 2199.00, NULL, 'no', '2018-08-30 09:55:49', '0000-00-00 00:00:00'),
(5, 'Mau-Varanasi', NULL, 5199.00, NULL, 'no', '2018-08-30 11:32:54', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `userlog`
--

CREATE TABLE `userlog` (
  `id` int(11) NOT NULL,
  `user` varchar(100) DEFAULT NULL,
  `role` varchar(100) DEFAULT NULL,
  `ipaddress` varchar(100) DEFAULT NULL,
  `user_agent` varchar(500) DEFAULT NULL,
  `login_datetime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `userlog`
--

INSERT INTO `userlog` (`id`, `user`, `role`, `ipaddress`, `user_agent`, `login_datetime`) VALUES
(1, 'admin@admin.com', 'admin', '45.119.237.73', 'Chrome 63.0.3239.132, Windows 7', '2018-01-06 12:18:14'),
(2, 'admin@admin.com', 'admin', '139.167.186.238', 'Chrome 63.0.3239.132, Windows 7', '2018-01-07 02:38:39'),
(3, 'admin@admin.com', 'admin', '139.167.186.238', 'Chrome 63.0.3239.132, Windows 7', '2018-01-07 02:44:13'),
(4, 'librarian1', 'librarian', '139.167.186.238', 'Chrome 63.0.3239.132, Windows 7', '2018-01-07 03:07:26'),
(5, 'admin@admin.com', 'admin', '210.16.84.110', 'Chrome 63.0.3239.84, Windows 7', '2018-01-07 10:56:49'),
(6, 'admin@admin.com', 'admin', '117.192.234.70', 'Chrome 63.0.3239.132, Windows 10', '2018-01-07 11:55:29'),
(7, 'admin@admin.com', 'admin', '117.192.234.70', 'Chrome 63.0.3239.132, Windows 10', '2018-01-07 13:25:32'),
(8, 'admin@admin.com', 'admin', '183.82.226.3', 'Chrome 63.0.3239.132, Windows 10', '2018-01-07 13:47:21'),
(9, 'admin@admin.com', 'admin', '151.255.45.120', 'Chrome 63.0.3239.132, Windows 10', '2018-01-07 17:18:22'),
(10, 'admin@admin.com', 'admin', '223.186.254.62', 'Chrome 63.0.3239.132, Windows 10', '2018-01-07 17:27:08'),
(11, 'admin@admin.com', 'admin', '106.219.18.155', 'Chrome 63.0.3239.84, Windows 10', '2018-01-07 19:29:33'),
(12, 'admin@admin.com', 'admin', '106.219.18.155', 'Chrome 63.0.3239.84, Windows 10', '2018-01-07 19:35:38'),
(13, 'admin@admin.com', 'admin', '1.22.97.115', 'Chrome 63.0.3239.84, Windows 7', '2018-01-08 07:19:36'),
(14, 'admin@admin.com', 'admin', '94.99.173.10', 'Chrome 63.0.3239.84, Windows 10', '2018-01-08 07:36:52'),
(15, 'admin@admin.com', 'admin', '122.171.66.210', 'Chrome 63.0.3239.132, Windows 7', '2018-01-08 10:17:34'),
(16, 'admin@admin.com', 'admin', '103.49.54.50', 'Chrome 63.0.3239.84, Windows 10', '2018-01-08 10:18:11'),
(17, 'admin@admin.com', 'admin', '117.192.238.6', 'Chrome 63.0.3239.132, Windows 10', '2018-01-08 10:19:00'),
(18, 'librarian1', 'librarian', '103.49.54.50', 'Chrome 63.0.3239.84, Windows 10', '2018-01-08 10:19:06'),
(19, 'std1', 'student', '103.49.54.50', 'Chrome 63.0.3239.84, Windows 10', '2018-01-08 10:20:02'),
(20, 'std1', 'student', '103.49.54.50', 'Chrome 63.0.3239.84, Windows 10', '2018-01-08 10:25:52'),
(21, 'admin@admin.com', 'admin', '182.69.255.38', 'Chrome 63.0.3239.84, Windows 10', '2018-01-08 11:00:00'),
(22, 'admin@admin.com', 'admin', '182.69.255.38', 'Chrome 63.0.3239.84, Windows 10', '2018-01-08 11:12:16'),
(23, 'std1', 'student', '103.83.70.69', 'Chrome 63.0.3239.132, Windows 7', '2018-01-08 11:49:08'),
(24, 'admin@admin.com', 'admin', '103.83.70.69', 'Chrome 63.0.3239.132, Windows 7', '2018-01-08 11:49:53'),
(25, 'admin@admin.com', 'admin', '61.16.138.246', 'Chrome 63.0.3239.132, Windows 7', '2018-01-09 04:35:11'),
(26, 'admin@admin.com', 'admin', '61.16.138.246', 'Chrome 63.0.3239.132, Windows 7', '2018-01-09 05:22:08'),
(27, 'admin@admin.com', 'admin', '182.69.255.3', 'Chrome 63.0.3239.84, Windows 7', '2018-01-09 09:53:00'),
(28, 'admin@admin.com', 'admin', '139.167.228.91', 'Chrome 63.0.3239.132, Windows 7', '2018-01-09 10:26:49'),
(29, 'admin@admin.com', 'admin', '182.69.255.3', 'Chrome 63.0.3239.84, Windows 7', '2018-01-09 11:55:51'),
(30, 'admin@admin.com', 'admin', '103.79.235.56', 'Chrome 63.0.3239.132, Windows 10', '2018-01-10 08:53:38'),
(31, 'admin@admin.com', 'admin', '49.207.50.103', 'Chrome 63.0.3239.84, Windows 10', '2018-01-10 16:04:01'),
(32, 'admin@admin.com', 'admin', '1.23.189.22', 'Chrome 63.0.3239.132, Windows 7', '2018-01-11 12:04:30'),
(33, 'admin@admin.com', 'admin', '1.23.189.22', 'Chrome 63.0.3239.132, Windows 7', '2018-01-11 12:11:56'),
(34, 'admin@admin.com', 'admin', '163.47.152.226', 'Safari 604.1, iOS', '2018-01-11 12:43:06'),
(35, 'admin@admin.com', 'admin', '182.69.14.62', 'Chrome 63.0.3239.132, Windows 8.1', '2018-01-11 14:18:33'),
(36, 'admin@admin.com', 'admin', '14.102.38.130', 'Chrome 63.0.3239.132, Windows 10', '2018-01-11 15:29:31'),
(37, 'admin@admin.com', 'admin', '139.167.181.184', 'Chrome 63.0.3239.132, Windows 7', '2018-01-11 15:36:58'),
(38, 'admin@admin.com', 'admin', '163.47.152.226', 'Chrome 63.0.3239.132, Windows 8.1', '2018-01-11 16:06:02'),
(39, 'admin@admin.com', 'admin', '182.69.56.29', 'Chrome 63.0.3239.132, Windows 8.1', '2018-01-11 16:59:11'),
(40, 'admin@admin.com', 'admin', '115.97.189.103', 'Chrome 63.0.3239.132, Windows 7', '2018-01-11 17:03:16'),
(41, 'admin@admin.com', 'admin', '106.205.133.227', 'Chrome 63.0.3239.132, Windows 7', '2018-01-11 17:50:43'),
(42, 'admin@admin.com', 'admin', '45.117.182.173', 'Chrome 63.0.3239.111, Android', '2018-01-12 05:25:47'),
(43, 'admin@admin.com', 'admin', '182.65.83.229', 'Firefox 55.0, Windows 7', '2018-01-12 06:02:32'),
(44, 'admin@admin.com', 'admin', '182.65.83.229', 'Firefox 55.0, Windows 7', '2018-01-12 06:12:22'),
(45, 'librarian1', 'librarian', '125.99.14.21', 'Chrome 63.0.3239.132, Linux', '2018-01-12 06:14:45'),
(46, 'admin@admin.com', 'admin', '103.194.60.179', 'Chrome 64.0.3282.71, Windows 10', '2018-01-12 08:18:17'),
(47, 'admin@admin.com', 'admin', '183.78.186.57', 'Chrome 63.0.3239.132, Windows 10', '2018-01-12 09:08:30'),
(48, 'std1', 'student', '182.75.68.154', 'Chrome 63.0.3239.132, Windows 10', '2018-01-12 11:09:46'),
(49, 'admin@admin.com', 'admin', '157.37.89.19', 'Chrome 63.0.3239.111, Android', '2018-01-12 14:51:12'),
(50, 'admin@admin.com', 'admin', '157.37.89.19', 'Chrome 63.0.3239.111, Android', '2018-01-12 14:51:12'),
(51, 'admin@admin.com', 'admin', '182.64.72.196', 'Firefox 57.0, Windows 10', '2018-01-12 14:58:46'),
(52, 'admin@admin.com', 'admin', '223.229.142.40', 'Chrome 63.0.3239.132, Windows 7', '2018-01-12 15:00:58'),
(53, 'admin@admin.com', 'admin', '203.76.190.2', 'Chrome 63.0.3239.132, Windows 10', '2018-01-12 16:30:41'),
(54, 'admin@admin.com', 'admin', '203.76.190.2', 'Chrome 63.0.3239.132, Windows 10', '2018-01-12 16:41:03'),
(55, 'admin@admin.com', 'admin', '47.31.232.234', 'Safari 604.1, iOS', '2018-01-12 16:42:58'),
(56, 'admin@admin.com', 'admin', '203.76.190.2', 'Chrome 63.0.3239.132, Windows 10', '2018-01-12 18:35:34'),
(57, 'admin@admin.com', 'admin', '106.51.18.103', 'Chrome 63.0.3239.84, Windows 10', '2018-01-13 06:20:46'),
(58, 'std1', 'student', '103.61.80.191', 'Chrome 64.0.3282.85, Windows 10', '2018-01-13 06:59:54'),
(59, 'admin@admin.com', 'admin', '103.61.80.191', 'Chrome 64.0.3282.85, Windows 10', '2018-01-13 07:03:39'),
(60, 'admin@admin.com', 'admin', '122.171.199.197', 'Chrome 63.0.3239.132, Windows 7', '2018-01-13 08:40:21'),
(61, 'admin@admin.com', 'admin', '106.51.18.103', 'Chrome 63.0.3239.84, Windows 10', '2018-01-13 09:09:11'),
(62, 'admin@admin.com', 'admin', '103.252.25.141', 'Chrome 63.0.3239.132, Windows 10', '2018-01-13 10:48:57'),
(63, 'admin@admin.com', 'admin', '106.51.18.103', 'Chrome 63.0.3239.132, Windows 10', '2018-01-14 06:23:13'),
(64, 'std1', 'student', '39.117.37.220', 'Chrome 63.0.3239.132, Windows 7', '2018-01-14 07:21:56'),
(65, 'admin@admin.com', 'admin', '106.51.18.103', 'Chrome 63.0.3239.132, Windows 10', '2018-01-16 02:35:07'),
(66, 'admin@admin.com', 'admin', '47.247.247.136', 'Chrome 63.0.3239.132, Windows 8.1', '2018-01-16 03:18:21'),
(67, 'admin@admin.com', 'admin', '125.63.69.50', 'Firefox 57.0, Windows 10', '2018-01-16 11:18:19'),
(68, 'librarian1', 'librarian', '125.63.69.50', 'Firefox 57.0, Windows 10', '2018-01-16 11:23:15'),
(69, 'std1', 'student', '125.63.69.50', 'Firefox 57.0, Windows 10', '2018-01-16 11:25:22'),
(70, 'admin@admin.com', 'admin', '47.247.195.241', 'Chrome 63.0.3239.132, Mac OS X', '2018-01-16 11:51:55'),
(71, 'admin@admin.com', 'admin', '106.51.18.103', 'Chrome 63.0.3239.132, Windows 10', '2018-01-16 16:50:50'),
(72, 'admin@admin.com', 'admin', '94.197.121.88', 'Chrome 63.0.3239.132, Mac OS X', '2018-01-16 21:33:00'),
(73, 'admin@admin.com', 'admin', '47.247.211.41', 'Chrome 63.0.3239.132, Windows 8.1', '2018-01-17 03:36:17'),
(74, 'admin@admin.com', 'admin', '27.34.253.141', 'Firefox 58.0, Windows 10', '2018-01-17 05:58:04'),
(75, 'admin@admin.com', 'admin', '112.110.3.239', 'Chrome 63.0.3239.132, Windows 7', '2018-01-17 07:12:17'),
(76, 'admin@admin.com', 'admin', '112.110.3.239', 'Chrome 63.0.3239.132, Windows 7', '2018-01-17 07:16:33'),
(77, 'admin@admin.com', 'admin', '150.129.156.85', 'Chrome 63.0.3239.132, Windows 7', '2018-01-17 08:51:52'),
(78, 'librarian1', 'librarian', '150.129.156.85', 'Chrome 63.0.3239.132, Windows 7', '2018-01-17 08:53:33'),
(79, 'librarian1', 'librarian', '150.129.156.85', 'Chrome 63.0.3239.132, Windows 7', '2018-01-17 08:55:40'),
(80, 'admin@admin.com', 'admin', '47.8.22.254', 'Chrome 55.0.2883.91, Android', '2018-01-17 11:03:30'),
(81, 'admin@admin.com', 'admin', '27.34.253.141', 'Firefox 58.0, Windows 10', '2018-01-17 15:59:53'),
(82, 'admin@admin.com', 'admin', '103.87.57.254', 'Chrome 63.0.3239.132, Windows 10', '2018-01-17 18:00:50'),
(83, 'admin@admin.com', 'admin', '103.87.57.254', 'Chrome 63.0.3239.132, Windows 10', '2018-01-17 18:33:35'),
(84, 'admin@admin.com', 'admin', '47.247.211.108', 'Chrome 63.0.3239.132, Windows 8.1', '2018-01-18 07:00:31'),
(85, 'admin@admin.com', 'admin', '117.202.64.78', 'Firefox 49.0, Windows 8.1', '2018-01-18 10:11:13'),
(86, 'admin@admin.com', 'admin', '117.202.64.78', 'Chrome 63.0.3239.132, Windows 7', '2018-01-18 11:10:08'),
(87, 'admin@admin.com', 'admin', '47.247.219.12', 'Chrome 63.0.3239.132, Windows 8.1', '2018-01-18 12:39:32'),
(88, 'admin@admin.com', 'admin', '117.202.64.78', 'Chrome 63.0.3239.132, Windows 7', '2018-01-18 12:55:08'),
(89, 'std1', 'student', '106.219.251.184', 'Chrome 63.0.3239.132, Windows 7', '2018-01-18 16:56:00'),
(90, 'admin@admin.com', 'admin', '117.222.253.242', 'Chrome 63.0.3239.111, Android', '2018-01-18 20:41:24'),
(91, 'admin@admin.com', 'admin', '122.180.218.68', 'Chrome 63.0.3239.132, Windows 8.1', '2018-01-19 04:45:28'),
(92, 'std1', 'student', '103.216.147.20', 'Chrome 63.0.3239.132, Windows 7', '2018-01-19 05:34:41'),
(93, 'librarian1', 'librarian', '103.216.147.20', 'Chrome 63.0.3239.132, Windows 7', '2018-01-19 05:36:19'),
(94, 'admin@admin.com', 'admin', '103.47.238.30', 'Firefox 57.0, Windows 7', '2018-01-19 08:20:32'),
(95, 'std1', 'student', '61.3.27.27', 'Chrome 63.0.3239.132, Windows 8.1', '2018-01-19 09:43:40'),
(96, 'std1', 'student', '61.3.27.27', 'Chrome 63.0.3239.132, Windows 8.1', '2018-01-19 09:46:24'),
(97, 'admin@admin.com', 'admin', '47.247.246.156', 'Chrome 63.0.3239.132, Windows 8.1', '2018-01-20 06:49:39'),
(98, 'admin@admin.com', 'admin', '42.106.209.137', 'Chrome 63.0.3239.111, Android', '2018-01-20 18:34:41'),
(99, 'admin@admin.com', 'admin', '47.247.162.174', 'Chrome 63.0.3239.132, Windows 8.1', '2018-01-21 06:26:36'),
(100, 'admin@admin.com', 'admin', '47.247.191.44', 'Chrome 63.0.3239.132, Windows 8.1', '2018-01-21 12:23:22'),
(101, 'admin@admin.com', 'admin', '106.51.18.103', 'Chrome 63.0.3239.132, Windows 10', '2018-01-21 15:00:28'),
(102, 'admin@admin.com', 'admin', '122.177.163.250', 'Chrome 63.0.3239.132, Windows 7', '2018-01-21 16:00:12'),
(103, 'admin@admin.com', 'admin', '183.83.95.75', 'Chrome 63.0.3239.132, Windows 10', '2018-01-21 18:30:43'),
(104, 'std1', 'student', '121.243.26.251', 'Chrome 63.0.3239.132, Windows 10', '2018-01-22 20:36:25'),
(105, 'admin@admin.com', 'admin', '121.243.26.251', 'Chrome 63.0.3239.132, Windows 10', '2018-01-22 20:39:12'),
(106, 'admin@admin.com', 'admin', '106.210.238.51', 'Chrome 63.0.3239.132, Windows 7', '2018-01-23 05:52:36'),
(107, 'admin@admin.com', 'admin', '111.93.8.98', 'Chrome 63.0.3239.132, Windows 7', '2018-01-23 06:06:56'),
(108, 'admin@admin.com', 'admin', '223.237.14.216', 'Chrome 63.0.3239.111, Android', '2018-01-23 06:41:24'),
(109, 'admin@admin.com', 'admin', '117.192.103.133', 'Chrome 63.0.3239.132, Windows 7', '2018-01-23 07:29:27'),
(110, 'std1', 'student', '117.192.103.133', 'Chrome 63.0.3239.132, Windows 7', '2018-01-23 07:30:43'),
(111, 'librarian1', 'librarian', '117.192.103.133', 'Chrome 63.0.3239.132, Windows 7', '2018-01-23 07:31:25'),
(112, 'std1', 'student', '117.192.103.133', 'Chrome 63.0.3239.132, Windows 7', '2018-01-23 07:43:44'),
(113, 'admin@admin.com', 'admin', '103.254.206.61', 'Opera 50.0.2762.58, Windows 7', '2018-01-23 08:11:36'),
(114, 'admin@admin.com', 'admin', '49.35.18.37', 'Chrome 58.0.3014.0, Windows 10', '2018-01-23 08:33:05'),
(115, 'admin@admin.com', 'admin', '103.254.206.61', 'Opera 50.0.2762.58, Windows 7', '2018-01-23 10:55:43'),
(116, 'teacher1', 'teacher', '103.254.206.61', 'Opera 50.0.2762.58, Windows 7', '2018-01-23 10:59:59'),
(117, 'admin@admin.com', 'admin', '117.192.103.133', 'Chrome 63.0.3239.132, Windows 7', '2018-01-23 12:49:42'),
(118, 'std1', 'student', '117.192.103.133', 'Chrome 63.0.3239.132, Windows 7', '2018-01-23 13:19:56'),
(119, 'librarian1', 'librarian', '117.192.103.133', 'Chrome 63.0.3239.132, Windows 7', '2018-01-23 13:22:07'),
(120, 'teacher1', 'teacher', '183.82.231.176', 'Chrome 63.0.3239.132, Windows 10', '2018-01-23 13:59:12'),
(121, 'admin@admin.com', 'admin', '183.82.231.176', 'Chrome 63.0.3239.132, Windows 10', '2018-01-23 13:59:39'),
(122, 'admin@admin.com', 'admin', '183.82.196.73', 'Chrome 63.0.3239.132, Windows 7', '2018-01-23 18:12:14'),
(123, 'teacher1', 'teacher', '183.83.95.75', 'Chrome 63.0.3239.132, Windows 10', '2018-01-23 18:45:03'),
(124, 'accountant1', 'accountant', '183.83.95.75', 'Chrome 63.0.3239.132, Windows 10', '2018-01-23 18:56:50'),
(125, 'admin@admin.com', 'admin', '183.83.95.75', 'Chrome 63.0.3239.132, Windows 10', '2018-01-23 19:00:57'),
(126, 'accountant1', 'accountant', '117.192.125.20', 'Firefox 49.0, Windows 8.1', '2018-01-24 09:01:28'),
(127, 'admin@admin.com', 'admin', '1.22.194.38', 'Chrome 63.0.3239.132, Windows 7', '2018-01-24 11:24:33'),
(128, 'admin@admin.com', 'admin', '158.228.254.13', 'Chrome 63.0.3239.132, Windows 10', '2018-01-24 12:29:39'),
(129, 'admin@admin.com', 'admin', '171.50.239.53', 'Chrome 63.0.3239.132, Windows 7', '2018-01-24 13:21:44'),
(130, 'admin@admin.com', 'admin', '47.247.89.205', 'Chrome 63.0.3239.132, Windows 8.1', '2018-01-24 17:51:48'),
(131, 'admin@admin.com', 'admin', '157.48.85.130', 'Chrome 63.0.3239.132, Windows 7', '2018-01-25 05:14:32'),
(132, 'admin@admin.com', 'admin', '1.22.194.50', 'Chrome 63.0.3239.132, Windows 7', '2018-01-25 07:50:52'),
(133, 'admin@admin.com', 'admin', '103.79.235.56', 'Chrome 63.0.3239.132, Windows 10', '2018-01-25 12:02:13'),
(134, 'admin@admin.com', 'admin', '157.48.239.132', 'Chrome 63.0.3239.132, Windows 7', '2018-01-25 16:56:05'),
(135, 'admin@admin.com', 'admin', '27.4.232.28', 'Chrome 63.0.3239.132, Windows 7', '2018-01-26 06:35:08'),
(136, 'admin@admin.com', 'admin', '183.83.95.75', 'Chrome 63.0.3239.132, Windows 10', '2018-01-26 09:44:35'),
(137, 'accountant1', 'accountant', '183.83.95.75', 'Chrome 63.0.3239.132, Windows 10', '2018-01-26 09:59:07'),
(138, 'teacher1', 'teacher', '183.83.95.75', 'Chrome 63.0.3239.132, Windows 10', '2018-01-26 09:59:55'),
(139, 'admin@admin.com', 'admin', '47.247.227.175', 'Chrome 63.0.3239.132, Windows 8.1', '2018-01-26 10:05:23'),
(140, 'admin@admin.com', 'admin', '157.48.194.67', 'Chrome 63.0.3239.132, Windows 7', '2018-01-26 11:09:46'),
(141, 'admin@admin.com', 'admin', '157.48.194.67', 'Chrome 63.0.3239.132, Windows 7', '2018-01-26 15:12:25'),
(142, 'admin@admin.com', 'admin', '47.247.227.175', 'Chrome 63.0.3239.132, Windows 8.1', '2018-01-26 15:19:21'),
(143, 'teacher1', 'teacher', '47.247.227.175', 'Chrome 63.0.3239.132, Windows 8.1', '2018-01-26 15:28:50'),
(144, 'parent1', 'parent', '47.247.227.175', 'Chrome 63.0.3239.132, Windows 8.1', '2018-01-26 15:30:03'),
(145, 'admin@admin.com', 'admin', '47.247.227.175', 'Chrome 63.0.3239.132, Windows 8.1', '2018-01-26 15:35:14'),
(146, 'admin@admin.com', 'admin', '47.247.234.150', 'Chrome 63.0.3239.132, Windows 8.1', '2018-01-27 09:10:13'),
(147, 'admin@admin.com', 'admin', '47.247.217.163', 'Chrome 63.0.3239.132, Windows 8.1', '2018-01-27 16:54:04'),
(148, 'teacher1', 'teacher', '157.36.152.43', 'Chrome 63.0.3239.132, Windows 7', '2018-01-28 14:06:31'),
(149, 'admin@admin.com', 'admin', '61.16.138.246', 'Chrome 64.0.3282.119, Windows 10', '2018-01-29 07:43:33'),
(150, 'admin@admin.com', 'admin', '117.98.134.28', 'Chrome 63.0.3239.132, Windows 7', '2018-01-29 08:10:50'),
(151, 'gauravation@gmail.com', 'admin', '115.97.140.33', 'Firefox 61.0, Windows 10', '2018-08-02 09:42:30'),
(152, 'gauravation@gmail.com', 'admin', '115.97.140.33', 'Firefox 61.0, Windows 10', '2018-08-02 09:43:32'),
(153, 'gauravation@gmail.com', 'admin', '115.97.140.33', 'Firefox 61.0, Windows 10', '2018-08-02 11:36:31'),
(154, 'gauravation@gmail.com', 'admin', '115.97.140.33', 'Firefox 61.0, Windows 10', '2018-08-02 11:36:56'),
(155, 'gauravation@gmail.com', 'admin', '115.97.140.33', 'Firefox 61.0, Windows 10', '2018-08-02 13:10:45'),
(156, 'std1', 'student', '115.97.140.33', 'Firefox 61.0, Windows 10', '2018-08-02 13:31:49'),
(157, 'teacher1', 'teacher', '115.97.140.33', 'Firefox 61.0, Windows 10', '2018-08-02 13:32:33'),
(158, 'gauravation@gmail.com', 'admin', '115.97.140.33', 'Firefox 61.0, Windows 10', '2018-08-02 13:32:49'),
(159, 'gauravation@gmail.com', 'admin', '103.48.111.209', 'Firefox 61.0, Windows 10', '2018-08-03 06:46:21'),
(160, 'admin@admin.com', 'admin', '::1', 'Firefox 58.0, Windows 10', '2018-08-03 08:13:37'),
(161, 'gauravation@gmail.com', 'admin', '::1', 'Firefox 58.0, Windows 10', '2018-08-05 14:17:40'),
(162, 'parent1', 'parent', '::1', 'Firefox 58.0, Windows 10', '2018-08-05 14:21:52'),
(163, 'gauravation@gmail.com', 'admin', '::1', 'Firefox 58.0, Windows 10', '2018-08-06 10:17:13'),
(164, 'gauravation@gmail.com', 'admin', '::1', 'Firefox 58.0, Windows 10', '2018-08-06 10:55:01'),
(165, 'gauravation@gmail.com', 'admin', '::1', 'Firefox 58.0, Windows 10', '2018-08-07 05:50:11'),
(166, 'gauravation@gmail.com', 'admin', '::1', 'Firefox 58.0, Windows 10', '2018-08-07 11:59:16'),
(167, 'gauravation@gmail.com', 'admin', '::1', 'Firefox 58.0, Windows 10', '2018-08-07 13:41:01'),
(168, 'gauravation@gmail.com', 'admin', '::1', 'Firefox 58.0, Windows 10', '2018-08-07 13:44:13'),
(169, 'gauravation@gmail.com', 'admin', '::1', 'Firefox 58.0, Windows 10', '2018-08-07 13:44:28'),
(170, 'gauravation@gmail.com', 'admin', '::1', 'Firefox 58.0, Windows 10', '2018-08-08 05:55:24'),
(171, 'gauravation@gmail.com', 'admin', '::1', 'Firefox 58.0, Windows 10', '2018-08-08 08:04:55'),
(172, 'gauravation@gmail.com', 'admin', '::1', 'Firefox 58.0, Windows 10', '2018-08-08 08:14:25'),
(173, 'gauravation@gmail.com', 'admin', '::1', 'Firefox 58.0, Windows 10', '2018-08-08 08:34:55'),
(174, 'gauravation@gmail.com', 'admin', '::1', 'Firefox 58.0, Windows 10', '2018-08-08 08:36:14'),
(175, 'gauravation@gmail.com', 'admin', '::1', 'Firefox 58.0, Windows 10', '2018-08-09 05:52:51'),
(176, 'gauravation@gmail.com', 'admin', '::1', 'Firefox 58.0, Windows 10', '2018-08-09 08:35:17'),
(177, 'gauravation@gmail.com', 'admin', '::1', 'Firefox 58.0, Windows 10', '2018-08-10 05:52:00'),
(178, 'accountant1', 'accountant', '::1', 'Firefox 58.0, Windows 10', '2018-08-10 12:56:33'),
(179, 'teacher13', 'teacher', '::1', 'Firefox 58.0, Windows 10', '2018-08-10 13:01:58'),
(180, 'gauravation@gmail.com', 'admin', '::1', 'Firefox 58.0, Windows 10', '2018-08-10 13:16:16'),
(181, 'teacher13', 'teacher', '::1', 'Firefox 58.0, Windows 10', '2018-08-10 13:16:51'),
(182, 'gauravation@gmail.com', 'admin', '127.0.0.1', 'Firefox 58.0, Windows 10', '2018-08-11 18:47:18'),
(183, 'gauravation@gmail.com', 'admin', '::1', 'Firefox 58.0, Windows 10', '2018-08-12 06:56:48'),
(184, 'gauravation@gmail.com', 'admin', '::1', 'Firefox 58.0, Windows 10', '2018-08-12 13:03:33'),
(185, 'gauravation@gmail.com', 'admin', '::1', 'Firefox 58.0, Windows 10', '2018-08-13 05:56:40'),
(186, 'gauravation@gmail.com', 'admin', '::1', 'Firefox 58.0, Windows 10', '2018-08-13 07:55:36'),
(187, 'gauravation@gmail.com', 'admin', '::1', 'Firefox 58.0, Windows 10', '2018-08-14 05:41:27'),
(188, 'gauravation@gmail.com', 'admin', '::1', 'Firefox 58.0, Windows 10', '2018-08-16 07:16:58'),
(189, 'gauravation@gmail.com', 'admin', '::1', 'Firefox 58.0, Windows 10', '2018-08-16 08:14:17'),
(190, 'parent5', 'parent', '::1', 'Firefox 58.0, Windows 10', '2018-08-16 08:18:26'),
(191, 'parent2', 'parent', '::1', 'Firefox 58.0, Windows 10', '2018-08-16 08:27:49'),
(192, 'baa1s@sdd.com', 'admin', '::1', 'Firefox 58.0, Windows 10', '2018-08-16 11:46:48'),
(193, 'test@test.com', 'admin', '::1', 'Firefox 58.0, Windows 10', '2018-08-16 11:52:49'),
(194, 'gauravation@gmail.com', 'admin', '::1', 'Firefox 58.0, Windows 10', '2018-08-16 11:57:58'),
(195, 'gauravation@gmail.com', 'admin', '::1', 'Firefox 58.0, Windows 10', '2018-08-16 12:00:13'),
(196, 'gauravation@gmail.com', 'admin', '::1', 'Firefox 58.0, Windows 10', '2018-08-16 12:14:03'),
(197, 'gauravation@gmail.com', 'admin', '::1', 'Firefox 58.0, Windows 10', '2018-08-16 12:15:44'),
(198, 'parent1', 'parent', '::1', 'Firefox 58.0, Windows 10', '2018-08-16 12:17:55'),
(199, 'parent5', 'parent', '::1', 'Firefox 58.0, Windows 10', '2018-08-16 12:21:10'),
(200, 'gauravation@gmail.com', 'admin', '::1', 'Firefox 58.0, Windows 10', '2018-08-16 12:21:32'),
(201, 'admin@admin.com', 'admin', '::1', 'Firefox 58.0, Windows 10', '2018-08-16 12:23:02'),
(202, 'test@test.com', 'admin', '::1', 'Firefox 58.0, Windows 10', '2018-08-16 12:23:58'),
(203, 'parent10', 'parent', '::1', 'Firefox 58.0, Windows 10', '2018-08-16 12:27:49'),
(204, 'gauravation@gmail.com', 'admin', '::1', 'Firefox 58.0, Windows 10', '2018-08-16 12:48:47'),
(205, 'parent1', 'parent', '::1', 'Firefox 58.0, Windows 10', '2018-08-16 12:54:25'),
(206, 'parent1', 'parent', '::1', 'Firefox 58.0, Windows 10', '2018-08-16 13:28:35'),
(207, 'std5', 'student', '::1', 'Firefox 58.0, Windows 10', '2018-08-18 06:13:10'),
(208, 'parent1', 'parent', '::1', 'Firefox 58.0, Windows 10', '2018-08-18 06:18:53'),
(209, 'gauravation@gmail.com', 'admin', '::1', 'Firefox 58.0, Windows 10', '2018-08-18 10:34:39'),
(210, 'gauravation@gmail.com', 'admin', '::1', 'Chrome 68.0.3440.106, Windows 10', '2018-08-20 06:23:30'),
(211, 'parent1', 'parent', '::1', 'Chrome 68.0.3440.106, Windows 10', '2018-08-20 06:26:09'),
(212, 'parent1', 'parent', '::1', 'Chrome 68.0.3440.106, Windows 10', '2018-08-20 07:10:51'),
(213, 'parent1', 'parent', '::1', 'Chrome 68.0.3440.106, Windows 10', '2018-08-20 07:16:58'),
(214, 'parent1', 'parent', '::1', 'Chrome 68.0.3440.106, Windows 10', '2018-08-20 08:14:02'),
(215, 'gauravation@gmail.com', 'admin', '::1', 'Firefox 58.0, Windows 10', '2018-08-22 10:14:08'),
(216, 'parent1', 'parent', '::1', 'Firefox 58.0, Windows 10', '2018-08-22 10:16:44'),
(217, 'parent10', 'parent', '::1', 'Chrome 68.0.3440.106, Windows 10', '2018-08-23 08:08:49'),
(218, 'parent5', 'parent', '::1', 'Chrome 68.0.3440.106, Windows 10', '2018-08-23 08:09:35'),
(219, 'parent2', 'parent', '::1', 'Chrome 68.0.3440.106, Windows 10', '2018-08-23 08:10:04'),
(220, 'parent10', 'parent', '::1', 'Firefox 58.0, Windows 10', '2018-08-24 08:12:50'),
(221, 'parent10', 'parent', '::1', 'Firefox 58.0, Windows 10', '2018-08-24 08:49:50'),
(222, 'parent1', 'parent', '::1', 'Firefox 58.0, Windows 10', '2018-08-24 11:15:29'),
(223, 'parent10', 'parent', '::1', 'Chrome 68.0.3440.106, Windows 10', '2018-08-25 06:36:52'),
(224, 'parent1', 'parent', '::1', 'Chrome 68.0.3440.106, Windows 10', '2018-08-25 06:37:20'),
(225, 'gauravation@gmail.com', 'admin', '::1', 'Chrome 68.0.3440.106, Windows 10', '2018-08-27 06:16:26'),
(226, 'gauravation@gmail.com', 'admin', '::1', 'Chrome 68.0.3440.106, Windows 10', '2018-08-27 11:18:08'),
(227, 'parent1', 'parent', '::1', 'Chrome 68.0.3440.106, Windows 10', '2018-08-27 12:29:34'),
(228, 'gauravation@gmail.com', 'admin', '::1', 'Chrome 68.0.3440.106, Windows 10', '2018-08-27 12:30:56'),
(229, 'accountant1', 'accountant', '::1', 'Chrome 68.0.3440.106, Windows 10', '2018-08-27 12:45:43'),
(230, 'gauravation@gmail.com', 'admin', '::1', 'Chrome 68.0.3440.106, Windows 10', '2018-08-27 12:50:07'),
(231, 'parent1', 'parent', '::1', 'Chrome 68.0.3440.106, Windows 10', '2018-08-27 13:43:28'),
(232, 'parent1', 'parent', '::1', 'Chrome 68.0.3440.106, Windows 10', '2018-08-28 06:45:37'),
(233, 'parent1', 'parent', '::1', 'Chrome 68.0.3440.106, Windows 10', '2018-08-28 13:40:10'),
(234, 'parent1', 'parent', '::1', 'Chrome 68.0.3440.106, Windows 10', '2018-08-29 06:52:36'),
(235, 'gauravation@gmail.com', 'admin', '::1', 'Chrome 68.0.3440.106, Windows 10', '2018-08-29 08:35:31'),
(236, 'parent12', 'parent', '::1', 'Chrome 68.0.3440.106, Windows 10', '2018-08-29 09:46:57'),
(237, 'gauravation@gmail.com', 'admin', '::1', 'Chrome 68.0.3440.106, Windows 10', '2018-08-29 09:54:22'),
(238, 'gauravation@gmail.com', 'admin', '::1', 'Chrome 68.0.3440.106, Windows 10', '2018-08-30 06:22:48'),
(239, 'parent12', 'parent', '::1', 'Chrome 68.0.3440.106, Windows 10', '2018-08-30 06:23:31'),
(240, 'teacher8', 'teacher', '::1', 'Chrome 68.0.3440.106, Windows 10', '2018-08-30 06:27:23'),
(241, 'parent12', 'parent', '::1', 'Chrome 68.0.3440.106, Windows 10', '2018-08-30 06:29:03'),
(242, 'teacher8', 'teacher', '::1', 'Chrome 68.0.3440.106, Windows 10', '2018-08-30 06:29:44'),
(243, 'parent12', 'parent', '::1', 'Chrome 68.0.3440.106, Windows 10', '2018-08-30 06:30:24'),
(244, 'gauravation@gmail.com', 'admin', '::1', 'Chrome 68.0.3440.106, Windows 10', '2018-08-30 06:32:29'),
(245, 'parent12', 'parent', '::1', 'Chrome 68.0.3440.106, Windows 10', '2018-08-31 06:04:17'),
(246, 'gauravation@gmail.com', 'admin', '::1', 'Chrome 68.0.3440.106, Windows 10', '2018-08-31 08:59:39'),
(247, 'gauravation@gmail.com', 'admin', '::1', 'Chrome 68.0.3440.106, Windows 10', '2018-09-01 06:32:23'),
(248, 'gauravation@gmail.com', 'admin', '::1', 'Chrome 68.0.3440.106, Windows 10', '2018-09-02 06:32:39'),
(249, 'parent12', 'parent', '::1', 'Chrome 68.0.3440.106, Windows 10', '2018-09-02 06:41:37'),
(250, 'gauravation@gmail.com', 'admin', '::1', 'Chrome 68.0.3440.106, Windows 10', '2018-09-02 06:45:49'),
(251, 'parent13', 'parent', '::1', 'Chrome 68.0.3440.106, Windows 10', '2018-09-02 08:51:55'),
(252, 'gauravation@gmail.com', 'admin', '::1', 'Chrome 68.0.3440.106, Windows 10', '2018-09-02 14:27:32'),
(253, 'gauravation@gmail.com', 'admin', '::1', 'Chrome 68.0.3440.106, Windows 10', '2018-09-04 06:48:05'),
(254, 'parent12', 'parent', '::1', 'Chrome 68.0.3440.106, Windows 10', '2018-09-04 06:50:59'),
(255, 'gauravation@gmail.com', 'admin', '::1', 'Chrome 68.0.3440.106, Windows 10', '2018-09-04 07:51:51'),
(256, 'gauravation@gmail.com', 'admin', '::1', 'Chrome 68.0.3440.106, Windows 10', '2018-09-04 14:04:56'),
(257, 'gauravation@gmail.com', 'admin', '::1', 'Chrome 68.0.3440.106, Windows 10', '2018-09-05 08:53:18'),
(258, 'gauravation@gmail.com', 'admin', '::1', 'Chrome 68.0.3440.106, Windows 10', '2018-09-05 12:14:54'),
(259, 'gauravation@gmail.com', 'admin', '::1', 'Chrome 68.0.3440.106, Windows 10', '2018-09-05 12:36:01'),
(260, 'gauravation@gmail.com', 'admin', '::1', 'Chrome 68.0.3440.106, Windows 10', '2018-09-05 13:09:42'),
(261, 'gauravation@gmail.com', 'admin', '::1', 'Chrome 68.0.3440.106, Windows 10', '2018-09-05 14:56:15'),
(262, 'gauravation@gmail.com', 'admin', '::1', 'Chrome 68.0.3440.106, Windows 10', '2018-09-06 12:21:01'),
(263, 'gauravation@gmail.com', 'admin', '::1', 'Firefox 59.0, Windows 10', '2018-09-08 07:31:44'),
(264, 'teacher4', 'teacher', '::1', 'Chrome 68.0.3440.106, Windows 10', '2018-09-08 07:33:13'),
(265, 'teacher8', 'teacher', '::1', 'Chrome 68.0.3440.106, Windows 10', '2018-09-08 07:34:25'),
(266, 'teacher7', 'teacher', '::1', 'Chrome 68.0.3440.106, Windows 10', '2018-09-08 07:34:48'),
(267, 'teacher6', 'teacher', '::1', 'Chrome 68.0.3440.106, Windows 10', '2018-09-08 07:35:10'),
(268, 'teacher5', 'teacher', '::1', 'Chrome 68.0.3440.106, Windows 10', '2018-09-08 07:35:39'),
(269, 'teacher5', 'teacher', '::1', 'Chrome 68.0.3440.106, Windows 10', '2018-09-08 07:36:08'),
(270, 'teacher8', 'teacher', '::1', 'Chrome 68.0.3440.106, Windows 10', '2018-09-08 07:36:56'),
(271, 'parent12', 'parent', '::1', 'Chrome 68.0.3440.106, Windows 10', '2018-09-08 07:40:44'),
(272, 'teacher8', 'teacher', '::1', 'Chrome 68.0.3440.106, Windows 10', '2018-09-08 07:43:00'),
(273, 'parent12', 'parent', '::1', 'Firefox 59.0, Windows 10', '2018-09-08 07:49:06'),
(274, 'teacher8', 'teacher', '::1', 'Chrome 68.0.3440.106, Windows 10', '2018-09-08 18:36:47'),
(275, 'teacher8', 'teacher', '::1', 'Chrome 68.0.3440.106, Windows 10', '2018-09-09 09:31:12'),
(276, 'gauravation@gmail.com', 'admin', '::1', 'Chrome 68.0.3440.106, Windows 10', '2018-09-09 09:31:50'),
(277, 'teacher8', 'teacher', '::1', 'Chrome 68.0.3440.106, Windows 10', '2018-09-10 07:41:55'),
(278, 'teacher8', 'teacher', '::1', 'Chrome 68.0.3440.106, Windows 10', '2018-09-10 12:38:36'),
(279, 'teacher8', 'teacher', '::1', 'Chrome 68.0.3440.106, Windows 10', '2018-09-11 08:31:35'),
(280, 'teacher8', 'teacher', '::1', 'Chrome 68.0.3440.106, Windows 10', '2018-09-12 06:22:49'),
(281, 'teacher8', 'teacher', '::1', 'Chrome 68.0.3440.106, Windows 10', '2018-09-12 13:10:47'),
(282, 'teacher8', 'teacher', '::1', 'Chrome 68.0.3440.106, Windows 10', '2018-09-13 12:23:57'),
(283, 'teacher8', 'teacher', '::1', 'Chrome 68.0.3440.106, Windows 10', '2018-09-14 06:24:27'),
(284, 'teacher8', 'teacher', '::1', 'Chrome 68.0.3440.106, Windows 10', '2018-09-14 13:48:38'),
(285, 'teacher8', 'teacher', '::1', 'Chrome 68.0.3440.106, Windows 10', '2018-09-17 08:59:57'),
(286, 'teacher8', 'teacher', '::1', 'Chrome 68.0.3440.106, Windows 10', '2018-09-17 12:24:28'),
(287, 'gauravation@gmail.com', 'admin', '::1', 'Chrome 68.0.3440.106, Windows 10', '2018-09-20 06:35:38'),
(288, 'teacher8', 'teacher', '::1', 'Chrome 68.0.3440.106, Windows 10', '2018-09-20 08:43:57'),
(289, 'gauravation@gmail.com', 'admin', '::1', 'Chrome 68.0.3440.106, Windows 10', '2018-09-20 09:58:25');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `user_id` int(10) NOT NULL,
  `username` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `password` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `childs` text COLLATE utf8_unicode_ci NOT NULL,
  `role` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `verification_code` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `is_active` varchar(255) COLLATE utf8_unicode_ci DEFAULT 'yes',
  `last_login` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `user_id`, `username`, `password`, `childs`, `role`, `verification_code`, `is_active`, `last_login`, `created_at`, `updated_at`) VALUES
(1, 1, 'std1', 'ozcq7g', '', 'student', '', 'yes', '2018-08-23 18:08:23', '2018-01-07 02:52:13', '0000-00-00 00:00:00'),
(2, 1, 'parent1', 'ffwtxs', '1,3,4', 'parent', '', 'yes', '2018-08-23 20:06:18', '2018-08-23 13:06:18', '0000-00-00 00:00:00'),
(3, 1, 'librarian1', 'nyma71', '', 'librarian', '', 'yes', '2018-08-23 18:08:23', '2018-01-07 02:57:28', '0000-00-00 00:00:00'),
(4, 1, 'teacher1', 'jtnbrr', '', 'teacher', '', 'yes', '2018-09-20 15:26:17', '2018-09-20 08:26:17', '0000-00-00 00:00:00'),
(5, 1, 'accountant1', 'wqwsh7', '', 'accountant', '', 'yes', '2018-08-23 18:08:23', '2018-01-07 03:01:59', '0000-00-00 00:00:00'),
(6, 2, 'std2', 'l7epst', '', 'student', '', 'yes', '2018-08-23 18:08:23', '2018-08-03 10:54:30', '0000-00-00 00:00:00'),
(7, 2, 'parent2', '3gsf8j', '2', 'parent', '', 'yes', '2018-08-24 17:40:50', '2018-08-24 10:40:50', '0000-00-00 00:00:00'),
(8, 3, 'std3', 'y8dywt', '', 'student', '', 'yes', '2018-08-23 18:08:23', '2018-01-21 12:28:02', '0000-00-00 00:00:00'),
(9, 2, 'teacher2', '9lm6la', '', 'teacher', '', 'yes', '2018-09-20 15:26:17', '2018-09-20 08:26:17', '0000-00-00 00:00:00'),
(10, 4, 'std4', 'zolyh2', '', 'student', '', 'yes', '2018-08-23 18:08:23', '2018-08-02 09:50:36', '0000-00-00 00:00:00'),
(11, 5, 'std5', 'vaaxrh', '', 'student', '', 'yes', '2018-08-23 18:08:23', '2018-08-06 08:10:10', '0000-00-00 00:00:00'),
(12, 5, 'parent5', '7rdmu2', '5', 'parent', '', 'yes', '2018-08-24 15:04:59', '2018-08-24 08:04:59', '0000-00-00 00:00:00'),
(13, 3, 'teacher3', 'dhhwok', '', 'teacher', '', 'yes', '2018-09-20 15:26:17', '2018-09-20 08:26:17', '0000-00-00 00:00:00'),
(14, 4, 'teacher4', '3ysamm', '', 'teacher', '', 'yes', '2018-09-20 15:26:17', '2018-09-20 08:26:17', '0000-00-00 00:00:00'),
(15, 5, 'teacher5', 'adhgil', '', 'teacher', '', 'yes', '2018-09-20 15:26:17', '2018-09-20 08:26:17', '0000-00-00 00:00:00'),
(16, 10, 'std10', 'zlwytl', '', 'student', '', 'yes', '2018-08-23 18:08:23', '2018-08-16 12:26:47', '0000-00-00 00:00:00'),
(17, 10, 'parent10', 'akv27z', '10', 'parent', '', 'yes', '2018-08-30 13:16:50', '2018-08-30 06:16:50', '0000-00-00 00:00:00'),
(18, 1, 'teacher1', '127pv2', '', 'teacher', '', 'yes', '2018-09-20 15:26:17', '2018-09-20 08:26:17', '0000-00-00 00:00:00'),
(19, 2, 'teacher2', 'iv0xeb', '', 'teacher', '', 'yes', '2018-09-20 15:26:17', '2018-09-20 08:26:17', '0000-00-00 00:00:00'),
(20, 3, 'teacher3', 'z5h7pv', '', 'teacher', '', 'yes', '2018-09-20 15:26:17', '2018-09-20 08:26:17', '0000-00-00 00:00:00'),
(21, 4, 'teacher4', 'yighjp', '', 'teacher', '', 'yes', '2018-09-20 15:26:17', '2018-09-20 08:26:17', '0000-00-00 00:00:00'),
(22, 5, 'teacher5', '78vmai', '', 'teacher', '', 'yes', '2018-09-20 15:26:17', '2018-09-20 08:26:17', '0000-00-00 00:00:00'),
(23, 6, 'teacher6', 'rnk1cd', '', 'teacher', '', 'yes', '2018-09-20 15:26:17', '2018-09-20 08:26:17', '0000-00-00 00:00:00'),
(24, 7, 'teacher7', 'rnp1w7', '', 'teacher', '', 'yes', '2018-09-20 15:26:17', '2018-09-20 08:26:17', '0000-00-00 00:00:00'),
(25, 8, 'teacher8', '5hdfgw', '', 'teacher', '', 'yes', '2018-09-20 15:26:17', '2018-09-20 08:26:17', '0000-00-00 00:00:00'),
(26, 12, 'std12', 'v6ykgm', '', 'student', '', 'yes', '2018-08-29 15:07:58', '2018-08-29 09:37:58', '0000-00-00 00:00:00'),
(27, 12, 'parent12', '85cs41', '12', 'parent', '', 'yes', '2018-09-20 17:14:35', '2018-09-20 10:14:35', '0000-00-00 00:00:00'),
(28, 2, 'librarian2', '8lha8b', '', 'librarian', '', 'yes', '2018-08-29 15:10:17', '2018-08-29 09:40:17', '0000-00-00 00:00:00'),
(29, 14, 'std14', '5wjt96', '', 'student', '', 'yes', '2018-08-30 18:03:15', '2018-08-30 12:33:15', '0000-00-00 00:00:00'),
(30, 14, 'parent14', '81cyel', '14', 'parent', '', 'yes', '2018-08-31 13:07:20', '2018-08-31 06:07:21', '0000-00-00 00:00:00'),
(31, 13, 'std13', 'i1csk5', '', 'student', '', 'yes', '2018-09-02 12:04:55', '2018-09-02 06:34:55', '0000-00-00 00:00:00'),
(32, 13, 'parent13', 'ytb2xk', '13', 'parent', '', 'yes', '2018-09-05 15:44:22', '2018-09-05 08:44:22', '0000-00-00 00:00:00'),
(33, 14, 'std14', 'wjzqha', '', 'student', '', 'yes', '2018-09-05 14:26:20', '2018-09-05 08:56:20', '0000-00-00 00:00:00'),
(34, 15, 'std15', 'z5hxeu', '', 'student', '', 'yes', '2018-09-05 14:26:31', '2018-09-05 08:56:31', '0000-00-00 00:00:00'),
(35, 16, 'std16', 'ryzv0a', '', 'student', '', 'yes', '2018-09-05 15:18:44', '2018-09-05 09:48:44', '0000-00-00 00:00:00'),
(36, 0, 'std0', 'jibcnz', '', 'student', '', 'yes', '2018-09-20 12:22:33', '2018-09-20 06:52:33', '0000-00-00 00:00:00'),
(37, 0, 'parent0', 'cjfvc3', '0', 'parent', '', 'yes', '2018-09-20 12:22:33', '2018-09-20 06:52:33', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `users_authentication`
--

CREATE TABLE `users_authentication` (
  `id` int(11) NOT NULL,
  `childs_id` int(11) DEFAULT NULL,
  `teacher_id` int(11) DEFAULT NULL,
  `token` varchar(255) NOT NULL,
  `role` varchar(255) NOT NULL,
  `expired_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users_authentication`
--

INSERT INTO `users_authentication` (`id`, `childs_id`, `teacher_id`, `token`, `role`, `expired_at`, `created_at`, `updated_at`) VALUES
(71, NULL, 8, '$1$ys3.TG1.$i.EqOb96rL.SEelI8ovzX/', 'teacher', '2018-09-21 04:16:14', '2018-09-20 13:56:17', '2018-09-20 16:16:14'),
(72, 12, NULL, '$1$Xy3.U8/.$zvUY7ysvk/h.Baa2sibyh/', 'parent', '2018-09-21 07:03:26', '2018-09-20 15:44:35', '2018-09-20 19:03:26');

-- --------------------------------------------------------

--
-- Table structure for table `vehicles`
--

CREATE TABLE `vehicles` (
  `id` int(10) UNSIGNED NOT NULL,
  `vehicle_no` varchar(20) DEFAULT NULL,
  `vehicle_model` varchar(100) NOT NULL DEFAULT 'None',
  `manufacture_year` varchar(4) DEFAULT NULL,
  `driver_name` varchar(50) DEFAULT NULL,
  `driver_licence` varchar(50) NOT NULL DEFAULT 'None',
  `driver_contact` varchar(20) DEFAULT NULL,
  `note` text,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `vehicles`
--

INSERT INTO `vehicles` (`id`, `vehicle_no`, `vehicle_model`, `manufacture_year`, `driver_name`, `driver_licence`, `driver_contact`, `note`, `created_at`) VALUES
(2, 'UP 53 CA 1990', 'Bus', '2009', 'Vishu Kumar', 'ERT10889', '9171523459', 'Happy Journey!!', '2018-08-30 10:02:37'),
(3, 'UP 52 CT 2330', 'Jeep', '1999', 'Manoj Sinha', 'MAU10574', '9145965867', 'Go to School!!!', '2018-08-30 11:34:53');

-- --------------------------------------------------------

--
-- Table structure for table `vehicle_routes`
--

CREATE TABLE `vehicle_routes` (
  `id` int(11) UNSIGNED NOT NULL,
  `route_id` int(11) DEFAULT NULL,
  `vehicle_id` int(11) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `vehicle_routes`
--

INSERT INTO `vehicle_routes` (`id`, `route_id`, `vehicle_id`, `created_at`) VALUES
(2, 4, 2, '2018-08-30 10:02:55'),
(3, 5, 3, '2018-08-30 11:35:18');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `accountants`
--
ALTER TABLE `accountants`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `attendence_type`
--
ALTER TABLE `attendence_type`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `books`
--
ALTER TABLE `books`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `book_issues`
--
ALTER TABLE `book_issues`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `classes`
--
ALTER TABLE `classes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `class_sections`
--
ALTER TABLE `class_sections`
  ADD PRIMARY KEY (`id`),
  ADD KEY `class_id` (`class_id`),
  ADD KEY `section_id` (`section_id`);

--
-- Indexes for table `contents`
--
ALTER TABLE `contents`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `email_config`
--
ALTER TABLE `email_config`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `employee_csv`
--
ALTER TABLE `employee_csv`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `exams`
--
ALTER TABLE `exams`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `exam_results`
--
ALTER TABLE `exam_results`
  ADD PRIMARY KEY (`id`),
  ADD KEY `exam_schedule_id` (`exam_schedule_id`),
  ADD KEY `student_id` (`student_id`);

--
-- Indexes for table `exam_schedules`
--
ALTER TABLE `exam_schedules`
  ADD PRIMARY KEY (`id`),
  ADD KEY `teacher_subject_id` (`teacher_subject_id`);

--
-- Indexes for table `expenses`
--
ALTER TABLE `expenses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `expense_head`
--
ALTER TABLE `expense_head`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `feecategory`
--
ALTER TABLE `feecategory`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `feemasters`
--
ALTER TABLE `feemasters`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `fees_discounts`
--
ALTER TABLE `fees_discounts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `session_id` (`session_id`);

--
-- Indexes for table `feetype`
--
ALTER TABLE `feetype`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `fee_groups`
--
ALTER TABLE `fee_groups`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `fee_groups_feetype`
--
ALTER TABLE `fee_groups_feetype`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fee_session_group_id` (`fee_session_group_id`),
  ADD KEY `fee_groups_id` (`fee_groups_id`),
  ADD KEY `feetype_id` (`feetype_id`),
  ADD KEY `session_id` (`session_id`);

--
-- Indexes for table `fee_receipt_no`
--
ALTER TABLE `fee_receipt_no`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `fee_session_groups`
--
ALTER TABLE `fee_session_groups`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fee_groups_id` (`fee_groups_id`),
  ADD KEY `session_id` (`session_id`);

--
-- Indexes for table `grades`
--
ALTER TABLE `grades`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `hostel`
--
ALTER TABLE `hostel`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `hostel_rooms`
--
ALTER TABLE `hostel_rooms`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `income`
--
ALTER TABLE `income`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `income_head`
--
ALTER TABLE `income_head`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `item`
--
ALTER TABLE `item`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `item_category`
--
ALTER TABLE `item_category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `item_issue`
--
ALTER TABLE `item_issue`
  ADD PRIMARY KEY (`id`),
  ADD KEY `item_id` (`item_id`),
  ADD KEY `item_category_id` (`item_category_id`);

--
-- Indexes for table `item_stock`
--
ALTER TABLE `item_stock`
  ADD PRIMARY KEY (`id`),
  ADD KEY `item_id` (`item_id`),
  ADD KEY `supplier_id` (`supplier_id`),
  ADD KEY `store_id` (`store_id`);

--
-- Indexes for table `item_store`
--
ALTER TABLE `item_store`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `item_supplier`
--
ALTER TABLE `item_supplier`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `languages`
--
ALTER TABLE `languages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `lang_keys`
--
ALTER TABLE `lang_keys`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `lang_pharses`
--
ALTER TABLE `lang_pharses`
  ADD PRIMARY KEY (`id`),
  ADD KEY `lang_id` (`lang_id`),
  ADD KEY `key_id` (`key_id`);

--
-- Indexes for table `libarary_members`
--
ALTER TABLE `libarary_members`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `librarians`
--
ALTER TABLE `librarians`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `login`
--
ALTER TABLE `login`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `messages`
--
ALTER TABLE `messages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `notification_setting`
--
ALTER TABLE `notification_setting`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `payment_settings`
--
ALTER TABLE `payment_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `read_notification`
--
ALTER TABLE `read_notification`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `room_types`
--
ALTER TABLE `room_types`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sch_settings`
--
ALTER TABLE `sch_settings`
  ADD KEY `lang_id` (`lang_id`),
  ADD KEY `session_id` (`session_id`);

--
-- Indexes for table `sections`
--
ALTER TABLE `sections`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `send_notification`
--
ALTER TABLE `send_notification`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sms_config`
--
ALTER TABLE `sms_config`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `students`
--
ALTER TABLE `students`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `student_attendences`
--
ALTER TABLE `student_attendences`
  ADD PRIMARY KEY (`id`),
  ADD KEY `student_session_id` (`student_session_id`),
  ADD KEY `attendence_type_id` (`attendence_type_id`);

--
-- Indexes for table `student_doc`
--
ALTER TABLE `student_doc`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `student_fees`
--
ALTER TABLE `student_fees`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `student_fees_deposite`
--
ALTER TABLE `student_fees_deposite`
  ADD PRIMARY KEY (`id`),
  ADD KEY `student_fees_master_id` (`student_fees_master_id`),
  ADD KEY `fee_groups_feetype_id` (`fee_groups_feetype_id`);

--
-- Indexes for table `student_fees_discounts`
--
ALTER TABLE `student_fees_discounts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `student_session_id` (`student_session_id`),
  ADD KEY `fees_discount_id` (`fees_discount_id`);

--
-- Indexes for table `student_fees_master`
--
ALTER TABLE `student_fees_master`
  ADD PRIMARY KEY (`id`),
  ADD KEY `student_session_id` (`student_session_id`),
  ADD KEY `fee_session_group_id` (`fee_session_group_id`);

--
-- Indexes for table `student_session`
--
ALTER TABLE `student_session`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `student_sibling`
--
ALTER TABLE `student_sibling`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `student_transport_fees`
--
ALTER TABLE `student_transport_fees`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `subjects`
--
ALTER TABLE `subjects`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `teacher`
--
ALTER TABLE `teacher`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `teachers`
--
ALTER TABLE `teachers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `teacher_subjects`
--
ALTER TABLE `teacher_subjects`
  ADD PRIMARY KEY (`id`),
  ADD KEY `class_section_id` (`class_section_id`),
  ADD KEY `session_id` (`session_id`),
  ADD KEY `subject_id` (`subject_id`),
  ADD KEY `teacher_id` (`teacher_id`);

--
-- Indexes for table `timetables`
--
ALTER TABLE `timetables`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `transport_route`
--
ALTER TABLE `transport_route`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `userlog`
--
ALTER TABLE `userlog`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users_authentication`
--
ALTER TABLE `users_authentication`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `vehicles`
--
ALTER TABLE `vehicles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `vehicle_routes`
--
ALTER TABLE `vehicle_routes`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `accountants`
--
ALTER TABLE `accountants`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;
--
-- AUTO_INCREMENT for table `attendence_type`
--
ALTER TABLE `attendence_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `books`
--
ALTER TABLE `books`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `book_issues`
--
ALTER TABLE `book_issues`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `classes`
--
ALTER TABLE `classes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `class_sections`
--
ALTER TABLE `class_sections`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `contents`
--
ALTER TABLE `contents`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `email_config`
--
ALTER TABLE `email_config`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `employee_csv`
--
ALTER TABLE `employee_csv`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=77;
--
-- AUTO_INCREMENT for table `exams`
--
ALTER TABLE `exams`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `exam_results`
--
ALTER TABLE `exam_results`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `exam_schedules`
--
ALTER TABLE `exam_schedules`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `expenses`
--
ALTER TABLE `expenses`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `expense_head`
--
ALTER TABLE `expense_head`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `feecategory`
--
ALTER TABLE `feecategory`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `feemasters`
--
ALTER TABLE `feemasters`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `fees_discounts`
--
ALTER TABLE `fees_discounts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `feetype`
--
ALTER TABLE `feetype`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT for table `fee_groups`
--
ALTER TABLE `fee_groups`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;
--
-- AUTO_INCREMENT for table `fee_groups_feetype`
--
ALTER TABLE `fee_groups_feetype`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
--
-- AUTO_INCREMENT for table `fee_receipt_no`
--
ALTER TABLE `fee_receipt_no`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `fee_session_groups`
--
ALTER TABLE `fee_session_groups`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT for table `grades`
--
ALTER TABLE `grades`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `hostel`
--
ALTER TABLE `hostel`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `hostel_rooms`
--
ALTER TABLE `hostel_rooms`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `income`
--
ALTER TABLE `income`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `income_head`
--
ALTER TABLE `income_head`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `item`
--
ALTER TABLE `item`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `item_category`
--
ALTER TABLE `item_category`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `item_issue`
--
ALTER TABLE `item_issue`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `item_stock`
--
ALTER TABLE `item_stock`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `item_store`
--
ALTER TABLE `item_store`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `item_supplier`
--
ALTER TABLE `item_supplier`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `languages`
--
ALTER TABLE `languages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=92;
--
-- AUTO_INCREMENT for table `lang_keys`
--
ALTER TABLE `lang_keys`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=783;
--
-- AUTO_INCREMENT for table `lang_pharses`
--
ALTER TABLE `lang_pharses`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=74122;
--
-- AUTO_INCREMENT for table `libarary_members`
--
ALTER TABLE `libarary_members`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `librarians`
--
ALTER TABLE `librarians`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `login`
--
ALTER TABLE `login`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `messages`
--
ALTER TABLE `messages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `notification_setting`
--
ALTER TABLE `notification_setting`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `payment_settings`
--
ALTER TABLE `payment_settings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `read_notification`
--
ALTER TABLE `read_notification`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `room_types`
--
ALTER TABLE `room_types`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `sections`
--
ALTER TABLE `sections`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `send_notification`
--
ALTER TABLE `send_notification`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `sessions`
--
ALTER TABLE `sessions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;
--
-- AUTO_INCREMENT for table `sms_config`
--
ALTER TABLE `sms_config`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `students`
--
ALTER TABLE `students`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
--
-- AUTO_INCREMENT for table `student_attendences`
--
ALTER TABLE `student_attendences`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=158;
--
-- AUTO_INCREMENT for table `student_doc`
--
ALTER TABLE `student_doc`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `student_fees`
--
ALTER TABLE `student_fees`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `student_fees_deposite`
--
ALTER TABLE `student_fees_deposite`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT for table `student_fees_discounts`
--
ALTER TABLE `student_fees_discounts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `student_fees_master`
--
ALTER TABLE `student_fees_master`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `student_session`
--
ALTER TABLE `student_session`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;
--
-- AUTO_INCREMENT for table `student_sibling`
--
ALTER TABLE `student_sibling`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `student_transport_fees`
--
ALTER TABLE `student_transport_fees`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `subjects`
--
ALTER TABLE `subjects`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `teacher`
--
ALTER TABLE `teacher`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
--
-- AUTO_INCREMENT for table `teachers`
--
ALTER TABLE `teachers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `teacher_subjects`
--
ALTER TABLE `teacher_subjects`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT for table `timetables`
--
ALTER TABLE `timetables`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=50;
--
-- AUTO_INCREMENT for table `transport_route`
--
ALTER TABLE `transport_route`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `userlog`
--
ALTER TABLE `userlog`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=290;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;
--
-- AUTO_INCREMENT for table `users_authentication`
--
ALTER TABLE `users_authentication`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=73;
--
-- AUTO_INCREMENT for table `vehicles`
--
ALTER TABLE `vehicles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `vehicle_routes`
--
ALTER TABLE `vehicle_routes`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `fees_discounts`
--
ALTER TABLE `fees_discounts`
  ADD CONSTRAINT `fees_discounts_ibfk_1` FOREIGN KEY (`session_id`) REFERENCES `sessions` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `fee_groups_feetype`
--
ALTER TABLE `fee_groups_feetype`
  ADD CONSTRAINT `fee_groups_feetype_ibfk_1` FOREIGN KEY (`fee_session_group_id`) REFERENCES `fee_session_groups` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `fee_groups_feetype_ibfk_2` FOREIGN KEY (`fee_groups_id`) REFERENCES `fee_groups` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `fee_groups_feetype_ibfk_3` FOREIGN KEY (`feetype_id`) REFERENCES `feetype` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `fee_groups_feetype_ibfk_4` FOREIGN KEY (`session_id`) REFERENCES `sessions` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `fee_session_groups`
--
ALTER TABLE `fee_session_groups`
  ADD CONSTRAINT `fee_session_groups_ibfk_1` FOREIGN KEY (`fee_groups_id`) REFERENCES `fee_groups` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `fee_session_groups_ibfk_2` FOREIGN KEY (`session_id`) REFERENCES `sessions` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `item_issue`
--
ALTER TABLE `item_issue`
  ADD CONSTRAINT `item_issue_ibfk_1` FOREIGN KEY (`item_id`) REFERENCES `item` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `item_issue_ibfk_2` FOREIGN KEY (`item_category_id`) REFERENCES `item_category` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `item_stock`
--
ALTER TABLE `item_stock`
  ADD CONSTRAINT `item_stock_ibfk_1` FOREIGN KEY (`item_id`) REFERENCES `item` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `item_stock_ibfk_2` FOREIGN KEY (`supplier_id`) REFERENCES `item_supplier` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `item_stock_ibfk_3` FOREIGN KEY (`store_id`) REFERENCES `item_store` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `student_fees_deposite`
--
ALTER TABLE `student_fees_deposite`
  ADD CONSTRAINT `student_fees_deposite_ibfk_1` FOREIGN KEY (`student_fees_master_id`) REFERENCES `student_fees_master` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `student_fees_deposite_ibfk_2` FOREIGN KEY (`fee_groups_feetype_id`) REFERENCES `fee_groups_feetype` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `student_fees_discounts`
--
ALTER TABLE `student_fees_discounts`
  ADD CONSTRAINT `student_fees_discounts_ibfk_1` FOREIGN KEY (`student_session_id`) REFERENCES `student_session` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `student_fees_discounts_ibfk_2` FOREIGN KEY (`fees_discount_id`) REFERENCES `fees_discounts` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `student_fees_master`
--
ALTER TABLE `student_fees_master`
  ADD CONSTRAINT `student_fees_master_ibfk_1` FOREIGN KEY (`student_session_id`) REFERENCES `student_session` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `student_fees_master_ibfk_2` FOREIGN KEY (`fee_session_group_id`) REFERENCES `fee_session_groups` (`id`) ON DELETE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
