-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 23, 2022 at 07:06 PM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `cafeneweb`
--

-- --------------------------------------------------------

--
-- Table structure for table `addcart`
--

CREATE TABLE `addcart` (
  `id` bigint(12) NOT NULL,
  `p_id` bigint(12) NOT NULL,
  `u_id` varchar(50) NOT NULL,
  `price` bigint(12) NOT NULL,
  `qty` bigint(12) NOT NULL,
  `total` bigint(12) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `addcart`
--

INSERT INTO `addcart` (`id`, `p_id`, `u_id`, `price`, `qty`, `total`) VALUES
(6, 11, 'admin', 30, 2, 60),
(11, 29, 'Ajay Patil', 20, 6, 120),
(12, 37, 'Ajay Patil', 80, 3, 240),
(14, 51, 'Anjali Patro', 500, 1, 500),
(16, 37, 'Ajay Patil', 80, 1, 80),
(17, 37, 'khushbu', 80, 10, 800),
(18, 53, 'khushbu', 90, 10, 900),
(19, 37, 'Nidhi', 80, 2, 160),
(21, 45, 'Tarini', 50, 4, 200),
(23, 37, 'Anjali Patro', 80, 1, 80),
(24, 48, 'Anjali Patro', 70, 2, 140),
(25, 39, 'Sanya', 150, 2, 300),
(26, 45, 'Peter', 50, 3, 150),
(27, 54, 'Anjali Patro', 300, 3, 900),
(28, 56, 'Linda', 60, 2, 120),
(29, 45, 'Shanaya', 50, 6, 300),
(30, 55, 'Anvi', 450, 2, 900),
(31, 53, 'Shweta', 90, 6, 540),
(32, 55, 'Shweta', 450, 2, 900),
(33, 57, 'Pushpa', 700, 1, 700);

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `adminid` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`adminid`, `password`) VALUES
('Anjali', 'anjali123');

-- --------------------------------------------------------

--
-- Table structure for table `checkout`
--

