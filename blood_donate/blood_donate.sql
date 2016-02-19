-- phpMyAdmin SQL Dump
-- version 4.5.0.2
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Feb 19, 2016 at 06:33 AM
-- Server version: 10.0.17-MariaDB
-- PHP Version: 5.6.14

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `blood_donate`
--

-- --------------------------------------------------------

--
-- Table structure for table `blood_donor`
--

CREATE TABLE `blood_donor` (
  `user_id` int(11) UNSIGNED NOT NULL,
  `user_firstName` varchar(255) DEFAULT NULL,
  `user_lastName` varchar(255) DEFAULT NULL,
  `user_cellphone` int(12) DEFAULT NULL,
  `user_email` varchar(255) DEFAULT NULL,
  `user_password` char(41) DEFAULT NULL,
  `user_birthday` datetime DEFAULT NULL,
  `group_id` text,
  `group_key` text NOT NULL,
  `last_donate_date` datetime DEFAULT NULL,
  `user_division` text,
  `user_district` text,
  `user_police_station` text,
  `user_image` text
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `blood_donor`
--

INSERT INTO `blood_donor` (`user_id`, `user_firstName`, `user_lastName`, `user_cellphone`, `user_email`, `user_password`, `user_birthday`, `group_id`, `group_key`, `last_donate_date`, `user_division`, `user_district`, `user_police_station`, `user_image`) VALUES
(1, 'Ethshamul ', 'Kabir', 1671058334, 'eklotan@gmail.com', '1234', '1989-01-16 00:00:00', '4', 'B-, B Negative, b negative, Dhaka Dhaka Mugdapara', '2013-01-16 00:00:00', 'Dhaka', 'Dhaka', 'Mugdapara', 'team1.png'),
(2, 'Sultan', 'Mahmud', 1670144398, 'foysoll66@gmail.com', '1234', '1989-01-16 00:00:00', '4', 'B-, b-, B Negative, Dhaka Mugdapara, b negative', '2015-01-16 00:00:00', 'Dhaka', 'Dhaka', 'Mugdapara', 'team1.png'),
(3, 'Sultan', 'Mahmud', 1670144398, 'foysoll66@gmail.com', '1234', '2031-01-16 00:00:00', '3', 'B+, b+,  Dhaka, Mugdapara B Posititve', '2031-01-16 00:00:00', 'Dhaka', 'Dhaka', 'Mugdapara', 'team1.png'),
(4, 'Masum', 'Billa', 1554683735, 'masum1201@gmail.com', '1234', '2031-01-16 00:00:00', '1', 'A+, a+, A Positive, a positive, Dhaka, Mugdapara', '2031-01-16 00:00:00', 'Dhaka', 'Dhaka', 'Mugdapara', 'team1.png'),
(5, 'Nil', 'Sagor', 1553587957, 'nilsagor1201@gmail.com', '1234', '2031-01-16 00:00:00', '6', 'O-, o-, o negative, Dhaka, dhaka, Faridpur, faridpur O Negative', '2031-01-16 00:00:00', 'Dhaka', 'Faridpur', 'Sadar ', 'team1.png'),
(6, 'Nil', 'Sagor', 1553587957, 'nilsagor1201@gmail.com', '1234', '2031-01-16 00:00:00', '6', 'O-, o-, o negative, Chittagong, chittagong, Faridpur, faridpur O Negative', '2031-01-16 00:00:00', 'Chittagong', 'Chittagong', 'Raipur', 'team1.png'),
(7, 'Moniruzzaman', 'Sabuj', 1712223984, 'sabouj@gmail.com', '1234', '2016-01-31 00:00:00', '5', '', '2016-01-31 00:00:00', 'Rangpur', 'Rangpur', 'Rajapur', 'team1.png'),
(8, 'Masum', 'Billah', 1712223984, 'masum_sagor@gmail.com', '1234', '2016-01-31 00:00:00', '8', 'AB-, ab-, ab negative, Rajshai, rajshai, Lalpur, faridpur AB Negative', '2016-01-31 00:00:00', 'Rajshai', 'Rajshai', 'Lalpur', 'team1.png'),
(9, 'Asiq', 'Afriq', 1546873942, 'chotan1212@gmail.com', '1234', '1988-11-01 00:00:00', '4', 'B-, b-, B Negative, Dhaka Mugdapara, b negative', '2015-10-15 00:00:00', 'Dhaka', 'Dhaka', 'Sobujbag', 'team1.png'),
(10, 'Masudur', 'Rahman', 1777667622, 'me2masud@gmail.com', '1234', '1998-12-12 00:00:00', '1', 'A+, a+, A Positive, a positive, Dhaka, Faridpur, faridpur, Kotwali, kotwali', '1998-12-12 00:00:00', 'Dhaka', 'Faridpur', 'Kotwali', 'team1.png'),
(11, 'Billah', 'Masum', 1553587957, 'billah1201@gmail.com', '1234', '0000-00-00 00:00:00', '7', 'AB+, ab+, ab positve, AB Positive, Sylhet, sylhet, Srimongol', '1989-02-12 00:00:00', 'Sylhet', 'Srimongol', 'Srimongol', 'team1.png'),
(12, 'Sagor', 'Masum', 1534875694, 'masum_sagor@gmail.com', '1234', '0000-00-00 00:00:00', '2', 'a-, a negative, barisal, bhola', '0000-00-00 00:00:00', 'Barisal', 'Bhola', 'Bhola', 'team1.png'),
(13, 'Soumik', 'Sinha', 1678453984, 'Somik@gmail.com', '1234', '0000-00-00 00:00:00', '4', 'b-, b negative, Sylhet, Moulavibazar', '0000-00-00 00:00:00', 'Sylhet', 'Moulavibazar', 'Srimongol', 'team1.png'),
(14, 'Amin', 'Sajib', 1686869546, 'sajib@gmail.com', '1234', '0000-00-00 00:00:00', '1', 'A+, Dhaka, Basabo, manda', '0000-00-00 00:00:00', 'Dhaka', 'Dhaka', 'Mugdapara', 'team1.png');

-- --------------------------------------------------------

--
-- Table structure for table `blood_group`
--

CREATE TABLE `blood_group` (
  `group_id` tinyint(3) UNSIGNED NOT NULL,
  `group_name` text
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `blood_group`
--

INSERT INTO `blood_group` (`group_id`, `group_name`) VALUES
(1, 'A+'),
(2, 'A-'),
(3, 'B+'),
(4, 'B-'),
(5, 'O+'),
(6, 'O-'),
(7, 'AB+'),
(8, 'AB-');

-- --------------------------------------------------------

--
-- Table structure for table `blood_receipient`
--

CREATE TABLE `blood_receipient` (
  `user_id` int(11) UNSIGNED NOT NULL,
  `user_firstName` varchar(255) DEFAULT NULL,
  `user_lastName` varchar(255) DEFAULT NULL,
  `user_cellphone` int(12) DEFAULT NULL,
  `user_email` varchar(255) DEFAULT NULL,
  `user_password` char(41) DEFAULT NULL,
  `user_birthday` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `group_name` text,
  `last_donate_date` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_division` text,
  `user_district` text,
  `user_police_station` text,
  `user_image` text
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `last_donate`
--

CREATE TABLE `last_donate` (
  `last_donate_id` int(11) UNSIGNED NOT NULL,
  `last_donate_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `blood_donor`
--
ALTER TABLE `blood_donor`
  ADD PRIMARY KEY (`user_id`);

--
-- Indexes for table `blood_group`
--
ALTER TABLE `blood_group`
  ADD PRIMARY KEY (`group_id`);

--
-- Indexes for table `blood_receipient`
--
ALTER TABLE `blood_receipient`
  ADD PRIMARY KEY (`user_id`);

--
-- Indexes for table `last_donate`
--
ALTER TABLE `last_donate`
  ADD PRIMARY KEY (`last_donate_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `blood_donor`
--
ALTER TABLE `blood_donor`
  MODIFY `user_id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
--
-- AUTO_INCREMENT for table `blood_group`
--
ALTER TABLE `blood_group`
  MODIFY `group_id` tinyint(3) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `blood_receipient`
--
ALTER TABLE `blood_receipient`
  MODIFY `user_id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `last_donate`
--
ALTER TABLE `last_donate`
  MODIFY `last_donate_id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
