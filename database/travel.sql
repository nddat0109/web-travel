-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1:3306
-- Thời gian đã tạo: Th3 10, 2023 lúc 01:43 PM
-- Phiên bản máy phục vụ: 5.7.36
-- Phiên bản PHP: 7.4.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `travel`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `migrations`
--

DROP TABLE IF EXISTS `migrations`;
CREATE TABLE IF NOT EXISTS `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(2, '2021_11_14_003531_create_staff_table', 1),
(3, '2021_11_14_015115_create_destination_table', 2),
(4, '2021_11_20_003406_create_tour_table', 3),
(5, '2021_11_20_003631_create_typetour_table', 4),
(6, '2021_11_20_003856_create_highlight_table', 5),
(7, '2021_11_20_010551_create_tour_schedule_table', 6),
(8, '2021_11_20_010551_create_tour_schedule', 7),
(9, '2021_11_20_020143_create_tour_highlight', 8),
(10, '2021_12_04_012642_create_booking_table', 9),
(11, '2021_12_04_013122_create_customer_table', 10),
(12, '2021_12_04_013235_create_position_table', 11),
(13, '2021_12_04_013336_create_contract_table', 12),
(14, '2021_12_09_092839_create_review_table', 13),
(15, '2014_10_12_100000_create_password_resets_table', 14);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `password_resets`
--

DROP TABLE IF EXISTS `password_resets`;
CREATE TABLE IF NOT EXISTS `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `personal_access_tokens`
--

DROP TABLE IF EXISTS `personal_access_tokens`;
CREATE TABLE IF NOT EXISTS `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_booking`
--

