-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Dec 07, 2024 at 03:28 PM
-- Server version: 8.0.30
-- PHP Version: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `da1_nhom6`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int NOT NULL,
  `cate_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `type` tinyint(1) NOT NULL,
  `soft_delete` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `cate_name`, `type`, `soft_delete`) VALUES
(7, 'Quần áo nam thời trang', 1, 0),
(8, 'Quần áo nữ thời trang', 0, 0),
(9, 'Sản phẩm mới', 1, 1),
(10, 'Quần áo nam', 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `id` int NOT NULL,
  `user_id` int NOT NULL,
  `product_id` int NOT NULL,
  `content` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `active` tinyint NOT NULL DEFAULT '1',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`id`, `user_id`, `product_id`, `content`, `active`, `created_at`) VALUES
(2, 21, 7, 'Sản phẩm đẹp ^^', 1, '2024-12-05 18:18:29'),
(3, 21, 7, 'Sản phẩm đẹp ^^', 1, '2024-12-05 18:28:36'),
(4, 21, 7, 'Sản phẩm đẹp ^^', 1, '2024-12-05 18:29:12'),
(5, 21, 10, 'Sản phẩm chất lượng', 1, '2024-12-06 01:40:55');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int NOT NULL,
  `user_id` int NOT NULL,
  `status` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `payment` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `note` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `total_price` double NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `user_id`, `status`, `payment`, `note`, `total_price`, `created_at`) VALUES
(9, 18, '1', 'cod', NULL, 1000000, '2024-11-30 06:41:17'),
(10, 18, '1', 'cod', NULL, 2000000, '2024-11-30 06:41:17'),
(19, 17, '4', 'cod', NULL, 30000000, '2024-11-30 14:41:27'),
(24, 13, '4', 'cod', NULL, 2000000, '2024-12-05 08:58:17'),
(25, 13, '3', 'vnpay', NULL, 200000, '2024-12-05 09:10:31'),
(26, 23, '4', 'cod', NULL, 2000000, '2024-12-05 09:50:13'),
(27, 23, '4', 'cod', NULL, 1300000, '2024-12-05 15:55:55'),
(28, 21, '3', 'cod', NULL, 2000000, '2024-12-05 16:13:17'),
(29, 21, '3', 'cod', NULL, 3000000, '2024-12-05 17:11:28'),
(30, 21, '4', 'cod', NULL, 200000, '2024-12-05 17:17:56'),
(31, 21, '3', 'cod', NULL, 1000000, '2024-12-05 17:24:24'),
(32, 21, '2', 'cod', NULL, 1306000, '2024-12-07 11:26:20');

-- --------------------------------------------------------

--
-- Table structure for table `order_details`
--

CREATE TABLE `order_details` (
  `id` int NOT NULL,
  `order_id` int NOT NULL,
  `product_id` int NOT NULL,
  `price` bigint NOT NULL,
  `quantity` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `order_details`
--

INSERT INTO `order_details` (`id`, `order_id`, `product_id`, `price`, `quantity`) VALUES
(1, 1, 9, 2000000, 2),
(2, 2, 9, 2000000, 2),
(3, 3, 9, 2000000, 2),
(4, 4, 9, 2000000, 1),
(5, 5, 5, 400000, 1),
(6, 5, 7, 1000000, 1),
(7, 5, 9, 2000000, 2),
(8, 6, 7, 1000000, 2),
(9, 6, 9, 2000000, 1),
(10, 6, 11, 200000, 1),
(11, 6, 12, 3000000, 1),
(12, 7, 10, 300000, 1),
(13, 8, 9, 2000000, 1),
(14, 9, 7, 1000000, 1),
(15, 10, 9, 2000000, 1),
(16, 11, 9, 2000000, 1),
(17, 12, 9, 2000000, 1),
(18, 13, 11, 200000, 1),
(19, 14, 9, 2000000, 1),
(20, 15, 11, 200000, 15),
(21, 16, 8, 1000000, 2),
(22, 17, 7, 1000000, 1),
(23, 18, 7, 1000000, 1),
(24, 19, 9, 2000000, 15),
(25, 20, 11, 200000, 5),
(26, 21, 9, 2000000, 3),
(27, 22, 11, 200000, 2),
(28, 23, 5, 400000, 3),
(29, 24, 7, 1000000, 2),
(30, 25, 11, 200000, 1),
(31, 26, 9, 2000000, 1),
(32, 27, 7, 1000000, 1),
(33, 27, 10, 300000, 1),
(34, 28, 7, 1000000, 1),
(35, 28, 8, 1000000, 1),
(36, 29, 9, 2000000, 1),
(37, 29, 8, 1000000, 1),
(38, 30, 11, 200000, 1),
(39, 31, 7, 1000000, 1),
(40, 32, 7, 1000000, 1),
(41, 32, 13, 6000, 1),
(42, 32, 14, 300000, 1);

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `price` bigint NOT NULL,
  `quantity` int NOT NULL,
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `status` tinyint NOT NULL DEFAULT '1',
  `category_id` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `image`, `price`, `quantity`, `description`, `status`, `category_id`) VALUES
(5, 'Áo Bomber Nam form rộng', 'anhnam3.jpg', 400000, 22, 'Áo khoác nhẹ chống nước với thiết kế năng động, phù hợp cho các buổi tập luyện hoặc hoạt động ngoài trời. Chất liệu thoáng khí, mang lại sự thoải mái tối đa.', 1, 7),
(6, 'Đầm Dài Satin Quyến Rũ (Satin Glam Gown)', 'anh7.jpg', 1000000, 22, 'Đầm dài đến mắt cá chân, chất liệu satin bóng mượt ôm nhẹ cơ thể, tạo vẻ quý phái. Thiết kế cổ yếm hoặc lệch vai làm nổi bật nét đẹp tinh tế của người mặc.\r\n\r\n', 1, 8),
(7, 'Áo Khoác Gió Active Fit', 'anhnam6.jpg', 1000000, 28, 'Áo khoác nhẹ chống nước với thiết kế năng động, phù hợp cho các buổi tập luyện hoặc hoạt động ngoài trời. Chất liệu thoáng khí, mang lại sự thoải mái tối đa.\r\n\r\n', 1, 7),
(8, 'Đầm Babydoll Dáng Ngắn (Sweet Babydoll Dress)', 'anh5.jpg', 1000000, 3, 'Thiết kế babydoll dáng ngắn dễ thương với phần tay phồng nhẹ. Đường chiết eo cao giúp tôn dáng và mang lại sự thoải mái khi mặc.\r\n\r\n', 1, 8),
(9, 'Áo Sơ Mi nam form rộng', 'anhthunnam2.jpg', 2000000, 23, 'Áo thun trơn màu trung tính, chất liệu cotton cao cấp, phù hợp với phong cách tối giản. Sự đơn giản trong thiết kế làm nổi bật vẻ thanh lịch của người mặc.', 1, 7),
(10, 'Áo Sơ Mi nam thêm họa tiết', 'anhthunnam8.jpg', 300000, 19, 'Chiếc áo hoodie dáng rộng, phối màu hoặc họa tiết độc đáo, phù hợp với phong cách đường phố hiện đại. Dễ dàng phối với quần jeans rách hoặc jogger.', 1, 7),
(11, 'Váy Maxi Màu Trơn (Solid Color Maxi Dress)', 'anh3.webp', 200000, 28, 'Váy dài dáng suông với màu sắc trung tính như trắng, be hoặc đen. Thiết kế không họa tiết, tập trung vào phom dáng và chất liệu thoải mái.', 1, 8),
(12, 'Váy Midi Ren Hoàng Gia (Royal Lace Midi Dress)', 'anh5.webp', 1050000, 12, 'Thiết kế váy dài qua gối, được làm từ ren cao cấp, mang đến vẻ thanh lịch và quyến rũ. Phần tay lửng và cổ chữ V nhẹ nhàng, phù hợp cho các buổi tiệc trang trọng hoặc sự kiện quan trọng.', 1, 8),
(13, 'Set nỉ nam xám', 'g.jpg', 600000, 12, 'Áo thun trơn màu trung tính, chất liệu cotton cao cấp, phù hợp với phong cách tối giản. Sự đơn giản trong thiết kế làm nổi bật vẻ thanh lịch của người mặc.', 1, 7),
(14, 'Quần áo nam cộc thời trang', 'c.jpg', 300000, 22, 'Thoáng mát !', 1, 7),
(15, 'Set quần áo nữ thời trang', 'anh1.webp', 500000, 15, 'Sản phẩm tốt!', 1, 8),
(16, 'Váy Ngắn Linen Pure Chic', 'anh4.webp', 1200000, 5, 'Váy ngắn trên gối với form dáng suông và chất liệu linen tự nhiên, mang đến vẻ ngoài gọn gàng, thanh lịch. Phù hợp để diện trong những ngày hè nóng bức.', 1, 8),
(17, 'Váy Maxi Họa Tiết Boho Blossom', 'anhnu6.webp', 1250000, 4, 'Chiếc váy maxi dài thướt tha với họa tiết thổ cẩm đầy màu sắc. Chất liệu voan mỏng nhẹ kết hợp với dây thắt lưng tùy chỉnh tạo cảm giác phóng khoáng, tự do.', 1, 8),
(18, 'Đầm Hoa Nhí Pastel Nomad Dream', 'anh2.webp', 850000, 6, 'Váy dáng rộng với họa tiết hoa nhí pastel, kết hợp cổ tròn và tay phồng nhẹ. Chất vải cotton mềm mại mang lại sự thoải mái và nét nữ tính nhẹ nhàng.\r\n\r\n', 1, 8),
(19, 'Áo Khoác Gió Active Fat', 'anhnam4.jpg', 40000, 8, 'Áo khoác nhẹ chống nước với thiết kế năng động, phù hợp cho các buổi tập luyện hoặc hoạt động ngoài trời. Chất liệu thoáng khí, mang lại sự thoải mái tối đa.', 1, 10);

-- --------------------------------------------------------

--
-- Table structure for table `product_colors`
--

CREATE TABLE `product_colors` (
  `id` int NOT NULL,
  `product_id` int DEFAULT NULL,
  `color` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `product_sizes`
--

CREATE TABLE `product_sizes` (
  `id` int NOT NULL,
  `product_id` int DEFAULT NULL,
  `size` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `taikhoan`
--

CREATE TABLE `taikhoan` (
  `id` int NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `diachi` varchar(255) NOT NULL,
  `sdt` int NOT NULL,
  `active` tinyint(1) NOT NULL DEFAULT '1',
  `role` enum('admin','user') CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT 'user'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `taikhoan`
--

INSERT INTO `taikhoan` (`id`, `name`, `email`, `password`, `created_at`, `diachi`, `sdt`, `active`, `role`) VALUES
(13, 'Cấn Minh Chiến', 'chiencmph53462@gmail.com', '$2y$10$NTpm07hl3lrplDeg5lMulOwW8V/.k9VFYiV/J.OPh1V1rnHzP03ce', '2024-11-27 14:57:20', 'Hà nội  ', 582198868, 1, 'admin'),
(21, 'dungcvvc', 'dungcv@gmail.com', '$2y$10$dauOvhO6PyE1wiGYnc1MWuQRLCDKwdPJEzjeTiMhKgtuad85u3MKS', '2024-12-05 09:44:11', 'Hà nội  ', 123456789, 1, 'user'),
(22, 'dungcvvc', 'chiencmph53462@gmail.com', '$2y$10$Nhw2mUZIcu5kgTDOw.kA/ep19Rwfe4GGTC5vp9WxmGr8yprEBlPmO', '2024-12-05 09:47:59', 'Hà nội', 123456789, 1, 'user'),
(23, 'cấn hiển', 'hiencan@gmail.com', '$2y$10$VAJ.1jc1WcXkm9xDwUk6uedVi8tsxzYbW87ncI5P1FxDdq.nBwxnu', '2024-12-05 09:49:20', 'Hà nội ', 123456789, 1, 'user');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `order_details`
--
ALTER TABLE `order_details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_colors`
--
ALTER TABLE `product_colors`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_id` (`product_id`);

--
-- Indexes for table `product_sizes`
--
ALTER TABLE `product_sizes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_id` (`product_id`);

--
-- Indexes for table `taikhoan`
--
ALTER TABLE `taikhoan`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `order_details`
--
ALTER TABLE `order_details`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `product_colors`
--
ALTER TABLE `product_colors`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `product_sizes`
--
ALTER TABLE `product_sizes`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `taikhoan`
--
ALTER TABLE `taikhoan`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `product_colors`
--
ALTER TABLE `product_colors`
  ADD CONSTRAINT `product_colors_ibfk_1` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`);

--
-- Constraints for table `product_sizes`
--
ALTER TABLE `product_sizes`
  ADD CONSTRAINT `product_sizes_ibfk_1` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
