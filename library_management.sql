-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 06, 2023 at 06:43 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `library_management`
--

-- --------------------------------------------------------

--
-- Table structure for table `account`
--

CREATE TABLE `account` (
  `username` varchar(15) NOT NULL,
  `name` varchar(25) NOT NULL,
  `password` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `account`
--

INSERT INTO `account` (`username`, `name`, `password`) VALUES
('nandun', 'Nandun Lakshitha', 1256);

-- --------------------------------------------------------

--
-- Table structure for table `book`
--

CREATE TABLE `book` (
  `book_id` int(10) UNSIGNED NOT NULL,
  `name` varchar(45) NOT NULL,
  `publisher` varchar(35) NOT NULL,
  `price` int(8) UNSIGNED NOT NULL,
  `stock` int(8) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `book`
--

INSERT INTO `book` (`book_id`, `name`, `publisher`, `price`, `stock`) VALUES
(1, 'madol duwa', 'matian', 100, 10);

-- --------------------------------------------------------

--
-- Table structure for table `issue`
--

CREATE TABLE `issue` (
  `book_id` int(10) UNSIGNED NOT NULL,
  `b_name` varchar(25) NOT NULL,
  `publisher` varchar(25) NOT NULL,
  `price` int(5) UNSIGNED NOT NULL,
  `stock` int(5) UNSIGNED NOT NULL,
  `stu_id` int(10) UNSIGNED NOT NULL,
  `s_name` varchar(25) NOT NULL,
  `course` varchar(25) NOT NULL,
  `year` varchar(10) NOT NULL,
  `semister` varchar(15) NOT NULL,
  `doi` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `issue`
--

INSERT INTO `issue` (`book_id`, `b_name`, `publisher`, `price`, `stock`, `stu_id`, `s_name`, `course`, `year`, `semister`, `doi`) VALUES
(80, 'madol duwa', 'martin', 1000, 11, 916, 'nandun', 'BSc', '1st', '1st', '2023-12-12'),
(626, 'village', 'anthony', 1000, 10, 415, 'kanishka', 'HNDIT', '1st', '1st', '2023-12-12'),
(626, 'village', 'anthony', 1000, 9, 916, 'nandun', 'BSc', '1st', '1st', '2023-12-12');

-- --------------------------------------------------------

--
-- Table structure for table `returntbl`
--

CREATE TABLE `returntbl` (
  `stu_id` int(10) UNSIGNED NOT NULL,
  `s_name` varchar(25) NOT NULL,
  `course` varchar(15) NOT NULL,
  `year` varchar(15) NOT NULL,
  `semister` varchar(15) NOT NULL,
  `book_id` int(10) UNSIGNED NOT NULL,
  `b_name` varchar(25) NOT NULL,
  `publisher` varchar(25) NOT NULL,
  `price` int(10) UNSIGNED NOT NULL,
  `stock` int(10) UNSIGNED NOT NULL,
  `doi` date NOT NULL,
  `doreturn` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `returntbl`
--

INSERT INTO `returntbl` (`stu_id`, `s_name`, `course`, `year`, `semister`, `book_id`, `b_name`, `publisher`, `price`, `stock`, `doi`, `doreturn`) VALUES
(916, 'nandun', 'BSc', '1st', '1st', 80, 'madol duwa', 'martin', 1000, 10, '2023-12-12', '2023-12-13');

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

CREATE TABLE `student` (
  `student_id` int(10) UNSIGNED NOT NULL,
  `name` varchar(25) NOT NULL,
  `course` varchar(15) NOT NULL,
  `year` varchar(15) NOT NULL,
  `semister` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `student`
--

INSERT INTO `student` (`student_id`, `name`, `course`, `year`, `semister`) VALUES
(916, 'nandun', 'BSc', '1st', '1st'),
(452, 'Nandun', 'HNDIT', '2nd', '1st'),
(415, 'kanishka', 'HNDIT', '1st', '1st'),
(231, '', 'HNDIT', '1st', '1st'),
(1, 'shashika', 'HNDIT', '1st', '1st');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `account`
--
ALTER TABLE `account`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `book`
--
ALTER TABLE `book`
  ADD PRIMARY KEY (`book_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
