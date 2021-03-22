-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 22, 2021 at 03:10 PM
-- Server version: 10.4.10-MariaDB
-- PHP Version: 7.3.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `enterprise`
--

-- --------------------------------------------------------

--
-- Table structure for table `account`
--

CREATE TABLE `account` (
  `account_id` int(111) NOT NULL,
  `account_email` varchar(255) NOT NULL,
  `account_password` varchar(255) NOT NULL,
  `account_image` varchar(255) NOT NULL,
  `account_number` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `account`
--

INSERT INTO `account` (`account_id`, `account_email`, `account_password`, `account_image`, `account_number`) VALUES
(49, 'asd@gmail.com', 'asd444', 'hieu.jpg', 3),
(50, 'student1@fpt.edu.vn', 'student1', '123.jpg', 2),
(51, 'coordinator@gmail.com', 'coordinator', 'C4.jpg', 2),
(54, 'taile@gmail.com', '123', '140196328_458778105527868_4361509525785909147_n.png', 2),
(55, 'student1@fpt.edu.vn', '123', 'Comparison-of-the-advantages-and-disadvantages-of-the-plan-driven-and-agile-processes.png', 3),
(56, 'lethanhtai@gmail.com', 'thanhtai', 'avatar.jpg', 4);

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `admin_id` int(11) NOT NULL,
  `admin_email` varchar(255) NOT NULL,
  `admin_password` varchar(255) NOT NULL,
  `admin_name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`admin_id`, `admin_email`, `admin_password`, `admin_name`) VALUES
(3, 'nguyenquangthong1999@gmail.com', '1', '');

-- --------------------------------------------------------

--
-- Table structure for table `comment`
--

CREATE TABLE `comment` (
  `comment_id` int(11) NOT NULL,
  `description` varchar(255) NOT NULL,
  `student_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `cordinator`
--

CREATE TABLE `cordinator` (
  `cordinator_id` int(11) NOT NULL,
  `cordinator_name` varchar(255) NOT NULL,
  `cordinator_email` varchar(255) NOT NULL,
  `cordinator_phone` int(11) NOT NULL,
  `cordinator_address` varchar(255) NOT NULL,
  `faculity_name` varchar(255) NOT NULL,
  `comment` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `faculity`
--

CREATE TABLE `faculity` (
  `faculity_id` int(11) NOT NULL,
  `faculity_name` varchar(255) NOT NULL,
  `faculity_description` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `faculity`
--

INSERT INTO `faculity` (`faculity_id`, `faculity_name`, `faculity_description`) VALUES
(11, 'Technology', 'IT never die'),
(14, 'Bussiness', 'Bussiness123'),
(15, 'IT', 'Tài '),
(16, 'Skill đá bóng', 'Tài Ronaldo'),
(17, 'Khóa xạo lol', 'Khóa học này sẽ giúp bạn nắm chắc tư tưởng cốt lõi của việc xây dựng giao diện website responsive và áp dụng trong thực tế');

-- --------------------------------------------------------

--
-- Table structure for table `semester`
--

CREATE TABLE `semester` (
  `semester_id` bigint(20) NOT NULL,
  `semester_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `start_date` date NOT NULL,
  `end_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `semester`
--

INSERT INTO `semester` (`semester_id`, `semester_name`, `start_date`, `end_date`) VALUES
(26, 'Spring 2020', '2021-03-01', '2021-03-15'),
(27, 'Summer 2022', '2021-03-01', '2021-03-25');

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

CREATE TABLE `student` (
  `student_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `student_uploadfile` varchar(255) NOT NULL,
  `student_uploadimage` varchar(255) NOT NULL,
  `student_description` varchar(255) NOT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `semester_id` bigint(20) DEFAULT NULL,
  `comment` varchar(255) DEFAULT NULL,
  `active` tinyint(1) NOT NULL DEFAULT 0,
  `faculty_name` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `student`
--

INSERT INTO `student` (`student_id`, `created_at`, `student_uploadfile`, `student_uploadimage`, `student_description`, `updated_at`, `semester_id`, `comment`, `active`, `faculty_name`) VALUES
(182, '2021-03-22 02:51:27', 'CW_COMP1682_LeThanhTai.docx', 'header-5120x-637357026892323421.jpg', 'Submit file Final', NULL, NULL, NULL, 1, 'Technology');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `account`
--
ALTER TABLE `account`
  ADD PRIMARY KEY (`account_id`);

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`admin_id`);

--
-- Indexes for table `comment`
--
ALTER TABLE `comment`
  ADD PRIMARY KEY (`comment_id`);

--
-- Indexes for table `cordinator`
--
ALTER TABLE `cordinator`
  ADD PRIMARY KEY (`cordinator_id`),
  ADD UNIQUE KEY `faculity_name_2` (`faculity_name`),
  ADD KEY `faculity_name` (`faculity_name`),
  ADD KEY `faculity_name_3` (`faculity_name`);

--
-- Indexes for table `faculity`
--
ALTER TABLE `faculity`
  ADD PRIMARY KEY (`faculity_id`),
  ADD UNIQUE KEY `faculity_name_2` (`faculity_name`),
  ADD KEY `faculity_name` (`faculity_name`),
  ADD KEY `faculity_name_3` (`faculity_name`),
  ADD KEY `faculity_name_4` (`faculity_name`);

--
-- Indexes for table `semester`
--
ALTER TABLE `semester`
  ADD PRIMARY KEY (`semester_id`);

--
-- Indexes for table `student`
--
ALTER TABLE `student`
  ADD PRIMARY KEY (`student_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `account`
--
ALTER TABLE `account`
  MODIFY `account_id` int(111) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=57;

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `admin_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `comment`
--
ALTER TABLE `comment`
  MODIFY `comment_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `cordinator`
--
ALTER TABLE `cordinator`
  MODIFY `cordinator_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `faculity`
--
ALTER TABLE `faculity`
  MODIFY `faculity_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `semester`
--
ALTER TABLE `semester`
  MODIFY `semester_id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=124;

--
-- AUTO_INCREMENT for table `student`
--
ALTER TABLE `student`
  MODIFY `student_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=183;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `cordinator`
--
ALTER TABLE `cordinator`
  ADD CONSTRAINT `cordinator_ibfk_1` FOREIGN KEY (`faculity_name`) REFERENCES `faculity` (`faculity_name`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
