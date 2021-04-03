-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th4 02, 2021 lúc 05:41 PM
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
(63, 'student1@gmail.com', '123', '7.png', 3),
(64, 'coordinator@gmail.com', '123', '13491623037137191119846933917888629541593356o-16099965890341112403504.jpg', 2),
(65, 'coordinator2@gmail.com', '123', 'Da Nang 2007 069.jpg', 2),
(66, 'manager@gmail.com', '123', '5.jpg', 4),
(67, 'vinhnh23@gmail.com', '123', '131277361_424973802214716_3871100406472097678_o.jpg', 2),
(68, 'Guest@gmail.com', '123456', '5f24b446b9fb952c93895d54afb0e8c2.jpg', 1),
(69, 'guest1@gmail.com', '12345', '5f24b446b9fb952c93895d54afb0e8c2.jpg', 1);

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
(3, 'admin@gmail.com', 'admin');

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

--
-- Đang đổ dữ liệu cho bảng `comment`
--

INSERT INTO `comment` (`comment_id`, `comment`, `grade`, `student_uploadfile`, `student_id`) VALUES
(38, 'test', 1, '20200507_pc_bigbnr_staycation.webp', 57),
(39, 'it\'s good', 4, 'test 8', 68);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `cordinator`
--

CREATE TABLE `cordinator` (
  `cordinator_id` int(11) NOT NULL,
  `cordinator_name` varchar(255) NOT NULL,
  `cordinator_email` varchar(255) NOT NULL,
  `cordinator_phone` int(15) NOT NULL,
  `faculity_name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `cordinator`
--

INSERT INTO `cordinator` (`cordinator_id`, `cordinator_name`, `cordinator_email`, `cordinator_phone`, `faculity_name`) VALUES
(7, 'Nguyễn Văn A', 'coordinator@gmail.com', 949983492, 'Business'),
(8, 'Hoàng Như Vĩnh', 'coordinator2@gmail.com', 12345678, 'Information Technology'),
(9, 'Hoàng Như Vĩnh123', 'vinhnh23@gmail.com', 949983492, 'Design');

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
(10, 'Information Technology', '1', 'student@gmail.com'),
(11, 'Business', 'Business', ''),
(12, 'Vovinam', 'Vovinam', ''),
(13, 'Design', 'Design', ''),
(14, 'Marketing', 'Marketing', ''),
(15, 'QTKD', 'Tutorials về HTML, CSS, UI, UX sẽ được tổng hợp tại khóa học này, các video có nội dung ngắn gọn, súc tích giúp học viên có thể ứng dụng ngay vào thực tế', '');

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
(1, 'Hiếu Lưu', 'Guest@gmail.com', 'Information Technology'),
(6, 'Thông', 'guest1@gmail.com', 'Marketing');

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
(3, 'Spring 2021', '2021-03-10', '2021-03-22'),
(4, 'Spring 2030', '2021-03-20', '2021-03-24'),
(5, 'Spring 2045', '2021-03-25', '2021-03-31'),
(6, 'Summer 2020', '2021-03-26', '2021-03-31'),
(7, 'Summer 2022', '2021-03-27', '2021-03-31');

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
(57, '2021-03-26 14:28:21', '20200507_pc_bigbnr_staycation.webp', '7.png', 'tesst lan 2', NULL, 1, 'Information Technology', NULL, NULL),
(58, NULL, 'test 1', 'test 1', 'test 1', NULL, 1, '', NULL, NULL),
(59, '2021-03-26 14:36:53', '20200507_pc_bigbnr_staycation.webp', '3.png', 'tesst lan 2', NULL, 1, 'Information Technology', NULL, NULL),
(60, '2021-03-26 14:37:41', '20200507_pc_bigbnr_staycation.webp', '840x417en.png', 'tesst lan 6', NULL, 0, 'Marketing', NULL, NULL),
(61, '2021-03-27 03:02:10', '56933159.webp', '7.png', 'tesst lan 2', NULL, 0, 'Business', NULL, NULL),
(62, '2021-03-27 03:06:40', 'AE - Sidebar - Filters.rplib', '56933159.webp', 'abcyz', NULL, 0, 'Vovinam', NULL, NULL),
(63, NULL, 'test 2', 'test 2', 'test 2', NULL, 0, 'Business', NULL, NULL),
(64, NULL, 'test 3', 'test 3', 'test 3', NULL, 0, 'Marketing', NULL, NULL),
(65, NULL, 'test 5', 'test 5', 'test 5', NULL, 0, 'Information Technology', NULL, NULL),
(66, NULL, 'test 6', 'test 6', 'test 6', NULL, 0, 'Design', NULL, NULL),
(67, NULL, 'test 7', 'test 7', 'test 7', NULL, 0, 'Marketing', NULL, NULL),
(68, '0000-00-00 00:00:00', 'test 8', 'test 8', 'test 8', NULL, 1, 'Marketing', NULL, NULL),
(70, NULL, 'test 9', 'test 9', 'test 9', NULL, 0, 'Vovinam', NULL, NULL),
(71, NULL, 'test 10', 'test 10', 'test 10', NULL, 0, 'Vovinam', NULL, NULL);

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
  MODIFY `account_id` int(15) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=70;

--
-- AUTO_INCREMENT cho bảng `admin`
--
ALTER TABLE `admin`
  MODIFY `admin_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT cho bảng `comment`
--
ALTER TABLE `comment`
  MODIFY `comment_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- AUTO_INCREMENT cho bảng `cordinator`
--
ALTER TABLE `cordinator`
  MODIFY `cordinator_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT cho bảng `faculity`
--
ALTER TABLE `faculity`
  MODIFY `faculity_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT cho bảng `guest`
--
ALTER TABLE `guest`
  MODIFY `guest_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT cho bảng `semester`
--
ALTER TABLE `semester`
  MODIFY `semester_id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT cho bảng `student`
--
ALTER TABLE `student`
  MODIFY `student_id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=72;

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
