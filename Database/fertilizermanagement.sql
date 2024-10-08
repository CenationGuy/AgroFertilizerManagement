-- phpMyAdmin SQL Dump
-- version 5.0.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 16, 2021 at 09:41 AM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.4.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `fertilizermanagement`
--

DELIMITER $$
--
-- Procedures
--
CREATE DEFINER=`root`@`localhost` PROCEDURE `insertData` (IN `name` VARCHAR(255), IN `email` VARCHAR(255), IN `comments` VARCHAR(1000))  INSERT INTO feedback(name,email,feedback) VALUES (name, email,comments)$$

DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `adminid` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(255) NOT NULL,
  `created_at` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`adminid`, `username`, `password`, `created_at`) VALUES
(7, 'praveen@gmail.com', '$2y$10$fQGYk2XLplRowe8PTPYZf.3R4jAkmSyoUYHru3TQkTkAXZ.iqBCvS', '2022-01-22 21:58:29'),
(8, 'shilpa@gmail.com', '$2y$10$Jv7oer37wwtk3uYo2Yp4/u76OAgfe68gtdE/PpN3X7vJxebYRaTO6', '2022-01-24 22:59:38');
-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `p_id` int(11) NOT NULL,
  `product_name` varchar(100) NOT NULL,
  `product_price` varchar(50) NOT NULL,
  `product_image` varchar(255) NOT NULL,
  `qty` int(10) NOT NULL,
  `total_price` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `cat_id` int(11) NOT NULL,
  `cat_name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`cat_id`, `cat_name`) VALUES
(1, 'Organic and Inorganic'),
(2, 'Nitrogen'),
(3, 'Nitrogen with Inhibitor'),
(4, 'Phosphorus'),
(5, 'Potassium'),
(6, 'Calium Magnesium and Sulphur'),
(7, 'Micronutrient'),
(8, 'Inhibitor');
-- --------------------------------------------------------

--
-- Table structure for table `feedback`
--

CREATE TABLE `feedback` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `feedback` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `feedback`
--

INSERT INTO `feedback` (`id`, `name`, `email`, `feedback`) VALUES
(1, 'Praveen', 'praveen@gmail.com', 'Good'),
(3, 'Rajesh', 'raj@gmail.com', 'Very Convenient and affordable'),
(4, 'Ramesh', 'ramesh@ymail.com', 'Nice experience');

-- --------------------------------------------------------

--
-- Table structure for table `logs`
--

CREATE TABLE `logs` (
  `id` int(11) NOT NULL,
  `p_id` int(11) NOT NULL,
  `p_name` varchar(20) NOT NULL,
  `action` varchar(20) NOT NULL,
  `date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `logs`
--

INSERT INTO `logs` (`id`, `p_id`, `p_name`, `action`, `date`) VALUES
(38, 61, 'Micro nutrimix', 'INSERTED', '2022-01-24 22:37:55');
-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(255) NOT NULL,
  `phone` varchar(20) NOT NULL,
  `address` varchar(255) NOT NULL,
  `pmode` varchar(50) NOT NULL,
  
  `products` varchar(255) NOT NULL,
  `amount_paid` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `user_id`, `name`, `email`, `phone`, `address`, `pmode`, `products`, `amount_paid`) VALUES
(6, 9, 'Praveen', 'praveenyadav7996@gmail.com', '9353152434', 'tumkur', 'cod', 'Vermi Compost(1), Zuena nitrogen rich(1)', '8700'),
(7, 9, 'suhas', 'suhas@gmail.com', '9880324497', 'Bengaluru', 'cod', 'Go Garden npk 20 20 20(1), Panther(1)', '2200');
-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `p_id` int(11) NOT NULL,
  `p_name` varchar(255) NOT NULL,
  `qty` int(255) NOT NULL,
  `price` int(10) NOT NULL,
  `description` varchar(2000) NOT NULL,
  `cat_num` int(2) NOT NULL,
  `p_image` varchar(2000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`p_id`, `p_name`, `qty`, `price`, `description`, `cat_num`, `p_image`) VALUES
