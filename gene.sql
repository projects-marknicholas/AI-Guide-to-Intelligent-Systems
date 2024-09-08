-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 08, 2024 at 03:16 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `gene`
--

-- --------------------------------------------------------

--
-- Table structure for table `properties`
--

CREATE TABLE `properties` (
  `id` int(11) NOT NULL,
  `suburb` varchar(255) NOT NULL,
  `bedroom` varchar(255) NOT NULL,
  `max_price` float NOT NULL,
  `property_type` varchar(255) NOT NULL,
  `bathrooms` int(11) NOT NULL,
  `property_image` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `construction` varchar(255) NOT NULL,
  `telephone` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `properties`
--

INSERT INTO `properties` (`id`, `suburb`, `bedroom`, `max_price`, `property_type`, `bathrooms`, `property_image`, `description`, `construction`, `telephone`) VALUES
(201, 'Northern Suburbs', '2', 330000, 'Unit', 1, 'https://smartasset.com/wp-content/uploads/sites/2/2013/03/modern-custom-suburban-home-exterior-picture-id1255835529-1.jpg', '2-bedroom unit with updated interiors.', 'Glass', '012-345-6789'),
(202, 'Southern Suburbs', '5', 780000, 'House', 3, 'https://thumbor.forbes.com/thumbor/fit-in/x/https://www.forbes.com/advisor/wp-content/uploads/2021/08/download-7.jpg', '5-bedroom house with luxury features.', 'Wood', '123-456-7890'),
(203, 'Central Suburbs', '3', 470000, 'Townhouse', 2, 'https://www.allproperties.com.ph/wp-content/uploads/2022/01/Philippine-real-estate-industry-property-investment-scaled-1.jpg', '3-bedroom townhouse with modern amenities.', 'Stone', '234-567-8901'),
(204, 'Eastern Shore', '4', 600000, 'Unit', 2, 'https://smartasset.com/wp-content/uploads/sites/2/2013/03/modern-custom-suburban-home-exterior-picture-id1255835529-1.jpg', '4-bedroom unit with spacious interiors.', 'Concrete', '345-678-9012'),
(205, 'Western Suburbs', '2', 340000, 'House', 1, 'https://thumbor.forbes.com/thumbor/fit-in/x/https://www.forbes.com/advisor/wp-content/uploads/2021/08/download-7.jpg', '2-bedroom house with cozy interiors.', 'Wood', '456-789-0123'),
(206, 'Northern Suburbs', '5', 750000, 'Unit', 3, 'https://www.allproperties.com.ph/wp-content/uploads/2022/01/Philippine-real-estate-industry-property-investment-scaled-1.jpg', '5-bedroom unit with premium amenities.', 'Stone', '567-890-1234'),
(207, 'Southern Suburbs', '3', 470000, 'House', 2, 'https://smartasset.com/wp-content/uploads/sites/2/2013/03/modern-custom-suburban-home-exterior-picture-id1255835529-1.jpg', '3-bedroom house with spacious layout.', 'Brick', '678-901-2345'),
(208, 'Central Suburbs', '1', 290000, 'Townhouse', 1, 'https://thumbor.forbes.com/thumbor/fit-in/x/https://www.forbes.com/advisor/wp-content/uploads/2021/08/download-7.jpg', '1-bedroom townhouse with modern features.', 'Glass', '789-012-3456'),
(209, 'Eastern Shore', '2', 350000, 'Unit', 1, 'https://www.allproperties.com.ph/wp-content/uploads/2022/01/Philippine-real-estate-industry-property-investment-scaled-1.jpg', '2-bedroom unit with a garden view.', 'Concrete', '890-123-4567'),
(210, 'Western Suburbs', '4', 620000, 'House', 2, 'https://smartasset.com/wp-content/uploads/sites/2/2013/03/modern-custom-suburban-home-exterior-picture-id1255835529-1.jpg', '4-bedroom house with luxurious amenities.', 'Wood', '901-234-5678'),
(211, 'Northern Suburbs', '3', 460000, 'House', 2, 'https://thumbor.forbes.com/thumbor/fit-in/x/https://www.forbes.com/advisor/wp-content/uploads/2021/08/download-7.jpg', '3-bedroom house with modern amenities.', 'Glass', '012-345-6789'),
(212, 'Southern Suburbs', '5', 750000, 'Unit', 3, 'https://www.allproperties.com.ph/wp-content/uploads/2022/01/Philippine-real-estate-industry-property-investment-scaled-1.jpg', '5-bedroom unit with premium features.', 'Concrete', '123-456-7890'),
(213, 'Central Suburbs', '4', 600000, 'Townhouse', 2, 'https://smartasset.com/wp-content/uploads/sites/2/2013/03/modern-custom-suburban-home-exterior-picture-id1255835529-1.jpg', '4-bedroom townhouse with great features.', 'Wood', '234-567-8901'),
(214, 'Eastern Shore', '1', 310000, 'House', 1, 'https://thumbor.forbes.com/thumbor/fit-in/x/https://www.forbes.com/advisor/wp-content/uploads/2021/08/download-7.jpg', '1-bedroom house with updated design.', 'Stone', '345-678-9012'),
(215, 'Western Suburbs', '3', 470000, 'Unit', 2, 'https://www.allproperties.com.ph/wp-content/uploads/2022/01/Philippine-real-estate-industry-property-investment-scaled-1.jpg', '3-bedroom unit with modern design.', 'Glass', '456-789-0123'),
(216, 'Northern Suburbs', '4', 590000, 'House', 2, 'https://smartasset.com/wp-content/uploads/sites/2/2013/03/modern-custom-suburban-home-exterior-picture-id1255835529-1.jpg', '4-bedroom house with a large garden.', 'Concrete', '567-890-1234'),
(217, 'Southern Suburbs', '2', 340000, 'Unit', 1, 'https://thumbor.forbes.com/thumbor/fit-in/x/https://www.forbes.com/advisor/wp-content/uploads/2021/08/download-7.jpg', '2-bedroom unit with contemporary features.', 'Wood', '678-901-2345'),
(218, 'Central Suburbs', '5', 780000, 'House', 3, 'https://www.allproperties.com.ph/wp-content/uploads/2022/01/Philippine-real-estate-industry-property-investment-scaled-1.jpg', 'Luxurious 5-bedroom house with premium amenities.', 'Stone', '789-012-3456'),
(219, 'Eastern Shore', '3', 470000, 'Unit', 2, 'https://smartasset.com/wp-content/uploads/sites/2/2013/03/modern-custom-suburban-home-exterior-picture-id1255835529-1.jpg', '3-bedroom unit with spacious interiors.', 'Glass', '890-123-4567'),
(220, 'Western Suburbs', '2', 340000, 'Townhouse', 1, 'https://thumbor.forbes.com/thumbor/fit-in/x/https://www.forbes.com/advisor/wp-content/uploads/2021/08/download-7.jpg', '2-bedroom townhouse with modern design.', 'Wood', '901-234-5678'),
(221, 'Northern Suburbs', '1', 290000, 'Unit', 1, 'https://www.allproperties.com.ph/wp-content/uploads/2022/01/Philippine-real-estate-industry-property-investment-scaled-1.jpg', 'Compact 1-bedroom unit with a garden view.', 'Concrete', '012-345-6789'),
(222, 'Southern Suburbs', '4', 620000, 'House', 2, 'https://smartasset.com/wp-content/uploads/sites/2/2013/03/modern-custom-suburban-home-exterior-picture-id1255835529-1.jpg', '4-bedroom house with luxurious features.', 'Stone', '123-456-7890'),
(223, 'Central Suburbs', '3', 470000, 'Townhouse', 2, 'https://thumbor.forbes.com/thumbor/fit-in/x/https://www.forbes.com/advisor/wp-content/uploads/2021/08/download-7.jpg', '3-bedroom townhouse with premium amenities.', 'Wood', '234-567-8901'),
(224, 'Eastern Shore', '2', 340000, 'Unit', 1, 'https://www.allproperties.com.ph/wp-content/uploads/2022/01/Philippine-real-estate-industry-property-investment-scaled-1.jpg', '2-bedroom unit with great features.', 'Glass', '345-678-9012'),
(225, 'Western Suburbs', '1', 300000, 'House', 1, 'https://smartasset.com/wp-content/uploads/sites/2/2013/03/modern-custom-suburban-home-exterior-picture-id1255835529-1.jpg', '1-bedroom house with modern design.', 'Concrete', '456-789-0123'),
(226, 'Northern Suburbs', '5', 780000, 'Unit', 3, 'https://thumbor.forbes.com/thumbor/fit-in/x/https://www.forbes.com/advisor/wp-content/uploads/2021/08/download-7.jpg', '5-bedroom unit with luxurious features.', 'Stone', '567-890-1234'),
(227, 'Southern Suburbs', '3', 470000, 'House', 2, 'https://www.allproperties.com.ph/wp-content/uploads/2022/01/Philippine-real-estate-industry-property-investment-scaled-1.jpg', '3-bedroom house with a cozy layout.', 'Wood', '678-901-2345'),
(228, 'Central Suburbs', '4', 620000, 'Townhouse', 2, 'https://smartasset.com/wp-content/uploads/sites/2/2013/03/modern-custom-suburban-home-exterior-picture-id1255835529-1.jpg', '4-bedroom townhouse with updated features.', 'Concrete', '789-012-3456'),
(229, 'Eastern Shore', '1', 290000, 'House', 1, 'https://thumbor.forbes.com/thumbor/fit-in/x/https://www.forbes.com/advisor/wp-content/uploads/2021/08/download-7.jpg', '1-bedroom house with a modern layout.', 'Glass', '890-123-4567'),
(230, 'Western Suburbs', '2', 340000, 'Unit', 1, 'https://www.allproperties.com.ph/wp-content/uploads/2022/01/Philippine-real-estate-industry-property-investment-scaled-1.jpg', '2-bedroom unit with updated amenities.', 'Wood', '901-234-5678'),
(231, 'Northern Suburbs', '4', 600000, 'House', 2, 'https://smartasset.com/wp-content/uploads/sites/2/2013/03/modern-custom-suburban-home-exterior-picture-id1255835529-1.jpg', '4-bedroom house with premium features.', 'Concrete', '012-345-6789'),
(232, 'Southern Suburbs', '2', 340000, 'Unit', 1, 'https://thumbor.forbes.com/thumbor/fit-in/x/https://www.forbes.com/advisor/wp-content/uploads/2021/08/download-7.jpg', '2-bedroom unit with modern amenities.', 'Glass', '123-456-7890'),
(233, 'Central Suburbs', '5', 780000, 'House', 3, 'https://www.allproperties.com.ph/wp-content/uploads/2022/01/Philippine-real-estate-industry-property-investment-scaled-1.jpg', '5-bedroom house with luxurious features.', 'Wood', '234-567-8901'),
(234, 'Eastern Shore', '3', 470000, 'Unit', 2, 'https://smartasset.com/wp-content/uploads/sites/2/2013/03/modern-custom-suburban-home-exterior-picture-id1255835529-1.jpg', '3-bedroom unit with spacious design.', 'Concrete', '345-678-9012'),
(235, 'Western Suburbs', '2', 340000, 'Townhouse', 1, 'https://thumbor.forbes.com/thumbor/fit-in/x/https://www.forbes.com/advisor/wp-content/uploads/2021/08/download-7.jpg', '2-bedroom townhouse with updated design.', 'Wood', '456-789-0123'),
(236, 'Northern Suburbs', '1', 290000, 'Unit', 1, 'https://www.allproperties.com.ph/wp-content/uploads/2022/01/Philippine-real-estate-industry-property-investment-scaled-1.jpg', 'Compact 1-bedroom unit with modern features.', 'Stone', '567-890-1234'),
(237, 'Southern Suburbs', '4', 620000, 'House', 2, 'https://smartasset.com/wp-content/uploads/sites/2/2013/03/modern-custom-suburban-home-exterior-picture-id1255835529-1.jpg', '4-bedroom house with spacious interiors.', 'Wood', '678-901-2345'),
(238, 'Central Suburbs', '3', 470000, 'Townhouse', 2, 'https://thumbor.forbes.com/thumbor/fit-in/x/https://www.forbes.com/advisor/wp-content/uploads/2021/08/download-7.jpg', '3-bedroom townhouse with luxury amenities.', 'Concrete', '789-012-3456'),
(239, 'Eastern Shore', '2', 340000, 'Unit', 1, 'https://www.allproperties.com.ph/wp-content/uploads/2022/01/Philippine-real-estate-industry-property-investment-scaled-1.jpg', '2-bedroom unit with updated features.', 'Wood', '890-123-4567'),
(240, 'Western Suburbs', '1', 310000, 'House', 1, 'https://smartasset.com/wp-content/uploads/sites/2/2013/03/modern-custom-suburban-home-exterior-picture-id1255835529-1.jpg', '1-bedroom house with modern design.', 'Concrete', '901-234-5678'),
(241, 'Northern Suburbs', '5', 780000, 'Unit', 3, 'https://thumbor.forbes.com/thumbor/fit-in/x/https://www.forbes.com/advisor/wp-content/uploads/2021/08/download-7.jpg', '5-bedroom unit with contemporary design.', 'Glass', '012-345-6789'),
(242, 'Southern Suburbs', '3', 470000, 'House', 2, 'https://www.allproperties.com.ph/wp-content/uploads/2022/01/Philippine-real-estate-industry-property-investment-scaled-1.jpg', '3-bedroom house with modern features.', 'Stone', '123-456-7890'),
(243, 'Central Suburbs', '4', 600000, 'Townhouse', 2, 'https://smartasset.com/wp-content/uploads/sites/2/2013/03/modern-custom-suburban-home-exterior-picture-id1255835529-1.jpg', '4-bedroom townhouse with luxury features.', 'Wood', '234-567-8901'),
(244, 'Eastern Shore', '1', 290000, 'House', 1, 'https://thumbor.forbes.com/thumbor/fit-in/x/https://www.forbes.com/advisor/wp-content/uploads/2021/08/download-7.jpg', '1-bedroom house with updated design.', 'Concrete', '345-678-9012'),
(245, 'Western Suburbs', '2', 340000, 'Unit', 1, 'https://www.allproperties.com.ph/wp-content/uploads/2022/01/Philippine-real-estate-industry-property-investment-scaled-1.jpg', '2-bedroom unit with a modern layout.', 'Glass', '456-789-0123'),
(246, 'Northern Suburbs', '4', 600000, 'House', 2, 'https://smartasset.com/wp-content/uploads/sites/2/2013/03/modern-custom-suburban-home-exterior-picture-id1255835529-1.jpg', '4-bedroom house with updated design.', 'Concrete', '567-890-1234'),
(247, 'Southern Suburbs', '2', 340000, 'Unit', 1, 'https://thumbor.forbes.com/thumbor/fit-in/x/https://www.forbes.com/advisor/wp-content/uploads/2021/08/download-7.jpg', '2-bedroom unit with cozy interiors.', 'Wood', '678-901-2345'),
(248, 'Central Suburbs', '5', 780000, 'House', 3, 'https://www.allproperties.com.ph/wp-content/uploads/2022/01/Philippine-real-estate-industry-property-investment-scaled-1.jpg', '5-bedroom house with luxury amenities.', 'Stone', '789-012-3456'),
(249, 'Eastern Shore', '3', 470000, 'Unit', 2, 'https://smartasset.com/wp-content/uploads/sites/2/2013/03/modern-custom-suburban-home-exterior-picture-id1255835529-1.jpg', '3-bedroom unit with modern design.', 'Glass', '890-123-4567'),
(250, 'Western Suburbs', '2', 340000, 'Townhouse', 1, 'https://thumbor.forbes.com/thumbor/fit-in/x/https://www.forbes.com/advisor/wp-content/uploads/2021/08/download-7.jpg', '2-bedroom townhouse with modern features.', 'Wood', '901-234-5678'),
(251, 'Northern Suburbs', '1', 290000, 'Unit', 1, 'https://www.allproperties.com.ph/wp-content/uploads/2022/01/Philippine-real-estate-industry-property-investment-scaled-1.jpg', 'Compact 1-bedroom unit with a garden view.', 'Concrete', '012-345-6789'),
(252, 'Southern Suburbs', '4', 620000, 'House', 2, 'https://smartasset.com/wp-content/uploads/sites/2/2013/03/modern-custom-suburban-home-exterior-picture-id1255835529-1.jpg', '4-bedroom house with premium amenities.', 'Stone', '123-456-7890'),
(253, 'Central Suburbs', '3', 470000, 'Townhouse', 2, 'https://thumbor.forbes.com/thumbor/fit-in/x/https://www.forbes.com/advisor/wp-content/uploads/2021/08/download-7.jpg', '3-bedroom townhouse with luxurious features.', 'Concrete', '234-567-8901'),
(254, 'Eastern Shore', '2', 340000, 'Unit', 1, 'https://www.allproperties.com.ph/wp-content/uploads/2022/01/Philippine-real-estate-industry-property-investment-scaled-1.jpg', '2-bedroom unit with a spacious layout.', 'Wood', '345-678-9012'),
(255, 'Western Suburbs', '1', 310000, 'House', 1, 'https://smartasset.com/wp-content/uploads/sites/2/2013/03/modern-custom-suburban-home-exterior-picture-id1255835529-1.jpg', '1-bedroom house with updated features.', 'Glass', '456-789-0123'),
(256, 'Northern Suburbs', '5', 780000, 'Unit', 3, 'https://thumbor.forbes.com/thumbor/fit-in/x/https://www.forbes.com/advisor/wp-content/uploads/2021/08/download-7.jpg', '5-bedroom unit with premium design.', 'Wood', '567-890-1234'),
(257, 'Southern Suburbs', '3', 470000, 'House', 2, 'https://www.allproperties.com.ph/wp-content/uploads/2022/01/Philippine-real-estate-industry-property-investment-scaled-1.jpg', '3-bedroom house with cozy design.', 'Stone', '678-901-2345'),
(258, 'Central Suburbs', '4', 600000, 'Townhouse', 2, 'https://smartasset.com/wp-content/uploads/sites/2/2013/03/modern-custom-suburban-home-exterior-picture-id1255835529-1.jpg', '4-bedroom townhouse with spacious interiors.', 'Concrete', '789-012-3456'),
(259, 'Eastern Shore', '1', 290000, 'House', 1, 'https://thumbor.forbes.com/thumbor/fit-in/x/https://www.forbes.com/advisor/wp-content/uploads/2021/08/download-7.jpg', '1-bedroom house with luxurious features.', 'Wood', '890-123-4567'),
(260, 'Western Suburbs', '2', 340000, 'Unit', 1, 'https://www.allproperties.com.ph/wp-content/uploads/2022/01/Philippine-real-estate-industry-property-investment-scaled-1.jpg', '2-bedroom unit with modern features.', 'Concrete', '901-234-5678'),
(261, 'Northern Suburbs', '4', 600000, 'House', 2, 'https://thumbor.forbes.com/thumbor/fit-in/x/https://www.forbes.com/advisor/wp-content/uploads/2021/08/download-7.jpg', '4-bedroom house with premium design.', 'Wood', '012-345-6789'),
(262, 'Southern Suburbs', '2', 340000, 'Unit', 1, 'https://www.allproperties.com.ph/wp-content/uploads/2022/01/Philippine-real-estate-industry-property-investment-scaled-1.jpg', '2-bedroom unit with modern design.', 'Stone', '123-456-7890');

-- --------------------------------------------------------

--
-- Table structure for table `requests`
--

CREATE TABLE `requests` (
  `id` int(11) NOT NULL,
  `user_no` varchar(10) NOT NULL,
  `applicant_name` varchar(255) NOT NULL,
  `requested_credit` float NOT NULL,
  `currency_deposits` float NOT NULL,
  `stocks` float NOT NULL,
  `mortgages` float NOT NULL,
  `net_worth_to_assets` float NOT NULL,
  `last_year_sales_growth` float NOT NULL,
  `growth_profit_on_sales` float NOT NULL,
  `short_term_debt_to_sales` float NOT NULL,
  `expected_yield` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `requests`
--

INSERT INTO `requests` (`id`, `user_no`, `applicant_name`, `requested_credit`, `currency_deposits`, `stocks`, `mortgages`, `net_worth_to_assets`, `last_year_sales_growth`, `growth_profit_on_sales`, `short_term_debt_to_sales`, `expected_yield`) VALUES
(1, 'CN001-98', 'John Doe', 50000, 10000, 20000, 15000, 0.75, 10, 5, 20, 8),
(2, 'CN002-97', 'Jane Smith', 60000, 12000, 25000, 16000, 0.8, 12, 6, 22, 9),
(3, 'CN003-96', 'Robert Johnson', 70000, 13000, 27000, 17000, 0.85, 15, 7, 25, 10),
(4, 'CN004-95', 'Emily Davis', 80000, 14000, 28000, 18000, 0.88, 17, 8, 28, 11),
(5, 'CN005-94', 'Michael Wilson', 55000, 11000, 21000, 15500, 0.77, 11, 5.5, 21, 8.5),
(6, 'CN006-93', 'Sarah Taylor', 65000, 12500, 26000, 16500, 0.82, 13, 6.5, 23, 9.5),
(7, 'CN007-92', 'David Brown', 72000, 13500, 29000, 17500, 0.84, 16, 7.5, 26, 10.5),
(8, 'CN008-91', 'Jessica Miller', 82000, 14500, 30000, 18500, 0.86, 18, 8.5, 29, 11.5),
(9, 'CN009-90', 'James Anderson', 53000, 10500, 22000, 15000, 0.76, 10.5, 5.2, 19, 8.2),
(10, 'CN010-89', 'Olivia Harris', 60000, 11500, 24000, 16000, 0.78, 11.5, 5.8, 21.5, 8.7),
(11, 'CN011-88', 'William Lewis', 71000, 14000, 27000, 17500, 0.83, 14, 6.3, 24, 10),
(12, 'CN012-87', 'Ava Clark', 80000, 13000, 29000, 18500, 0.85, 16.5, 7.2, 27, 11.2),
(13, 'CN013-86', 'Mason Robinson', 54000, 12500, 22000, 15500, 0.79, 12, 6, 23, 9.5),
(14, 'CN014-85', 'Sophia Walker', 68000, 14000, 26000, 17000, 0.81, 14.5, 6.8, 25, 10.7),
(15, 'CN015-84', 'Liam Allen', 75000, 15000, 28000, 18000, 0.87, 17, 7.5, 27.5, 11.8),
(16, 'CN016-83', 'Isabella Young', 62000, 13500, 25000, 16500, 0.8, 13.5, 6.4, 24, 10),
(17, 'CN017-82', 'Jacob King', 69000, 14000, 26000, 17000, 0.83, 14, 7, 25, 10.5),
(18, 'CN018-81', 'Mia Scott', 76000, 14500, 27000, 18000, 0.84, 15.5, 7.2, 26.5, 11),
(19, 'CN019-80', 'Ethan Green', 73000, 12000, 25000, 17500, 0.82, 14, 6.8, 24.5, 10.2),
(20, 'CN020-79', 'Charlotte Adams', 80000, 12500, 29000, 18500, 0.85, 16, 7, 27, 11.5),
(21, 'CN021-78', 'Henry Baker', 55000, 11000, 22000, 16000, 0.77, 11, 5.5, 21, 9),
(22, 'CN022-77', 'Amelia Mitchell', 62000, 11500, 24000, 16500, 0.78, 12.5, 6.1, 22, 9.5),
(23, 'CN023-76', 'Alexander Perez', 69000, 12500, 27000, 17000, 0.8, 14, 6.5, 24, 10),
(24, 'CN024-75', 'Avery Turner', 74000, 13000, 28000, 17500, 0.83, 15, 7, 25, 11),
(25, 'CN025-74', 'Benjamin Morris', 70000, 14000, 29000, 18000, 0.84, 16, 7.2, 26, 11.5),
(26, 'CN026-73', 'Harper Cox', 63000, 12000, 26000, 16500, 0.79, 13.5, 6.4, 23.5, 10),
(27, 'CN027-72', 'Daniel Walker', 71000, 12500, 27000, 17500, 0.82, 14.5, 6.7, 24, 10.5),
(28, 'CN028-71', 'Ella James', 77000, 13000, 28000, 18500, 0.85, 16, 7.1, 25.5, 11),
(29, 'CN029-70', 'Jack Thompson', 54000, 11500, 22000, 16000, 0.77, 12, 5.8, 22, 9.2),
(30, 'CN030-69', 'Sofia White', 65000, 12000, 23000, 17000, 0.79, 13.5, 6.1, 23, 9.7),
(31, 'CN031-68', 'Samuel Harris', 73000, 13500, 25000, 17500, 0.81, 14, 6.3, 24.5, 10.2),
(32, 'CN032-67', 'Zoe Martin', 79000, 14000, 27000, 18000, 0.84, 15, 7, 25, 11.3),
(33, 'CN033-66', 'David Lee', 71000, 13000, 28000, 17500, 0.82, 14.5, 6.7, 24, 10.5),
(34, 'CN034-65', 'Luna Allen', 64000, 12500, 26000, 16000, 0.78, 12, 6, 22, 9.3),
(35, 'CN035-64', 'Elijah Walker', 75000, 14000, 29000, 18500, 0.85, 15, 6.8, 26, 11),
(36, 'CN036-63', 'Aria Scott', 71000, 12000, 27000, 17000, 0.8, 13.5, 6.3, 23, 10),
(37, 'CN037-62', 'Matthew King', 69000, 12500, 26000, 17500, 0.81, 14, 6.5, 24, 10.2),
(38, 'CN038-61', 'Mila Carter', 77000, 13500, 28000, 18000, 0.84, 15.5, 7, 25.5, 11.5),
(39, 'CN039-60', 'James Clark', 74000, 14000, 27000, 18500, 0.83, 15, 7.2, 26, 11),
(40, 'CN040-59', 'Charlotte Lewis', 75000, 13000, 28000, 18000, 0.85, 16, 7.3, 27, 11.5),
(41, 'CN041-58', 'John Collins', 53000, 11500, 22000, 15000, 0.76, 11.5, 5.6, 21.5, 9),
(42, 'CN042-57', 'Sophia Stewart', 66000, 12000, 24000, 16500, 0.79, 12.7, 6.2, 22.5, 9.8),
(43, 'CN043-56', 'Daniel Morris', 68000, 13000, 25000, 17000, 0.81, 13.5, 6.8, 23.5, 10),
(44, 'CN044-55', 'Amelia Ward', 70000, 13500, 26000, 17500, 0.82, 14, 6.9, 24, 10.2),
(45, 'CN045-54', 'Lucas Murphy', 73000, 14000, 27000, 18000, 0.84, 15, 7.1, 25, 11),
(46, 'CN046-53', 'Ella Johnson', 75000, 12500, 28000, 18500, 0.85, 16, 7.3, 26, 11.2),
(47, 'CN047-52', 'Henry Taylor', 67000, 13000, 27000, 17000, 0.8, 14, 6.6, 24, 10.5),
(48, 'CN048-51', 'Lila Robinson', 69000, 13500, 26000, 17500, 0.82, 14.5, 6.8, 25, 10.7),
(49, 'CN049-50', 'Ethan Walker', 74000, 14000, 28000, 18000, 0.83, 15, 7, 26, 11),
(50, 'CN050-49', 'Mia Martinez', 77000, 12500, 29000, 18500, 0.85, 16.5, 7.3, 27, 11.2),
(51, 'CN051-48', 'Jacob Scott', 70000, 11500, 26000, 17000, 0.79, 12, 6, 23, 9.7),
(52, 'CN052-47', 'Emily Bell', 65000, 12000, 25000, 16500, 0.8, 13, 6.2, 22.5, 10),
(53, 'CN053-46', 'David Adams', 69000, 13000, 27000, 17500, 0.81, 14, 6.5, 24, 10.2),
(54, 'CN054-45', 'Grace Green', 72000, 13500, 28000, 18000, 0.83, 15, 6.8, 25, 11),
(55, 'CN055-44', 'Liam Davis', 75000, 14000, 29000, 18500, 0.84, 15.5, 7, 26, 11.2),
(56, 'CN056-43', 'Hannah Lewis', 64000, 12500, 26000, 17000, 0.8, 13.5, 6.4, 23.5, 10.3),
(57, 'CN057-42', 'Michael Clark', 70000, 13000, 27000, 17500, 0.82, 14, 6.7, 24, 10.5),
(58, 'CN058-41', 'Ella Wright', 75000, 14000, 28000, 18500, 0.85, 15.5, 7.1, 26.5, 11),
(59, 'CN059-40', 'William Hall', 68000, 12500, 25000, 17000, 0.81, 14, 6.8, 23, 10),
(60, 'CN060-39', 'Sofia Allen', 69000, 13500, 26000, 17500, 0.82, 14.5, 6.9, 24, 10.2),
(61, 'CN061-38', 'James Young', 72000, 14000, 27000, 18000, 0.84, 15, 7, 25, 10.5),
(62, 'CN062-37', 'Isabella Scott', 74000, 13000, 28000, 18500, 0.83, 15.5, 7.1, 26, 11),
(63, 'CN063-36', 'Benjamin Green', 73000, 12500, 27000, 17500, 0.82, 14, 6.8, 24.5, 10.5),
(64, 'CN064-35', 'Aria Harris', 71000, 12000, 26000, 17000, 0.8, 13.5, 6.3, 23, 10),
(65, 'CN065-34', 'Oliver Lewis', 75000, 13000, 27000, 18000, 0.83, 15, 7, 24.5, 10.7),
(66, 'CN066-33', 'Mia Robinson', 77000, 14000, 28000, 18500, 0.84, 15.5, 7.2, 26, 11),
(67, 'CN067-32', 'Ethan Mitchell', 68000, 12500, 26000, 17500, 0.81, 14, 6.7, 24, 10.2),
(68, 'CN068-31', 'Charlotte Martinez', 71000, 13000, 27000, 18000, 0.82, 14.5, 6.8, 25, 10.5),
(69, 'CN069-30', 'Aiden Davis', 73000, 13500, 28000, 18500, 0.83, 15, 7, 26, 11),
(70, 'CN070-29', 'Avery Johnson', 75000, 14000, 29000, 19000, 0.84, 15.5, 7.2, 27, 11.2),
(71, 'CN071-28', 'Lucas Wilson', 70000, 12000, 25000, 17500, 0.8, 13.5, 6.5, 24, 10),
(72, 'CN072-27', 'Grace Brown', 66000, 13000, 26000, 17000, 0.78, 12, 6, 22.5, 9.8),
(73, 'CN073-26', 'Ethan Clark', 72000, 13500, 27000, 18000, 0.83, 14.5, 6.8, 25, 10.5),
(74, 'CN074-25', 'Sofia Lewis', 74000, 14000, 28000, 18500, 0.84, 15, 7, 26, 11),
(75, 'CN075-24', 'Liam Walker', 71000, 12500, 26000, 17000, 0.81, 14, 6.7, 23.5, 10.2),
(76, 'CN076-23', 'Hannah Robinson', 73000, 13000, 27000, 17500, 0.82, 14.5, 6.8, 24, 10.3),
(77, 'CN077-22', 'David Scott', 75000, 13500, 28000, 18500, 0.83, 15, 7, 25, 11),
(78, 'CN078-21', 'Olivia Brown', 77000, 14000, 29000, 19000, 0.85, 15.5, 7.2, 26, 11.5),
(79, 'CN079-20', 'James Wilson', 69000, 12500, 26000, 17500, 0.8, 13, 6.4, 24, 10),
(80, 'CN080-19', 'Lila Harris', 71000, 12000, 25000, 17000, 0.82, 14.5, 6.7, 23.5, 10.3),
(81, 'CN081-18', 'Jacob Moore', 73000, 13000, 27000, 18000, 0.83, 15, 7, 24.5, 10.7),
(82, 'CN082-17', 'Luna Turner', 74000, 13500, 28000, 18500, 0.84, 15.5, 7.2, 25, 11),
(83, 'CN083-16', 'Michael White', 72000, 14000, 29000, 19000, 0.85, 16, 7.3, 26, 11.2),
(84, 'CN084-15', 'Chloe Martinez', 69000, 12500, 27000, 17500, 0.8, 13.5, 6.8, 24, 10),
(85, 'CN085-14', 'Jack Thompson', 71000, 13000, 25000, 17000, 0.82, 14, 6.7, 23.5, 10.3),
(86, 'CN086-13', 'Ella Davis', 73000, 13500, 26000, 18000, 0.83, 14.5, 6.8, 24.5, 10.5),
(87, 'CN087-12', 'William Wilson', 74000, 14000, 27000, 18500, 0.84, 15, 7, 25, 11),
(88, 'CN088-11', 'Mia Walker', 75000, 12500, 28000, 19000, 0.85, 15.5, 7.2, 26, 11.2),
(89, 'CN089-10', 'James Carter', 73000, 12000, 25000, 17500, 0.8, 13.5, 6.4, 24, 10),
(90, 'CN090-09', 'Grace Green', 74000, 12500, 26000, 18000, 0.82, 14, 6.5, 25, 10.5),
(91, 'CN091-08', 'Jacob Young', 75000, 13000, 27000, 18500, 0.83, 14.5, 6.8, 26, 11),
(92, 'CN092-07', 'Lila Mitchell', 76000, 13500, 28000, 19000, 0.84, 15, 7, 27, 11.2),
(93, 'CN093-06', 'Ethan Phillips', 77000, 14000, 29000, 20000, 0.85, 15.5, 7.3, 28, 11.5),
(94, 'CN094-05', 'Emily Roberts', 78000, 12000, 26000, 18500, 0.83, 14, 6.7, 26, 10.7),
(95, 'CN095-04', 'David Evans', 79000, 13000, 27000, 19000, 0.84, 14.5, 6.8, 27, 11),
(96, 'CN096-03', 'Olivia Kelly', 80000, 13500, 28000, 19500, 0.85, 15, 7, 28, 11.3),
(97, 'CN097-02', 'William Turner', 81000, 14000, 29000, 20000, 0.86, 15.5, 7.2, 29, 11.5),
(98, 'CN098-01', 'Isabella Young', 82000, 14500, 30000, 20500, 0.87, 16, 7.4, 30, 11.7),
(99, 'CN099-00', 'James Brown', 83000, 12000, 27000, 21000, 0.88, 16.5, 7.6, 31, 11.9),
(100, 'CN100-99', 'Ava Taylor', 84000, 12500, 28000, 21500, 0.89, 17, 7.8, 32, 12);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `properties`
--
ALTER TABLE `properties`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `requests`
--
ALTER TABLE `requests`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `properties`
--
ALTER TABLE `properties`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=263;

--
-- AUTO_INCREMENT for table `requests`
--
ALTER TABLE `requests`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