DROP TABLE IF EXISTS `tbl_booking`;
CREATE TABLE IF NOT EXISTS `tbl_booking` (
  `booking_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `tour_id` bigint(11) UNSIGNED NOT NULL,
  `customer_id` bigint(11) UNSIGNED DEFAULT NULL,
  `booking_code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `booking_status` int(11) DEFAULT '0',
  `booking_customer_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `booking_customer_email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `booking_customer_phone_domain` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `booking_customer_phone_number` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `booking_customer_address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `booking_customer_nationality` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `booking_date` date NOT NULL,
  `booking_customer_adult` int(11) NOT NULL,
  `booking_customer_child` int(11) NOT NULL,
  `booking_customer_ifant` int(11) NOT NULL,
  `booking_total_price` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `booking_customer_message` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`booking_id`),
  KEY `tour_id` (`tour_id`),
  KEY `customer_id` (`customer_id`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_booking`
--

INSERT INTO `tbl_booking` (`booking_id`, `tour_id`, `customer_id`, `booking_code`, `booking_status`, `booking_customer_name`, `booking_customer_email`, `booking_customer_phone_domain`, `booking_customer_phone_number`, `booking_customer_address`, `booking_customer_nationality`, `booking_date`, `booking_customer_adult`, `booking_customer_child`, `booking_customer_ifant`, `booking_total_price`, `booking_customer_message`, `created_at`, `updated_at`) VALUES
(1, 2, 1, '12345', 2, 'Ngoc', 'ngoc@gmail.com', '+84', '0987123456', 'So1 Hang Khay', 'VN', '2021-12-31', 1, 0, 0, '1500000', 'can', NULL, '2021-12-30 19:11:06'),
(2, 2, 2, 'Halong_8ha8q_1', 1, 'Lam', 'lam@gmail.com', '+84', '0921234576', 'So 9 Dai Co Viet', 'Vietnam', '2021-12-09', 4, 1, 0, '3250000', 'ok', '2021-12-09 02:55:40', '2022-08-03 01:34:46'),
(4, 2, 4, 'Halong_mZKN4_1', 5, 'thanh', 'thanh@gmail.com', '+84', '0333444555', 'So 8 Dai Co Viet', 'Vietnam', '2021-12-26', 1, 1, 0, '11500000', 'ok', '2021-12-25 19:54:57', '2022-07-07 02:20:30'),
(5, 2, 8, 'Halong_mXUsZ_1', 1, 'edc', 'edcecd@gmail.com', '+84', '123232', 'ec', 'Vietnam', '2021-12-29', 1, 3, 2, '2850000', 'fer', '2021-12-30 20:45:23', '2022-07-26 19:32:12'),
(6, 2, 2, 'Halong_JxAAH_1', 4, 'Ngoc', 'ngoc@gmail.com', '+84', '0921234576', 'So 9 Dai Co Viet', 'Vietnam', '2022-01-17', 1, 1, 1, '7900000', 'gf', '2022-01-15 19:47:50', '2022-01-15 20:10:06'),
(7, 3, 2, 'Halong_DaPKw_1', 4, 'Lam', 'lam@gmail.com', '+84', '0921234576', 'So 9 Dai Co Viet', 'Vietnam', '2022-01-21', 1, 1, 0, '13500000', 'ok', '2022-01-20 19:54:49', '2022-01-20 19:58:45'),
(8, 2, 2, 'Halong_Dud1u_1', 4, 'Lam', 'lam@gmail.com', '+84', '0921234576', 'So 9 Dai Co Viet', 'Vietnam', '2022-01-21', 1, 1, 1, '9700000', 'ok', '2022-01-20 20:57:38', '2022-05-06 02:17:50'),
(9, 6, 3, 'Nhatrang_xx70O_3', 5, 'Thương', 'thuongrevolt2@gmail.com', '+84', '0395912373', 'so 1 gpp', 'Vietnam', '2022-05-15', 1, 1, 0, '2500000', 'ok', '2022-05-13 19:43:14', '2022-07-25 18:52:15'),
(10, 8, 4, '_IlMGX_1', 1, 'AnaN', 'an@gmail.com', '+84', '1234567890', 'so 1 dai co viet', 'Vietnam', '2022-06-30', 1, 2, 0, '11500000', 'ok', '2022-06-28 06:00:21', '2022-08-17 18:36:42'),
(11, 8, 7, 'Ninhbinh_5D8oN_1', 4, 'Nam a', 'nama@gmail.com', '+84', '12312312312', 'so 1 dai co viet', 'Viet', '2022-07-02', 2, 1, 7, '12000000', 'ok', '2022-06-28 06:21:00', '2022-07-22 20:31:20'),
(12, 8, 4, 'Halong_CBNEA_2', 5, 'AnaN', 'an@gmail.com', '+84', '1234567890', 'so 1 dai co viet', 'Vietnam', '2022-07-08', 2, 2, 0, '1500000', 'thank you', '2022-07-06 00:53:22', '2022-08-11 04:00:15'),
(13, 8, 10, 'Halong_d06WK_2', 2, ';lkk;', 'an@gmail.com', '+84', '978998786', '.\'', '1', '2022-07-09', 1, 2, 0, '11500000', 'lkljkljl', '2022-07-06 21:28:06', '2022-07-28 02:25:55'),
(14, 9, 9, 'Halong_sXnTD_1', 1, 'Van', 'van@gmail.com', '+84', '099887766', 'so 1 TQB', 'Vietnam', '2022-07-31', 1, 1, 0, '8700000', 'ok', '2022-07-27 04:00:41', '2022-07-27 08:11:50'),
(15, 2, 17, 'Halong_iOtM5_1', 1, 'Thien', 'thiendola@gmail.Com', '+84', '939458676', '123 tran duy hung', 'Vietnam', '2022-07-28', 2, 2, 0, '2950000', 'di', '2022-08-08 18:39:11', '2022-09-01 03:51:04'),
(16, 9, 18, 'Halong_IYJ3O_1', 4, 'Ace', 'ace@gmail.com', '+84', '0123888999', 'so 1 dai co viet', 'Vietnam', '2022-07-31', 2, 1, 0, '10300000', 'ok', '2022-08-09 18:19:09', '2022-08-09 19:48:10'),
(17, 12, 3, 'Danang_MbRrg_5', 4, 'Thuong', 'thuongrevolt2@gmail.com', '+84', '0395912373', 'so 1 TQB', 'Vietnam', '2022-08-25', 2, 1, 0, '6000000', 'ok', '2022-08-14 19:05:33', '2022-08-15 02:31:51'),
(18, 14, 21, 'Hanoi_aEMQB_2', 4, 'Dung', 'cungdungdt@gmail.com', '+84', '0666688888', 'so 1 dai co viet', 'Vietnam', '2022-08-28', 2, 0, 0, '6000000', 'ok', '2022-08-15 03:03:39', '2022-08-15 03:05:23'),
(19, 12, 21, 'Danang_0yc4W_5', 5, 'Dung', 'cungdungdt@gmail.com', '+84', '0666688888', 'so 1 dai co viet', 'Vietnam', '2022-08-25', 2, 0, 0, '5500000', 'ok', '2022-08-16 01:12:25', '2022-08-16 19:30:33'),
(20, 9, NULL, 'Phuquoc_TYzaC_3', 0, 'Dung', 'cungdungdt@gmail.com', '+84', '0666688888', 'so 1 dai co viet', 'Vietnam', '2022-07-31', 2, 0, 0, NULL, 'ok', '2022-08-16 19:15:41', '2022-08-16 19:15:41'),
(21, 8, 23, 'Ninhbinh_3En1t_6', 1, 'Nguyễn Thanh Lâm', 'nguyenthanhlam@gmail.com', '+84', '0999999998', 'Tp Hồ Chí Minh', 'Vietnam', '2022-08-10', 2, 3, 1, '13000000', 'Ok', '2023-03-10 06:34:46', '2023-03-10 06:38:31');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_booking_history`
--

DROP TABLE IF EXISTS `tbl_booking_history`;
CREATE TABLE IF NOT EXISTS `tbl_booking_history` (
  `booking_history_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `booking_id` bigint(11) NOT NULL,
  `booking_history_content` text NOT NULL,
  `booking_history_image` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`booking_history_id`),
  KEY `custom_id` (`booking_id`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `tbl_booking_history`
--

INSERT INTO `tbl_booking_history` (`booking_history_id`, `booking_id`, `booking_history_content`, `booking_history_image`, `created_at`, `updated_at`) VALUES
(1, 13, 'book13', NULL, NULL, NULL),
(4, 14, 'lan1', NULL, '2022-07-27 04:11:23', '2022-07-27 04:11:23'),
(5, 14, 'lan2', NULL, '2022-07-27 05:00:14', '2022-07-27 05:00:14'),
(6, 14, 'lan3', NULL, '2022-07-27 05:00:27', '2022-07-27 05:00:27'),
(7, 13, 'lan1', NULL, '2022-07-27 05:00:46', '2022-07-27 05:00:46'),
(8, 14, 'lan4', NULL, '2022-07-27 05:08:05', '2022-07-27 05:08:05'),
(9, 14, '<p>lan 5</p>', NULL, '2022-07-27 07:52:30', '2022-07-27 07:52:30'),
(10, 14, '<p>ok</p>', NULL, '2022-07-27 08:12:06', '2022-07-27 08:12:06'),
(11, 13, '<p>huy</p>', NULL, '2022-07-28 02:25:55', '2022-07-28 02:25:55'),
(12, 2, '<p>Gọi qua số điện thoại lần 1: Kh&aacute;ch kh&ocirc;ng bắt m&aacute;y</p>', NULL, '2022-08-03 01:34:46', '2022-08-03 01:34:46'),
(13, 2, '<p>Gọi qua số điện thoại lần&nbsp; 2: Kh&aacute;ch y&ecirc;u cầu th&ecirc;m 1 slot</p>', NULL, '2022-08-03 01:36:19', '2022-08-03 01:36:19'),
(14, 16, 'lan 1 : ok', NULL, '2022-08-09 19:46:46', '2022-08-09 19:46:46'),
(15, 16, 'lan 2 : ok', NULL, '2022-08-09 19:47:07', '2022-08-09 19:47:07'),
(16, 17, 'lan 1 : ok', NULL, '2022-08-14 19:06:34', '2022-08-14 19:06:34'),
(17, 18, 'lan 1 ok', NULL, '2022-08-15 03:04:14', '2022-08-15 03:04:14'),
(18, 19, 'Lan1 ok', NULL, '2022-08-16 19:28:39', '2022-08-16 19:28:39'),
(19, 19, 'lan 2 ok', NULL, '2022-08-16 19:28:55', '2022-08-16 19:28:55'),
(20, 10, 'Lần 1: Chưa liên hệ khách hàng thành công', NULL, '2022-08-17 18:36:42', '2022-08-17 18:36:42'),
(21, 10, 'Lần 2: Khách hàng yêu cầu bớt 1 thành viên', NULL, '2022-08-17 18:37:20', '2022-08-17 18:37:20'),
(22, 15, 'ok', NULL, '2022-09-01 03:51:04', '2022-09-01 03:51:04'),
(23, 21, 'Đã liên hệ', NULL, '2023-03-10 06:39:15', '2023-03-10 06:39:15');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_contract`
--

DROP TABLE IF EXISTS `tbl_contract`;
CREATE TABLE IF NOT EXISTS `tbl_contract` (
  `contract_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `booking_id` bigint(11) UNSIGNED DEFAULT NULL,
  `staff_id` bigint(11) UNSIGNED NOT NULL,
  `contract_date` date DEFAULT NULL,
  `contract_file` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `contract_total_price` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `contract_status` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`contract_id`),
  KEY `booking_id` (`booking_id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_contract`
--

INSERT INTO `tbl_contract` (`contract_id`, `booking_id`, `staff_id`, `contract_date`, `contract_file`, `contract_total_price`, `contract_status`, `created_at`, `updated_at`) VALUES
(6, NULL, 1, '2022-01-16', '5-164.pdf', '2350000', 2, '2022-01-15 20:13:38', '2022-01-15 20:14:10'),
(7, NULL, 1, '2022-01-21', 'Van An Travel - Pu Luong 2N1D - DHBK33.pdf', '1500000', 2, '2022-01-20 19:58:45', '2022-01-20 19:59:00'),
(8, NULL, 1, '2022-05-07', 'Van An Travel - Pu Luong 2N1D - DHBK64.pdf', '30000', 0, '2022-05-06 02:18:46', '2022-05-10 01:49:11'),
(9, 12, 1, '2022-07-07', 'Contract_Fintec_NineStar_37-202161.pdf', '9500000', 3, '2022-07-07 01:44:35', '2022-07-25 18:40:55'),
(10, 11, 1, '2022-07-24', 'Chi tiết phiếu giao hàng83.pdf', '12,000,000', 3, '2022-07-22 20:31:20', '2022-07-22 21:17:13'),
(11, 9, 1, '2022-07-26', '2109878 HB72.PDF', '2,500,000', 3, '2022-07-25 18:47:04', '2022-07-25 18:47:26'),
(12, 16, 1, '2022-08-11', 'Chi tiết phiếu giao hàng25.pdf', '10,300,000', 2, '2022-08-09 19:48:10', '2022-08-09 19:48:23'),
(13, 17, 1, '2022-08-16', 'Chi tiết phiếu giao hàng74.pdf', '6,000,000', 3, '2022-08-15 02:31:51', '2022-08-15 02:32:38'),
(14, 18, 1, '2022-08-16', 'PL 202160.pdf', '6,000,000', 3, '2022-08-15 03:05:23', '2022-08-15 04:00:01'),
(15, 19, 1, '2022-08-18', 'DU LỊCH SẦM SƠN 202184.pdf', '5,500,000', 3, '2022-08-16 19:29:23', '2022-08-16 19:29:44');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_custom`
--

DROP TABLE IF EXISTS `tbl_custom`;
CREATE TABLE IF NOT EXISTS `tbl_custom` (
  `custom_id` bigint(11) NOT NULL AUTO_INCREMENT,
  `customer_id` bigint(11) DEFAULT NULL,
  `custom_code` varchar(255) NOT NULL,
  `custom_status` varchar(11) NOT NULL DEFAULT '0',
  `custom_customer_name` varchar(255) NOT NULL,
  `custom_customer_email` varchar(255) NOT NULL,
  `custom_customer_address` varchar(255) NOT NULL,
  `custom_customer_phone` varchar(255) NOT NULL,
  `custom_date` date NOT NULL,
  `custom_child` int(11) NOT NULL,
  `custom_adult` int(11) NOT NULL,
  `custom_day` varchar(11) NOT NULL,
  `custom_destination` varchar(255) NOT NULL,
  `custom_type_tour` varchar(255) NOT NULL,
  `custom_message` varchar(255) NOT NULL,
  `custom_schedule` text,
  `custom_service_in` text,
  `custom_service_ex` text,
  `custom_spend` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`custom_id`),
  KEY `customer_id` (`customer_id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `tbl_custom`
--

INSERT INTO `tbl_custom` (`custom_id`, `customer_id`, `custom_code`, `custom_status`, `custom_customer_name`, `custom_customer_email`, `custom_customer_address`, `custom_customer_phone`, `custom_date`, `custom_child`, `custom_adult`, `custom_day`, `custom_destination`, `custom_type_tour`, `custom_message`, `custom_schedule`, `custom_service_in`, `custom_service_ex`, `custom_spend`, `created_at`, `updated_at`) VALUES
(1, NULL, 'c4mYt', '4', 'Thương', 'thuongrevolt2@gmail.com', 'so 1 gp', '0395912373', '2022-04-28', 0, 1, '1', 'HaLong', 'LocalFood', 'thdghgh', '<p>Ngay1</p>', 'co', 'ko co', '20000', '2022-04-27 02:13:42', '2022-07-07 02:33:20'),
(2, 4, 'E8ISu', '0', 'An', 'an@gmail.com', 'so 1 gp', '123456789', '2022-04-30', 0, 3, 'over7day', 'Nha Trang', '', 'no', NULL, NULL, NULL, '10000', '2022-04-29 03:12:48', '2022-04-29 03:12:48'),
(3, NULL, 'lF9cl', '2', 'Thương', 'thuongrevolt2@gmail.com', 'so 1 gp', '0395912373', '2022-05-04', 3, 1, '1', 'Ha Long', '1,2', 'ok', '<p>o</p>', 'o', 'o', '20000', '2022-05-02 18:54:38', '2022-08-02 00:13:58'),
(4, NULL, 'ydZYP', '4', 'Thương', 'thuongrevolt2@gmail.com', 'so 1 gp', '0395912373', '2022-05-04', 1, 1, '2', 'Ninh Binh', 'LocalFood,CityTour', 'ko', NULL, NULL, NULL, '10000', '2022-05-02 18:56:17', '2022-05-06 02:22:39'),
(5, NULL, 'mCXaG', '0', 'Thương', 'thuongrevolt2@gmail.com', 'so 1 gp', '0395912373', '2022-05-07', 1, 1, '2', 'Ninh Binh', 'LocalFood,History', 'no', NULL, NULL, NULL, '10000', '2022-05-06 01:04:56', '2022-05-06 01:04:56'),
(6, NULL, 'xgGky', '0', 'An', 'an@gmail.com', 'so 1 gp', '123456789', '2022-06-02', 0, 1, '2', 'Da Nang', 'Du lịch đô thị,Du lịch nghỉ dưỡng', 'no', NULL, NULL, NULL, '999999', '2022-05-31 19:49:34', '2022-05-31 19:49:34'),
(7, 4, 'Nsy0F', '0', 'AnaN', 'an@gmail.com', 'So 1 dai co viet', '1234567890', '2022-07-13', 0, 1, '1', 'Ha Long', 'Du lịch ẩm thực', 'not', NULL, NULL, NULL, '2000000', '2022-07-11 18:48:30', '2022-07-11 18:48:30'),
(8, 4, 'BCnEX', '4', 'AnaN', 'an@gmail.com', 'So 1 dai co viet', '1234567890', '2022-07-14', 1, 2, '2', 'Ha Long', 'Du lịch ẩm thực', 'no', '<p>ok</p>', 'te', 'et', '3000000', '2022-07-11 18:52:00', '2022-07-23 00:08:01'),
(9, NULL, 'TRAcC', '0', 'Thuong', 'thuong@gmail.com', 's1', '1142134123', '2022-07-24', 1, 2, '1', 'Ha Long', 'Du lịch ẩm thực', 'n', NULL, NULL, NULL, '333', '2022-07-22 20:39:38', '2022-07-22 20:39:38'),
(10, 6, 'SkW7V', '4', 'Thuong', 'thuong@gmail.com', 's1', '1142134123', '2022-07-24', 1, 1, '1', 'Ha Long', 'Du lịch ẩm thực', 'b', '<p>k</p>', 'a', 'd', '222', '2022-07-22 20:40:56', '2022-07-22 20:43:33'),
(11, 4, 'pxm6j', '4', 'AnaN', 'an@gmail.com', 'số 1 dai cồ việt', '1234567890', '2022-08-02', 0, 2, '1', 'Ninh Binh', 'Du lịch ẩm thực,Du lịch văn hóa, lịch sử', 'no', '<p>day1</p>', 'ok', 'ko', '2000000', '2022-07-30 18:13:40', '2022-07-30 18:15:18'),
(12, 18, 'VpeVa', '4', 'ace', 'ace@gmail.com', 'So 1 dai co viet', '01239999888', '2022-08-12', 2, 1, '1', 'Phu Quoc', 'Du lịch ẩm thực,Du lịch sinh thái,Du lịch nghỉ dưỡng', 'no', '<p>Day 1</p>', 'Vé xe', 'Dịch vụ ngoài', '3000000', '2022-08-09 18:28:06', '2022-08-09 19:52:29'),
(13, 18, 'gJEsG', '0', 'ace', 'ace@gmail.com', 'So 1 dai co viet', '01239999888', '2022-08-12', 2, 1, '1', 'Phu Quoc', 'Du lịch ẩm thực,Du lịch sinh thái,Du lịch nghỉ dưỡng', 'no', NULL, NULL, NULL, '3000000', '2022-08-09 18:44:47', '2022-08-09 18:44:47'),
(14, 18, 'TvfRB', '0', 'ace', 'ace@gmail.com', 'So 1 dai co viet', '01239999888', '2022-08-12', 2, 1, '1', 'Phu Quoc', 'Du lịch ẩm thực,Du lịch sinh thái,Du lịch nghỉ dưỡng', 'no', NULL, NULL, NULL, '3000000', '2022-08-09 18:46:38', '2022-08-09 18:46:38'),
(15, 3, 'svoX7', '4', 'Thương', 'thuongrevolt2@gmail.com', 'So 1 dai co viet', '0395912373', '2022-08-26', 0, 2, '3', 'Da Nang', 'Du lịch ẩm thực,Du lịch đô thị', 'ok', '<ul>\r\n	<li><strong>B&aacute;n đảo Sơn Tr&agrave;&nbsp;v&agrave; Viếng Ch&ugrave;a Linh Ứng:&nbsp;</strong>Nơi đ&acirc;y c&oacute; tượng Phật Quan Thế &Acirc;m cao nhất Việt Nam, đứng nơi đ&acirc;y, Qu&yacute; kh&aacute;ch sẽ được chi&ecirc;m ngưỡng to&agrave;n cảnh th&agrave;nh phố, n&uacute;i rừng v&agrave; biển đảo Sơn Tr&agrave; một c&aacute;ch ho&agrave;n hảo nhất.&nbsp;</li>\r\n	<li><strong>L&agrave;ng Đ&aacute; Non Nước Nguyễn H&ugrave;ng:</strong>&nbsp;mua sắm sản phẩm đ&aacute; mỹ nghệ tạo phong thủy cho tổ ấm hoặc l&agrave;m qu&agrave; tặng &yacute; nghĩa cho người th&acirc;n v&agrave; bạn b&egrave;.</li>\r\n	<li><strong>Phố Cổ Hội An:&nbsp;</strong>Ch&ugrave;a Cầu, Nh&agrave; Cổ, Hội Qu&aacute;n, dạo phố đ&egrave;n lồng cảm nhận sự y&ecirc;n b&igrave;nh, cổ k&iacute;nh, l&atilde;ng mạn Hội An, thưởng thức đặc sản nổi tiếng địa phương &nbsp;Cao Lầu, Mỳ Quảng, Cơm G&agrave;,&hellip;.</li>\r\n</ul>', '- Xe tham quan (15, 25, 35, 45 chỗ tùy theo số lượng khách) theo chương trình\r\n- Vé máy bay khứ hồi SGN - DAD - SGN\r\n- Hành lý ký gửi: 20 kg, xách tay 7 kg/1 khách', '- Chi phí tham quan ngoài chương trình : Vé cáp treo khứ hồi Bà Nà & khu vui chơi Fantasy Park & Ăn trưa tại Bà Nà, …\r\n- Bữa trưa tại Khu công viên nước Mikazuki', '3000000', '2022-08-14 20:07:14', '2022-08-16 00:49:49'),
(16, 21, 'qfSdk', '0', 'Dung', 'cungdungdt@gmail.com', 'So 1 dai co viet', '0666688888', '2022-08-28', 0, 2, '2', 'Phu Quoc', 'Du lịch sinh thái,Du lịch nghỉ dưỡng', 'ok', NULL, NULL, NULL, '5000000', '2022-08-16 01:09:26', '2022-08-16 01:09:26'),
(17, 21, '8zaRR', '0', 'Dung', 'cungdungdt@gmail.com', 'So 1 dai co viet', '0666688888', '2022-08-26', 1, 3, '2', 'Nha Trang', 'Du lịch sinh thái,Du lịch nghỉ dưỡng', 'ok', NULL, NULL, NULL, '3000000', '2022-08-16 19:19:56', '2022-08-16 19:19:56');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_customer`
--

DROP TABLE IF EXISTS `tbl_customer`;
CREATE TABLE IF NOT EXISTS `tbl_customer` (
  `customer_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `customer_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `customer_email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `customer_password` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `customer_address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `customer_phone_domain` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `customer_phone_number` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `customer_nationality` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`customer_id`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_customer`
--

INSERT INTO `tbl_customer` (`customer_id`, `customer_name`, `customer_email`, `customer_password`, `customer_address`, `customer_phone_domain`, `customer_phone_number`, `customer_nationality`, `created_at`, `updated_at`) VALUES
(1, 'Ngoc', 'ngoc@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', 'So 1 Hang Khay', '+84', '0987123456', 'VN', '2022-05-14 02:40:24', '2022-05-14 02:40:24'),
(2, 'Lam', 'lam@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', 'So 9 Dai Co Viet,', '+84', '0921234576', 'Vietnam', '2022-05-14 02:40:24', '2022-05-14 02:40:24'),
(3, 'Thương', 'thuongrevolt2@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', 'so 1 gpp', '+84', '0395912373', 'Vietnam', '2022-05-13 19:47:26', '2022-05-13 19:47:26'),
(4, 'AnaN', 'an@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', 'số 111 đại cồ việt', '+84', '1234567890', 'Việt Nam', '2022-05-16 03:38:13', '2022-07-31 00:52:40'),
(5, 'Nam', 'nam@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', NULL, NULL, '12312312312', NULL, '2022-05-16 06:39:19', '2022-05-16 06:39:19'),
(6, 'Thuong', 'thuong@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', NULL, NULL, '1142134123', NULL, '2022-05-16 06:40:30', '2022-05-16 06:40:30'),
(7, 'Nam', 'nam@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', 'so 1 dai co viet', '+84', '12312312312', 'Vietnam', '2022-07-22 19:20:23', '2022-07-22 19:20:23'),
(8, 'edc', 'edcecd@gmail.com', NULL, 'ec', '+84', '123232', 'Vietnam', '2022-07-26 19:32:12', '2022-07-26 19:32:12'),
(9, 'Van', 'van@gmail.com', NULL, 'so 1 TQB', '+84', '099887766', 'Vietnam', '2022-07-27 04:06:30', '2022-07-27 04:06:30'),
(10, ';lkk;', 'an@gmail.com', NULL, '.\'', '+84', '978998786', '1', '2022-07-27 05:00:46', '2022-07-27 05:00:46'),
(11, 'Han', 'han@gmail.com', 'd41d8cd98f00b204e9800998ecf8427e', NULL, NULL, '4123412424', NULL, '2022-07-28 03:16:40', '2022-07-28 03:16:40'),
(12, 'Tan', 'tan@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', 'Số 12 giải phóng', '+84', '0111122222', 'Việt Nam', '2022-07-30 19:00:02', '2022-07-31 00:54:26'),
(13, 'Jack', 'jack@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', NULL, NULL, '077778888', NULL, '2022-08-01 18:56:05', '2022-08-01 18:56:05'),
(14, 'Jack', 'jack@dfb.com', 'd41d8cd98f00b204e9800998ecf8427e', NULL, NULL, '077778888', NULL, '2022-08-01 18:56:48', '2022-08-01 18:56:48'),
(15, 'jk', 'jk@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', NULL, NULL, '123123', NULL, '2022-08-01 19:17:39', '2022-08-01 19:17:39'),
(16, 'op', 'op@gmail.com', '4297f44b13955235245b2497399d7a93', NULL, NULL, '123123', NULL, '2022-08-01 19:21:03', '2022-08-01 19:21:03'),
(17, 'Thien', 'thiendola@gmail.Com', NULL, '123 tran duy hung', '+84', '939458676', 'Vietnam', '2022-08-08 18:52:47', '2022-08-08 18:52:47'),
(18, 'ace', 'ace@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', 'So 1, Ta Quang Buu, Hai Ba Trung, Ha Noi', '+84', '01239999888', 'VN', '2022-08-09 18:16:00', '2022-08-09 18:16:33'),
(20, 'Dung', 'cungdung@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', NULL, NULL, '0666688888', NULL, '2022-08-15 02:57:30', '2022-08-15 02:57:30'),
(21, 'Dung', 'cungdungdt@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', 'so 1 DCV', '+84', '0666688888', 'Vietnam', '2022-08-15 03:04:14', '2022-08-16 19:20:28'),
(22, 'Nguyễn Thành Trung', 'admin5@gmail.com', '25d55ad283aa400af464c76d713c07ad', NULL, NULL, '0999999999', NULL, '2023-03-10 02:35:30', '2023-03-10 02:35:30'),
(23, 'Nguyễn Thanh Lâm', 'nguyenthanhlam@gmail.com', '25d55ad283aa400af464c76d713c07ad', 'TP Hồ Chí Minh', '+84', '0999999998', 'Việt Nam', '2023-03-10 06:30:57', '2023-03-10 06:31:31');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_destination`
--

DROP TABLE IF EXISTS `tbl_destination`;
CREATE TABLE IF NOT EXISTS `tbl_destination` (
  `destination_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `destination_name_VI` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `destination_thumb` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `destination_banner` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `destination_name_EN` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `destination_desc_VI` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `destination_desc_EN` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `destination_status` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`destination_id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_destination`
--

INSERT INTO `tbl_destination` (`destination_id`, `destination_name_VI`, `destination_thumb`, `destination_banner`, `destination_name_EN`, `destination_desc_VI`, `destination_desc_EN`, `destination_status`, `created_at`, `updated_at`) VALUES
(1, 'Ha Long', 'Nhathodohaily-5-140955.jpg', 'Nhathodohaily-1-140981.jpg', 'Halong', 'Cách Hà Nội khoảng 160 km, TP Hạ Long thuộc tỉnh Quảng Ninh là một điểm du lịch nổi tiếng không chỉ của miền Bắc, toàn quốc mà trên khắp thế giới. Hạ Long có vịnh biển, có các di sản thế giới, các hoạt động du lịch phong phú, đồ ăn ngon...', 'travel in halong', 1, '2021-11-13 18:59:49', '2022-08-09 23:48:52'),
(2, 'Ninh Binh', 'bqa140418065079.jpg', 'qkw140418065010.jpg', 'Ninhbinh', 'Nhắc đến Ninh Bình, người ta sẽ nghĩ ngay đến một tỉnh thành tập hợp rất nhiều địa điểm du lịch nổi tiếng cả về không gian thiên nhiên, văn hóa, lịch sử,..', 'Nhắc đến Ninh Bình, người ta sẽ nghĩ ngay đến một tỉnh thành tập hợp rất nhiều địa điểm du lịch nổi tiếng cả về không gian thiên nhiên, văn hóa, lịch sử,..', 1, '2022-01-20 19:12:25', '2022-08-09 23:44:59'),
(3, 'Nha Trang', 'oju1435951987_tour-du-ngoan-4-dao-vinh-nha-trang-trong-1-ngay76.jpg', 'wzs1435951987_tour-du-ngoan-4-dao-vinh-nha-trang-trong-1-ngay97.jpg', 'Nhatrang', 'Nha Trang, thành phố biển nằm tại vị trí trung tâm tỉnh Khánh Hòa, từ lâu đã là một trong những điểm du lịch hút khách nhất Việt Nam. Được thiên nhiên ban tặng những bãi biển, vùng vịnh đẹp cùng nhiều đảo lớn nhỏ, thành phố còn sở hữu nhiều danh lam thắng cảnh, điểm tham quan, vui chơi và cơ sở nghỉ dưỡng.', 'sea', 1, '2022-01-20 20:16:25', '2022-08-09 23:42:55'),
(4, 'Hà Nội', '6-trai-nghiem-choi-dem-o-ha-noi-10421721.jpg', '0d349f6d_w-10373.jpg', 'Hanoi', 'Hà Nội được ví như trái tim của Việt Nam, do đó du khách có thể di chuyển thuận lợi đến thủ đô bằng máy bay, tàu hỏa, xe khách, ôtô riêng hay xe máy từ các tỉnh thành khác.', 'Hà Nội được ví như trái tim của Việt Nam, do đó du khách có thể di chuyển thuận lợi đến thủ đô bằng máy bay, tàu hỏa, xe khách, ôtô riêng hay xe máy từ các tỉnh thành khác.', 1, '2022-01-20 20:59:04', '2022-08-09 23:41:56'),
(5, 'Đà Nẵng', 'shutterstock-1169930359-4299-159359042054.jpg', 'thanh-hang-se-catwalk-tren-cau-1788-4798-15935904247.jpg', 'Danang', 'Đà Nẵng nằm giữa ba di sản thế giới: cố đô Huế, phố cổ Hội An và thánh địa Mỹ Sơn', 'Đà Nẵng nằm giữa ba di sản thế giới: cố đô Huế, phố cổ Hội An và thánh địa Mỹ Sơn', 1, '2022-06-14 01:13:47', '2022-06-14 01:13:47'),
(6, 'Phú Quốc', 'du-lich-phu-quoc-thang-11-144.jpg', 'du-lich-phu-quoc-thang-11-6_077.jpg', 'Phuquoc', 'Phú Quốc là điểm nghỉ dưỡng, tham quan, và khám phá sinh thái tuyệt vời.', 'Phú Quốc', 1, '2022-06-14 01:18:16', '2022-09-01 03:49:27');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_highlight`
--

DROP TABLE IF EXISTS `tbl_highlight`;
CREATE TABLE IF NOT EXISTS `tbl_highlight` (
  `highlight_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `highlight_name_VI` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `highlight_name_EN` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `highlight_img` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`highlight_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_position`
--

DROP TABLE IF EXISTS `tbl_position`;
CREATE TABLE IF NOT EXISTS `tbl_position` (
  `position_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `position_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `position_desc` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`position_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_position`
--

INSERT INTO `tbl_position` (`position_id`, `position_name`, `position_desc`, `created_at`, `updated_at`) VALUES
(1, 'Superadmin', 'Điều hành công ty', NULL, NULL),
(2, 'NV văn phòng', 'Nhân viên văn phòng', NULL, NULL),
(3, 'NV kinh doanh', 'Nhân viên kinh doanh', NULL, NULL),
(4, 'NV hợp đồng', 'Nhân viên hợp đồng', NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_post`
--

DROP TABLE IF EXISTS `tbl_post`;
CREATE TABLE IF NOT EXISTS `tbl_post` (
  `post_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `post_title` varchar(255) NOT NULL,
  `post_status` int(11) NOT NULL,
  `post_desc` text NOT NULL,
  `post_content` text NOT NULL,
  `post_meta_keyword` varchar(255) NOT NULL,
  `post_thumb` varchar(255) NOT NULL,
  `post_banner` varchar(255) NOT NULL,
  `post_view` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`post_id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `tbl_post`
--

INSERT INTO `tbl_post` (`post_id`, `post_title`, `post_status`, `post_desc`, `post_content`, `post_meta_keyword`, `post_thumb`, `post_banner`, `post_view`, `created_at`, `updated_at`) VALUES
(1, 'Tháng 5 về trên Tây Nguyên – Đà Lạt, Bảo Lộc, Ban Mê đẹp ngất ngây', 1, 'Các cao nguyên ở Tây Nguyên Việt Nam ngày thu hút khách du lịch trong và ngoài nước. Vẻ đẹp thiên nhiên nguyên sơ, hùng vĩ, kho tàng sử thi cùng nền văn hóa Cồng Chiêng đặc sắc và những món đặc sản đã khiến Đà Lạt, Buôn Ma Thuột và Bảo Lộc trở thành điểm đến hấp dẫn nhất hiện nay. Vậy du lịch Tây Nguyên tháng 5 có gì, hãy khám phá với mình trong bài viết này nhé!', '<p><strong>Với những t&acirc;m hồn mộng mơ tr&oacute;t đem l&ograve;ng y&ecirc;u Đ&agrave; Lạt, Bảo Lộc (L&acirc;m Đồng) như một người t&igrave;nh xa th&igrave; họ kh&ocirc;ng chỉ &ldquo;say&rdquo; vẻ đẹp của c&aacute;c ng&agrave;y quang m&acirc;y nắng ngọt m&agrave; c&ograve;n y&ecirc;u lu&ocirc;n cả những cơn mưa bất chợt v&agrave; những buổi sương giăng khắp n&uacute;i đồi. V&igrave; thế họ chọn du lịch Đ&agrave; Lạt, du lịch L&acirc;m Đồng th&aacute;ng 5.</strong></p>\r\n\r\n<p>Th&aacute;ng 5 l&agrave; th&aacute;ng c&oacute; nhiệt độ cao nhất ở Đ&agrave; Lạt, dao động từ 24 &ndash; 27 độ v&agrave;o ban ng&agrave;y, đến ban đ&ecirc;m nhiệt độ sẽ giảm xuống c&ograve;n khoảng 14 &ndash; 17 độ C. Đ&acirc;y cũng ch&iacute;nh l&agrave; thời gian bạn sẽ thỉnh thoảng bất chợt &ldquo;gi&aacute;p mặt&rdquo; với những cơn mưa r&agrave;o. Đ&agrave; Lạt th&aacute;ng 5 tuy ẩm ương nhưng đầy cuốn h&uacute;t khiến người ta nhớ m&atilde;i kh&ocirc;ng th&ocirc;i. Đ&oacute; l&agrave; m&ugrave;a hoa hướng dương rở rộ; hoa cẩm t&uacute; cầu hiện diện ở khắp mọi nơi; ngo&agrave;i ra c&ograve;n c&oacute; hoa Lavender t&iacute;m đầy mơ mộng v&agrave; hoa cải trắng tinh kh&ocirc;i thi nhau khoe sắc trong l&agrave;n sương m&ugrave; mờ ảo.</p>\r\n\r\n<p>Đ&agrave; Lạt v&agrave; c&aacute;c v&ugrave;ng l&acirc;n cận ch&igrave;m trong sương giăng huyền ảo tựa miền cổ t&iacute;ch. Sương bao phủ tr&ecirc;n Quảng trường L&acirc;m Vi&ecirc;n, nơi được xem l&agrave; &ldquo;tr&aacute;i tim&rdquo; của Đ&agrave; Lạt, với điểm nhấn kiến tr&uacute;c như hoa d&atilde; quỳ v&agrave; nụ hoa atiso; sương bay phảng phất tr&ecirc;n mặt hồ Tuyền L&acirc;m; sương s&agrave; xuống miền Lạc Dương - nơi c&oacute; đỉnh Langbiang chứng nh&acirc;n của thi&ecirc;n t&igrave;nh sử giữa đại ng&agrave;n, với quang cảnh hoang sơ v&agrave; h&agrave;ng th&ocirc;ng xanh khiến thung lũng c&agrave;ng trở n&ecirc;n huyền ảo khiến bao người si m&ecirc;...</p>', 'Cẩm nang du lịch', 'dalat.jpg', 'dalat02.jpg', '15', '2022-04-20 01:54:48', '2022-06-30 19:15:02'),
(3, 'Du lịch Hà Nội mùa cúc họa mi đẹp xốn xang lòng người', 1, 'Không biết tự bao giờ, cúc họa mi đã trở thành nét chấm phá làm nên một Hà Nội rất riêng, bình dị và đẹp đến nao lòng. Chẳng rực rỡ như hướng dương hay yêu kiều như những đóa hồng nhưng những bông hoa bé nhỏ ấy khiến khách du lịch Hà Nội cứ phải bồi hồi xao xuyến mỗi độ gió heo may về.', '<p>H&agrave; Nội c&oacute; mười hai m&ugrave;a hoa nhưng c&oacute; lẽ m&ugrave;a mang lại nhiều cảm x&uacute;c nhất, xao xuyến nhất l&agrave; m&ugrave;a c&uacute;c họa mi, những b&ocirc;ng hoa b&eacute; xinh xắn, trắng tinh kh&ocirc;i. Chờ m&atilde;i từ đầu thu, cuối c&ugrave;ng c&uacute;c họa mi đ&atilde; chịu bung nở, những c&aacute;nh hoa nhỏ li ti khoa sắc dưới nắng v&agrave;ng l&agrave;m người ta xuyến xao đến lạ.</p>\r\n\r\n<p>Người y&ecirc;u c&uacute;c họa mi c&oacute; lẽ c&ograve;n v&igrave; lo&agrave;i hoa n&agrave;y c&oacute; một khả năng đặc biệt, l&agrave; khiến h&igrave;nh ảnh H&agrave; Nội trở n&ecirc;n b&igrave;nh y&ecirc;n v&agrave; đậm chất &ldquo;t&igrave;nh&rdquo; như H&agrave; Nội của những năm 1945. Vậy mới n&oacute;i, mỗi m&ugrave;a c&uacute;c họa mi tới l&agrave; một lần đưa những vị kh&aacute;ch tha phương cảm nhận r&otilde; n&eacute;t b&igrave;nh dị của một H&agrave; Nội xưa trong l&ograve;ng H&agrave; Nội nay. Những ng&agrave;y c&oacute; c&uacute;c họa mi, phố phường H&agrave; Nội cũng khiến người ta dường như trở n&ecirc;n vội v&atilde; hơn.</p>\r\n\r\n<p>Phải chăng cũng bởi v&igrave; m&ugrave;a hoa n&agrave;y tuy đẹp nhưng lại qu&aacute; ngắn ngủi. Một m&ugrave;a hoa chỉ k&eacute;o d&agrave;i khoảng 3 tuần v&agrave; chỉ nở rộ đẹp nhất thường khoảng 1 tuần. Ch&iacute;nh v&igrave; vậy m&agrave; người ta cố gắng, &ldquo;vội v&atilde;&rdquo; lưu lại những khoảnh khắc trong veo, thơ mộng nhất m&agrave; lo&agrave;i hoa n&agrave;y mang đến?C&uacute;c họa mi gắn b&oacute; rất gần gũi với đời sống người d&acirc;n H&agrave; Nội. Du lịch H&agrave; Nội v&agrave;o thời gian n&agrave;y, lang thang bất cứ nơi đ&acirc;u bạn cũng sẽ ngẩn ngơ trước những chiếc xe ngập tr&agrave;n hương sắc mang m&agrave;u hoang dại của đất trời.</p>\r\n\r\n<p>C&uacute;c họa mi rong ruổi theo g&aacute;nh h&agrave;ng hoa, xe hoa của c&aacute;c b&agrave;, c&aacute;c c&ocirc; tr&agrave;n về khắp c&aacute;c con phố, len lỏi qua c&aacute;c ng&otilde; ng&aacute;ch để đến với người y&ecirc;u hoa. Từ người gi&agrave;, c&aacute;c chị trung ni&ecirc;n đến lớp trẻ, ai ai cũng say đắm trước vẻ đẹp tinh kh&ocirc;i của lo&agrave;i hoa nhỏ b&eacute; n&agrave;y. Những chiếc xe chở c&uacute;c họa mi tr&ecirc;n đường phố tập nập khiến người qua đường phải bất chợt dừng &aacute;nh nh&igrave;n, mua bằng được một b&oacute; về nh&agrave;. Dường như, ai ai cũng mang một nỗi lo lắng, sợ m&ugrave;a hoa đi mất.</p>', 'Cẩm nang du lịch', 'cuchoami1.jpg', 'cuchoami2.jpg', '6', '2022-04-25 15:01:16', '2022-08-14 20:04:39'),
(4, 'Phú Thọ đã sẵn sàng cho SEA Games 31', 1, 'Đại hội Thể thao Đông Nam Á lần thứ 31 (SEA Games 31) diễn ra từ ngày 5-23/5 tại Hà Nội và một số địa phương lân cận trong đó có Phú Thọ.', '<p>Ph&oacute;ng vi&ecirc;n: &Ocirc;ng c&oacute; thể chia sẻ đ&ocirc;i ch&uacute;t về c&ocirc;ng t&aacute;c chuẩn bị cho SEA Games 31 tại Ph&uacute; Thọ? Hiện, c&aacute;c cơ sở lưu tr&uacute; tại Ph&uacute; Thọ đ&atilde; triển khai những c&ocirc;ng việc g&igrave;?</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n\r\n\r\n<p>&Ocirc;ng Trần Thanh Sơn - Chủ tịch HHDL Ph&uacute; Thọ, Tổng Gi&aacute;m đốc Kh&aacute;ch sạn S&agrave;i G&ograve;n - Ph&uacute; Thọ</p>\r\n\r\n<p>&Ocirc;ng Trần Thanh Sơn: Từ ng&agrave;y 6/5 tr&ecirc;n s&acirc;n vận động Việt Tr&igrave; tỉnh Ph&uacute; Thọ sẽ diễn ra nội dung thi đấu b&oacute;ng đ&aacute; Nam - Bảng A, c&oacute; đội tuyển Việt Nam thi đấu. C&oacute; thể n&oacute;i, c&ocirc;ng t&aacute;c chuẩn bị cho SEA Games 31 đến nay đ&atilde; cơ bản ho&agrave;n th&agrave;nh tr&ecirc;n 90% c&aacute;c y&ecirc;u cầu ch&iacute;nh của Ban Tổ chức (BTC) SEA Games 31 v&agrave; đảm bảo ho&agrave;n tất 100% trước ng&agrave;y 4/5/2022.</p>', 'seagame31', 'pks140418065065.jpg', 'ges140418065088.jpg', '12', '2022-04-28 21:57:22', '2022-07-26 02:24:18'),
(5, '6 bãi biển đẹp nhất Phú Quốc', 1, 'Phú Quốc sở hữu những đường bờ biển dài bất tận, có thể kể đến bãi Sao, bãi Dài, đồng thời vẫn còn rất nhiều bãi biển hoang sơ khác đẹp tựa thiên đường mang đến cảm giác yên bình, dễ chịu. Phú Quốc thực sự là điểm đến để gia đình bạn tận hưởng một kỳ nghỉ hè thật thú vị.', '<h2>1. B&Atilde;I SAO</h2>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>L&agrave; một trong những b&atilde;i biển đẹp nhất Ph&uacute; Quốc, B&atilde;i Sao với d&aacute;ng cong thoai thoải tựa như vầng trăng. C&aacute;t biển ở đ&acirc;y kh&ocirc;ng mang m&agrave;u v&agrave;ng như biển&nbsp;<a href=\"https://travel.com.vn/du-lich-nha-trang.aspx\" target=\"_blank\" title=\"Nha Trang\">Nha Trang</a>, hay v&agrave;ng đậm ngả sang n&acirc;u như biển Vũng T&agrave;u, m&agrave; l&agrave; m&agrave;u trắng tinh v&agrave; mịn như kem,&hellip; B&atilde;i Sao nằm gọn trong v&ograve;ng tay tr&igrave;u mến của hai dải n&uacute;i mang đến kh&ocirc;ng gian y&ecirc;n tĩnh. (Ảnh: Evgeny Drablenkov/Shutterstock)</p>\r\n\r\n<h2>2. B&Atilde;I D&Agrave;I</h2>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>...</p>', 'phuquoc', 'brx1435951988_tour-du-ngoan-4-dao-vinh-nha-trang-trong-1-ngay76.jpg', 'wzs1435951987_tour-du-ngoan-4-dao-vinh-nha-trang-trong-1-ngay53.jpg', '12', '2022-04-28 22:09:42', '2022-08-14 19:49:42'),
(6, 'Bình Thuận đầy gió và cảnh đẹp cho những ngày tháng 8', 1, 'Tour du lịch Bình Thuận có lẽ là điều bạn cần đấy, bởi cảnh đẹp nơi đây sẽ “vỗ về” sự buồn chán không tên trong những ngày nắng nóng đến “lóa mắt”.', '<p>Cổ Thạch thuộc huyện Tuy Phong, tỉnh B&igrave;nh Thuận, c&aacute;ch Phan Thiết khoảng 100km, c&aacute;ch th&agrave;nh phố Hồ Ch&iacute; Minh khoảng 300km. Nơi đ&acirc;y kh&ocirc;ng chỉ nổi tiếng với khu&nbsp;<a href=\"https://travel.com.vn/\" target=\"_blank\">du lịch</a>&nbsp;t&acirc;m linh với ch&ugrave;a Hang cổ k&iacute;nh. M&agrave; c&ograve;n nổi tiếng với b&atilde;i biển Cổ Thạch với thi&ecirc;n nhi&ecirc;n hoang sơ với b&atilde;i đ&aacute; bảy m&agrave;u tuyệt đẹp.</p>\r\n\r\n<h2>+ Tr&iacute; tưởng tượng được bay bổng</h2>\r\n\r\n\r\n\r\n<p>Kh&ocirc;ng chỉ c&oacute; b&atilde;i đ&aacute; nhiều m&agrave;u sắc, biển Cổ Thạch c&ograve;n thu h&uacute;t lữ kh&aacute;ch bởi những tảng đ&aacute; lớn c&oacute; h&igrave;nh th&ugrave; rất độc đ&aacute;o. Khi th&igrave; tr&ocirc;ng giống như những con voi đang cuộn m&igrave;nh ở đ&agrave;i phun nước khi th&igrave; như một con đ&agrave; điểu đang đắm m&igrave;nh trong biển, v&agrave; l&uacute;c kh&aacute;c th&igrave; giống như c&aacute;i nắm tay. Tất cả đều phụ thuộc v&agrave;o tr&iacute; tưởng tượng bao la của bạn khi&nbsp;<a href=\"https://travel.com.vn/\" target=\"_blank\">du lịch</a>&nbsp;B&igrave;nh Thuận đấy nh&eacute;!</p>', 'Bình Thuận', 'camnhi-223029093016-bien-phu-quy81.jpg', 'bcd30affd0fd663b24df1014bc4c0b76_tn48.jpg', '18', '2022-05-15 20:07:26', '2022-08-10 00:22:12'),
(7, 'Tiền Giang trong một ngày cuối tuần', 1, 'Nhắc đến lòng hiếu khách, mộc mạc, tự nhiên, miền tây cứ thế hò reo trong tim ta.', '<p>B&atilde;i biển T&acirc;n Th&agrave;nh được biết đến như một địa điểm vui chơi cuối tuần l&yacute; tưởng cho c&aacute;c bạn trẻ S&agrave;i G&ograve;n. Trong khi th&agrave;nh phố lu&ocirc;n nhộn nhịp v&agrave; bạn kh&oacute; t&igrave;m thấy sự b&igrave;nh y&ecirc;n, th&igrave; b&atilde;i biển T&acirc;n Th&agrave;nh chắc chắn l&agrave; một lựa chọn tốt. Với chuyến đi như vậy, bạn sẽ cảm nhận được vẻ đẹp thanh b&igrave;nh tại b&atilde;i biển, t&igrave;m hiểu về lối sống của người d&acirc;n địa phương v&agrave; thưởng thức những m&oacute;n đặc sản tuyệt vời.</p>\r\n\r\n<h2>Khi n&agrave;o đến b&atilde;i biển T&acirc;n Th&agrave;nh l&agrave; tuyệt nhất?</h2>', 'Tiền Giang', 'du-lich-phu-quoc-thang-11-6_049.jpg', 'camnhi-224929074948-tan-thanh47.jpg', '7', '2022-07-31 00:18:03', '2022-08-14 19:49:55'),
(8, '6 địa điểm du lịch mùa thu miền Trung lý tưởng', 1, 'Khung cảnh hoang sơ, yên bình dễ làm người ta quên đi mọi muộn phiền, Cù Lao Chàm, đảo Lý Sơn, vịnh Vĩnh Hy, Mũi Kê Gà…', '<p>Th&aacute;ng 9 l&agrave; thời điểm phố Hội bắt đầu v&agrave;o m&ugrave;a thu. Th&agrave;nh phố vẫn ngập trong nắng v&agrave;ng đậu tr&ecirc;n những gi&agrave;n hoa giấy trước hi&ecirc;n nh&agrave;, m&aacute;i ng&oacute;i ri&ecirc;u phong. Lang thang tr&ecirc;n những con đường d&agrave;i, ngắm nh&igrave;n chiếc đ&egrave;n lồng khung sắt đung đưa trước gi&oacute;, những g&aacute;nh h&agrave;ng rong đơn sơ, những chiếc x&iacute;ch l&ocirc; đỗ dọc ven đường, bạn như được trở về ng&agrave;y xưa cũ.<br />\r\n<br />\r\nSau khi đ&atilde; kh&aacute;m ph&aacute; hết mọi ng&otilde; ng&aacute;ch ở phố cổ&nbsp;<a href=\"https://travel.com.vn/mien-trung/tour-hoi-an.aspx?utm_source=internalbl&amp;utm_medium=click&amp;utm_campaign=ATLinks\" target=\"_blank\" title=\"Tour Hội An\">Hội An</a>, bạn c&oacute; thể đến với C&ugrave; Lao Ch&agrave;m để h&ograve;a m&igrave;nh v&agrave;o cuộc sống địa phương, cũng như tận hưởng bầu kh&ocirc;ng kh&iacute; xanh sạch bất tận. Bởi nơi đ&acirc;y đ&atilde; được UNESCO c&ocirc;ng nhận l&agrave; khu dự trữ sinh quyển lớn của thế giới. Thời tiết m&aacute;t mẻ của m&ugrave;a thu gi&uacute;p bạn thỏa th&iacute;ch ngắm cảnh sắc v&agrave; tắm biển. Khi&nbsp;<a href=\"https://travel.com.vn/\" target=\"_blank\">du lịch</a>&nbsp;Hội An đến C&ugrave; Lao Ch&agrave;m, bạn đừng qu&ecirc;n trải nghiệm lặn ngắm san h&ocirc;. Những h&igrave;nh ảnh động vật dưới nước m&agrave; bạn chỉ nh&igrave;n thấy tr&ecirc;n ti vi. Giờ đ&acirc;y, bạn đ&atilde; c&oacute; thể tận mắt chứng kiến, được trực tiếp chạm v&agrave;o ch&uacute;ng. Chắc hẳn đ&acirc;y sẽ l&agrave; kỷ niệm m&agrave; bạn kh&ocirc;ng bao giờ qu&ecirc;n.<br />\r\n<br />\r\n<strong>Đảo L&yacute; Sơn Quảng Ng&atilde;i</strong></p>\r\n\r\n<p>Nếu bạn đang t&igrave;m một địa điểm&nbsp;<a href=\"https://travel.com.vn/\" target=\"_blank\">du lịch</a>&nbsp;c&oacute; kh&ocirc;ng gian m&ecirc;nh m&ocirc;ng để chụp ho&agrave;ng h&ocirc;n hay ngắm b&igrave;nh minh đẹp th&igrave; ở đ&acirc;u bạn cũng c&oacute; thể t&igrave;m được như đảo L&yacute; Sơn, Quảng Ng&atilde;i.<br />\r\n<br />\r\nMặc d&ugrave; đảo L&yacute; Sơn nhỏ b&eacute; nhưng lại c&oacute; đến h&agrave;ng chục di t&iacute;ch lớn, nhỏ đ&atilde; được xếp hạng cấp quốc gia, cấp tỉnh v&agrave; nhiều điểm tham quan v&ocirc; c&ugrave;ng cuốn h&uacute;t như Ch&ugrave;a Hang, đỉnh n&uacute;i Thới Lới, Hang C&acirc;u, H&ograve;n M&ugrave; Cu... Trong đ&oacute;, n&uacute;i Thới Lới l&agrave; nơi ph&ugrave; hợp cho cả việc chụp ho&agrave;ng h&ocirc;n v&agrave; b&igrave;nh minh. Khung cảnh ho&agrave;ng h&ocirc;n nh&igrave;n từ tr&ecirc;n cao xuống mặt biển thực sự ấn tượng với kh&ocirc;ng gian tr&agrave;n ngập sắc đỏ của mặt trời, bạn c&oacute; thể v&ocirc; tư &quot;thả d&aacute;ng&quot; m&agrave; kh&ocirc;ng lo vướng qu&aacute; nhiều người với hướng nh&igrave;n ra mặt biển.&nbsp;<br />\r\n<br />\r\nĐược v&iacute; như &ldquo;đảo ti&ecirc;n&rdquo; giữa biển, bao la với l&agrave;n nước xanh m&agrave;u ngọc b&iacute;ch, đảo L&yacute; Sơn nổi tiếng v&agrave; độc đ&aacute;o với những ngọn n&uacute;i nh&ocirc; ra giữa kh&ocirc;ng gian v&ocirc; tận của đất trời l&agrave; địa điểm du lịch miền Trung bạn kh&ocirc;ng n&ecirc;n bỏ qua m&ugrave;a thu n&agrave;y.<br />\r\n<br />\r\n<strong>N&uacute;i Thần T&agrave;i&nbsp;<a href=\"https://travel.com.vn/du-lich-da-nang.aspx?utm_source=internalbl&amp;utm_medium=click&amp;utm_campaign=ATLinks\" target=\"_blank\" title=\"Du lịch Đà Nẵng\">Đ&agrave; Nẵng</a></strong></p>\r\n\r\n<p>N&uacute;i Thần T&agrave;i sẽ l&agrave; điểm đến l&yacute; tưởng cho chuyến&nbsp;<a href=\"https://travel.com.vn/\" target=\"_blank\">du lịch</a>&nbsp;<a href=\"https://travel.com.vn/du-lich-da-nang.aspx?utm_source=internalbl&amp;utm_medium=click&amp;utm_campaign=ATLinks\" target=\"_blank\" title=\"Du lịch Đà Nẵng\">Đ&agrave; Nẵng</a>&nbsp;để thưởng lộc, cầu an nhất l&agrave; trong th&aacute;ng 7 &acirc;m lịch n&agrave;y. Dạo m&aacute;t nơi đ&acirc;y bạn sẽ bắt gặp h&igrave;nh ảnh những linh vật qu&yacute; được x&acirc;y dựng nhằm mang đến sự may mắn, b&igrave;nh an cho kh&aacute;ch tham quan. C&ocirc;ng vi&ecirc;n suối kho&aacute;ng n&oacute;ng N&uacute;i Thần T&agrave;i c&oacute; thể n&oacute;i l&agrave; một tuyệt t&aacute;c m&agrave; thi&ecirc;n nhi&ecirc;n ban tặng cho thủ phủ của miền Trung, l&agrave;m &ldquo;xi&ecirc;u l&ograve;ng&rdquo; mọi du kh&aacute;ch nhờ kh&ocirc;ng gian được bao phủ một m&agrave;u xanh m&aacute;t c&ugrave;ng những cung đường đầy m&agrave;u sắc rực rỡ giữa n&uacute;i đồi. Đặc biệt l&agrave; bạn c&ograve;n được ng&acirc;m m&igrave;nh trong d&ograve;ng suối kho&aacute;ng n&oacute;ng tự nhi&ecirc;n gi&uacute;p t&aacute;i tạo lại năng lượng, bổ sung kho&aacute;ng chất cần thiết cho cả l&agrave;n da v&agrave; cơ thể của bạn.</p>', 'miền trung', 'tfd_220111043805_09506373.jpg', 'thanh-hang-se-catwalk-tren-cau-1788-4798-159359042496.jpg', '2', '2022-08-14 19:53:04', '2022-09-01 03:44:13'),
(9, 'Mục sở thị điểm đến lý tưởng để trải nghiệm tour nghỉ dưỡng ngắn ngày dịp 2-9', 1, 'Nghỉ Lễ 2/9 nên đi du lịch ở đâu? Trong tiết trời thu se lạnh, 4 ngày nghỉ Lễ 2/9 là thời gian lý tưởng để bạn đi du lịch miền Bắc.', '<p><strong>Trải nghiệm nghỉ dưỡng du thuyền ở&nbsp;<a href=\"https://travel.com.vn/du-lich-ha-long.aspx?utm_source=internalbl&amp;utm_medium=click&amp;utm_campaign=ATLinks\" target=\"_blank\" title=\"Du lịch Hạ Long\">Hạ Long</a></strong><br />\r\n<br />\r\nVới h&agrave;ng ng&agrave;n đảo nhấp nh&ocirc; l&ecirc;n tr&ecirc;n mặt nước ph&ocirc; trương những phiến đ&aacute; hoa cẩm thạch tuyệt đẹp, tưởng như ch&uacute;ng đang chồng chất l&ecirc;n nhau tạo ra những đường n&eacute;t kỳ diệu, cảnh đẹp Vịnh hạ Long khiến mắt ngắm m&atilde;i kh&ocirc;ng biết ch&aacute;n.</p>\r\n\r\n<p>Hiện nay, việc đặt tour du thuyền ở&nbsp;<a href=\"https://travel.com.vn/du-lich-ha-long.aspx?utm_source=internalbl&amp;utm_medium=click&amp;utm_campaign=ATLinks\" target=\"_blank\" title=\"Du lịch Hạ Long\">Hạ Long</a>&nbsp;được chia th&agrave;nh nhiều ph&acirc;n kh&uacute;c sang trọng kh&aacute;c nhau v&agrave; cũng t&ugrave;y theo nhu cầu của kh&aacute;ch h&agrave;ng. Hiện đặt tour du thuyền ở Hạ Long c&oacute; dịch vụ du thuyền 5 sao, du thuyền Hạ Long 4 sao, du thuyền Hạ Long 3 sao. B&ecirc;n cạnh đ&oacute; cũng sẽ t&ugrave;y lịch tr&igrave;nh kh&aacute;m ph&aacute; Hạ Long tự t&uacute;c th&igrave; cũng sẽ c&oacute; loại tour du thuyền Hạ Long đi trong ng&agrave;y, 2 ng&agrave;y 1 đ&ecirc;m, 3 ng&agrave;y 2 đ&ecirc;m hoặc 4 ng&agrave;y 3 đ&ecirc;m. T&ugrave;y v&agrave;o nhu cầu v&agrave; ng&acirc;n s&aacute;ch m&agrave; bạn c&oacute; thể lựa chọn loại du thuyền ph&ugrave; hợp. Bạn sẽ được trải nghiệm những cảm gi&aacute;c như ngủ đ&ecirc;m tr&ecirc;n t&agrave;u, sẽ c&oacute; đủ thời gian đi tham quan c&aacute;c đảo đ&aacute; v&agrave; hang động, c&ugrave;ng tham gia những hoạt động th&uacute; vị tr&ecirc;n biển như thăm l&agrave;ng ch&agrave;i, ch&egrave;o thuyền kayak, hay ngắm ho&agrave;ng h&ocirc;n tr&ecirc;n boong du thuyền c&ugrave;ng gi&oacute; chiều chill chil.<br />\r\n<br />\r\n<strong>Ngắm Ninh B&igrave;nh m&ugrave;a l&uacute;a ch&iacute;n</strong></p>\r\n\r\n<p>Th&aacute;ng 9 cũng l&agrave; thời điểm l&uacute;a ch&iacute;n tại Ninh B&igrave;nh. V&igrave; thế,&nbsp;<a href=\"https://travel.com.vn/\" target=\"_blank\">du lịch</a>&nbsp;Ninh B&igrave;nh dịp Lễ 2/9 n&agrave;y bạn h&atilde;y trải nghiệm kh&aacute;m ph&aacute; nơi đ&acirc;y bằng thuyền, men theo d&ograve;ng s&ocirc;ng Ng&ocirc; Đồng hoặc đi len qua bất kỳ c&aacute;nh đồng h&iacute;t h&agrave; m&ugrave;i l&uacute;a mới. Ngo&agrave;i ra, bạn cũng c&oacute; thể chi&ecirc;m ngưỡng l&uacute;a ch&iacute;n từ tr&ecirc;n cao để c&agrave;ng cảm thấy y&ecirc;u vẻ đẹp của v&ugrave;ng đất Ninh B&igrave;nh hơn.<br />\r\n<br />\r\nĐịa điểm du lịch Ninh B&igrave;nh đẹp, th&iacute;ch hợp để ngắm l&uacute;a l&agrave; Tam Cốc - B&iacute;ch Động. Nơi đ&acirc;y sở hữu một quần thể hang động, n&uacute;i đ&aacute; đẹp ấn tượng giữa non nước, m&acirc;y trời.&nbsp;<br />\r\n<br />\r\n<strong>Thăm H&agrave; Nội - Mảnh đất ng&agrave;n năm văn hiến nơi B&aacute;c đang say giấc nồng</strong></p>\r\n\r\n<p>Lịch nghỉ Lễ 2/9 c&ograve;n g&igrave; tuyệt vời hơn khi trong một ng&agrave;y đặc biệt bạn lại đến một nơi đặc biệt như H&agrave; Nội, thăm B&aacute;c Hồ - vị L&atilde;nh tụ vĩ đại của d&acirc;n tộc Việt Nam ta. Kh&ocirc;ng chỉ l&agrave; nơi an nghỉ của vị l&atilde;nh tụ vĩ đại của d&acirc;n tộc Việt Nam, to&agrave;n bộ cảnh quan trong khu vực Lăng B&aacute;c ch&iacute;nh l&agrave; nơi hội tụ những tinh hoa về kiến tr&uacute;c v&agrave; kh&ocirc;ng gian văn h&oacute;a của thủ đ&ocirc; H&agrave; Nội ng&agrave;n năm văn hiến.<br />\r\n<br />\r\nĐi theo d&ograve;ng người, điểm đến đầu ti&ecirc;n bạn sẽ được chi&ecirc;m ngưỡng l&agrave; Quảng trường Ba Đ&igrave;nh. Sau khi tham quan c&aacute;c khu vực ph&iacute;a trong lăng B&aacute;c, bạn đi theo hướng dẫn ra ngo&agrave;i, men theo con đường sẽ dẫn đến phủ Chủ tịch v&agrave; ao c&aacute; B&aacute;c Hồ - những địa điểm&nbsp;<a href=\"https://travel.com.vn/\" target=\"_blank\">du lịch</a>&nbsp;ở H&agrave; Nội được du kh&aacute;ch trong v&agrave; ngo&agrave;i nước y&ecirc;u th&iacute;ch.<br />\r\n<br />\r\n<strong>Du lịch&nbsp;<a href=\"https://travel.com.vn/mien-bac/tour-sapa.aspx?utm_source=internalbl&amp;utm_medium=click&amp;utm_campaign=ATLinks\" target=\"_blank\" title=\"Sapa\">Sapa</a>&nbsp;trải nghiệm cuộc sống bản địa</strong></p>', 'tháng 9', 'tfd_220125105648_12960859.jpg', 'tfd_220125105607_98928957.jpg', '4', '2022-08-14 19:59:35', '2023-03-10 06:35:54'),
(10, 'Hòa hợp với thiên nhiên cùng 5 địa điểm du lịch Đà Nẵng nổi tiếng', 0, 'Là thành phố biển năng động nhất miền Trung với những bãi biển hoang sơ, sóng lăn tăn, Đà Nẵng luôn định vị được cho mình những địa điểm du lịch nổi tiếng làm lòng lữ khách “lăn tăn”.', '<p><span style=\"font-size:12pt\"><span style=\"font-family:\'Times New Roman\'\"><span style=\"color:#000000\">C&aacute;ch trung t&acirc;m Đ&agrave; Nẵng chỉ 3 km. Với đường bờ biển d&agrave;i tới 90 m&eacute;t, l&agrave;n nước trong xanh, bờ c&aacute;t trắng, s&oacute;ng vỗ nhẹ trong bầu kh&ocirc;ng kh&iacute; trong l&agrave;nh v&agrave; những kh&aacute;ch sạn cao cấp, biển Mỹ Kh&ecirc; được tạp ch&iacute; Forbes của Mỹ b&igrave;nh chọn l&agrave; một trong những b&atilde;i biển đẹp quyến rũ nhất h&agrave;nh tinh.</span></span></span></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><span style=\"font-size:12pt\"><span style=\"font-family:\'Times New Roman\'\"><span style=\"color:#000000\">Đến đ&acirc;y, bạn sẽ c&oacute; cơ hội trải nghiệm b&igrave;nh minh sớm lấp l&aacute;nh, tỏa ra từ ch&acirc;n trời như &aacute;nh h&agrave;o quang v&agrave; đắm m&igrave;nh trong l&agrave;n nước m&aacute;t lạnh.</span></span></span></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><span style=\"font-size:12pt\"><span style=\"font-family:\'Times New Roman\'\"><span style=\"color:#000000\">Cầu Thuận Phước - C&acirc;y cầu treo d&agrave;i nhất nước</span></span></span></p>\r\n\r\n<p><span style=\"font-size:12pt\"><span style=\"font-family:\'Times New Roman\'\"><span style=\"color:#000000\">Cầu Thuận Phước nối trung t&acirc;m th&agrave;nh phố Đ&agrave; Nẵng với cảng Ti&ecirc;n Sa được x&acirc;y dựng v&agrave;o năm 2003 v&agrave; ho&agrave;n th&agrave;nh v&agrave;o năm 2009. N&oacute; c&oacute; chiều d&agrave;i 1.856 m&eacute;t, chiều rộng 18 m&eacute;t v&agrave; chiều cao 92 m&eacute;t. Đ&acirc;y l&agrave; một trong những nơi l&yacute; tưởng nhất ở Đ&agrave; Nẵng để c&oacute; một khung cảnh th&agrave;nh phố tuyệt vời v&agrave;o l&uacute;c ho&agrave;ng h&ocirc;n.&nbsp;</span></span></span></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><span style=\"font-size:12pt\"><span style=\"font-family:\'Times New Roman\'\"><span style=\"color:#000000\">Cầu Thuận Phước nằm cuối s&ocirc;ng H&agrave;n bắc qua vịnh Đ&agrave; Nẵng nối với b&aacute;n đảo Sơn Tr&agrave;. N&oacute; cũng kết nối đường Nguyễn Tất Th&agrave;nh với đường Trường Sa - Ho&agrave;ng Sa l&agrave; hai tuyến đường đ&ocirc; thị ven biển lớn nhất Việt Nam. Thuận Phước l&agrave; một trong những c&acirc;y cầu nổi tiếng nhất bạn n&ecirc;n sắp xếp để gh&eacute; thăm trong kỳ nghỉ ở Đ&agrave; Nẵng của m&igrave;nh.</span></span></span></p>\r\n\r\n<p>&nbsp;</p>', 'da nang', '634534.png', '6345577.png', NULL, '2022-08-16 19:18:35', '2022-08-16 19:18:35');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_review`
--

DROP TABLE IF EXISTS `tbl_review`;
CREATE TABLE IF NOT EXISTS `tbl_review` (
  `review_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `booking_id` bigint(11) UNSIGNED NOT NULL,
  `review_rating` int(11) NOT NULL,
  `review_comment` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`review_id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_review`
--

INSERT INTO `tbl_review` (`review_id`, `booking_id`, `review_rating`, `review_comment`, `created_at`, `updated_at`) VALUES
(1, 1, 4, 'Rat phu hop voi gioi tre', '2021-12-09 09:45:41', '2022-05-10 07:45:22'),
(2, 1, 5, 'ok ok', '2022-05-10 07:45:22', '2022-05-10 07:45:22'),
(3, 1, 5, 'rat ok', '2022-05-10 07:45:22', '2022-05-10 07:45:22'),
(6, 4, 5, 'rat vui', '2022-05-10 07:45:22', '2022-05-10 07:45:22'),
(7, 4, 5, 'ok', '2022-05-26 02:41:33', '2022-05-26 02:41:33'),
(8, 4, 3, 'okeeeee', '2022-07-07 04:50:06', '2022-07-07 04:50:06'),
(9, 4, 5, 'test', '2022-07-07 09:19:25', '2022-07-07 09:19:25'),
(10, 4, 5, 'test1', '2022-07-07 09:20:30', '2022-07-07 09:20:30'),
(11, 9, 5, 'very good', '2022-07-26 01:52:15', '2022-07-26 01:52:15'),
(12, 12, 5, 'Tôi rất hài lòng về dịch vụ chuyến đi, hướng dẫn viên tận tình, đồ ăn ngon, nhiều hoạt động.', '2022-08-11 11:00:15', '2022-08-11 11:00:15'),
(13, 19, 5, 'ok', '2022-08-17 02:30:33', '2022-08-17 02:30:33'),
(14, 19, 5, 'ok', '2022-08-17 02:30:33', '2022-08-17 02:30:33');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_staff`
--

DROP TABLE IF EXISTS `tbl_staff`;
CREATE TABLE IF NOT EXISTS `tbl_staff` (
  `staff_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `position_id` bigint(11) UNSIGNED NOT NULL,
  `staff_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `staff_birth` date NOT NULL,
  `staff_phone_number` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `staff_nationality` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `staff_address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `staff_email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `staff_password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`staff_id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_staff`
--

INSERT INTO `tbl_staff` (`staff_id`, `position_id`, `staff_name`, `staff_birth`, `staff_phone_number`, `staff_nationality`, `staff_address`, `staff_email`, `staff_password`, `created_at`, `updated_at`) VALUES
(1, 1, 'Nam', '2021-06-03', '0912456789', '', 'So 1, Dai Co Viet', 'admin1@gmail.com', '25d55ad283aa400af464c76d713c07ad', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(5, 2, 'Minh', '2022-07-13', '012398765', 'VN', 'So 2 Dai Co Viet', 'admin2@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', '2022-08-02 03:01:16', '2022-08-02 03:01:16'),
(6, 4, 'Son', '2021-08-18', '0123459898', 'VN', 'so 1 hang khay', 'son@gmail.com', '123456', '2022-08-02 03:01:16', '2022-08-02 03:01:16'),
(7, 2, 'Minh', '2022-01-13', '091234567', 'VN', 'So 2 Dai Co Viet', 'minh@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', '2022-08-02 03:01:16', '2022-08-02 03:01:16'),
(9, 2, 'Anh', '2022-07-24', '0123999545', 'VN', 'so 2 dai co viet', 'anh@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', '2022-08-02 03:01:16', '2022-08-02 03:01:16'),
(10, 4, 'Phu', '2005-03-02', '098712345', 'VN', '1 HBT', 'phu@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', '2022-08-02 03:01:16', '2022-08-02 03:01:16'),
(11, 3, 'Bac', '2006-10-02', '0888444555', 'VN', '1 HBT', 'bac@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', '2022-08-02 03:43:25', '2022-08-02 03:43:25');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_tour`
--

DROP TABLE IF EXISTS `tbl_tour`;
CREATE TABLE IF NOT EXISTS `tbl_tour` (
  `tour_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `destination_id` bigint(11) UNSIGNED NOT NULL,
  `typetour_id` bigint(20) UNSIGNED NOT NULL,
  `tour_name_VI` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tour_name_EN` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tour_price` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tour_adult_price` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tour_child_price` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tour_slot` int(11) NOT NULL,
  `tour_desc_VI` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tour_desc_EN` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tour_overview_VI` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `tour_overview_EN` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `tour_thumb` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tour_banner` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tour_img1` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tour_img2` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tour_img3` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tour_img4` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tour_img5` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tour_img6` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tour_date` date DEFAULT NULL,
  `tour_day` int(11) NOT NULL,
  `tour_night` int(11) NOT NULL,
  `tour_sche` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `tour_covid` int(11) NOT NULL,
  `tour_arrival` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tour_departure` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tour_service_in` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `tour_service_ex` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `tour_status` int(11) NOT NULL,
  `tour_map` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`tour_id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_tour`
--

INSERT INTO `tbl_tour` (`tour_id`, `destination_id`, `typetour_id`, `tour_name_VI`, `tour_name_EN`, `tour_price`, `tour_adult_price`, `tour_child_price`, `tour_slot`, `tour_desc_VI`, `tour_desc_EN`, `tour_overview_VI`, `tour_overview_EN`, `tour_thumb`, `tour_banner`, `tour_img1`, `tour_img2`, `tour_img3`, `tour_img4`, `tour_img5`, `tour_img6`, `tour_date`, `tour_day`, `tour_night`, `tour_sche`, `tour_covid`, `tour_arrival`, `tour_departure`, `tour_service_in`, `tour_service_ex`, `tour_status`, `tour_map`, `created_at`, `updated_at`) VALUES
(2, 1, 1, 'Vịnh Hạ Long', 'HaLongBay', '2350000', '200000', '100000', 9, 'Tour Hà Nội - Hạ Long 2 Ngày Ngủ Khách Sạn Tuần Châu', 'Tour Hà Nội - Hạ Long 2 Ngày Ngủ Khách Sạn Tuần Châu', '<p>Tour H&agrave; Nội - Hạ Long 2 Ng&agrave;y Ngủ Kh&aacute;ch Sạn Tuần Ch&acirc;u</p>', 'Tour Hà Nội - Hạ Long 2 Ngày Ngủ Khách Sạn Tuần Châu', 'fni137024678162.jpg', 'afm140359737229.jpg', 'xeb140367079360.jpg', 'dpw140367083882.jpg', 'jhk140384323051.JPG', 'afm140359737220.jpg', 'fni13702467815.jpg', 'yle140367079337.jpg', '2022-07-28', 1, 1, 'HÀ NỘI – HẠ LONG( Ăn Trưa, Tối )', 1, 'HaNoi', 'HaLong', 'Xe điều hoà đưa đón theo chương trình\r\n\r\n- Lái xe nhiệt tình, kinh nghiệm\r\n\r\n- Tàu tham quan vịnh Hạ Long', '- Vé xem các chương trình biểu diễn tại Tuần Châu (xiếc cá heo, sư tử biển, nhạc nước)\r\n\r\n- Ăn uống ngoài chương trình\r\n\r\n- Không hdv nằm lại tại Tuần Châu\r\n\r\n- Bảo hiểm, thuế', 1, 'https://map.coccoc.com/map/41721948301405331', '2021-11-19 19:34:31', '2022-08-09 23:23:52'),
(3, 1, 6, 'Hà Nội - Vịnh Hạ Long', 'Hà Nội - Vịnh Hạ Long', '1500000', '1000000', '800000', 9, 'Khách sạn 4&5 sao', 'Khách sạn 4&5 sao', '<p><strong>Ng&agrave;y1</strong>-TP.HCM &ndash; SB NỘI B&Agrave;I &ndash; H&Agrave; NỘI 00 bữa ăn: (tự t&uacute;c ăn ng&agrave;y đầu ti&ecirc;n)</p>\r\n\r\n<p><strong>Ng&agrave;y2-</strong>H&Agrave; NỘI &ndash; HẠ LONG 03 bữa ăn: (S&aacute;ng, Trưa, Chiều)</p>', 'Ngày\r\n1\r\n18/08/2022\r\nTP.HCM – SB NỘI BÀI – HÀ NỘI 00 bữa ăn: (tự túc ăn ngày đầu tiên)\r\nNgày\r\n2\r\n19/08/2022\r\nHÀ NỘI – HẠ LONG 03 bữa ăn: (Sáng, Trưa, Chiều)', 'dc_200914_Ha Long  (2)37.jpg', 'qkw140418065099.jpg', 'tbm140418065058.jpg', 'pks14041806501.jpg', 'qkw140418065047.jpg', 'tbm140418065090.jpg', 'pks140418065050.jpg', 'bqa14041806505.jpg', '2022-08-10', 2, 1, 'HÀ NỘI – HẠ LONG', 1, 'Ha Noi', 'Quang Ninh', 'Xe tham quan (15, 25, 35, 45 chỗ tùy theo số lượng khách) theo chương trình\r\n- Vé máy bay khứ hồi\r\n- Khách sạn tương tương 3 sao theo tiêu chuẩn 2 khách/phòng hoặc 3 khách/phòng', 'Chi phí cá nhân: ăn uống ngoài chương trình, giặt ủi, chi phí hủy đổi hành trình và nâng hạng chuyến bay, hành lý quá cước, phụ thu phòng đơn,…', 1, 'https://map.coccoc.com/map/21388728461624559', '2022-01-20 19:30:19', '2022-08-10 00:03:41'),
(4, 2, 2, 'Du Ngoạn Hoa Lư - Tam Cốc Ninh Bình', 'Du Ngoạn Hoa Lư - Tam Cốc Ninh Bình', '1500000', '500000', '300000', 9, 'Tour du lịch Hoa Lư Tam Cốc 1 ngày', 'Tour du lịch Hoa Lư Tam Cốc 1 ngày', '<h1>Tour du lịch Hoa Lư Tam Cốc 1 ng&agrave;y</h1>', 'ok', 'ges140418065046.jpg', 'qkw140418065079.jpg', 'tbm140418065069.jpg', 'pks140418065060.jpg', 'qkw140418065092.jpg', 'tbm140418065075.jpg', 'pks140418065069.jpg', 'bqa140418065069.jpg', '2022-07-31', 1, 1, 'Ha Noi - Ninh Binh', 1, 'Ha Noi', 'Ninh Binh', '– Xe ô tô du lịch vận chuyển theo chương trình\r\n– Vé Thắng cảnh các điểm thăm quan, Thuyền thăm động Tam Cốc\r\n– Ăn trưa Set menu theo chương trình\r\n– Hướng dẫn viên thành thạo nhiệt tình.\r\n– 1 chai nước suối / khách / ngày', '– Hóa đơn thuế GTGT10%\r\n– Đồ uống trong các bữa ăn.\r\n– Các chi phí tham quan ngoài chương trình và chi phí cá nhân khác\r\n– Tiền típ cho hướng dẫn và lái xe', 1, 'https://map.coccoc.com/map/21388728461624559', '2022-01-20 19:31:46', '2022-07-28 23:38:12'),
(6, 3, 3, 'Vịnh Nha Trang', 'Nhatrang', '1000000', '1000000', '500000', 9, 'Tour Du Ngoạn 4 Đảo Vịnh Nha Trang Trong 1 Ngày', 'Tour Du Ngoạn 4 Đảo Vịnh Nha Trang Trong 1 Ngày', '<p>Tour Du Ngoạn 4 Đảo Vịnh Nha Trang Trong 1 Ng&agrave;y</p>', 'Tour Du Ngoạn 4 Đảo Vịnh Nha Trang Trong 1 Ngày', 'igt1435952015_tour-du-ngoan-4-dao-vinh-nha-trang-trong-1-ngay64.jpg', 'brx1435951988_tour-du-ngoan-4-dao-vinh-nha-trang-trong-1-ngay0.jpg', 'atr1435951987_tour-du-ngoan-4-dao-vinh-nha-trang-trong-1-ngay85.jpg', 'oju1435951987_tour-du-ngoan-4-dao-vinh-nha-trang-trong-1-ngay16.jpg', 'pem1435951987_tour-du-ngoan-4-dao-vinh-nha-trang-trong-1-ngay61.jpg', 'wzs1435951987_tour-du-ngoan-4-dao-vinh-nha-trang-trong-1-ngay30.jpg', 'xkl1435952014_tour-du-ngoan-4-dao-vinh-nha-trang-trong-1-ngay65.jpg', 'brx1435951988_tour-du-ngoan-4-dao-vinh-nha-trang-trong-1-ngay24.jpg', '2022-07-30', 1, 1, 'TP.HCM – PHAN THIẾT – NHA TRANG  ', 1, 'Ha Noi', 'Nha Trang', 'Tàu đi tham quan đảo.\r\n•  Ăn trưa trên tàu.\r\n•  Kính lặn, ống thở.\r\n•  Chương trình bar nổi trên nước.\r\n•  Chương trình ca nhạc trên tàu.\r\n•  Nước suối 01 chai 330 ml/ khách\r\n•  Khăn lạnh.', 'Vé vào tham quan các đảo : Hồ Cá Trí Nguyên: 170.000 vnd, Hòn Mun:  22.000 vnd, Bãi Tranh:  50.000 vnd\r\n•  Các trò chơi thể thao trên biển, tàu đáy kính.\r\n•  Bia rượu trong bữa ăn\r\n•  Chi phí cá nhân\r\n•  Thuế VAT\r\n•  Phụ thu ngày lễ tết.', 1, 'https://map.coccoc.com/map/21388728461624559', '2022-01-20 21:02:25', '2022-08-09 19:43:03'),
(8, 2, 6, 'Hà Nội - Ninh Bình - Bái Đính - Tràng An - Hạ Long - Trải nghiệm bãi tắm nhân tạo SunWorld Hạ Long', 'Hà Nội - Ninh Bình - Bái Đính - Tràng An - Hạ Long - Trải nghiệm bãi tắm nhân tạo SunWorld Hạ Long', '9500000', '1000000', '500000', 8, 'Ninh Bình - vùng đất “Nơi mơ đến, chốn mong về” ghi dấu ấn với Quần thể danh thắng Tràng An -Di sản văn hóa thiên nhiên thế giới,', 'Ninh Bình - vùng đất “Nơi mơ đến, chốn mong về” ghi dấu ấn với Quần thể danh thắng Tràng An -Di sản văn hóa thiên nhiên thế giới,', '<p>Ng&agrave;y 1: <strong>TPHCM &ndash; SB NỘI B&Agrave;I (H&Agrave; NỘI) &ndash; NINH B&Igrave;NH</strong></p>\r\n\r\n<p>Ng&agrave;y 2: <strong>NINH B&Igrave;NH &ndash; HẠ LONG</strong></p>\r\n\r\n<p>Ng&agrave;y 3: <strong>HẠ LONG &ndash; H&Agrave; NỘI</strong></p>\r\n\r\n<p>Ng&agrave;y 4: <strong>SB NỘI B&Agrave;I &ndash; SB T&Acirc;N SƠN NHẤT (TP.HCM)</strong></p>', 'NINH BÌNH – HẠ LONG\r\nHẠ LONG – HÀ NỘI\r\n\r\nSB NỘI BÀI – SB TÂN SƠN NHẤT (TP.HCM)', 'tfd_220531024743_56709443.jpg', 'tfd_220531025028_77700647.jpg', 'tfd_220531024743_56709450.jpg', 'tfd_220531025028_77700655.jpg', 'tfd_220531030218_32017068.jpg', 'tfd_220531031711_84122817.jpg', 'bqa140418065016.jpg', 'qkw140418065042.jpg', '2022-08-10', 3, 2, 'Hà Nội - Ninh Bình - Bái Đính - Tràng An - Hạ Long', 1, 'TP. Hồ Chí Minh', 'Ninh Bình', '- Xe tham quan (15, 25, 35, 45 chỗ tùy theo số lượng khách) theo chương trình\r\n- Vé máy bay khứ hồi\r\n- Khách sạn tương đương 3&4 sao theo tiêu chuẩn 2 khách/phòng hoặc 3 khách/phòng\r\n- Các bữa ăn theo chương trình\r\n- Vé tham quan theo chương trình\r\n- Hướng dẫn viên tiếng Việt nối tuyến\r\n- Bảo hiểm du lịch với mức bồi thường cao nhất 120.000.000đ/vụ\r\n- Nón Vietravel + Nước suối + Khăn lạnh\r\n- Thuế VAT', '- Chi phí cá nhân: ăn uống ngoài chương trình, giặt ủi, chi phí hủy đổi hành trình và nâng hạng chuyến bay, hành lý quá cước, phụ thu phòng đơn,…\r\n- Tham quan ngoài chương trình : đền Ngọc Sơn, Sunwolrd Hạ Long, thuyền kayak, Bảo Tháp', 1, 'https://map.coccoc.com/map/2857833266190683', '2022-06-13 19:59:10', '2022-08-09 19:41:38'),
(9, 6, 3, 'Vinwonder & Safari World - Nghỉ dưỡng resort 5 sao Radisson Blu Phú Quốc', 'Vinwonder & Safari World - Nghỉ dưỡng resort 5 sao Radisson Blu Phú Quốc', '6500000', '1600000', '600000', 3, 'Bay cùng Vietravel Airlines | Thỏa Thích vui chơi tại Vinwonder & Safari World - Nghỉ dưỡng resort 5 sao Radisson Blu Phú Quốc', 'Bay cùng Vietravel Airlines | Thỏa Thích vui chơi tại Vinwonder & Safari World - Nghỉ dưỡng resort 5 sao Radisson Blu Phú Quốc', '<p>Ng&agrave;y1 -TP.HCM - PH&Uacute; QUỐC - GRAND WORLD (Ăn chiều)</p>\r\n\r\n<p>Ng&agrave;y2-VƯỜN TH&Uacute; B&Aacute;N HOANG D&Atilde; VINPEARL SAFARI - VUI CHƠI THỎA TH&Iacute;CH TẠI C&Ocirc;NG VI&Ecirc;N CHỦ ĐỀ VINWONDERS PH&Uacute; QUỐC (Ăn s&aacute;ng, trưa, chiều)</p>\r\n\r\n<p>Ng&agrave;y3-PH&Uacute; QUỐC - TP.HCM (Ăn s&aacute;ng, trưa)</p>', 'Ngày\r\n1\r\n28/07/2022\r\nTP.HCM - PHÚ QUỐC - GRAND WORLD (Ăn chiều)\r\nNgày\r\n2\r\n29/07/2022\r\nVƯỜN THÚ BÁN HOANG DÃ VINPEARL SAFARI - VUI CHƠI THỎA THÍCH TẠI CÔNG VIÊN CHỦ ĐỀ VINWONDERS PHÚ QUỐC (Ăn sáng, trưa, chiều)\r\nNgày\r\n3\r\n30/07/2022\r\nPHÚ QUỐC - TP.HCM (Ăn sáng, trưa)', 'tfd_220701025711_3316652.jpg', 'tfd_220701025904_73918943.jpg', 'tfd_220701025711_33166537.jpg', 'tfd_220701025904_73918939.jpg', 'tfd_220701030459_0535269.jpg', 'du-lich-phu-quoc-thang-11-1641.jpg', 'du-lich-phu-quoc-thang-11-1515.jpg', 'dc_211112_GRAND WORLD (4)76.jpg', '2022-07-31', 3, 2, 'TP.HCM - PHÚ QUỐC - GRAND WORLD', 1, 'TP. Hồ Chí Minh', 'Phú Quốc', '- Xe tham quan (15, 25, 35, 45 chỗ tùy theo số lượng khách) theo chương trình\r\n- Vé máy bay khứ hồi SGN-PQC-SGN\r\n- Hành lý ký gửi 20kg/1 khách, xách tay 7kg/1 khách\r\n- Khách sạn theo tiêu chuẩn 2 khách/phòng hoặc 3 khách/phòng', '- Chi phí cá nhân: ăn uống ngoài chương trình, giặt ủi, chi phí hủy đổi hành trình và nâng hạng chuyến bay, hành lý quá cước, phụ thu phòng đơn,…\r\n- Chi phí tham quan ngoài chương trình.', 1, 'https://map.coccoc.com/map/1660698725959848', '2022-07-26 20:17:25', '2022-08-09 19:32:29'),
(10, 5, 5, 'Bay cùng Vietjet Air | Đà Nẵng - Hội An - KDL Bà Nà - Cầu Vàng - Huế', 'Đà Nẵng - Hội An - KDL Bà Nà - Cầu Vàng - Huế', '2000000', '1500000', '600000', 9, 'Khách sạn 4* trọn tour', 'Bay cùng Vietjet Air | Đà Nẵng - Hội An - KDL Bà Nà - Cầu Vàng - Huế', '<p><strong>Ng&agrave;y1&nbsp;</strong>TP.HCM - Đ&Agrave; NẴNG &ndash; SƠN TR&Agrave; &ndash; HỘI AN Số bữa ăn: 01 (Ăn chiều)</p>\r\n\r\n<p><strong>Ng&agrave;y2&nbsp;</strong>Đ&Agrave; NẴNG &ndash; B&Agrave; N&Agrave; &ndash; CẦU V&Agrave;NG &ndash; HUẾ Số bữa ăn: 02 (Ăn s&aacute;ng, chiều)</p>\r\n\r\n<p><strong>Ng&agrave;y3&nbsp;</strong>HUẾ - ĐẠI NỘI &ndash; THI&Ecirc;N MỤ - TP.HCM Số bữa ăn: 01 (Ăn s&aacute;ng)</p>', 'Khách sạn 4* trọn tour', 'tfd_220606043338_31939820.jpg', 'dc_200914_HOI AN - CHUA CAU_122.jpg', 'tfd_220111043805_09506357.jpg', 'tfd_220606042855_79030419.jpg', 'tfd_220606043026_00386260.jpg', 'thanh-hang-se-catwalk-tren-cau-1788-4798-159359042488.jpg', 'tfd_220713100957_04494586.jpg', 'shutterstock-1169930359-4299-159359042091.jpg', '2022-08-25', 1, 1, 'Đà Nẵng - Hội An - KDL Bà Nà - Cầu Vàng - Huế', 1, 'TP. Hồ Chí Minh', 'Da Nang', '- Xe tham quan (15, 25, 35, 45 chỗ tùy theo số lượng khách) theo chương trình\r\n- Vé máy bay khứ hồi SGN - HUI/DAD – SGN\r\n- Hành lý: 20 kg ký gửi + 7 kg xách tay/khách\r\n- Khách sạn theo tiêu chuẩn 2 khách/phòng hoặc 3 khách/phòng.', '- Chi phí tham quan ngoài chương trình : Vé cáp treo khứ hồi Bà Nà & khu vui chơi Fantasy Park, Ăn trưa tại Bà Nà…\r\n- Chi phí cá nhân: giặt ủi, chi phí hủy đổi hành trình và nâng hạng chuyến bay, hành lý quá cước, phụ thu phòng đơn,…', 1, 'https://map.coccoc.com/map/3095929352251281', '2022-08-09 19:11:23', '2022-08-09 19:11:23'),
(11, 3, 2, 'Nha Trang - Làng Chài Xưa Mũi Né - Biển Nhũ Tiên - Vinwonders', 'Nha Trang - Làng Chài Xưa Mũi Né - Biển Nhũ Tiên - Vinwonders', '3500000', '900000', '600000', 9, 'Xe. Khách Sạn 4*. Tour Giá Sốc', 'Xe. Khách Sạn 4*. Tour Giá Sốc', '<p>Ng&agrave;y1-TP.HCM &ndash; PHAN THIẾT &ndash; NHA TRANG&nbsp;</p>\r\n\r\n<p>Ng&agrave;y2-NHA TRANG - BIỂN NHŨ TI&Ecirc;N - VINWONDERS</p>\r\n\r\n<p>Ng&agrave;y3-NHA TRANG - I-RESORT - TH&Aacute;P B&Agrave; PONARGAR&nbsp;</p>', 'Ngày\r\n1\r\n13/08/2022\r\nTP.HCM – PHAN THIẾT – NHA TRANG Số bữa ăn: 03 (Ăn sáng, trưa, tối)\r\nNgày\r\n2\r\n14/08/2022\r\nNHA TRANG - BIỂN NHŨ TIÊN - VINWONDERS (Ăn sáng, trưa, ăn chiều tự túc)\r\nNgày\r\n3\r\n15/08/2022\r\nNHA TRANG - I-RESORT - THÁP BÀ PONARGAR (Ăn sáng, ăn trưa, chiều)', 'tfd_220125105607_98928980.jpg', 'tfd_220125105648_12960815.jpg', 'tfd_220125105607_98928922.jpg', 'tfd_220125105648_12960836.jpg', 'atr1435951987_tour-du-ngoan-4-dao-vinh-nha-trang-trong-1-ngay61.jpg', 'igt1435952015_tour-du-ngoan-4-dao-vinh-nha-trang-trong-1-ngay9.jpg', 'ufu1435951987_tour-du-ngoan-4-dao-vinh-nha-trang-trong-1-ngay18.jpg', 'xkl1435952014_tour-du-ngoan-4-dao-vinh-nha-trang-trong-1-ngay61.jpg', '2022-08-19', 3, 2, 'NHA TRANG - BIỂN NHŨ TIÊN - VINWONDERS', 1, 'Ha Noi', 'Nha Trang', 'Xe tham quan (15, 25, 35, 45 chỗ tùy theo số lượng khách) theo chương trình\r\n- Khách sạn theo tiêu chuẩn 2 khách/phòng hoặc 3 khách/phòng\r\nLiệt kê hệ thống khách sạn tham khảo, tùy ngày khởi hành tiêu chuẩn khi đăng ký tên khác nhau', '- Chi phí cá nhân: ăn uống ngoài chương trình, giặt ủi, phụ thu phòng đơn …\r\n- Chi phí tham quan ngoài chương trình: Vé KDL VinWonders, tắm bùn I-Resort, 1 bữa ăn chiều ngày 3 …', 1, 'https://map.coccoc.com/map/3153938863174458', '2022-08-09 20:02:24', '2022-08-09 20:03:45'),
(12, 5, 5, 'SERI HÈ | HÀ NỘI - ĐÀ NẴNG - BÀ NÀ - HỘI AN - HÀ NỘI BAY VIETJET AIR', 'HÀ NỘI - ĐÀ NẴNG - BÀ NÀ - HỘI AN - HÀ NỘI BAY VIETJET AIR', '2500000', '1500000', '500000', 7, 'SERI HÈ', 'SERI HÈ', '<p>&nbsp;</p>\r\n\r\n<p>NG&Agrave;Y 01: H&Agrave; NỘI - Đ&Agrave; NẴNG - SƠN TR&Agrave;</p>\r\n\r\n<p>NG&Agrave;Y 02: Đ&Agrave; NẴNG - KDL B&Agrave; N&Agrave; HILLS</p>\r\n\r\n<p>NG&Agrave;Y 03: Đ&Agrave; NẴNG - HỘI AN</p>', 'NGÀY 01: HÀ NỘI - ĐÀ NẴNG - SƠN TRÀ\r\n\r\nNGÀY 02: ĐÀ NẴNG - KDL BÀ NÀ HILLS\r\n\r\nNGÀY 03: ĐÀ NẴNG - HỘI AN', '6345543.png', '6345372.png', '6345390.png', '6345525.png', '6345111.png', 'dc_200914_HOI AN - CHUA CAU_14.jpg', 'shutterstock-1169930359-4299-159359042093.jpg', 'tfd_220111043805_09506397.jpg', '2022-08-25', 3, 2, 'HÀ NỘI - ĐÀ NẴNG - BÀ NÀ - HỘI AN', 1, 'Da Nang', 'Ha Noi', 'Vé máy bay và lệ phí sân bay Hà Nội – Đà Nẵng – Hà Nội (Vé đoàn hàng không Việt Nam đã gồm 20kg hành lý ký gửi). \r\nXe ô tô máy lạnh hiện đại phục vụ riêng cho đoàn (trên xe có nước rửa tay)', 'Vé cáp treo & các trò chơi khu du lịch Bà Nà + Ăn Bà nà: 850.000 đồng/khách (giá vé có thể thay đổi tại thời điểm sử dụng dịch vụ) \r\nNếu đi thêm Cù Lao chàm: 600.000 đồng/khách', 1, 'https://map.coccoc.com/map/437919707159131', '2022-08-14 19:01:58', '2022-08-14 19:08:59'),
(13, 4, 2, 'DU XUÂN XỨ ĐOÀI - ĐƯỜNG LÂM', 'DU XUÂN XỨ ĐOÀI - ĐƯỜNG LÂM', '500000', '500000', '100000', 20, 'VUI XUÂN AN TOÀN - NGẬP TRÀN MAY MẮN', 'VUI XUÂN AN TOÀN - NGẬP TRÀN MAY MẮN', '<p>&nbsp;L&agrave;ng cổ Đường L&acirc;m - Ch&ugrave;a M&iacute;a - Đền v&agrave; Lăng Ng&ocirc; Quyền - D&atilde;y duối - Đền V&agrave; - Nội th&agrave;nh H&agrave; Nội</p>', 'Làng cổ Đường Lâm - Chùa Mía - Đền và Lăng Ngô Quyền - Dãy duối - Đền Và - Nội thành Hà Nội', '1764106.jpg', '17640258.jpg', '17639476.jpg', '17640260.jpg', '17640660.jpg', '17641066.jpg', '1151.jpg', '56fb3bab8e951-20.jpg', '2022-08-26', 1, 1, 'Làng cổ Đường Lâm - Chùa Mía - Đền và Lăng Ngô Quyền - Dãy duối - Đền Và - Nội thành Hà Nội', 1, 'Ha Noi', 'Ha Noi', '01 xe dẫn đường\r\n01 bữa ăn trưa theo chương trình, mức ăn 150.000đ/suất\r\nVé thắng cảnh thăm quan có trong chương trình\r\nHướng dẫn viên nhiệt tình, kinh nghiệm suốt tuyến', 'Chi phí thuê xe và xăng xe tự lái của khách\r\nĐồ uống trong các bữa ăn\r\nCác chi phí cá nhân khác\r\nTiền típ cho lái xe và hướng dẫn viên', 1, 'https://map.coccoc.com/map/2427392396598359', '2022-08-14 19:18:27', '2022-08-14 19:43:18'),
(14, 4, 2, 'DU LỊCH HÀ NỘI - SAPA - LÀO CAI - PHÚ THỌ - HẠ LONG', 'DU LỊCH HÀ NỘI - SAPA - LÀO CAI - PHÚ THỌ - HẠ LONG', '5000000', '500000', '100000', 20, 'VUI XUÂN AN TOÀN - NGẬP TRÀN MAY MẮN', 'VUI XUÂN AN TOÀN - NGẬP TRÀN MAY MẮN', '<p>DU LỊCH H&Agrave; NỘI - SAPA - L&Agrave;O CAI - PH&Uacute; THỌ - HẠ LONG</p>', 'Làng cổ Đường Lâm - Chùa Mía - Đền và Lăng Ngô Quyền - Dãy duối - Đền Và - Nội thành Hà Nội', 'Ba-Dinh-Square-in-Hanoi-Vietnam_42815255532.jpg', '17640251.jpg', '17639431.jpg', '17640212.jpg', '17640651.jpg', '17641048.jpg', '11521.jpg', '56fb3bab8e951-49.jpg', '2022-08-28', 2, 1, 'DU LỊCH HÀ NỘI - SAPA - LÀO CAI - PHÚ THỌ - HẠ LONGi', 1, 'Ha Noi', 'TP Hồ Chí Minh', '01 xe dẫn đường\r\n01 bữa ăn trưa theo chương trình, mức ăn 150.000đ/suất\r\nVé thắng cảnh thăm quan có trong chương trình\r\nHướng dẫn viên nhiệt tình, kinh nghiệm suốt tuyến', 'Chi phí thuê xe và xăng xe tự lái của khách\r\nĐồ uống trong các bữa ăn\r\nCác chi phí cá nhân khác\r\nTiền típ cho lái xe và hướng dẫn viên', 1, 'https://map.coccoc.com/map/2427392396598359', '2022-08-14 19:19:46', '2022-08-14 19:46:17'),
(15, 4, 7, 'Hà Nội - Sapa - Bản Cát Cát - Fansipan - Cổng Trời Ô Quy Hồ', 'Hà Nội - Sapa - Bản Cát Cát - Fansipan - Cổng Trời Ô Quy Hồ', '5000000', '800000', '400000', 12, 'Khám phá Hà Nội - Sapa', 'Hà Nội - Sapa - Bản Cát Cát - Fansipan - Cổng Trời Ô Quy Hồ', '<p>Ng&agrave;y1-TP.HCM &ndash; SB NỘI B&Agrave;I &ndash; H&Agrave; NỘI 02 bữa ăn: (Trưa, Chiều)</p>\r\n\r\n<p>Ng&agrave;y2-H&Agrave; NỘI &ndash; SAPA 03 bữa ăn: (S&aacute;ng, Trưa, Chiều)</p>', 'Ngày\r\n1\r\n18/08/2022\r\nTP.HCM – SB NỘI BÀI – HÀ NỘI 02 bữa ăn: (Trưa, Chiều)\r\nNgày\r\n2\r\n19/08/2022\r\nHÀ NỘI – SAPA 03 bữa ăn: (Sáng, Trưa, Chiều)', 'tfd_220608101313_18126089.jpg', 'dc_211207_QUOC TU GIAM38.jpg', '0d349f6d_w-103750.jpg', 'dc_211207_HOANG THANH THANG LONG (2)72.jpg', 'tfd_220608101313_1812608.jpg', 'dc_211207_QUOC TU GIAM88.jpg', 'tfd_220608103024_45962813.jpg', '56fb3bab8e951-57.jpg', '2022-08-28', 2, 1, 'Hà Nội - Sapa - Bản Cát Cát - Fansipan - Cổng Trời Ô Quy Hồ', 1, 'Ha Noi', 'Da Nang', '- Xe tham quan (15, 25, 35, 45 chỗ tùy theo số lượng khách) theo chương trình\r\n- Vé máy bay khứ hồi\r\n- Khách sạn theo tiêu chuẩn 2 khách/phòng hoặc 3 khách/phòng\r\n- Vé tham quan theo chương trình\r\n- Hướng dẫn viên tiếng Việt nối tuyến', 'Chi phí cá nhân: ăn uống ngoài chương trình, giặt ủi, chi phí hủy đổi hành trình và nâng hạng chuyến bay, hành lý quá cước, phụ thu phòng đơn,…\r\n- Tham quan ngoài chương trình : đền Ngọc Sơn, cáp treo Fansipan', 1, 'https://map.coccoc.com/map/416613352815466', '2022-08-14 19:39:07', '2022-08-14 19:39:07');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_tour_highlight`
--

DROP TABLE IF EXISTS `tbl_tour_highlight`;
CREATE TABLE IF NOT EXISTS `tbl_tour_highlight` (
  `tour_highlight_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `highlight_id` bigint(11) UNSIGNED NOT NULL,
  `tour_id` bigint(11) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`tour_highlight_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_tour_schedule`
--

DROP TABLE IF EXISTS `tbl_tour_schedule`;
CREATE TABLE IF NOT EXISTS `tbl_tour_schedule` (
  `tour_schedule_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `tour_id` bigint(11) UNSIGNED NOT NULL,
  `tour_schedule_number` int(11) NOT NULL,
  `tour_schedule_content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`tour_schedule_id`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_tour_schedule`
--

INSERT INTO `tbl_tour_schedule` (`tour_schedule_id`, `tour_id`, `tour_schedule_number`, `tour_schedule_content`, `created_at`, `updated_at`) VALUES
(1, 2, 1, '07:30 - 08:30  HDV và lái xe đón Quý khách tại điểm hẹn khởi hành đi Hạ Long. Dừng chân nghỉ ngơi tại Hải Dương 20 phút ghé thăm phòng trưng bày đồ thủ công mỹ nghệ.', '2021-11-19 19:34:31', '2021-11-19 19:34:31'),
(2, 2, 2, '12:00 Xe đưa đoàn ra bến Gia Luận, đoàn lên tàu tham quan Vịnh Hạ Long với 1969 hòn đảo lớn nhỏ, quý khách khám phá động Thiên Cung với vô vàn nhũ đá lấp lánh dưới ánh đèn màu, nguy nga như một cung điện, chiêm ngưỡng hòn gà chọi, hòn chó đá, hòn đỉnh hương.\r\n\r\n17:00 Thuyền về tới bến, xe đón đoàn đưa về khách sạn nhận phòng\r\n\r\n18:00 Xe đón đoàn đưa đi ăn tối và ra đảo Tuần Châu, quý khách tham quan và xem các show biểu diễn cá heo hoặc nhạc nước (tự túc chi phí).', '2022-01-20 19:31:46', '2022-08-09 23:26:19'),
(3, 6, 1, '08h30: Đón khách tại khách sạn và đưa xuống Cảng Cầu Đá. Bắt đầu chuyến du ngoạn 4 đảo vịnh Nha Trang trong 1 ngày.\r\n\r\n09h00: Quý khách lên tàu và bắt đầu cuộc hành trình khám phá vịnh Nha Trang. Sau nửa giờ trên thuyền từ cảng Cầu Đá, du khách sẽ đến với Khu du lịch Hồ Cá Trí Nguyên. Đến đây, du khách có thể đi dạo quanh hồ hay ngồi đón gió ngay trên nhà thuỷ tạ vẫn có thể quan sát cảnh sinh hoạt của đủ loại sinh vật biển với những sắc màu rực rỡ dưới làn nước trong xanh như pha lê ngay dưới chân mình.\r\n\r\nKhu Thủy Cung có đủ các loại cá và đặc biệt là các sinh vật biển quý hiếm. Nơi đây du khách có thể  thư giãn, giải trí và ngắm nhìn sự sống của các loài thuỷ tộc cùng các nàng tiên cá… Trên đảo còn có khu Bãi Sạn là một bãi tắm được nhiều người yêu thích. ( tự túc chi phí)\r\n\r\n10h00: Tàu sẽ đưa quý khách tham quan Hòn Mun – Khu bảo tồn sinh vật biển trong vịnh Nha Trang. Tại đây quý khách sẽ được chiêm ngưỡng các loại sinh vật biển cùng với các rạng san hô nhiều màu sắc phong phú bằng kính lặn, ống thở hay bằng tàu đáy kính (tự túc chi phí).', '2022-01-20 21:02:25', '2022-01-20 21:02:25'),
(4, 8, 1, 'HẠ LONG – HÀ NỘI\r\n03 Bữa ăn: (Sáng, Trưa, Chiều)\r\nQuý khách ăn sáng tại khách sạn. Quý khách trải nghiệm bãi tắm nhân tạo Bãi Cháy của Sunworld Halong Complex, chiêm ngưỡng vẻ đẹp của vịnh Hạ Long dưới những bóng cây nhiệt đới, thỏa sức tắm biển trong làn nước trong xanh tuyệt đẹp và bãi cát trắng với chiều dài lên đến 900m (tự túc chi phí tắm tráng và các dịch vụ trên bãi biển).', '2022-06-13 19:59:10', '2022-08-09 18:55:48'),
(5, 9, 1, 'Sau khi dùng bữa sáng tại Radison Blu, Quý khách trả phòng và khởi hành tham quan:\r\n- Dinh Cậu: biểu tượng văn hoá và tín ngưỡng của đảo Phú Quốc. Nơi ngư dân địa phương gởi gắm niềm tin cho một chuyến ra khơi đánh bắt đầy ắp cá khi trở về. Sau đó, đoàn viếng Dinh Bà Thủy Long Thánh Mẫu - thờ Thần Nữ Kim Giao, người phụ nữ được người dân Phú Quốc rất mực tôn kính vì có công khai phá huyện đảo này.\r\n- Tham quan và mua sắm đặc sản nổi tiếng tại vườn Tiêu; nhà thùng nước mắm; đặc sản khô; cơ sở sản xuất ngọc trai Phú Quốc - trưng bày các trang sức bằng ngọc trai chính hiệu được nuôi cấy tại Phú Quốc. \r\nSau khi tham quan, xe đưa Quý khách đi ăn trưa và ra sân bay Phú Quốc đáp chuyến bay trở về TP.HCM. Chia tay Quý khách và kết thúc chương trình du lịch tại sân bay Tân Sơn Nhất.', '2022-06-13 19:59:10', '2022-08-09 18:54:39'),
(6, 10, 1, 'Quý khách tập trung tại Ga đi Trong Nước, sân bay Tân Sơn Nhất, Hướng dẫn viên làm thủ tục cho Quý khách đáp chuyến bay đi Đà Nẵng tham quan:\r\n-    Bán đảo Sơn Trà và Chùa Linh Ứng : Nơi đây có tượng Phật Quan Thế Âm cao nhất Việt Nam.\r\n-    Ngũ Hành Sơn: Tham quan Chùa Linh Ứng, Động Tàng Chơn, Động Hoa Nghiêm, Chùa Non Nước,...\r\n-   Làng Đá Non Nước Nguyễn Hùng: mua sắm sản phẩm đá mỹ nghệ tạo phong thủy cho tổ ấm hoặc làm quà tặng ý nghĩa cho người thân và bạn bè.\r\nĂn trưa và nhận phòng khách sạn nghỉ ngơi. Buổi chiều đoàn tiếp tục tham quan: \r\n-    Phố Cổ Hội An: Chùa Cầu, Nhà Cổ Phùng Hưng, Hội Quán Phước Kiến, Cơ sở Thủ Công Mỹ Nghệ,…Tự do thả đèn hoa đăng cầu phúc lộc bình an trên dòng sông Hoài…. (chi phí tự túc). \r\nĐoàn quay về Đà Nẵng, nhận phòng khách sạn, tự do nghỉ ngơi.\r\nNghỉ đêm tại Đà Nẵng.  ', '2022-06-13 19:59:10', '2022-08-09 19:19:30'),
(7, 9, 2, 'Quý khách tập trung tại Sân bay Tân Sơn Nhất, ga đi trong nước. Hướng dẫn viên làm thủ tục cho Quý khách chuyến bay chiều phút đi Phú Quốc. Xe đón đoàn tại sân bay đưa về khách sạn nhận phòng nghỉ ngơi tại Resort 5 sao Radisson Blu \r\n\r\nBuổi tối, Quý khách có thể tự do khám phá một số hạng mục nổi bật tại khu Grand World như: công trình tre, công viên nghệ thuật đương đại thuộc Open Park…; tản bộ bên dòng “kênh đào Venice” và nhìn ngắm những chiếc thuyền Gondola, khu phố shophouse lộng lẫy sắc màu, cổng lâu đài tráng lệ, ba cây cầu vòm bán nguyệt...; Thưởng thức bữa tiệc ánh sáng đỉnh cao với show “Sắc màu Venice” (có thể thay đổi tùy theo tình hình thực tế)\r\n\r\nNghỉ đêm tại Radison Blu.', '2022-07-26 20:17:25', '2022-07-26 20:17:25'),
(8, 9, 3, 'Sau khi dùng bữa sáng tại Radison Blu, Quý khách sẽ đến khám phá Vinpearl Safari Phú Quốc - Vườn thú hoang dã đầu tiên tại Việt Nam: với quy mô 180 ha, hơn 130 loài động vật quý hiếm, du khách thưởng thức các chương trình biểu diễn, chụp ảnh với động vật; trải nghiệm vườn thú mở trong rừng tự nhiên, gần gũi và thân thiện với con người.\r\n\r\nBuổi chiều, Quý khách tham quan Khu vui chơi giải trí VinWonders - du khách sẽ lạc vào “Thế Giới Cổ Tích” thông qua những trò chơi tương tác lần đầu tiên xuất hiện tại Việt Nam với 6 chủ đề khác nhau: Khu Cảm Giác Mạnh - Thế Giới Phiêu Lưu; Khu Công Viên Nước - Thế Giới Lốc Xoáy; Khu Lâu Đài Trung Tâm - Châu Âu Trung Cổ; Khu Cổ Tích - Thế Giới Diệu Kỳ; Khu Viking - Ngôi Làng Bí Mật.\r\n\r\nNghỉ đêm tại Radison Blu.', '2022-07-26 20:17:25', '2022-07-26 20:17:25'),
(9, 9, 4, 'Sau khi dùng bữa sáng tại Radison Blu, Quý khách sẽ đến khám phá Vinpearl Safari Phú Quốc - Vườn thú hoang dã đầu tiên tại Việt Nam: với quy mô 180 ha, hơn 130 loài động vật quý hiếm, du khách thưởng thức các chương trình biểu diễn, chụp ảnh với động vật; trải nghiệm vườn thú mở trong rừng tự nhiên, gần gũi và thân thiện với con người.\r\n\r\nBuổi chiều, Quý khách tham quan Khu vui chơi giải trí VinWonders - du khách sẽ lạc vào “Thế Giới Cổ Tích” thông qua những trò chơi tương tác lần đầu tiên xuất hiện tại Việt Nam với 6 chủ đề khác nhau: Khu Cảm Giác Mạnh - Thế Giới Phiêu Lưu; Khu Công Viên Nước - Thế Giới Lốc Xoáy; Khu Lâu Đài Trung Tâm - Châu Âu Trung Cổ; Khu Cổ Tích - Thế Giới Diệu Kỳ; Khu Viking - Ngôi Làng Bí Mật.\r\n\r\nNghỉ đêm tại Radison Blu.', '2022-08-09 19:11:23', '2022-08-09 19:36:42'),
(15, 11, 1, 'Bảo tàng Làng Chài Xưa: mở ra không gian tương tác tái hiện Làng Chài Xưa Mũi Né với lịch sử 300 năm cái nôi của nghề làm nước mắm, trải nghiệm cảm giác lao động trên đồng muối, đi trên con đường rạng xưa, thăm phố cổ Phan Thiết, vào xóm lò tĩn, thăm nhà lều của hàm hộ nước mắm xưa, đắm chìm cảm xúc trong biển 3D và thích thú khi đi chợ làng chài xưa với bàn tính tay, bàn cân xưa thú vị.', '2022-08-09 20:02:24', '2022-08-09 20:02:24'),
(16, 11, 2, 'Biển Nhũ Tiên: đắm mình trong làn nước biển trong xanh, mát mẻ, được bao bọc bởi bãi cát dài trắng xóa và những hàng dừa lao xao trong gió. Với vẻ đẹp hoang sơ, thơ mộng, biển Nhũ Tiên tựa như nàng tiên đang ngủ vùi giữa không gian mênh mông của sóng, của gió, của núi và của mây.', '2022-08-09 20:02:24', '2022-08-09 20:02:24'),
(17, 11, 3, 'Suối khoáng nóng I-Resort: với không gian yên tĩnh, cây cối xanh tươi, I-Resort sẽ hiện ra như một bức tranh thiên nhiên đậm chất Việt, Quý khách sẽ được trải nghiệm dịch vụ tắm khoáng thư giãn. Ngoài ra, Quý khách còn có thể tắm bùn khoáng hoặc massage cho làn da thêm tươi trẻ.', '2022-08-09 20:02:24', '2022-08-09 20:02:24'),
(18, 12, 1, 'Sáng: Xe ô tô và Hướng dẫn viên của Công ty đón đoàn tại điểm hẹn đưa ra sân bay Nội Bài đáp chuyến bay VJ505 đi Đà Nẵng lúc 07h55 của Hàng không Vietjet\r\n\r\nĐến sân bay Đà Nẵng, Xe đón đoàn khởi hành đi Quý khách khởi hành đi Non nước Ngũ Hành Sơn\r\n\r\nĂn trưa tại nhà hàng. Sau đó, đoàn về khách sạn nhận phòng nghỉ ngơi.\r\n\r\nChiều: Quý khách khởi hành đi thăm Bán Đảo Sơn Trà (Monkey Mountain) để thưởng ngoạn toàn cảnh phố biển Đà Nẵng từ trên cao, dọc theo triền núi Đông Nam để chiêm ngưỡng vẻ đẹp tuyệt mỹ của biển Đà Nẵng, viếng Linh Ứng Tự - nơi có tượng Phật Bà 65m cao nhất Việt Nam.', '2022-08-14 19:01:58', '2022-08-14 19:01:58'),
(19, 12, 2, 'Quý khách tự do tắm biển, tham quan thành phố Đà Nẵng, tự túc ăn trưa\r\n\r\nĂn tối tại nhà hàng. Buổi tối quý khách tự do khám phá thành phố biển về đêm.\r\n\r\nNghỉ đêm tại khách sạn mặt biển', '2022-08-14 19:01:58', '2022-08-14 19:01:58'),
(20, 12, 3, '14h00: Xe và hướng dẫn đón đoàn khởi hành đi Khu du lịch Vinpearl Land Nam Hội An để Quý khách có cơ hội khám phá và trải nghiệm Vinpearl River Safari, Vinpearl Land với 20 trò chơi cảm giác mạnh ấn tượng, công viên nước hoành tráng, khu vui chơi trong nhà gồm 95 trò chơi điện tử, phòng chiếu phim 5D, khu vườn cổ tích…', '2022-08-14 19:01:58', '2022-08-14 19:01:58'),
(21, 13, 1, '07h00 Xe ô tô và hướng dẫn viên của Hanoitourist đón đoàn tại 18 Lý Thường Kiệt khởi hành cho chuyến đi thăm quan Làng cổ Đường Lâm.\r\n\r\n08h30 Qúy khách tới Làng cổ Đường Lâm, bắt đầu hành trình đi bộ tìm hiểu về ngôi làng Việt cổ độc đáo trong không gian văn hóa xứ Đoài nơi sinh ra 2 vị vua nổi tiếng trong lịch sử dân tộc Việt Nam. \r\n\r\nChụp ảnh lưu niệm tại Cây đa và Cổng làng - một trong những cổng làng Việt truyền thống nổi tiếng nhất cả nước.\r\nTham quan đình Mông Phụ trên 400 năm tuổi, nhà thờ Thám hoa Giang Văn Minh và một trong số các ngôi nhà cổ - nơi các bạn có thể xem và chụp ảnh với cối xay lúa cổ, mua tương, mua chè lam.\r\nThăm chùa Mía, ngôi chùa được bà chúa Mía xây dựng vào thế kỷ thứ XVII. Trong chùa hiện nay có 287 pho tượng, với một kiến trúc độc đáo, rất phong phú và sinh động.\r\n12h00 Quý khách thưởng thức bữa trưa cơm trưa trong nếp nhà truyền thống được làm từ gỗ và đá ong. Sau bữa trưa quý khách nghỉ ngơi.\r\n\r\n13h30 Quý khách tiếp tục tham quan:\r\n\r\nĐền thờ, Lăng Ngô Quyền và Đền thờ Bố cái Đại Vương Phùng Hưng - nơi thờ hai vị vua lừng danh trong lịch sử dân tộc Việt Nam\r\nKhám phá Dãy Duối cổ nghìn năm tuổi nổi tiếng Đường Lâm. Tương truyền, đây là nơi Ngô Quyền buộc voi và ngựa chiến sau các cuộc tập trận cùng nghĩa quân để chuẩn bị tiến về vùng cửa sông Bạch Đằng đánh quân Nam Hán.\r\n15h00 Đoàn lên xe đến thăm Đền Và, còn gọi là Đông Cung, tọa lạc tại thôn Vân Gia, phường Trung Hưng là một trong tứ cung của xứ Đoài thờ Tản Viên Sơn Thánh - vị thần đứng đầu trong “Tứ bất tử” của tín ngưỡng dân gian Việt Nam\r\n\r\n16h00 Quý khách lên xe quay về Hà Nội.\r\n\r\n18h00 Đoàn về đến điểm ban đầu. Chia tay Quý khách, kết thúc chương trình.', '2022-08-14 19:18:27', '2022-08-14 19:18:27'),
(22, 14, 1, 'Buổi sáng, quý khách tập trung tại  Cổng D1 - Ga đi trong nước - SB.Tân Sơn Nhất. HDV Lữ hành Saigontourist đón quý khách và hỗ trợ làm thủ tục. Khởi hành đi Hà Nội (chuyến bay VN206 lúc 6h).Đáp xuống sân bay Nội Bài, xe đưa đoàn theo tuyến Đường cao tốc Nội Bài - Lào Cai, tiếp tục đi Sapa. Đoàn chinh phục đèo Ô Quy Hồ, tham quan Khu du lịch Cổng Trời. Buổi tối, tự do ngắm nhà thờ đá, dạo chợ Sapa... Nghỉ đêm tại Sapa.    ', '2022-08-14 19:19:46', '2022-08-14 19:19:46'),
(23, 14, 2, 'Xe đưa đoàn đến Nhà ga cáp treo Fansipan, quý khách tự do tham quan khu vực vườn hoa, chợ phiên...\r\nLựa chọn (tự túc chi phí tham quan) : Trải nghiệm hệ thống cáp treo 3 dây hiện đại với cảm giác đi giữa biển mây. Viếng khu tâm linh Fanpsian, vượt gần 600 bậc thang, chinh phục “Nóc nhà Đông Dương” - đỉnh Fansipan 3,143m.\r\nKhởi hành về Phú Thọ. Đoàn dừng chân tại Lào Cai, tham quan cột mốc biên giới và cửa khẩu quốc tế Lào Cai. Buổi tối, đoàn tự do đi dạo công viên Văn Lang, “check-in cầu Tình Yêu” lung linh ánh đèn. Nghỉ đêm tại KS Sài Gòn - Phú Thọ 4', '2022-08-14 19:19:46', '2022-08-14 19:19:46'),
(24, 15, 1, 'Quý khách tập trung tại sân bay Tân Sơn Nhất (Ga nội địa), hướng dẫn viên hỗ trợ khách làm thủ tục đáp chuyến bay đi Hà Nội. Đến sân bay Nội Bài, xe và HDV Vietravel đón Quý khách đi Hà Nội. Xe đưa Quý khách đi tham quan:\r\nHoàng thành Thăng Long: quần thể công trình kiến trúc đồ sộ được các triều vua xây dựng trong nhiều giai đoạn lịch sử và trở thành di tích quan trọng bậc nhất trong hệ thống các di tích Việt Nam.\r\nVăn Miếu: nơi thờ Khổng Tử và các bậc hiền triết của Nho Giáo, Quốc Tử Giám - trường đại học đầu tiên của Việt Nam, tìm về cội nguồn lịch sử của các vị Nho học.', '2022-08-14 19:39:07', '2022-08-14 19:39:07'),
(25, 15, 2, 'Quý khách ăn sáng và trả phòng.  Xe khởi hành đưa Quý khách đi tham quan Hồ Hoàn Kiếm ngắm bên ngoài Tháp Rùa, Đền Ngọc Sơn, Cầu Thê Húc.  Sau khi dùng cơm trưa, Quý khách tiếp tục khởi hành theo cao tốc Hà Nội – Lào cai đi phố núi Sapa tham quan:\r\nBản Cát Cát - đẹp như một bức tranh giữa vùng phố cổ Sapa, nơi đây thu hút du khách bởi cầu treo, thác nước, guồng nước và những mảng màu hoa mê hoặc du khách khi lạc bước đến đây. Thăm những nếp nhà của người Mông, Dao, Giáy trong bản, du khách sẽ không khỏi ngỡ ngàng trước vẻ đẹp mộng mị của một trong những ngôi làng cổ đẹp nhất Sapa.', '2022-08-14 19:39:07', '2022-08-14 19:39:07');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_typetour`
--

DROP TABLE IF EXISTS `tbl_typetour`;
CREATE TABLE IF NOT EXISTS `tbl_typetour` (
  `typetour_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `typetour_name_VI` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `typetour_thumb` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `typetour_banner` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `typetour_name_EN` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `typetour_desc_VI` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `typetour_desc_EN` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `typetour_status` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`typetour_id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_typetour`
--

INSERT INTO `tbl_typetour` (`typetour_id`, `typetour_name_VI`, `typetour_thumb`, `typetour_banner`, `typetour_name_EN`, `typetour_desc_VI`, `typetour_desc_EN`, `typetour_status`, `created_at`, `updated_at`) VALUES
(1, 'Du lịch ẩm thực', 'Banh-Xeo-1528856703-1175-159359042898.jpg', 'yle140367079331.jpg', 'Food tour', 'Và đúng là con đường ngắn nhất từ trái tim tới trái tim là đi xuyên qua dạ dày. Cách để khách du lịch ghi nhớ văn hoá của một vùng đất là cho họ thưởng thức đặc sản đặc trưng của vùng đất ấy. Hương vị của đồ ăn sẽ không chạm vào đầu lưỡi và mất đi mà sẽ chạm đến cả tâm hồn họ.', 'Food in VietNam', 1, '2021-11-19 17:44:24', '2022-08-09 23:58:39'),
(2, 'Du lịch tham quan', 'hai-hai-landscape-742.jpg', 'pks140418065046.jpg', 'History tour', 'Thăm đền chùa, thăm di tích lịch sử, di tích quốc gia, văn miếu,...dựa vào những yếu tố phong tục tập quán, tín ngưỡng tâm linh, thói quen nếp sống đặc trưng của một vùng miền để tạo nên dấu ấn riêng thu hút khách du lịch.', 'history travel', 1, '2022-01-20 19:50:13', '2022-08-09 23:56:23'),
(3, 'Du lịch nghỉ dưỡng', 'du-lich-phu-quoc-thang-11-2_087.jpg', 'du-lich-phu-quoc-thang-11-1246.jpg', 'Resort tour', 'Du lịch nghỉ dưỡng là loại hình du lịch kết hợp rất nhiều các hoạt động giải, trí, chăm sóc sức khoẻ, lễ hội, mua sắm,....giúp khách tham quan có thời gian thư giãn, giải trí, chăm sóc sức khoẻ sau khoảng thời gian mệt mỏi.', 'resort', 1, '2022-01-20 20:17:26', '2022-08-09 23:56:58'),
(5, 'Du lịch đô thị', '6-trai-nghiem-choi-dem-o-ha-noi-1042175.jpg', '56fb3bab8e951-0.jpg', 'City tour', 'Du lịch đô thị thường có ở các khu đô thị hoặc các trung tâm thành phố lớn. Đây là loại hình du lịch ngắn ngày, là phương tiện giải trí nhanh nhất của du khách.', 'city', 1, '2022-06-14 01:31:09', '2022-08-09 23:58:06'),
(6, 'Du lịch sinh thái', '1550461622-du-lich-sinh-thai-64.jpg', 'ttxvn_trang_an_2808_178.jpg', 'Eco tour', 'Du lịch sinh thái ngày càng được chú trọng không chỉ ở Việt Nam mà cả các quốc gia khác bởi tính bền vững và ít có sự tác động tiêu cực đến môi trường - yếu tố mà các hình thức du lịch khác khó làm được.', 'Eco tour', 1, '2022-08-09 18:52:16', '2022-08-09 23:55:29'),
(7, 'Du lịch khám phá', 'phuot-thu-hao-huc-don-cho-festival-du-luon-bay-tren-mua-vang-hinh-25.jpg', 'du-luon-mu-cang-chai-vietnamembassy-newzealand45.jpg', 'Du lịch khám phá', 'Du lịch khám phá phù hợp với những người ưa thích di chuyển và khám phá những vùng đất mới lạ, thích thú được hoà mình vào không gian thiên nhiên và dám mạo hiểm.', 'Du lịch khám phá phù hợp với những người ưa thích di chuyển và khám phá những vùng đất mới lạ, thích thú được hoà mình vào không gian thiên nhiên và dám mạo hiểm.', 1, '2022-08-10 00:13:49', '2022-08-10 00:13:49');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
