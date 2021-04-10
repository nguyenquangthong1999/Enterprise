-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th4 10, 2021 lúc 01:30 PM
-- Phiên bản máy phục vụ: 10.4.17-MariaDB
-- Phiên bản PHP: 7.4.15

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `enterprise`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `account`
--

CREATE TABLE `account` (
  `account_id` int(15) UNSIGNED NOT NULL,
  `account_email` varchar(255) NOT NULL,
  `account_password` varchar(255) NOT NULL,
  `account_image` varchar(255) NOT NULL,
  `account_number` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `account`
--

INSERT INTO `account` (`account_id`, `account_email`, `account_password`, `account_image`, `account_number`) VALUES
(1, 'manager@gmail.com', 'manager', '1.jpg', 4),
(2, 'coordinator01@gmail.com', 'coordinator01', '1.jpg', 2),
(3, 'coordinator02@gmail.com', 'coordinator02', '1.jpg', 2),
(4, 'coordinator03@gmail.com', 'coordinator03', '1.jpg', 2),
(5, 'coordinator04@gmail.com', 'coordinator04', '1.jpg', 2),
(6, 'coordinator05@gmail.com', 'coordinator05', '1.jpg', 2),
(7, 'student01@gmail.com', 'student01', '1.jpg', 3),
(8, 'student02@gmail.com', 'student02', '1.jpg', 3),
(9, 'student03@gmail.com', 'student03', '1.jpg', 3),
(10, 'student04@gmail.com', 'student04', '1.jpg', 3),
(11, 'student05@gmail.com', 'student05', '1.jpg', 3),
(12, 'student06@gmail.com', 'student06', '1.jpg', 3),
(13, 'student07@gmail.com', 'student07', '1.jpg', 3),
(14, 'student08@gmail.com', 'student08', '1.jpg', 3),
(15, 'student09@gmail.com', 'student09', '1.jpg', 3),
(16, 'student10@gmail.com', 'student10', '1.jpg', 3),
(17, 'guest01@gmail.com', 'guest01', '1.jpg', 1),
(18, 'guest02@gmail.com', 'guest02', '1.jpg', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `admin`
--

CREATE TABLE `admin` (
  `admin_id` int(11) NOT NULL,
  `admin_email` varchar(255) NOT NULL,
  `admin_password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `admin`
--

INSERT INTO `admin` (`admin_id`, `admin_email`, `admin_password`) VALUES
(1, 'admin@gmail.com', 'admin');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `comment`
--

CREATE TABLE `comment` (
  `comment_id` int(10) NOT NULL,
  `comment` varchar(255) DEFAULT NULL,
  `grade` int(10) DEFAULT NULL,
  `student_uploadfile` varchar(255) DEFAULT NULL,
  `student_id` int(11) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `cordinator`
--

CREATE TABLE `cordinator` (
  `cordinator_id` int(11) NOT NULL,
  `cordinator_name` varchar(255) NOT NULL,
  `cordinator_email` varchar(255) NOT NULL,
  `faculity_name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `cordinator`
--

INSERT INTO `cordinator` (`cordinator_id`, `cordinator_name`, `cordinator_email`, `faculity_name`) VALUES
(1, 'coordinator01', 'coordinator01@gmail.com', 'IT'),
(2, 'coordinator02', 'coordinator02@gmail.com', 'BI'),
(3, 'coordinator03', 'coordinator03@gmail.com', 'MK'),
(4, 'coordinator04', 'coordinator04@gmail.com', 'DE'),
(5, 'coordinator05', 'coordinator05@gmail.com', 'VOV');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `faculity`
--

CREATE TABLE `faculity` (
  `faculity_id` int(11) NOT NULL,
  `faculity_name` varchar(255) NOT NULL,
  `faculity_description` varchar(255) NOT NULL,
  `account_email` varchar(255) CHARACTER SET utf8 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `faculity`
--

INSERT INTO `faculity` (`faculity_id`, `faculity_name`, `faculity_description`, `account_email`) VALUES
(1, 'IT', 'Information Technology', 'student01@gmail.com'),
(3, 'BI', 'Business', 'student03@gmail.com'),
(5, 'MK', 'Marketing', 'student05@gmail.com'),
(7, 'DE', 'Design', 'student07@gmail.com'),
(9, 'VOV', 'Vovinam', 'student09@gmail.com');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `guest`
--

CREATE TABLE `guest` (
  `guest_id` int(11) NOT NULL,
  `guest_name` varchar(255) NOT NULL,
  `guest_email` varchar(255) NOT NULL,
  `faculity_name` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `guest`
--

INSERT INTO `guest` (`guest_id`, `guest_name`, `guest_email`, `faculity_name`) VALUES
(8, 'guest01', 'guest01@gmail.com', 'IT'),
(9, 'guest01', 'guest01@gmail.com', 'BI'),
(10, 'guest01', 'guest01@gmail.com', 'MK'),
(11, 'guest01', 'guest01@gmail.com', 'DE'),
(12, 'guest01', 'guest01@gmail.com', 'VOV'),
(13, 'guest02', 'guest02@gmail.com', 'IT'),
(14, 'guest02', 'guest02@gmail.com', 'BI'),
(15, 'guest02', 'guest02@gmail.com', 'MK'),
(16, 'guest02', 'guest02@gmail.com', 'DE'),
(17, 'guest02', 'guest02@gmail.com', 'VOV');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `semester`
--

CREATE TABLE `semester` (
  `semester_id` int(20) NOT NULL,
  `semester_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `start_date` date NOT NULL,
  `end_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `semester`
--

INSERT INTO `semester` (`semester_id`, `semester_name`, `start_date`, `end_date`) VALUES
(1, 'Summer 2020', '2021-03-26', '2021-03-31'),
(2, 'Spring 2021', '2021-03-10', '2021-03-22'),
(3, 'Summer 2022', '2021-03-27', '2021-04-30');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `student`
--

CREATE TABLE `student` (
  `student_id` int(11) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `student_uploadfile` varchar(255) NOT NULL,
  `student_uploadimage` varchar(255) NOT NULL,
  `student_description` varchar(255) NOT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `active` tinyint(1) NOT NULL DEFAULT 0,
  `faculity_name` varchar(255) NOT NULL,
  `comment` varchar(255) DEFAULT NULL,
  `grade` int(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `student`
--

INSERT INTO `student` (`student_id`, `created_at`, `student_uploadfile`, `student_uploadimage`, `student_description`, `updated_at`, `active`, `faculity_name`, `comment`, `grade`) VALUES
(72, '2021-04-09 08:11:22', '1.jpg', '1.jpg', '1', NULL, 1, 'IT', 'a', 1);

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `account`
--
ALTER TABLE `account`
  ADD PRIMARY KEY (`account_id`);

--
-- Chỉ mục cho bảng `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`admin_id`);

--
-- Chỉ mục cho bảng `comment`
--
ALTER TABLE `comment`
  ADD PRIMARY KEY (`comment_id`),
  ADD KEY `student_id` (`student_id`);

--
-- Chỉ mục cho bảng `cordinator`
--
ALTER TABLE `cordinator`
  ADD PRIMARY KEY (`cordinator_id`);

--
-- Chỉ mục cho bảng `faculity`
--
ALTER TABLE `faculity`
  ADD PRIMARY KEY (`faculity_id`),
  ADD KEY `faculity_name` (`faculity_name`);

--
-- Chỉ mục cho bảng `guest`
--
ALTER TABLE `guest`
  ADD PRIMARY KEY (`guest_id`);

--
-- Chỉ mục cho bảng `semester`
--
ALTER TABLE `semester`
  ADD PRIMARY KEY (`semester_id`);

--
-- Chỉ mục cho bảng `student`
--
ALTER TABLE `student`
  ADD PRIMARY KEY (`student_id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `account`
--
ALTER TABLE `account`
  MODIFY `account_id` int(15) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=75;

--
-- AUTO_INCREMENT cho bảng `admin`
--
ALTER TABLE `admin`
  MODIFY `admin_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT cho bảng `comment`
--
ALTER TABLE `comment`
  MODIFY `comment_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT cho bảng `cordinator`
--
ALTER TABLE `cordinator`
  MODIFY `cordinator_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT cho bảng `faculity`
--
ALTER TABLE `faculity`
  MODIFY `faculity_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT cho bảng `guest`
--
ALTER TABLE `guest`
  MODIFY `guest_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT cho bảng `semester`
--
ALTER TABLE `semester`
  MODIFY `semester_id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT cho bảng `student`
--
ALTER TABLE `student`
  MODIFY `student_id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=73;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `comment`
--
ALTER TABLE `comment`
  ADD CONSTRAINT `comment_ibfk_1` FOREIGN KEY (`student_id`) REFERENCES `student` (`student_id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