CREATE TABLE `checkout` (
  `id` bigint(12) NOT NULL,
  `p_id` bigint(12) NOT NULL,
  `u_id` varchar(50) NOT NULL,
  `name` varchar(100) NOT NULL,
  `mobile` bigint(12) NOT NULL,
  `email` varchar(150) NOT NULL,
  `location` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `checkout`
--

INSERT INTO `checkout` (`id`, `p_id`, `u_id`, `name`, `mobile`, `email`, `location`) VALUES
(42, 37, 'Anjali Patro', 'Anjali', 7030349125, 'anjali@gmail.com', 'Mumbai, Maharashtra'),
(43, 39, 'Sanya', 'Sanya', 8547962314, 'sanya@gmail.com', 'Nashik'),
(45, 37, 'Anjali Patro', 'Peter', 8567804631, 'peter@gmail.com', 'Pune'),
(47, 54, 'Anjali Patro', 'Peter', 8567804631, 'peter@gmail.com', 'Pune'),
(49, 56, 'Linda', 'Linda', 7548962135, 'linda@gmail.com', 'Nashik'),
(50, 45, 'Shanaya', 'Shanaya', 8547962314, 'shanaya@gmail.com', 'Brahmapur, Odisha'),
(52, 53, 'Shweta', 'Shweta', 8549625478, 'shweta@gmail.com', 'Hydrabad');

-- --------------------------------------------------------

--
-- Table structure for table `contact`
--

CREATE TABLE `contact` (
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `contact` int(10) NOT NULL,
  `message` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `contact`
--

INSERT INTO `contact` (`name`, `email`, `contact`, `message`) VALUES
('Anjali Patro', 'anjali@gmail.com', 2147483647, 'How can i get a Coupon Code?'),
('Aziz', 'aziz@gmail.com', 2147483647, 'when will i get my Orders?'),
('Sanya', 'sanya@gmail.com', 2147483647, 'can i twice my orders?'),
('Almond', 'almond@gmail.com', 2147483647, 'how can i order more Products?'),
('asd', 'dfd@gmail.com', 2147483647, 'sdsdsd'),
('dsdsdx', 'szc', 2147483647, 'sdcvb'),
('John', 'john@gmail.com', 2147483647, 'John Here!');

-- --------------------------------------------------------

--
-- Table structure for table `gallery`
--

CREATE TABLE `gallery` (
  `id` bigint(12) NOT NULL,
  `image` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `gallery`
--

INSERT INTO `gallery` (`id`, `image`) VALUES
(12, 'img/gallery-img-01.jpeg'),
(13, 'img/gallery-img-02.jpg'),
(14, 'img/gallery-img-03.jfif'),
(15, 'img/gallery-img-04.jpg'),
(16, 'img/gallery-img-05.jfif'),
(17, 'img/gallery-img-06.jfif'),
(18, 'img/Snack7.jpg'),
(19, 'img/Snack3.jpg'),
(20, 'img/WhatsApp Image 2022-09-15 at 8.15.56 PM.jpeg'),
(23, 'img/Snack5.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `menu`
--

CREATE TABLE `menu` (
  `id` bigint(12) NOT NULL,
  `category` varchar(100) NOT NULL,
  `title` varchar(100) NOT NULL,
  `description` text NOT NULL,
  `price` bigint(6) NOT NULL,
  `image` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `menu`
--

INSERT INTO `menu` (`id`, `category`, `title`, `description`, `price`, `image`) VALUES
(37, '', 'Black Coffee', 'Black Coffee is Tasty', 80, 'mimg/Black_Coffee.jfif'),
(39, '', 'McCafe', 'McCafe is super tasty', 150, 'mimg/McCafe.jfif'),
(43, '', 'Cold Brew', 'Cold Brew is too good', 420, 'mimg/Cold_Brew.jfif'),
(44, '', 'Guava Juice', 'It is good for health', 70, 'mimg/Mok2.jpg'),
(45, '', 'Healthy Juice', 'Good for Health', 50, 'mimg/Mok4.jpg'),
(46, '', 'Orange Juice', 'Orange is very healthy', 120, 'mimg/Mok3.jfif'),
(47, '', 'Lemon Tea', 'Lemony Flavor', 120, 'mimg/Tea3.jpg'),
(48, '', 'Tulsi Tea', 'It is very healthy', 70, 'mimg/Tea1.jpg'),
(49, '', 'Masala Tea', 'Love for Life is this Tea', 20, 'mimg/Tea2.jfif'),
(53, '', 'French Fries', 'Super Tasty Fries ', 90, 'mimg/Snack2.webp'),
(54, 'kathiyawadi', 'Croissant', 'Love Croissant', 300, 'mimg/Snack5.jpg'),
(55, 'kathiyawadi', 'Pizza', 'Cheese, Tomatoes, Garlic', 450, 'mimg/Snack7.jpg'),
(56, 'kathiyawadi', 'Masala Chaash', 'Go COOL!', 60, 'mimg/Masala-Chaas-Recipe.jpg'),
(57, 'kathiyawadi', 'Burger + Fries', 'best Combination', 700, 'mimg/Snack4.jfif'),
(58, 'kathiyawadi', 'Cheesy Pizza', 'Cheese, Onion, Paneer', 500, 'mimg/Snack6.jfif'),
(59, 'kathiyawadi', 'korma', 'Super fresh', 750, 'mimg/blog-img-02.jpg'),
(61, 'kathiyawadi', 'Fried Fries', 'Enjoy it with ketchup', 320, 'mimg/Snack9.jfif');

-- --------------------------------------------------------

--
-- Table structure for table `registration`
--

CREATE TABLE `registration` (
  `id` bigint(12) NOT NULL,
  `userid` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `email` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `registration`
--

INSERT INTO `registration` (`id`, `userid`, `password`, `email`) VALUES
(8, '101', 'anjali', 'anjali@gmail.com'),
(9, 'Ajay Patil', 'ajay123', 'ajay@gmail.com'),
(10, 'Anjali Patro', 'anjali123', 'patro123@gmail.com'),
(14, 'John', 'john123', 'john@gmail.com'),
(15, 'Peter', 'peter123', 'peter@gmail.com'),
(16, 'Sanju', 'sanjana123', 'sanju@gmail.com'),
(17, 'Ananya', 'ananya123', 'ananya@gmail.com'),
(19, 'Shanaya', 'shanaya123', 'shanaya@gmail.com'),
(20, 'khushbu', '123456', 'khushbu@gmail.com'),
(21, 'Anjali Patro4', 'Anjali123', 'ajay@gmail.com'),
(25, 'Neha', 'neha123', 'neha@gmail.com'),
(26, 'Nidhi', 'nidhi123', 'Nidhi@gmail.com'),
(27, 'Tarini', 'tarini123', 'tarini@gmail.com'),
(28, 'Sanya', 'sanya123', 'sanya@gmail.com'),
(29, 'Aren Joe', 'aren', 'aren@gmail.com'),
(30, 'Naran', 'naran123', 'naran@gmail.com'),
(33, 'Mayank', 'mayank123', 'mayank@gmail.com'),
(34, 'Chatur', 'chatur123', 'chatur@gmail.com'),
(35, 'Aziz', 'aziz13', 'aziz@gmail.com'),
(36, 'Rajesh', 'rajesh123', 'rajesh@gmail.com'),
(37, 'Marya Chatur', 'marya', 'marya@gmail.com'),
(38, 'Linda', 'linda123', 'linda@gmail.com'),
(39, 'Shanaya', 'shanaya123', 'shanaya@gmail.com'),
(40, 'Anvi', 'anvi123', 'anvi@gmal.com'),
(41, 'Anvil', 'anvil123', 'anvil@gmal.com'),
(42, 'sdfsdf', 'ssdsddssd', 'sads@gmail.com'),
(43, 'fgdfgfd', 'fsdfdf', 'sasdg@gmail.com'),
(44, 'Shweta', 'Shweta@123', 'shweta@gmail.com'),
(45, 'Pushpa', 'pushpa', 'pushpa@gmail.com'),
(46, 'Pushpa', 'pushpa123', 'pushpa@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `review`
--

CREATE TABLE `review` (
  `id` bigint(12) NOT NULL,
  `name` varchar(100) NOT NULL,
  `review` varchar(100) NOT NULL,
  `description` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `review`
--

INSERT INTO `review` (`id`, `name`, `review`, `description`) VALUES
(9, 'Ajay Patil', 'Exellent', 'Loved all the Dishes from CAFENE'),
(11, 'Aziz', 'Exellent', 'Excellent Quality Food Products!'),
(14, 'Anjali Patro', 'Exellent', 'Loved all the Products....Go for it...'),
(16, 'John', 'Exellent', 'excited to buy more!');

-- --------------------------------------------------------

--
-- Table structure for table `search`
--

CREATE TABLE `search` (
  `id` int(11) NOT NULL,
  `title` varchar(191) NOT NULL,
  `price` int(6) NOT NULL,
  `image` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `addcart`
--
ALTER TABLE `addcart`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`adminid`);

--
-- Indexes for table `checkout`
--
ALTER TABLE `checkout`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `gallery`
--
ALTER TABLE `gallery`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `menu`
--
ALTER TABLE `menu`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `registration`
--
ALTER TABLE `registration`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `review`
--
ALTER TABLE `review`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `search`
--
ALTER TABLE `search`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `addcart`
--
ALTER TABLE `addcart`
  MODIFY `id` bigint(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT for table `checkout`
--
ALTER TABLE `checkout`
  MODIFY `id` bigint(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=58;

--
-- AUTO_INCREMENT for table `gallery`
--
ALTER TABLE `gallery`
  MODIFY `id` bigint(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `menu`
--
ALTER TABLE `menu`
  MODIFY `id` bigint(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=62;

--
-- AUTO_INCREMENT for table `registration`
--
ALTER TABLE `registration`
  MODIFY `id` bigint(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;

--
-- AUTO_INCREMENT for table `review`
--
ALTER TABLE `review`
  MODIFY `id` bigint(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `search`
--
ALTER TABLE `search`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