(19, 'NPK 19 19 19', 1, 550, 'NPK 19 19 19', 4, 'img/npk19.png'),
(20, 'NPK 19 19 19', 1, 550, 'NPK 19 19 19', 4, 'img/npk19.png'),
(24, 'Chiken litter', 1, 4500, 'Chiken litter', 5, 'img/chl.png'),
(25, 'Bone Meal', 1, 1100, 'Bone Meal', 1, 'img/bm.png'),
(27, 'Vermi Compost', 1, 5700, 'Vermi Compost', 3, 'img/vm.png'),
(28, 'Agrobium nitrogen', 1, 2500, 'Agrobium nitrogen', 7, 'img/an.png'),
(29, 'Agrobium nitrogen', 1, 3500, 'Agrobium nitrogen', 1, 'img/abooster.png'),
(31, 'Go Garden npk 20 20 20', 1, 1700, 'Go Garden npk 20 20 20', 6, 'img/brand2.jpeg'),
(33, 'Epsom salt', 1, 2000, 'Epsom salt', 2, 'img/esalt.png'),
(34, 'Zuena nitrogen Rich', 1, 250, 'Zuena nitrogen Rich', 6, 'img/zuena.png'),
(35, 'Zuena nitrogen rich', 1, 3000, 'Zuena nitrogen Rich', 3, 'img/zuena.png'),
(36, 'Agrobium nitrogen', 1, 1150, 'Agrobium nitrogen', 1, 'img/an.png'),
(37, 'Bone Meal', 1, 3000, ' Bone Meal', 2, 'img/bm.png'),
(38, 'Chicken litter', 1, 5000, 'Chicken litter', 2, 'img/chl.png'),
(39, 'Panther', 1, 500, 'Panther', 6, 'img/panther.png'),
(40, 'Rock Phosphate', 1, 3000, 'Rock Phosphate', 6, 'img/rockp.png'),
(41, 'Panther', 1, 2000, 'Panther', 7, 'img/panther.png'),
(42, 'Greenstrix', 1, 1500, 'Greenstrix', 7, 'img/greenstix.png'),
(43, 'Greenstrix', 1, 2300, 'Greenstrix', 3, 'img/greenstix.png'),
(44, 'Holy green liquid virgin', 1, 2500, 'Holy green liquid virgin', 3, 'img/holyg.png'),
(45, 'Panther', 1, 500, 'Panther', 5, 'img/panther.png'),
(46, 'Epsom Salt', 1, 500, 'Epsom Salt', 5, 'img/esalt.png'),
(47, 'Bone Meal', 1, 1200, 'Bone Meal', 7, 'img/bm.png'),
(48, 'Zaena bio natural', 1, 4500, 'Zaena bio natural', 5, 'img/zaena.png'),
(51, 'Green global crop', 1, 5000, 'Green global crop', 2, 'img/gogarden.png'),
(53, 'Green global crop ', 1, 4000, 'Green global crop', 1, 'img/gogarden.png'),
(57, 'Micro nutrimix', 1, 5000, 'Micro nutrimix', 8, 'img/micron.jpg'),
(60, 'Ampoxcilin', 1, 5000, 'Ampoxcilin', 1, 'img/green.png');


--
-- Triggers `products`
--
DELIMITER $$
CREATE TRIGGER `deletelog` AFTER DELETE ON `products` FOR EACH ROW INSERT INTO logs VALUES(null,OLD.p_id,OLD.p_name,'DELETED',NOW())
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `insertlog` AFTER INSERT ON `products` FOR EACH ROW INSERT INTO logs VALUES (null, NEW.p_id,NEW.p_name,'INSERTED',NOW())
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `updatelog` AFTER UPDATE ON `products` FOR EACH ROW INSERT INTO logs VALUES(null,NEW.p_id,NEW.p_name,'UPDATED',NOW())
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(255) NOT NULL,
  `created_at` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `password`, `created_at`) VALUES
(1, 'Raghavendra', '$2y$10$S/p87OZaR.mZiqzMk1O/r.1h/hIbG6CYwDRZEyyl0cCKqU3ZO.Mte', '2020-12-15 00:02:02'),
(2, 'Raghavendra H K', '$2y$10$3hFbneE4HEJNjgMqPiL3fOkhgELRIoSVaLanTE07BN0MX.irMl2U2', '2020-12-15 00:10:49'),
(4, 'Raghav Kulkarni', '$2y$10$cWD.bozqKFmgq43SYSxJDehMO6oVh6dNTIEfghb7IBP9cAYfzmWNq', '2020-12-15 20:14:20'),
(5, 'hitman5545', '$2y$10$vrT7vMJYkFcioxURqQLU8OBpEHwM5sSKsTn4aYDq.SmiV0N6mNUhW', '2020-12-16 19:38:17'),
(6, 'chetan', '$2y$10$.cYiQyKm57UeTnzQhDs7xuOfsKD0cSM4LH0.2ne0txYBCrtN7Yel.', '2021-01-03 15:38:10'),
(7, 'kashyap', '$2y$10$//zGkg4rEe3m65XCtyAkgOnlCBHb4L/Uhltxz6ZxC/NM4kIWDIpe2', '2021-01-09 21:46:44'),
(8, 'Naveen', '$2y$10$q2ep58FETWs3xkGS1fcHuu2gLrbDoHddBfOZRXx6kWkmpJW7M09qK', '2021-01-09 21:52:23');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`adminid`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`p_id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`cat_id`);

--
-- Indexes for table `feedback`
--
ALTER TABLE `feedback`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `logs`
--
ALTER TABLE `logs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`p_id`),
  ADD KEY `cat_num` (`cat_num`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `adminid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `cart`
--
ALTER TABLE `cart`
  MODIFY `p_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=61;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `cat_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `feedback`
--
ALTER TABLE `feedback`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `logs`
--
ALTER TABLE `logs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `p_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=61;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `orders`
--


/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
